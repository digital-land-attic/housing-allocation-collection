HOUSING_ALLOCATION_DATASET=$(DATASET_DIR)housing-allocation.csv
HOUSING_ALLOCATION_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)housing-allocation/0bc5aa5d4b2fa9d7af85f1b809db46145caab555ea8651702daf68dd2e6403ef.csv\
    $(TRANSFORMED_DIR)housing-allocation/3270362b73afba989aed0900234f32aa29414c9581db8dde79fa4c3436c15795.csv\
    $(TRANSFORMED_DIR)housing-allocation/acfa8a42040996c0f9aaec42d3516b51a0d003f39d01e63f7705d776cd634124.csv

$(TRANSFORMED_DIR)housing-allocation/0bc5aa5d4b2fa9d7af85f1b809db46145caab555ea8651702daf68dd2e6403ef.csv: collection/resource/0bc5aa5d4b2fa9d7af85f1b809db46145caab555ea8651702daf68dd2e6403ef
	$(run-pipeline)

$(TRANSFORMED_DIR)housing-allocation/3270362b73afba989aed0900234f32aa29414c9581db8dde79fa4c3436c15795.csv: collection/resource/3270362b73afba989aed0900234f32aa29414c9581db8dde79fa4c3436c15795
	$(run-pipeline)

$(TRANSFORMED_DIR)housing-allocation/acfa8a42040996c0f9aaec42d3516b51a0d003f39d01e63f7705d776cd634124.csv: collection/resource/acfa8a42040996c0f9aaec42d3516b51a0d003f39d01e63f7705d776cd634124
	$(run-pipeline)

$(HOUSING_ALLOCATION_DATASET): $(HOUSING_ALLOCATION_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(HOUSING_ALLOCATION_TRANSFORMED_FILES)

dataset:: $(HOUSING_ALLOCATION_DATASET)
