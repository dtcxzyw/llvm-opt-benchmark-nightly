Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee802154?download=true
inline.NumInlined: 96
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.1109 = private unnamed_addr constant [32 x i8] c"FSK #4a 200ksym/s mod-index 0.5\00", align 1
@.str.1110 = private unnamed_addr constant [32 x i8] c"FSK #4b 200ksym/s mod-index 1.0\00", align 1
@.str.1111 = private unnamed_addr constant [31 x i8] c"FSK #5 300ksym/s mod-index 0.5\00", align 1
@.str.1112 = private unnamed_addr constant [40 x i8] c"FSK with FEC #1a 50ksym/s mod-index 0.5\00", align 1
@.str.1113 = private unnamed_addr constant [40 x i8] c"FSK with FEC #1b 50ksym/s mod-index 1.0\00", align 1
@.str.1114 = private unnamed_addr constant [41 x i8] c"FSK with FEC #2a 100ksym/s mod-index 0.5\00", align 1
@.str.1115 = private unnamed_addr constant [41 x i8] c"FSK with FEC #2b 100ksym/s mod-index 1.0\00", align 1
@.str.1116 = private unnamed_addr constant [40 x i8] c"FSK with FEC #3 150ksym/s mod-index 0.5\00", align 1
@.str.1117 = private unnamed_addr constant [41 x i8] c"FSK with FEC #4a 200ksym/s mod-index 0.5\00", align 1
@.str.1118 = private unnamed_addr constant [41 x i8] c"FSK with FEC #4b 200ksym/s mod-index 1.0\00", align 1
@.str.1119 = private unnamed_addr constant [40 x i8] c"FSK with FEC #5 300ksym/s mod-index 0.5\00", align 1
@.str.1120 = private unnamed_addr constant [28 x i8] c"OFDM Option 1 MCS 2 400kbps\00", align 1
@.str.1121 = private unnamed_addr constant [28 x i8] c"OFDM Option 1 MCS 3 800kbps\00", align 1
@.str.1122 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 4 1200kbps\00", align 1
@.str.1123 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 5 1600kbps\00", align 1
@.str.1124 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 6 2400kbps\00", align 1
@.str.1125 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 3 400kbps\00", align 1
@.str.1126 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 4 600kbps\00", align 1
@.str.1127 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 5 800kbps\00", align 1
@.str.1128 = private unnamed_addr constant [29 x i8] c"OFDM Option 2 MCS 6 1200kbps\00", align 1
@.str.1129 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 4 300kbps\00", align 1
@.str.1130 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 5 400kbps\00", align 1
@.str.1131 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 6 600kbps\00", align 1
@.str.1132 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 4 150kbps\00", align 1
@.str.1133 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 5 200kbps\00", align 1
@.str.1134 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 6 300kbps\00", align 1
@ieee802154_phr_wisun_phymodeid = internal constant [32 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1104 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1105 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1106 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1107 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1108 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1109 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1110 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1111 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.1112 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.1113 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.1114 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.1115 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.1116 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.1117 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.1118 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.1119 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.1120 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.1121 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.1122 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.1123 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.1124 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.1125 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.1126 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.1127 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.1128 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.1129 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.1130 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.1131 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.1132 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.1133 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.1134 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1136 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1138 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1139 = private unnamed_addr constant [8 x i8] c"No hash\00", align 1
@.str.1140 = private unnamed_addr constant [15 x i8] c"ZigBee IP hash\00", align 1
@.str.1141 = private unnamed_addr constant [12 x i8] c"Thread hash\00", align 1
@ieee802154_key_hash_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1139 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1140 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1141 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1143 = private unnamed_addr constant [28 x i8] c"IEEE 802.15.4 PAN 0x%04x as\00", align 1
@.str.1144 = private unnamed_addr constant [26 x i8] c"IEEE 802.15.4 PAN Unknown\00", align 1
@.str.1145 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.1146 = private unnamed_addr constant [10 x i8] c"Broadcast\00", align 1
@.str.1147 = private unnamed_addr constant [22 x i8] c"Invalid short address\00", align 1
@.str.1148 = private unnamed_addr constant [23 x i8] c"Invalid PAN identifier\00", align 1
@.str.1149 = private unnamed_addr constant [22 x i8] c"Invalid EUI-64 length\00", align 1
@.str.1150 = private unnamed_addr constant [12 x i8] c"Invalid key\00", align 1
@.str.1151 = private unnamed_addr constant [30 x i8] c"Key must be at least %d bytes\00", align 1
@.str.1152 = private unnamed_addr constant [9 x i8] c"ZigBeeIP\00", align 1
@.str.1153 = private unnamed_addr constant [12 x i8] c"AES-CCM-128\00", align 1
@.str.1154 = private unnamed_addr constant [49 x i8] c"AES-128 Encryption, 128-bit Integrity Protection\00", align 1
@.str.1155 = private unnamed_addr constant [11 x i8] c"AES-CCM-64\00", align 1
@.str.1156 = private unnamed_addr constant [48 x i8] c"AES-128 Encryption, 64-bit Integrity Protection\00", align 1
@.str.1157 = private unnamed_addr constant [11 x i8] c"AES-CCM-32\00", align 1
@.str.1158 = private unnamed_addr constant [48 x i8] c"AES-128 Encryption, 32-bit Integrity Protection\00", align 1
@ieee802154_2003_sec_suite_enums = internal constant [4 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.1153, ptr @.str.1154, i32 7, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1155, ptr @.str.1156, i32 6, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1157, ptr @.str.1158, i32 5, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.1160 = private unnamed_addr constant [10 x i8] c", page %u\00", align 1
@.str.1161 = private unnamed_addr constant [13 x i8] c", channel %u\00", align 1
@__const.ieee802154_fcs_type_len.fcs_type_lengths = private unnamed_addr constant [3 x i32] [i32 2, i32 2, i32 4], align 4
@.str.1162 = private unnamed_addr constant [10 x i8] c", Bad FCS\00", align 1
@.str.1163 = private unnamed_addr constant [36 x i8] c"No ack found to request in frame %u\00", align 1
@.str.1164 = private unnamed_addr constant [36 x i8] c"No request found to ack in frame %u\00", align 1
@ieee802154_transaction_timeout = internal constant { i64, i32, [4 x i8] } { i64 1, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.1166 = private unnamed_addr constant [34 x i8] c"TI CC24xx-format metadata: FCS %s\00", align 1
@.str.1167 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1168 = private unnamed_addr constant [4 x i8] c"Bad\00", align 1
@.str.1169 = private unnamed_addr constant [11 x i8] c" (Correct)\00", align 1
@.str.1170 = private unnamed_addr constant [34 x i8] c" (Incorrect, expected FCS=0x%04x)\00", align 1
@.str.1171 = private unnamed_addr constant [34 x i8] c" (Incorrect, expected FCS=0x%08x)\00", align 1
@dissect_ieee802154_nonask_phy.phr_fields = internal constant [2 x ptr] [ptr @hf_ieee802154_nonask_phy_length, ptr null], align 16
@.str.1172 = private unnamed_addr constant [19 x i8] c"IEEE 802.15.4 Data\00", align 1
@.str.1173 = private unnamed_addr constant [10 x i8] c": %s (%u)\00", align 1
@.str.1174 = private unnamed_addr constant [9 x i8] c"%.2f dBm\00", align 1
@.str.1175 = private unnamed_addr constant [11 x i8] c": %.2f dBm\00", align 1
@.str.1176 = private unnamed_addr constant [12 x i8] c": %.3f kbps\00", align 1
@.str.1177 = private unnamed_addr constant [28 x i8] c": Page: %s (%u), Number: %u\00", align 1
@.str.1178 = private unnamed_addr constant [7 x i8] c": %s s\00", align 1
@.str.1179 = private unnamed_addr constant [6 x i8] c": %lu\00", align 1
@.str.1180 = private unnamed_addr constant [8 x i8] c": %u %s\00", align 1
@.str.1181 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@.str.1182 = private unnamed_addr constant [9 x i8] c"%.3f kHz\00", align 1
@.str.1183 = private unnamed_addr constant [11 x i8] c": %.3f kHz\00", align 1
@.str.1184 = private unnamed_addr constant [17 x i8] c": Start %.3f kHz\00", align 1
@.str.1185 = private unnamed_addr constant [19 x i8] c", Spacing %.3f kHz\00", align 1
@.str.1186 = private unnamed_addr constant [14 x i8] c", Channels %u\00", align 1
@.str.1187 = private unnamed_addr constant [12 x i8] c"Unknown TLV\00", align 1
@.str.1188 = private unnamed_addr constant [8 x i8] c"%.3f %s\00", align 1
@.str.1189 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1190 = private unnamed_addr constant [16 x i8] c": Band: %s (%u)\00", align 1
@.str.1191 = private unnamed_addr constant [16 x i8] c", Type: %s (%u)\00", align 1
@.str.1192 = private unnamed_addr constant [11 x i8] c", Mode: %u\00", align 1
@dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_wisun_ms_fields = internal constant [6 x ptr] [ptr @hf_ieee802154_tap_phr_fsk_ms, ptr @hf_ieee802154_tap_phr_wisun_fsk_ms_reserved, ptr @hf_ieee802154_tap_phr_wisun_fsk_ms_phymodeid, ptr @hf_ieee802154_tap_phr_fsk_ms_checksum, ptr @hf_ieee802154_tap_phr_fsk_ms_parity, ptr null], align 16
@dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_fields = internal constant [9 x ptr] [ptr @hf_ieee802154_tap_phr_fsk_ms, ptr @hf_ieee802154_tap_phr_fsk_ms_param, ptr @hf_ieee802154_tap_phr_fsk_ms_fec, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_page, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_scheme, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_mode, ptr @hf_ieee802154_tap_phr_fsk_ms_checksum, ptr @hf_ieee802154_tap_phr_fsk_ms_parity, ptr null], align 16
@dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_ofdm_fields = internal constant [8 x ptr] [ptr @hf_ieee802154_tap_phr_fsk_ms, ptr @hf_ieee802154_tap_phr_fsk_ms_param, ptr @hf_ieee802154_tap_phr_fsk_ms_fec, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_page, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_scheme, ptr @hf_ieee802154_tap_phr_fsk_ms_checksum, ptr @hf_ieee802154_tap_phr_fsk_ms_parity, ptr null], align 16
@dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_addl_fields = internal constant [9 x ptr] [ptr @hf_ieee802154_tap_phr_fsk_ms, ptr @hf_ieee802154_tap_phr_fsk_ms_param, ptr @hf_ieee802154_tap_phr_fsk_ms_fec, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_page, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_scheme, ptr @hf_ieee802154_tap_phr_fsk_ms_mode_addl_mode, ptr @hf_ieee802154_tap_phr_fsk_ms_checksum, ptr @hf_ieee802154_tap_phr_fsk_ms_parity, ptr null], align 16
@dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_fields = internal constant [5 x ptr] [ptr @hf_ieee802154_tap_phr_fsk_ms, ptr @hf_ieee802154_tap_phr_fsk_fcs, ptr @hf_ieee802154_tap_phr_fsk_dw, ptr @hf_ieee802154_tap_phr_fsk_length, ptr null], align 16
@ieee802154_ct_dissector_info = internal global %struct._ct_dissector_info { ptr @ieee802154_conv_get_filter_type }, align 8
@.str.1193 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@ieee802154_endpoint_dissector_info = internal global %struct._et_dissector_info { ptr @ieee802154_endpoint_get_filter_type }, align 8
@.str.1194 = private unnamed_addr constant [32 x i8] c"wpan.%s eq %s and wpan.%s eq %s\00", align 1
@.str.1195 = private unnamed_addr constant [7 x i8] c"addr64\00", align 1
@dissect_hie_time_correction.fields = internal constant [3 x ptr] [ptr @hf_ieee802154_hie_time_correction_value, ptr @hf_ieee802154_nack, ptr null], align 16
@.str.1196 = private unnamed_addr constant [7 x i8] c": NACK\00", align 1
@.str.1197 = private unnamed_addr constant [18 x i8] c"CSL Wake-up Frame\00", align 1
@.str.1198 = private unnamed_addr constant [23 x i8] c", Rendez-Vous Time: %d\00", align 1
@dissect_pie_mlme.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@ieee802154_create_psie_tree.fields_long = internal constant [4 x ptr] [ptr @hf_ieee802154_psie_type, ptr @hf_ieee802154_psie_id_long, ptr @hf_ieee802154_psie_length_long, ptr null], align 16
@ieee802154_create_psie_tree.fields_short = internal constant [4 x ptr] [ptr @hf_ieee802154_psie_type, ptr @hf_ieee802154_psie_id_short, ptr @hf_ieee802154_psie_length_short, ptr null], align 16
@dissect_mpx_ie.fields = internal constant [3 x ptr] [ptr @hf_ieee802159_mpx_transaction_id, ptr @hf_ieee802159_mpx_transfer_type, ptr null], align 16
@dissect_mpx_ie.fields_compressed_multiplex_id = internal constant [3 x ptr] [ptr @hf_ieee802159_mpx_transaction_id_as_multiplex_id, ptr @hf_ieee802159_mpx_transfer_type, ptr null], align 16
@.str.1199 = private unnamed_addr constant [12 x i8] c"%s (0x%04x)\00", align 1
@etype_vals = external constant [0 x %struct._value_string], align 8
@dissect_ietf_ie.cell_options = internal constant [5 x ptr] [ptr @hf_ieee802154_6top_cell_option_tx, ptr @hf_ieee802154_6top_cell_option_rx, ptr @hf_ieee802154_6top_cell_option_shared, ptr @hf_ieee802154_6top_cell_option_reserved, ptr null], align 16
@.str.1200 = private unnamed_addr constant [5 x i8] c"6top\00", align 1
@.str.1201 = private unnamed_addr constant [14 x i8] c"6P %s Request\00", align 1
@.str.1202 = private unnamed_addr constant [11 x i8] c"6P %s (%s)\00", align 1
@.str.1203 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1204 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1205 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.1206 = private unnamed_addr constant [9 x i8] c"RELOCATE\00", align 1
@.str.1207 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.1208 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.1209 = private unnamed_addr constant [7 x i8] c"SIGNAL\00", align 1
@.str.1210 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@ietf_6top_command_identifiers = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1204 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1205 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1206 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1207 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1208 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1209 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1210 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1212 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.1213 = private unnamed_addr constant [7 x i8] c"RC_EOL\00", align 1
@.str.1214 = private unnamed_addr constant [7 x i8] c"RC_ERR\00", align 1
@.str.1215 = private unnamed_addr constant [9 x i8] c"RC_RESET\00", align 1
@.str.1216 = private unnamed_addr constant [15 x i8] c"RC_ERR_VERSION\00", align 1
@.str.1217 = private unnamed_addr constant [12 x i8] c"RC_ERR_SFID\00", align 1
@.str.1218 = private unnamed_addr constant [14 x i8] c"RC_ERR_SEQNUM\00", align 1
@.str.1219 = private unnamed_addr constant [16 x i8] c"RC_ERR_CELLLIST\00", align 1
@.str.1220 = private unnamed_addr constant [12 x i8] c"RC_ERR_BUSY\00", align 1
@.str.1221 = private unnamed_addr constant [14 x i8] c"RC_ERR_LOCKED\00", align 1
@ietf_6top_return_codes = internal constant [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1212 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1213 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1214 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1215 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1216 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1217 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1218 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1220 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.1221 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1223 = private unnamed_addr constant [16 x i8] c"Slotframes [%u]\00", align 1
@dissect_802154_tsch_slotframe_link.fields_options = internal constant [6 x ptr] [ptr @hf_ieee802154_tsch_slotf_link_options_tx, ptr @hf_ieee802154_tsch_slotf_link_options_rx, ptr @hf_ieee802154_tsch_slotf_link_options_shared, ptr @hf_ieee802154_tsch_slotf_link_options_timkeeping, ptr @hf_ieee802154_tsch_slotf_link_options_priority, ptr null], align 16
@dissect_802154_eb_filter.fields_eb_filter = internal constant [5 x ptr] [ptr @hf_ieee802154_psie_eb_filter_pjoin, ptr @hf_ieee802154_psie_eb_filter_lqi, ptr @hf_ieee802154_psie_eb_filter_percent, ptr @hf_ieee802154_psie_eb_filter_attr_id, ptr null], align 16
@switch.table.dissect_ieee802154_tap = private unnamed_addr constant [4 x ptr] [ptr @dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_fields, ptr @dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_ofdm_fields, ptr @dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_ofdm_fields, ptr @dissect_ieee802154_tap_phy_header.ieee802154_tap_phr_fsk_ms_addl_fields], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_ieee802154_mac_key_hash_handler(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mac_key_hash_handlers, align 8
  %i.b = tail call ptr @wmem_tree_lookup32(ptr noundef %i.a, i32 noundef %0)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.14, ptr noundef @.str.15, i32 noundef 1883, ptr noundef @.str.16) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @mac_key_hash_handlers, align 8
  tail call void @wmem_tree_insert32(ptr noundef %i.d, i32 noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_ieee802154_aux_sec_header_and_key(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef initializes((64, 72)) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load i32, ptr %4, align 4
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.b) ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = and i32 %i.d, 7
  %i.f = getelementptr i8, ptr %3, i64 64
  store i32 %i.e, ptr %i.f, align 8
  %i.g = lshr i32 %i.d, 3
  %i.h = and i32 %i.g, 3                          ; 4 uses
  %i.i = getelementptr i8, ptr %3, i64 68         ; 4 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load i32, ptr %3, align 8
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr i8, ptr %3, i64 72         ; 2 uses
  br i1 %i.k, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %i.l, align 8, !range !6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i8 %i.c, 5
  %.lobit = and i8 %i.m, 1                        ; 2 uses
  store i8 %.lobit, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i8 [ %.pre, %._crit_edge ], [ %.lobit, %bb.b ]
  %i.o = getelementptr i8, ptr %3, i64 72
  %i.p = trunc nuw i8 %i.n to i1
  %spec.select = select i1 %i.p, i32 1, i32 5
  %.not = icmp ne i32 %i.h, 0
  %i.q = zext i1 %.not to i32
  %.1 = add nuw nsw i32 %spec.select, %i.q        ; 3 uses
  %i.r = icmp eq i32 %i.h, 2
  %i.s = add nuw nsw i32 %.1, 4
  %.2 = select i1 %i.r, i32 %i.s, i32 %.1
  %i.t = icmp eq i32 %i.h, 3
  %5 = or disjoint i32 %.1, 8
  %.3 = select i1 %i.t, i32 %5, i32 %.2
  %i.u = load i32, ptr @hf_ieee802154_aux_security_header, align 4
  %i.v = load i32, ptr %4, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.v, i32 noundef %.3, i32 noundef 0) ; 2 uses
  store ptr %i.w, ptr %i.a, align 8
  %i.x = load i32, ptr @ett_ieee802154_auxiliary_security, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x) ; 3 uses
  %i.z = load i32, ptr %4, align 4
  %i.aa = load i32, ptr @hf_ieee802154_aux_sec_security_control, align 4
  %i.ab = load i32, ptr @ett_ieee802154_aux_sec_control, align 4
  %i.ac = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.y, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, ptr noundef @dissect_ieee802154_aux_sec_header_and_key.security_fields, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr %4, align 4
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %4, align 4
  %i.af = load i8, ptr %i.o, align 8, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr @hf_ieee802154_aux_sec_frame_counter, align 4
  %i.ai = getelementptr i8, ptr %3, i64 76
  %i.aj = tail call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.y, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef -2147483648, ptr noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr %4, align 4
  %i.al = add i32 %i.ak, 4
  store i32 %i.al, ptr %4, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.am = load i64, ptr @ieee802154_tsch_asn, align 8
  %i.an = getelementptr i8, ptr %3, i64 88
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = load i32, ptr %i.i, align 4
  %.not69 = icmp eq i32 %i.ao, 0
  br i1 %.not69, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %4, align 4
  %i.aq = load i32, ptr @ett_ieee802154_aux_sec_key_id, align 4
  %i.ar = call ptr @proto_tree_add_subtree(ptr noundef %i.y, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef @.str.17) ; 5 uses
  %i.as = load i32, ptr %i.i, align 4             ; 2 uses
  %i.at = icmp eq i32 %i.as, 2
  %.pre73.pre = load i32, ptr %4, align 4         ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.au = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre73.pre) ; 2 uses
  %i.av = getelementptr i8, ptr %3, i64 96
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = load i32, ptr @hf_ieee802154_aux_sec_key_source, align 4
  %i.ax = load i32, ptr %4, align 4
  %i.ay = zext i32 %i.au to i64
  %i.az = call ptr @proto_tree_add_uint64(ptr noundef %i.ar, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i64 noundef %i.ay) ; 0 uses
  %i.ba = load i32, ptr @hf_ieee802154_aux_sec_key_source_bytes, align 4
  %i.bb = load i32, ptr %4, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.bb, i32 noundef 4, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.be, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.be, i64 28     ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.h, %bb.i, %bb.j
  %i.bi = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.bi, i32 noundef 5)
  %i.bj = load i32, ptr %4, align 4
  %i.bk = add i32 %i.bj, 4                        ; 2 uses
  store i32 %i.bk, ptr %4, align 4
  %.pr = load i32, ptr %i.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %proto_item_set_hidden.exit, %bb.g
  %.pre73 = phi i32 [ %i.bk, %proto_item_set_hidden.exit ], [ %.pre73.pre, %bb.g ] ; 2 uses
  %i.bl = phi i32 [ %.pr, %proto_item_set_hidden.exit ], [ %i.as, %bb.g ]
  %i.bm = icmp eq i32 %i.bl, 3
  br i1 %i.bm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bn = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %.pre73) ; 2 uses
  %i.bo = getelementptr i8, ptr %3, i64 96
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = load i32, ptr @hf_ieee802154_aux_sec_key_source, align 4
  %i.bq = load i32, ptr %4, align 4
  %i.br = call ptr @proto_tree_add_uint64(ptr noundef %i.ar, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bq, i32 noundef 8, i64 noundef %i.bn) ; 0 uses
  %i.bs = load i32, ptr @hf_ieee802154_aux_sec_key_source_bytes, align 4
  %i.bt = load i32, ptr %4, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.ar, i32 noundef %i.bs, ptr noundef %0, i32 noundef %i.bt, i32 noundef 8, i32 noundef 0) ; 2 uses
  %.not.i70 = icmp eq ptr %i.bu, null
  br i1 %.not.i70, label %proto_item_set_hidden.exit72, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not5.i71 = icmp eq ptr %i.bw, null
  br i1 %.not5.i71, label %proto_item_set_hidden.exit72, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr i8, ptr %i.bw, i64 28     ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = or i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4
  br label %proto_item_set_hidden.exit72

