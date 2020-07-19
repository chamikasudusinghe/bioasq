#export BIOASQ_DIR=$HOME/BioASQ/data-release

python run_factoid.py \
     --do_train=True \
     --do_predict=True \
     --vocab_file=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/vocab.txt
     --bert_config_file=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/bert_config.json \
     --init_checkpoint=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/model.ckpt-14599 \
     --max_seq_length=384 \
     --train_batch_size=12 \
     --learning_rate=5e-6 \
     --doc_stride=128 \
     --num_train_epochs=5.0 \
     --do_lower_case=False \
     --train_file=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/BioASQ-6b/train/Full-Abstract/BioASQ-train-factoid-6b-full-annotated.json \
     --predict_file=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/BioASQ-6b/test/Full-Abstract/BioASQ-test-factoid-6b-3.json \
     --output_dir=C:/Users/DELL/Documents/GitHub/bioasq/biobert/dataset/tmp/factoid_output/


## yesno questions
echo "Please use SQuADv2-trained model for yesno questions : BERT-pubmed-1000000-SQuAD2/model.ckpt-14470 "
#export BIOBERT_DIR=$HOME/BioASQ/BERT-pubmed-1000000-SQuAD2

# python run_yesno.py \
# 	--do_train=True \
# 	--do_predict=True \
# 	--vocab_file=$dataset/vocab.txt \
# 	--bert_config_file=$dataset/bert_config.json \
# 	--init_checkpoint=$dataset/model.ckpt-14470 \
# 	--max_seq_length=384 \
# 	--train_batch_size=10 \
# 	--learning_rate=5e-6 \
# 	--doc_stride=128 \
# 	--do_lower_case=False \
# 	--num_train_epochs=2 \
# 	--train_file=$dataset/BioASQ-6b/train/Snippet-as-is/BioASQ-train-yesno-6b-snippet.json \
# 	--predict_file=$dataset/BioASQ-6b/test/Snippet-as-is/BioASQ-test-yesno-6b-3-snippet.json \
# 	--output_dir=/tmp/yesno_output/

## list questions
echo "Please use SQuADv1-trained model for factoid, list questions : BERT-pubmed-1000000-SQuAD/model.ckpt-14599"
#export BIOBERT_DIR=$HOME/BioASQ/BERT-pubmed-1000000-SQuAD

# python run_list.py \
#      --do_train=True \
#      --do_predict=True \
#      --vocab_file=$dataset/vocab.txt \
#      --bert_config_file=$dataset/bert_config.json \
#      --init_checkpoint=$dataset/model.ckpt-14599 \
#      --max_seq_length=384 \
#      --train_batch_size=10 \
#      --learning_rate=5e-6 \
#      --doc_stride=128 \
#      --num_train_epochs=7 \
#      --do_lower_case=False \
#      --train_file=$dataset/BioASQ-6b/train/Full-Abstract/BioASQ-train-list-6b-full-annotated.json \
#      --predict_file=$dataset/BioASQ-6b/test/Full-Abstract/BioASQ-test-list-6b-3.json \
#      --output_dir=/tmp/list_output/
