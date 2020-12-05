all:
	echo "Building coco_assistant"
	python "/content/COCO-Assistant/setup.py" sdist bdist_wheel
	pip install -e "/content/COCO-Assistant/."

remove:
	pip uninstall -y "/content/COCO-Assistant/coco-assistant"
	rm -rf build dist *.egg-info
	

clean:
	pip uninstall -y "/content/COCO-Assistant/coco-assistant"
	rm -rf build dist *.egg-info
	echo "Rebuilding"
	python "/content/COCO-Assistant/setup.py" sdist bdist_wheel
	pip install -e "/content/COCO-Assistant/."
