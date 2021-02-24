all:
	echo "Building coco_assistant"
	python "COCO-Assistant/setup.py" sdist bdist_wheel
	pip install -e "COCO-Assistant/."

remove:
	pip uninstall -y "COCO-Assistant/coco-assistant"
	rm -rf build dist *.egg-info
	

clean:
	pip uninstall -y "COCO-Assistant/coco-assistant"
	rm -rf build dist *.egg-info
	echo "Rebuilding"
	python "COCO-Assistant/setup.py" sdist bdist_wheel
	pip install -e "COCO-Assistant/."
