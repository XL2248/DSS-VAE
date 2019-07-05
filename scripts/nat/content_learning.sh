#!/usr/bin/env bash
# rel1_shaw_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel1_shaw_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 4 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.0 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double --pos_valid_use oracle --print_out --pos_attn_type shaw"

# rel1_shaw_heuristic_search + skip_gram + emb
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel1_shaw_emb_gram --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 4 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.2 --layer_bow_loss --layer_weight 0 0 0 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 2 0 0 --state_share_output --pos_map_select e_double --print_out --pos_attn_type shaw"

# rel1_shaw_heuristic_search + skip_gram + emb + fixed mapping
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel1_shaw_emb_gram_f --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 4 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.2 --layer_bow_loss --layer_weight 0 0 0 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 2 0 0 --state_share_output --pos_map_select f_double --final_pos_map_select f_double --print_out --pos_attn_type shaw"

# rel1_shaw_heuristic_search + no distill
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel1_shaw_heuristic_search_NoDistill --decoder_input_how interpolate --decoder_query_select hidden --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 4 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.0 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double --pos_valid_use oracle --print_out --pos_attn_type shaw"

# rel1_batch_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel1_batch_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 4 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.0 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double --pos_valid_use oracle --print_out"

# default_rel1_shaw_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "default_rel1_shaw_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 1 0 0 1 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.1 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double --print_out --trim_eos --pos_attn_type shaw"

# attn_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "attn_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 1 0 0 1 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.1 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double --pos_valid_use oracle --print_out --attn_type default"

# default_attn_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "default_attn_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 1 0 0 1 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.1 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double  --print_out --attn_type none --trim_eos --pos_dec_init default"

# none_attn_posAtt_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "none_attn_posAtt_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 1 0 0 1 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.1 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double  --print_out --attn_type none --positional --trim_eos"

# default_attn_posAtt_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "default_attn_posAtt_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 1 0 0 1 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.1 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double  --print_out --attn_type none --positional --trim_eos --pos_dec_init default"

# gu_heuristic_search
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "gu_heuristic_search --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 278 --d_hidden 507 --n_heads 2 --n_layers 5 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 11 0 0 0 0 11 --pos_pred_type 11 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_predict_weight 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.0 --layer_bow_loss --layer_weight 1 1 1 1 1 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 0 0 0 --state_window_size 3 0 0 --state_share_output --pos_map_select e_double  --print_out --attn_type none --positional --trim_eos --pos_dec_init default"

# rel8_shaw_heuristic_search + skip_gram + emb
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel8_shaw_emb_gram --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 1 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 12 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.2 --layer_bow_loss --layer_weight 0 0 0 --content_loss_type emb skip_gram pred --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 4 0 0 --state_share_output --pos_map_select f_double --final_pos_map_select f_double --print_out --pos_attn_type shaw"

# L2R Prior
sh debug.sh BYTETRANS iwslt-deen PositionalFasterTransformer "rel4_shaw_l2r --decoder_input_how interpolate --decoder_query_select hidden --use_distillation --pos_match_norm --ar_supervised --max_rel_len 4 --load_vocab --share_vocab --share_embed --d_model 400 --d_hidden 800 --n_heads 4 --n_layers 3 --warmup 746 --ffw_block highway --share_pos_repr --share_pos_pred --pos_n_layers 2 --pos_predict_layer 1 0 0 --pos_pred_type 12 --pos_index_out --valid_with_teacher --pos_order_scale 0 --pos_predict_scale 0 --pos_init --keep_grad_for_pos_pred --keep_grad_for_pos_match --content_scale 0.2 --layer_bow_loss --layer_weight 0 1 1 --content_loss_type l2r_prior --pos_index_state --state_bow_loss --state_weight 1 0 0 --state_window_size 4 0 0 --state_share_output --pos_map_select f_double --final_pos_map_select f_double --print_out --pos_attn_type shaw"