proto_item_set_hidden.exit72:                     ; preds = %bb.l, %bb.m, %bb.n
  %i.ca = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.ca, i32 noundef 9)
  %i.cb = load i32, ptr %4, align 4
  %i.cc = add i32 %i.cb, 8                        ; 2 uses
  store i32 %i.cc, ptr %4, align 4
  br label %bb.o

bb.o:                                             ; preds = %proto_item_set_hidden.exit72, %bb.k
  %i.cd = phi i32 [ %i.cc, %proto_item_set_hidden.exit72 ], [ %.pre73, %bb.k ]
  %i.ce = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cd) ; 2 uses
  %i.cf = getelementptr i8, ptr %3, i64 104
  store i8 %i.ce, ptr %i.cf, align 8
  %i.cg = load i32, ptr @hf_ieee802154_aux_sec_key_index, align 4
  %i.ch = load i32, ptr %4, align 4
  %i.ci = zext i8 %i.ce to i32
  %i.cj = call ptr @proto_tree_add_uint(ptr noundef %i.ar, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef %i.ci) ; 0 uses
  %i.ck = load i32, ptr %4, align 4
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %4, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh64(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @decrypt_ieee802154_payload(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef initializes((0, 4)) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %5, align 8
  %i.c = load i32, ptr @num_ieee802154_keys, align 4
  %.not49 = icmp eq i32 %i.c, 0
  br i1 %.not49, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %5, i64 32         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.03144 = phi ptr [ null, %.lr.ph ], [ %.3.ph, %.thread ]
  %storemerge43 = phi i32 [ 0, %.lr.ph ], [ %i.r, %.thread ]
end_hunk_0
