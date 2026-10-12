Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-macsec?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str = private unnamed_addr constant [4 x i8] c"TCI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"macsec.TCI\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"TAG Control Information\00", align 1
@hf_macsec_TCI_V = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"VER\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"macsec.TCI.V\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@hf_macsec_TCI_ES = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"macsec.TCI.ES\00", align 1
@tfs_set_notset = external constant %struct.true_false_string, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"End Station\00", align 1
@hf_macsec_TCI_SC = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"macsec.TCI.SC\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Secure Channel\00", align 1
@hf_macsec_TCI_SCB = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"SCB\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"macsec.TCI.SCB\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Single Copy Broadcast\00", align 1
@hf_macsec_TCI_E = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"macsec.TCI.E\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Encryption\00", align 1
@hf_macsec_TCI_C = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"macsec.TCI.C\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Changed Text\00", align 1
@hf_macsec_AN = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"AN\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"macsec.AN\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Association Number\00", align 1
@hf_macsec_SL = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"Short length\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"macsec.SL\00", align 1
@hf_macsec_PN = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"Packet number\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"macsec.PN\00", align 1
@hf_macsec_XPN = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [23 x i8] c"Extended packet number\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"macsec.XPN\00", align 1
@hf_macsec_SCI = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"SCI\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"macsec.SCI\00", align 1
@hf_macsec_SCI_system_identifier = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"System Identifier\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"macsec.SCI.system_identifier\00", align 1
@hf_macsec_SCI_port_identifier = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"Port Identifier\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"macsec.SCI.port_identifier\00", align 1
@hf_macsec_etype = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"Ethertype\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"macsec.etype\00", align 1
@etype_vals = external constant [0 x %struct._value_string], align 8
@hf_macsec_eth_padding = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [8 x i8] c"Padding\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"macsec.eth_padding\00", align 1
@hf_macsec_ICV = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"ICV\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"macsec.ICV\00", align 1
@hf_macsec_verify_info = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"Verification Info\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"macsec.verify_info\00", align 1
@hf_macsec_ICV_check_success = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [30 x i8] c"Frame Verification Successful\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"macsec.verify_info.verified\00", align 1
@hf_macsec_ckn_info = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [14 x i8] c"CAK Name Info\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"macsec.verify_info.cak_name.info\00", align 1
@hf_macsec_ckn_table_index = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"CKN Table Index\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"macsec.verify_info.cak_name.index\00", align 1
@hf_macsec_sak = internal global i32 0, align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"SAK\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"macsec.verify_info.sak\00", align 1
@hf_macsec_psk_info = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [14 x i8] c"PSK Name Info\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"macsec.verify_info.psk_name.info\00", align 1
@hf_macsec_psk_table_index = internal global i32 0, align 4
@.str.54 = private unnamed_addr constant [16 x i8] c"PSK Table Index\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"macsec.verify_info.psk_name.index\00", align 1
@hf_macsec_psk = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"macsec.verify_info.psk\00", align 1
@hf_macsec_decrypted_data = internal global i32 0, align 4
@.str.58 = private unnamed_addr constant [15 x i8] c"Decrypted Data\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"macsec.decrypted_data\00", align 1
@proto_register_macsec.ei = internal global [3 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_macsec_not_processed, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.60, i32 83886080, i32 4194304, ptr @.str.61, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_macsec_nonstandard_cipher, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.62, i32 83886080, i32 4194304, ptr @.str.63, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_macsec_payload_too_large, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.64, i32 83886080, i32 4194304, ptr @.str.65, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_macsec_not_processed = internal global %struct.expert_field zeroinitializer, align 4
@.str.60 = private unnamed_addr constant [21 x i8] c"macsec.not_processed\00", align 1
@.str.61 = private unnamed_addr constant [116 x i8] c"E bit set and C bit clear indicates frames not to be delivered to the Controlled Port (Reserved for use by the KaY)\00", align 1
@ei_macsec_nonstandard_cipher = internal global %struct.expert_field zeroinitializer, align 4
@.str.62 = private unnamed_addr constant [26 x i8] c"macsec.nonstandard_cipher\00", align 1
@.str.63 = private unnamed_addr constant [149 x i8] c"E bit clear and C bit set indicates a non-standard cipher that modifies the data or uses a ICV other than 16 octets long even in integrity-only mode\00", align 1
@ei_macsec_payload_too_large = internal global %struct.expert_field zeroinitializer, align 4
@.str.64 = private unnamed_addr constant [25 x i8] c"macsec.payload_too_large\00", align 1
@.str.65 = private unnamed_addr constant [105 x i8] c"Payload is larger than can currently be handled. Contact Wireshark developers if you want this supported\00", align 1
@proto_register_macsec.ett = internal global [4 x ptr] [ptr @ett_macsec, ptr @ett_macsec_tci, ptr @ett_macsec_sci, ptr @ett_macsec_verify], align 16
@ett_macsec = internal global i32 0, align 4
@ett_macsec_tci = internal global i32 0, align 4
@ett_macsec_sci = internal global i32 0, align 4
@ett_macsec_verify = internal global i32 0, align 4
@.str.66 = private unnamed_addr constant [21 x i8] c"802.1AE Security Tag\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"MACsec\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"macsec\00", align 1
@proto_macsec = internal unnamed_addr global i32 0, align 4
@macsec_handle = internal unnamed_addr global ptr null, align 8
@proto_register_macsec.psk_macsec_uat_fields = internal global [3 x { ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.0, ptr, ptr, ptr }] [{ ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.0, ptr, ptr, ptr } { ptr @.str.69, ptr @.str.70, i32 2, [4 x i8] zeroinitializer, %struct.anon { ptr null, ptr @psk_config_data_key_set_cb, ptr @psk_config_data_key_tostr_cb }, %struct.anon.0 zeroinitializer, ptr null, ptr @.str.71, ptr null }, { ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.0, ptr, ptr, ptr } { ptr @.str.72, ptr @.str.73, i32 1, [4 x i8] zeroinitializer, %struct.anon { ptr @uat_fld_chk_str, ptr @psk_config_data_name_set_cb, ptr @psk_config_data_name_tostr_cb }, %struct.anon.0 zeroinitializer, ptr null, ptr @.str.74, ptr null }, { ptr, ptr, i32, [4 x i8], %struct.anon, %struct.anon.0, ptr, ptr, ptr } zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.71 = private unnamed_addr constant [58 x i8] c"Pre-Shared Key (AES-GCM-128 or AES-GCM-256) as byte array\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"PSK info to display\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"Pre-Shared Key List\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"psk_config_data\00", align 1
@psk_config_data = internal global ptr null, align 8
@psk_config_data_count = internal global i32 0, align 4
@.str.77 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"psk_list\00", align 1
@.str.79 = private unnamed_addr constant [66 x i8] c"A list of AES-GCM Pre-Shared Keys (PSKs) as HEX (16 or 32 bytes).\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"mka\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"Also Use MKA For Decode\00", align 1
@.str.82 = private unnamed_addr constant [73 x i8] c"Also attempt to use EAPOL-MKA Distributed SAKs to decode MACsec packets.\00", align 1
@try_mka = internal global i8 1, align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"ethertype\00", align 1
@ethertype_handle = internal unnamed_addr global ptr null, align 8
@icv_len = internal unnamed_addr global i1 false, align 4
@.str.84 = private unnamed_addr constant [7 x i8] c"MACSEC\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"MACsec frame\00", align 1
@dissect_macsec.flags = internal constant [7 x ptr] [ptr @hf_macsec_TCI_V, ptr @hf_macsec_TCI_ES, ptr @hf_macsec_TCI_SC, ptr @hf_macsec_TCI_SCB, ptr @hf_macsec_TCI_E, ptr @hf_macsec_TCI_C, ptr null], align 16
@aad = internal global [1514 x i8] zeroinitializer, align 16
@aad_len = internal unnamed_addr global i32 0, align 4
@iv = internal global [12 x i8] zeroinitializer, align 8
@.str.86 = private unnamed_addr constant [32 x i8] c"epan/dissectors/packet-macsec.c\00", align 1
@__func__.dissect_macsec = private unnamed_addr constant [15 x i8] c"dissect_macsec\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"No Ethernet source address\00", align 1
@icv = internal global [16 x i8] zeroinitializer, align 16
@macsec_payload = internal global [1514 x i8] zeroinitializer, align 16
@macsec_payload_len = internal unnamed_addr global i32 0, align 4
@.str.88 = private unnamed_addr constant [54 x i8] c"%s:%u: failed assertion table_index >= 0 (%ld >= %ld)\00", align 1
@sak_for_decode = internal unnamed_addr global ptr null, align 8
@sak_for_decode_len = internal unnamed_addr global i32 0, align 4
@.str.89 = private unnamed_addr constant [14 x i8] c" [UNVERIFIED]\00", align 1
@__func__.attempt_packet_decode = private unnamed_addr constant [22 x i8] c"attempt_packet_decode\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"failed to open cipher context\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"failed to set cipher key\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"failed to set cipher IV\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"failed to authenticate\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"failed to decrypt\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"Only AES-128 (16 byte) or AES-256 (32 byte) keys are supported\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Missing PSK ID!\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_macsec() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) ; 2 uses
  store i32 %i.a, ptr @proto_macsec, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_macsec.hf, i32 noundef 26)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_macsec.ett, i32 noundef 4)
  %i.b = load i32, ptr @proto_macsec, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_macsec.ei, i32 noundef 3)
  %i.d = load i32, ptr @proto_macsec, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.68, ptr noundef nonnull @dissect_macsec, i32 noundef %i.d)
  store ptr %i.e, ptr @macsec_handle, align 8
  %i.f = load i32, ptr @proto_macsec, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef null) ; 3 uses
  %i.h = tail call ptr @uat_new(ptr noundef nonnull @.str.75, i64 noundef 24, ptr noundef nonnull @.str.76, i1 noundef zeroext true, ptr noundef nonnull @psk_config_data, ptr noundef nonnull @psk_config_data_count, i32 noundef 1, ptr noundef null, ptr noundef nonnull @copy_psk_config_cb, ptr noundef nonnull @update_psk_config, ptr noundef nonnull @free_psk_config_cb, ptr noundef nonnull @post_update_psk_config_cb, ptr noundef null, ptr noundef nonnull @proto_register_macsec.psk_macsec_uat_fields)
  tail call void @prefs_register_obsolete_preference(ptr noundef %i.g, ptr noundef nonnull @.str.77)
  tail call void @prefs_register_uat_preference(ptr noundef %i.g, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.79, ptr noundef %i.h)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @try_mka)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_macsec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %4 = alloca %struct.decode_user_data, align 8   ; 11 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.ethertype_data_s, align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = and i32 %i.d, 12                         ; 2 uses
  %or.cond246 = icmp ne i32 %i.e, 0               ; 6 uses
  %.not236 = icmp sgt i8 %i.c, -1
  br i1 %.not236, label %bb.b, label %bb.ca

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 32
  %.not237.not = icmp eq i32 %i.f, 0              ; 4 uses
  %. = select i1 %.not237.not, i32 6, i32 14      ; 12 uses
  store i1 false, ptr @icv_len, align 4
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.b234 = load i1, ptr @icv_len, align 4
  %i.h = select i1 %.b234, i32 0, i32 16
  %i.i = or disjoint i32 %i.h, %.
  %.not238 = icmp ugt i32 %i.g, %i.i
  br i1 %.not238, label %bb.c, label %bb.ca

bb.c:                                             ; preds = %bb.b
  %i.j = and i8 %i.c, 3
  %i.k = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @col_set_str(ptr noundef %i.l, i32 noundef 35, ptr noundef nonnull @.str.84)
  %i.m = load ptr, ptr %i.k, align 8
  tail call void @col_set_str(ptr noundef %i.m, i32 noundef 25, ptr noundef nonnull @.str.85)
  %i.n = load i32, ptr @proto_macsec, align 4     ; 2 uses
  br i1 %or.cond246, label %bb.d, label %.thread339

.thread339:                                       ; preds = %bb.c
  %i.o = add nuw nsw i32 %., 2
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0)
  %i.q = load i32, ptr @ett_macsec, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 2 uses
  %i.s = load i32, ptr @hf_macsec_TCI, align 4
  %i.t = load i32, ptr @ett_macsec_tci, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @dissect_macsec.flags, i32 noundef 0, i32 noundef 8) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef %., i32 noundef 0)
  %i.w = load i32, ptr @ett_macsec, align 4
  %i.x = tail call ptr @proto_item_add_subtree(ptr noundef %i.v, i32 noundef %i.w) ; 4 uses
  %i.y = load i32, ptr @hf_macsec_TCI, align 4
  %i.z = load i32, ptr @ett_macsec_tci, align 4
  %i.aa = tail call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @dissect_macsec.flags, i32 noundef 0, i32 noundef 8) ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 8, label %bb.e
    i32 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aa, ptr noundef nonnull @ei_macsec_not_processed) ; 0 uses
  store i1 true, ptr @icv_len, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aa, ptr noundef nonnull @ei_macsec_nonstandard_cipher) ; 0 uses
  store i1 true, ptr @icv_len, align 4
  br label %bb.g

bb.g:                                             ; preds = %.thread339, %bb.d, %bb.f, %bb.e
  %i.ad = phi ptr [ %i.r, %.thread339 ], [ %i.x, %bb.d ], [ %i.x, %bb.f ], [ %i.x, %bb.e ] ; 11 uses
  %i.ae = load i32, ptr @hf_macsec_AN, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_macsec_SL, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ad, i32 noundef %i.ag, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ai = load i32, ptr @hf_macsec_PN, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ai, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0)
  br i1 %.not237.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr @hf_macsec_SCI, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ak, ptr noundef %0, i32 noundef 6, i32 noundef 8, i32 noundef 0)
  %i.am = load i32, ptr @ett_macsec_sci, align 4
  %i.an = call ptr @proto_item_add_subtree(ptr noundef %i.al, i32 noundef %i.am) ; 2 uses
  %i.ao = load i32, ptr @hf_macsec_SCI_system_identifier, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.ao, ptr noundef %0, i32 noundef 6, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_macsec_SCI_port_identifier, align 4
  %i.ar = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.aq, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = load i8, ptr %i.b, align 1              ; 2 uses
  %.not239 = icmp eq i8 %i.as, 0
  br i1 %.not239, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = add nuw nsw i32 %., %i.at               ; 2 uses
  %.b233 = load i1, ptr @icv_len, align 4
  %i.av = select i1 %.b233, i32 0, i32 16
  %i.aw = add nuw nsw i32 %i.au, %i.av
  %i.ax = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aw)
  %i.ay = load i8, ptr %i.b, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %., %i.az
  %.b232 = load i1, ptr @icv_len, align 4
  %i.bb = select i1 %.b232, i32 0, i32 16
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  call void @set_actual_length(ptr noundef %0, i32 noundef %i.bc)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.b231 = load i1, ptr @icv_len, align 4
  %i.bd = select i1 %.b231, i32 0, i32 16
  %i.be = or disjoint i32 %i.bd, %.
  %i.bf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.be) ; 2 uses
  %.pre = add i32 %i.bf, %.
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi = phi i32 [ %.pre, %bb.k ], [ %i.au, %bb.j ] ; 4 uses
  %.0203 = phi i32 [ 0, %bb.k ], [ %i.ax, %bb.j ]
  %.0202 = phi i32 [ %i.bf, %bb.k ], [ %i.at, %bb.j ] ; 2 uses
  %i.bg = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %., i32 noundef %.0202) ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @aad, i8 noundef 0, i64 noundef 14, i1 noundef false) #9
  store i32 0, ptr @aad_len, align 4
  %.b230 = load i1, ptr @icv_len, align 4
  br i1 %.b230, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %1, i64 136
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %1, i64 112
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.o, label %thread-pre-split

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %1, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @aad, ptr noundef align 1 dereferenceable(6) %i.bo, i64 noundef 6, i1 noundef false) #9
  %i.bp = getelementptr i8, ptr %1, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @aad, i64 6), ptr noundef align 1 dereferenceable(6) %i.bq, i64 noundef 6, i1 noundef false) #9
  %i.br = getelementptr i8, ptr %1, i64 296
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = add i32 %i.bs, -1536
  %or.cond247 = icmp ult i32 %i.bt, 64000
  %i.bu = trunc nuw i32 %i.bs to i16
  %.0208 = select i1 %or.cond247, i16 %i.bu, i16 -30491 ; 2 uses
  %i.bv = lshr i16 %.0208, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @aad, i64 12), align 4
  %i.bx = trunc i16 %.0208 to i8
  store i8 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @aad, i64 13), align 1
  br i1 %or.cond246, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = call i32 @tvb_captured_length(ptr noundef %i.bg) ; 4 uses
  %i.bz = icmp ult i32 %i.by, 1515
  br i1 %i.bz, label %.thread286, label %thread-pre-split

.thread286:                                       ; preds = %bb.p
  %i.ca = getelementptr i8, ptr %1, i64 416
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = zext nneg i32 %i.by to i64
  %i.cd = call ptr @tvb_memdup(ptr noundef %i.cb, ptr noundef %i.bg, i32 noundef 0, i64 noundef %i.cc)
  %i.ce = zext nneg i32 %. to i64
  %i.cf = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @aad, i64 14), i32 noundef 0, i64 noundef %i.ce) ; 0 uses
  %i.cg = add nuw nsw i32 %., 14
  store i32 %i.cg, ptr @aad_len, align 4
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ch = call i32 @tvb_captured_length(ptr noundef %0)
  %.b229 = load i1, ptr @icv_len, align 4
  %.neg = select i1 %.b229, i32 0, i32 -16
  %i.ci = add i32 %.neg, %i.ch                    ; 4 uses
  %i.cj = add i32 %i.ci, 14                       ; 3 uses
  %i.ck = icmp ult i32 %i.cj, 1515
  br i1 %i.ck, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.cl = zext i32 %i.ci to i64
  %i.cm = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @aad, i64 14), i32 noundef 0, i64 noundef %i.cl) ; 0 uses
  store i32 %i.cj, ptr @aad_len, align 4
  br label %bb.s

thread-pre-split:                                 ; preds = %bb.m, %bb.n, %bb.q, %bb.p
  %.1210.ph = phi i32 [ %i.ci, %bb.q ], [ %i.by, %bb.p ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.pr = load i32, ptr @aad_len, align 4
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %bb.r
  %i.cn = phi i32 [ %.pr, %thread-pre-split ], [ %i.cj, %bb.r ]
  %.1210 = phi i32 [ %.1210.ph, %thread-pre-split ], [ %i.ci, %bb.r ] ; 2 uses
  %.not241 = icmp eq i32 %i.cn, 0
  br i1 %.not241, label %.thread, label %bb.t

bb.t:                                             ; preds = %.thread286, %bb.s
  %.1210291 = phi i32 [ %i.by, %.thread286 ], [ %.1210, %bb.s ] ; 5 uses
  %.1212290 = phi ptr [ %i.cd, %.thread286 ], [ null, %bb.s ] ; 2 uses
  %i.co = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @iv, i64 8), i32 noundef 2, i64 noundef 4) ; 0 uses
  br i1 %.not237.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull @iv, i32 noundef 6, i64 noundef 6) ; 0 uses
  %i.cq = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @iv, i64 6), i32 noundef 12, i64 noundef 2) ; 0 uses
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %.not242 = icmp samesign ult i8 %i.c, 64
  br i1 %.not242, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr i8, ptr %1, i64 112
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr i8, ptr %1, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @iv, ptr noundef align 1 dereferenceable(6) %i.cv, i64 noundef 6, i1 noundef false) #9
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.67, i32 noundef 5, ptr noundef nonnull @.str.86, i64 noundef 827, ptr noundef nonnull @__func__.dissect_macsec, ptr noundef nonnull @.str.87)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 6), align 2
  %i.cw = and i32 %i.d, 16
  %.not243 = icmp eq i32 %i.cw, 0
  %i.cx = zext i1 %.not243 to i8
  store i8 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 7), align 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %.b228 = load i1, ptr @icv_len, align 4
  %i.cy = select i1 %.b228, i64 0, i64 16
  %i.cz = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull @icv, i32 noundef %.pre-phi, i64 noundef %i.cy) ; 0 uses
  br label %attempt_packet_decode_with_psks.exit

bb.ab:                                            ; preds = %bb.u, %bb.z
  %.b228294 = load i1, ptr @icv_len, align 4
  %i.da = select i1 %.b228294, i64 0, i64 16
  %i.db = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull @icv, i32 noundef %.pre-phi, i64 noundef %i.da) ; 0 uses
  %i.dc = load ptr, ptr @psk_config_data, align 8
  %i.dd = load i32, ptr @psk_config_data_count, align 4 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %wide.trip.count.i = zext nneg i32 %i.dd to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 3 uses
  %i.df = getelementptr [24 x i8], ptr %i.dc, i64 %indvars.iv.i ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  store ptr %i.dg, ptr @sak_for_decode, align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  store i32 %i.di, ptr @sak_for_decode_len, align 4
  %i.dj = call fastcc i32 @attempt_packet_decode(i1 noundef zeroext %or.cond246, ptr noundef %i.dg, i32 noundef %i.di, ptr noundef %.1212290, i32 noundef %.1210291)
  %.not.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i, label %bb.ac, label %.thread.loopexit.i

bb.ac:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.ac, %bb.ab
  store ptr null, ptr @sak_for_decode, align 8
  store i32 0, ptr @sak_for_decode_len, align 4
  br label %attempt_packet_decode_with_psks.exit

.thread.loopexit.i:                               ; preds = %.lr.ph.i
  %i.dk = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %attempt_packet_decode_with_psks.exit

attempt_packet_decode_with_psks.exit:             ; preds = %.thread.loopexit.i, %._crit_edge.i, %bb.aa
  %.0204295 = phi i1 [ false, %bb.aa ], [ true, %._crit_edge.i ], [ true, %.thread.loopexit.i ] ; 2 uses
  %.0206 = phi i32 [ -1, %bb.aa ], [ -1, %._crit_edge.i ], [ %i.dk, %.thread.loopexit.i ] ; 2 uses
  %i.dl = load i8, ptr @try_mka, align 1, !range !7, !noundef !8
  %i.dm = trunc nuw i8 %i.dl to i1
  %6 = icmp slt i32 %.0206, 0
  %or.cond = select i1 %i.dm, i1 %6, i1 false     ; 4 uses
  br i1 %or.cond, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %attempt_packet_decode_with_psks.exit
  %i.dn = zext nneg i8 %i.j to i32
  %i.do = zext i1 %or.cond246 to i8
  %i.dp = call ptr @get_mka_ckn_table()
  %i.dq = call i32 @get_mka_ckn_table_count()     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %.1212290, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 %.1210291, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  store i8 %i.do, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.du, i8 0, i64 3, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.dw, align 4
  %i.dx = icmp sgt i32 %i.dq, 0
  br i1 %i.dx, label %.lr.ph.i249, label %attempt_packet_decode_with_default_suite.exit._crit_edge.thread.i

.lr.ph.i249:                                      ; preds = %bb.ad
  %i.dy = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.dz = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %wide.trip.count.i250 = zext nneg i32 %i.dq to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ar, %.lr.ph.i249
  %indvars.iv.i251 = phi i64 [ 0, %.lr.ph.i249 ], [ %indvars.iv.next.i253, %bb.ar ] ; 4 uses
  %.02444.i = phi i32 [ 2, %.lr.ph.i249 ], [ %.2.ph.i, %bb.ar ] ; 3 uses
  %i.ea = getelementptr [112 x i8], ptr %i.dp, i64 %indvars.iv.i251
  %i.eb = load i32, ptr %i.dy, align 4
  %i.ec = call ptr @mka_get_sak_info(ptr noundef %i.ea, i32 noundef range(i32 0, 4) %i.dn, i32 noundef %i.eb) ; 21 uses
  %.not.i252 = icmp eq ptr %i.ec, null
  br i1 %.not.i252, label %bb.ar, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr i8, ptr %i.ec, i64 88     ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.dv, align 8
  store ptr %i.ec, ptr %4, align 8
  store ptr %i.ec, ptr @sak_for_decode, align 8
  %i.eg = load i32, ptr %i.ed, align 8            ; 2 uses
  store i32 %i.eg, ptr @sak_for_decode_len, align 4
  %i.eh = getelementptr i8, ptr %i.ec, i64 80
  %i.ei = load i64, ptr %i.eh, align 8
  switch i64 %i.ei, label %bb.ar [
    i64 36242102291529729, label %bb.ah
    i64 36242102291529730, label %bb.ah
    i64 36242102291529731, label %bb.ak
    i64 36242102291529732, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  br i1 %.0204295, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ej = load i8, ptr %i.dt, align 4, !range !7, !noundef !8
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = load ptr, ptr %i.dr, align 8
  %i.em = load i32, ptr %i.ds, align 8
  %i.en = call fastcc i32 @attempt_packet_decode(i1 noundef zeroext %i.ek, ptr noundef nonnull %i.ec, i32 noundef %i.eg, ptr noundef %i.el, i32 noundef %i.em)
  br label %attempt_packet_decode_with_default_suite.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.eo = getelementptr i8, ptr %i.ec, i64 48     ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call ptr @wmem_map_find(ptr noundef %i.ep, ptr noundef nonnull @saks_find_cb, ptr noundef nonnull %4)
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 4294967295
  %.not.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.i, label %attempt_packet_decode_with_default_suite.exit.thread34.i, label %.thread40.loopexit.i

attempt_packet_decode_with_default_suite.exit.thread34.i: ; preds = %bb.aj
  %i.et = load ptr, ptr %i.eo, align 8
  %i.eu = call i32 @wmem_map_size(ptr noundef %i.et)
  %.not9.i.i = icmp eq i32 %i.eu, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 2, i32 0
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ag, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ev = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 8), align 4
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 24                   ; 2 uses
  %i.ey = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 9), align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 16
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 10), align 2
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 11), align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fa, %i.ff
  %i.fh = or disjoint i32 %i.fg, %i.fd
  %i.fi = or disjoint i32 %i.fh, %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @iv, i64 noundef 12, i1 noundef false) #9
  %i.fj = getelementptr i8, ptr %i.ec, i64 64
  %i.fk = load i32, ptr %i.fj, align 8
  store i32 %i.fk, ptr @iv, align 4
  %i.fl = load i32, ptr %i.dy, align 4            ; 2 uses
  br i1 %.0204295, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fm = call i64 @mka_get_lpn(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.a, i32 noundef %i.fl) ; 2 uses
  %i.fn = getelementptr i8, ptr %i.ec, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call ptr @wmem_map_lookup(ptr noundef %i.fo, ptr noundef nonnull %i.a)
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = and i64 %i.fq, 255
  %.not.i29.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i29.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = trunc i64 %i.fq to i8
  %i.ft = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 3), align 1
  %i.fu = xor i8 %i.ft, %i.fs
  store i8 %i.fu, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 3), align 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.fv = call i64 @mka_get_lpn(ptr noundef nonnull %i.ec, ptr noundef null, i32 noundef %i.fl)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1.i28.i = phi i1 [ false, %bb.an ], [ true, %bb.am ], [ false, %bb.al ]
  %.043.i.i = phi i64 [ %i.fv, %bb.an ], [ %i.fm, %bb.am ], [ %i.fm, %bb.al ] ; 2 uses
  %i.fw = lshr i64 %.043.i.i, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = and i64 %.043.i.i, 2147483648
  %.not50.i.i = icmp ne i64 %i.fy, 0
  %.not51.i.i = icmp sgt i32 %i.ex, -1
  %or.cond.i.i = select i1 %.not50.i.i, i1 %.not51.i.i, i1 false
  %i.fz = zext i1 %or.cond.i.i to i32
  %.044.i.i = add i32 %i.fz, %i.fx                ; 5 uses
  %i.ga = lshr i32 %.044.i.i, 24
  %i.gb = trunc nuw i32 %i.ga to i8               ; 2 uses
  store i8 %i.gb, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 4), align 4
  %i.gc = lshr i32 %.044.i.i, 16
  %i.gd = trunc i32 %i.gc to i8                   ; 2 uses
  store i8 %i.gd, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 5), align 1
  %i.ge = lshr i32 %.044.i.i, 8
  %i.gf = trunc i32 %i.ge to i8                   ; 2 uses
  store i8 %i.gf, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 6), align 2
  %i.gg = trunc i32 %.044.i.i to i8               ; 2 uses
  store i8 %i.gg, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 7), align 1
  %i.gh = getelementptr i8, ptr %i.ec, i64 68
  %i.gi = load i8, ptr %i.gh, align 4
  %i.gj = xor i8 %i.gi, %i.gb
  store i8 %i.gj, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 4), align 4
  %i.gk = getelementptr i8, ptr %i.ec, i64 69
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = xor i8 %i.gl, %i.gd
  store i8 %i.gm, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 5), align 1
  %i.gn = getelementptr i8, ptr %i.ec, i64 70
  %i.go = load i8, ptr %i.gn, align 2
  %i.gp = xor i8 %i.go, %i.gf
  store i8 %i.gp, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 6), align 2
  %i.gq = getelementptr i8, ptr %i.ec, i64 71
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = xor i8 %i.gr, %i.gg
  store i8 %i.gs, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 7), align 1
  %i.gt = getelementptr i8, ptr %i.ec, i64 72
  %i.gu = load i8, ptr %i.gt, align 8
  %i.gv = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 8), align 4
  %i.gw = xor i8 %i.gv, %i.gu
  store i8 %i.gw, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 8), align 4
  %i.gx = getelementptr i8, ptr %i.ec, i64 73
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 9), align 1
  %i.ha = xor i8 %i.gz, %i.gy
  store i8 %i.ha, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 9), align 1
  %i.hb = getelementptr i8, ptr %i.ec, i64 74
  %i.hc = load i8, ptr %i.hb, align 2
  %i.hd = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 10), align 2
  %i.he = xor i8 %i.hd, %i.hc
  store i8 %i.he, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 10), align 2
  %i.hf = getelementptr i8, ptr %i.ec, i64 75
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = load i8, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 11), align 1
  %i.hi = xor i8 %i.hh, %i.hg
  store i8 %i.hi, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 11), align 1
  %i.hj = load ptr, ptr %i.dz, align 8
  %i.hk = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.hj, i64 noundef 8) #10 ; 2 uses
  %i.hl = zext i32 %.044.i.i to i64
  %i.hm = shl nuw i64 %i.hl, 32
  %i.hn = zext i32 %i.fi to i64
  %i.ho = or disjoint i64 %i.hm, %i.hn
  store i64 %i.ho, ptr %i.hk, align 8
  %i.hp = load ptr, ptr %i.dz, align 8
  %i.hq = load i32, ptr @proto_macsec, align 4
  call void @p_add_proto_data(ptr noundef %i.hp, ptr noundef %1, i32 noundef %i.hq, i32 noundef 0, ptr noundef %i.hk)
  br i1 %.1.i28.i, label %bb.ap, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ao
  %i.hr = getelementptr i8, ptr %i.ec, i64 67
  %i.hs = getelementptr i8, ptr %i.ec, i64 56     ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = call i32 @wmem_array_get_count(ptr noundef %i.ht)
  %.not5255.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not5255.i.i, label %attempt_packet_decode_with_xpn.exit.i, label %.lr.ph.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hv = load i8, ptr %i.dt, align 4, !range !7, !noundef !8
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = load ptr, ptr @sak_for_decode, align 8
  %i.hy = load i32, ptr @sak_for_decode_len, align 4
  %i.hz = load ptr, ptr %i.dr, align 8
  %i.ia = load i32, ptr %i.ds, align 8
  %i.ib = call fastcc i32 @attempt_packet_decode(i1 noundef zeroext %i.hw, ptr noundef %i.hx, i32 noundef %i.hy, ptr noundef %i.hz, i32 noundef %i.ia)
  br label %attempt_packet_decode_with_xpn.exit.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  %i.ic = add i32 %.056.i.i, 1                    ; 2 uses
  %i.id = load ptr, ptr %i.hs, align 8
  %i.ie = call i32 @wmem_array_get_count(ptr noundef %i.id)
  %.not52.i.i = icmp ugt i32 %i.ic, %i.ie
  br i1 %.not52.i.i, label %attempt_packet_decode_with_xpn.exit.i, label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.aq
  %.056.i.i = phi i32 [ %i.ic, %bb.aq ], [ 1, %.preheader.i.i ] ; 2 uses
  %i.if = load i8, ptr %i.hr, align 1
  %i.ig = trunc i32 %.056.i.i to i8
  %i.ih = xor i8 %i.if, %i.ig
  store i8 %i.ih, ptr getelementptr inbounds nuw (i8, ptr @iv, i64 3), align 1
  %i.ii = load i8, ptr %i.dt, align 4, !range !7, !noundef !8
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = load ptr, ptr @sak_for_decode, align 8
  %i.il = load i32, ptr @sak_for_decode_len, align 4
  %i.im = load ptr, ptr %i.dr, align 8
  %i.in = load i32, ptr %i.ds, align 8
  %i.io = call fastcc i32 @attempt_packet_decode(i1 noundef zeroext %i.ij, ptr noundef %i.ik, i32 noundef %i.il, ptr noundef %i.im, i32 noundef %i.in)
  %.not53.i.i = icmp eq i32 %i.io, 0
  br i1 %.not53.i.i, label %bb.aq, label %attempt_packet_decode_with_xpn.exit.i

attempt_packet_decode_with_xpn.exit.i:            ; preds = %.lr.ph.i.i, %bb.aq, %bb.ap, %.preheader.i.i
  %.2.i.i = phi i32 [ %i.ib, %bb.ap ], [ 2, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @iv, ptr noundef nonnull align 1 dereferenceable(12) %i.a, i64 noundef 12, i1 noundef false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %attempt_packet_decode_with_default_suite.exit.i

attempt_packet_decode_with_default_suite.exit.i:  ; preds = %attempt_packet_decode_with_xpn.exit.i, %bb.ai
  %.125.i = phi i32 [ %.2.i.i, %attempt_packet_decode_with_xpn.exit.i ], [ %i.en, %bb.ai ]
  %.125.fr.i = freeze i32 %.125.i                 ; 2 uses
  %i.ip = icmp eq i32 %.125.fr.i, 1
  br i1 %i.ip, label %.thread40.loopexit58.i, label %bb.ar

bb.ar:                                            ; preds = %attempt_packet_decode_with_default_suite.exit.i, %attempt_packet_decode_with_default_suite.exit.thread34.i, %bb.ag, %bb.af, %bb.ae
  %.2.ph.i = phi i32 [ %.125.fr.i, %attempt_packet_decode_with_default_suite.exit.i ], [ %spec.select.i.i, %attempt_packet_decode_with_default_suite.exit.thread34.i ], [ %.02444.i, %bb.af ], [ %.02444.i, %bb.ae ], [ %.02444.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %indvars.iv.next.i253, %wide.trip.count.i250
  br i1 %exitcond.not.i254, label %attempt_packet_decode_with_default_suite.exit._crit_edge.i, label %bb.ae, !llvm.loop !11

attempt_packet_decode_with_default_suite.exit._crit_edge.i: ; preds = %bb.ar
  %i.iq = icmp eq i32 %.2.ph.i, 1
  br i1 %i.iq, label %attempt_packet_decode_with_saks.exit, label %attempt_packet_decode_with_default_suite.exit._crit_edge.thread.i

attempt_packet_decode_with_default_suite.exit._crit_edge.thread.i: ; preds = %attempt_packet_decode_with_default_suite.exit._crit_edge.i, %bb.ad
  store ptr null, ptr @sak_for_decode, align 8
  store i32 0, ptr @sak_for_decode_len, align 4
  br label %attempt_packet_decode_with_saks.exit

.thread40.loopexit.i:                             ; preds = %bb.aj
  %7 = trunc nuw nsw i64 %indvars.iv.i251 to i32
  br label %attempt_packet_decode_with_saks.exit

.thread40.loopexit58.i:                           ; preds = %attempt_packet_decode_with_default_suite.exit.i
  %8 = trunc nuw nsw i64 %indvars.iv.i251 to i32
  br label %attempt_packet_decode_with_saks.exit

attempt_packet_decode_with_saks.exit:             ; preds = %attempt_packet_decode_with_default_suite.exit._crit_edge.i, %attempt_packet_decode_with_default_suite.exit._crit_edge.thread.i, %.thread40.loopexit.i, %.thread40.loopexit58.i
  %.1.i248 = phi i32 [ -1, %attempt_packet_decode_with_default_suite.exit._crit_edge.thread.i ], [ %i.dq, %attempt_packet_decode_with_default_suite.exit._crit_edge.i ], [ %7, %.thread40.loopexit.i ], [ %8, %.thread40.loopexit58.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.as

bb.as:                                            ; preds = %attempt_packet_decode_with_saks.exit, %attempt_packet_decode_with_psks.exit
  %.1207 = phi i32 [ %.1.i248, %attempt_packet_decode_with_saks.exit ], [ %.0206, %attempt_packet_decode_with_psks.exit ] ; 4 uses
  %9 = icmp sgt i32 %.1207, -1
  br i1 %9, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.ir = getelementptr i8, ptr %1, i64 416
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = load i32, ptr @proto_macsec, align 4
  %i.iu = call ptr @p_get_proto_data(ptr noundef %i.is, ptr noundef %1, i32 noundef %i.it, i32 noundef 0) ; 2 uses
  %.not244 = icmp eq ptr %i.iu, null
  br i1 %.not244, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iv = load i32, ptr @hf_macsec_XPN, align 4
  %i.iw = load i64, ptr %i.iu, align 8
  %i.ix = call ptr @proto_tree_add_uint64(ptr noundef %i.ad, i32 noundef %i.iv, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.iw) ; 3 uses
  %.not.i255 = icmp eq ptr %i.ix, null
  br i1 %.not.i255, label %proto_item_set_generated.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iy = getelementptr i8, ptr %i.ix, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.iz, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ja = getelementptr i8, ptr %i.iz, i64 28     ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = or i32 %i.jb, 2
  store i32 %i.jc, ptr %i.ja, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.au, %bb.av, %bb.aw
  call void @proto_tree_move_item(ptr noundef %i.ad, ptr noundef %i.aj, ptr noundef %i.ix)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.as, %proto_item_set_generated.exit, %bb.at, %bb.s
  %.1210285 = phi i32 [ %.1210, %bb.s ], [ %.1210291, %bb.as ], [ %.1210291, %proto_item_set_generated.exit ], [ %.1210291, %bb.at ], [ 0, %bb.l ]
  %10 = phi i1 [ false, %bb.s ], [ false, %bb.as ], [ true, %proto_item_set_generated.exit ], [ true, %bb.at ], [ false, %bb.l ] ; 3 uses
  %11 = phi i1 [ true, %bb.s ], [ true, %bb.as ], [ false, %proto_item_set_generated.exit ], [ false, %bb.at ], [ true, %bb.l ]
  %.2 = phi i32 [ -1, %bb.s ], [ %.1207, %bb.as ], [ %.1207, %proto_item_set_generated.exit ], [ %.1207, %bb.at ], [ -1, %bb.l ] ; 5 uses
  %.1 = phi i1 [ false, %bb.s ], [ %or.cond, %bb.as ], [ %or.cond, %proto_item_set_generated.exit ], [ %or.cond, %bb.at ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  br i1 %or.cond246, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.jd = load i32, ptr @hf_macsec_etype, align 4
  %i.je = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.jd, ptr noundef %0, i32 noundef %., i32 noundef 2, i32 noundef 0, ptr noundef nonnull %5) ; 0 uses
  %i.jf = add nuw nsw i32 %., 2
  %i.jg = add i32 %.0202, -2
  %i.jh = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.jf, i32 noundef %i.jg)
  br label %bb.ba

bb.ay:                                            ; preds = %.thread
  br i1 %10, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr i8, ptr %1, i64 416
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = load i32, ptr @macsec_payload_len, align 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = call ptr @wmem_memdup(ptr noundef %i.jj, ptr noundef nonnull @macsec_payload, i64 noundef %i.jl) #11
  %i.jn = load i32, ptr @macsec_payload_len, align 4 ; 2 uses
  %i.jo = call ptr @tvb_new_child_real_data(ptr noundef %i.bg, ptr noundef %i.jm, i32 noundef %i.jn, i32 noundef %i.jn) ; 4 uses
  %i.jp = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.jo, ptr noundef nonnull @.str.58) ; 0 uses
  %i.jq = load i32, ptr @macsec_payload_len, align 4
  %i.jr = add i32 %i.jq, -2
  %i.js = call ptr @tvb_new_subset_length(ptr noundef %i.jo, i32 noundef 2, i32 noundef %i.jr)
  %i.jt = load i32, ptr @hf_macsec_decrypted_data, align 4
  %i.ju = load i32, ptr @macsec_payload_len, align 4
  %i.jv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.jt, ptr noundef %i.jo, i32 noundef 0, i32 noundef %i.ju, i32 noundef 0) ; 0 uses
  %i.jw = load i32, ptr @hf_macsec_etype, align 4
  %i.jx = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.jw, ptr noundef %i.jo, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.0213 = phi ptr [ %i.jh, %bb.ax ], [ %i.js, %bb.az ], [ %i.bg, %bb.ay ] ; 3 uses
  %.b227 = load i1, ptr @icv_len, align 4
  br i1 %.b227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = load i32, ptr @hf_macsec_ICV, align 4
  %i.jz = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.jy, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 16, i32 noundef 0) ; 0 uses
  %.b226 = load i1, ptr @icv_len, align 4
  %i.ka = select i1 %.b226, i32 0, i32 16
  call void @proto_tree_set_appendix(ptr noundef %i.ad, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.ka)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kb = load i32, ptr @hf_macsec_verify_info, align 4
  %i.kc = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.kb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 3 uses
  %.not.i256 = icmp eq ptr %i.kc, null
  br i1 %.not.i256, label %proto_item_set_generated.exit258, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kd = getelementptr i8, ptr %i.kc, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not5.i257 = icmp eq ptr %i.ke, null
  br i1 %.not5.i257, label %proto_item_set_generated.exit258, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr i8, ptr %i.ke, i64 28     ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = or i32 %i.kg, 2
  store i32 %i.kh, ptr %i.kf, align 4
  br label %proto_item_set_generated.exit258

proto_item_set_generated.exit258:                 ; preds = %bb.bc, %bb.bd, %bb.be
  %i.ki = load i32, ptr @ett_macsec_verify, align 4
  %i.kj = call ptr @proto_item_add_subtree(ptr noundef %i.kc, i32 noundef %i.ki) ; 7 uses
  %i.kk = load i32, ptr @hf_macsec_ICV_check_success, align 4
  %i.kl = zext i1 %10 to i64
  %i.km = call ptr @proto_tree_add_boolean(ptr noundef %i.kj, i32 noundef %i.kk, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.kl) ; 2 uses
  %.not.i259 = icmp eq ptr %i.km, null
  br i1 %.not.i259, label %proto_item_set_generated.exit261, label %bb.bf

bb.bf:                                            ; preds = %proto_item_set_generated.exit258
  %i.kn = getelementptr i8, ptr %i.km, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %.not5.i260 = icmp eq ptr %i.ko, null
  br i1 %.not5.i260, label %proto_item_set_generated.exit261, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kp = getelementptr i8, ptr %i.ko, i64 28     ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = or i32 %i.kq, 2
  store i32 %i.kr, ptr %i.kp, align 4
  br label %proto_item_set_generated.exit261

proto_item_set_generated.exit261:                 ; preds = %proto_item_set_generated.exit258, %bb.bf, %bb.bg
  br i1 %10, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %proto_item_set_generated.exit261
  %i.ks = icmp sgt i32 %.2, -1
  br i1 %i.ks, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kt = sext i32 %.2 to i64
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef 920, i64 noundef %i.kt, i64 noundef 0) #12
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ku = zext nneg i32 %.2 to i64                ; 2 uses
  br i1 %.1, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.kv = call ptr @get_mka_ckn_table()
  %i.kw = getelementptr [112 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = getelementptr i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = load i32, ptr @hf_macsec_sak, align 4
  %i.la = load ptr, ptr @sak_for_decode, align 8
  %i.lb = load i32, ptr @sak_for_decode_len, align 4
  %i.lc = call ptr @proto_tree_add_bytes_with_length(ptr noundef %i.kj, i32 noundef %i.kz, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.la, i32 noundef %i.lb) ; 2 uses
  %.not.i262 = icmp eq ptr %i.lc, null
  br i1 %.not.i262, label %proto_item_set_generated.exit264, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ld = getelementptr i8, ptr %i.lc, i64 40
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %.not5.i263 = icmp eq ptr %i.le, null
  br i1 %.not5.i263, label %proto_item_set_generated.exit264, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lf = getelementptr i8, ptr %i.le, i64 28     ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = or i32 %i.lg, 2
  store i32 %i.lh, ptr %i.lf, align 4
  br label %proto_item_set_generated.exit264

proto_item_set_generated.exit264:                 ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.li = load i32, ptr @hf_macsec_ckn_info, align 4
  %i.lj = call ptr @proto_tree_add_string(ptr noundef %i.kj, i32 noundef %i.li, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.ky) ; 2 uses
  %.not.i265 = icmp eq ptr %i.lj, null
  br i1 %.not.i265, label %proto_item_set_generated.exit267, label %bb.bn

bb.bn:                                            ; preds = %proto_item_set_generated.exit264
  %i.lk = getelementptr i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8            ; 2 uses
  %.not5.i266 = icmp eq ptr %i.ll, null
  br i1 %.not5.i266, label %proto_item_set_generated.exit267, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lm = getelementptr i8, ptr %i.ll, i64 28     ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = or i32 %i.ln, 2
  store i32 %i.lo, ptr %i.lm, align 4
  br label %proto_item_set_generated.exit267

proto_item_set_generated.exit267:                 ; preds = %proto_item_set_generated.exit264, %bb.bn, %bb.bo
  %i.lp = load i32, ptr @hf_macsec_ckn_table_index, align 4
  %i.lq = call ptr @proto_tree_add_int(ptr noundef %i.kj, i32 noundef %i.lp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.2) ; 2 uses
  %.not.i268 = icmp eq ptr %i.lq, null
  br i1 %.not.i268, label %proto_item_set_generated.exit270, label %bb.bp

bb.bp:                                            ; preds = %proto_item_set_generated.exit267
  %i.lr = getelementptr i8, ptr %i.lq, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8            ; 2 uses
  %.not5.i269 = icmp eq ptr %i.ls, null
  br i1 %.not5.i269, label %proto_item_set_generated.exit270, label %proto_item_set_generated.exit270.sink.split

bb.bq:                                            ; preds = %bb.bj
  %i.lt = load ptr, ptr @psk_config_data, align 8
  %i.lu = getelementptr [24 x i8], ptr %i.lt, i64 %i.ku
  %i.lv = getelementptr i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = load i32, ptr @hf_macsec_psk, align 4
  %i.ly = load ptr, ptr @sak_for_decode, align 8
  %i.lz = load i32, ptr @sak_for_decode_len, align 4
  %i.ma = call ptr @proto_tree_add_bytes_with_length(ptr noundef %i.kj, i32 noundef %i.lx, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.ly, i32 noundef %i.lz) ; 2 uses
  %.not.i271 = icmp eq ptr %i.ma, null
  br i1 %.not.i271, label %proto_item_set_generated.exit273, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mb = getelementptr i8, ptr %i.ma, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8            ; 2 uses
  %.not5.i272 = icmp eq ptr %i.mc, null
  br i1 %.not5.i272, label %proto_item_set_generated.exit273, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.md = getelementptr i8, ptr %i.mc, i64 28     ; 2 uses
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = or i32 %i.me, 2
  store i32 %i.mf, ptr %i.md, align 4
  br label %proto_item_set_generated.exit273

proto_item_set_generated.exit273:                 ; preds = %bb.bq, %bb.br, %bb.bs
  %i.mg = load i32, ptr @hf_macsec_psk_info, align 4
  %i.mh = call ptr @proto_tree_add_string(ptr noundef %i.kj, i32 noundef %i.mg, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.lw) ; 2 uses
  %.not.i274 = icmp eq ptr %i.mh, null
  br i1 %.not.i274, label %proto_item_set_generated.exit276, label %bb.bt

bb.bt:                                            ; preds = %proto_item_set_generated.exit273
  %i.mi = getelementptr i8, ptr %i.mh, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8            ; 2 uses
  %.not5.i275 = icmp eq ptr %i.mj, null
  br i1 %.not5.i275, label %proto_item_set_generated.exit276, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mk = getelementptr i8, ptr %i.mj, i64 28     ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = or i32 %i.ml, 2
  store i32 %i.mm, ptr %i.mk, align 4
  br label %proto_item_set_generated.exit276

proto_item_set_generated.exit276:                 ; preds = %proto_item_set_generated.exit273, %bb.bt, %bb.bu
  %i.mn = load i32, ptr @hf_macsec_psk_table_index, align 4
  %i.mo = call ptr @proto_tree_add_int(ptr noundef %i.kj, i32 noundef %i.mn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.2) ; 2 uses
  %.not.i277 = icmp eq ptr %i.mo, null
  br i1 %.not.i277, label %proto_item_set_generated.exit270, label %bb.bv

bb.bv:                                            ; preds = %proto_item_set_generated.exit276
  %i.mp = getelementptr i8, ptr %i.mo, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8            ; 2 uses
  %.not5.i278 = icmp eq ptr %i.mq, null
  br i1 %.not5.i278, label %proto_item_set_generated.exit270, label %proto_item_set_generated.exit270.sink.split

.critedge:                                        ; preds = %proto_item_set_generated.exit261
  br i1 %or.cond246, label %bb.bw, label %proto_item_set_generated.exit270

bb.bw:                                            ; preds = %.critedge
  %i.mr = icmp ugt i32 %.1210285, 1514
  br i1 %i.mr, label %bb.bx, label %.thread297

bb.bx:                                            ; preds = %bb.bw
  %i.ms = call ptr @proto_tree_add_expert_remaining(ptr noundef %i.ad, ptr noundef %1, ptr noundef nonnull @ei_macsec_payload_too_large, ptr noundef %.0213, i32 noundef 0) ; 0 uses
  br label %.thread297

.thread297:                                       ; preds = %bb.bw, %bb.bx
  %i.mt = call i32 @call_data_dissector(ptr noundef %.0213, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.by

proto_item_set_generated.exit270.sink.split:      ; preds = %bb.bv, %bb.bp
  %.sink346 = phi ptr [ %i.ls, %bb.bp ], [ %i.mq, %bb.bv ]
  %i.mu = getelementptr i8, ptr %.sink346, i64 28 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4
  %i.mw = or i32 %i.mv, 2
  store i32 %i.mw, ptr %i.mu, align 4
  br label %proto_item_set_generated.exit270

proto_item_set_generated.exit270:                 ; preds = %proto_item_set_generated.exit270.sink.split, %proto_item_set_generated.exit267, %bb.bp, %proto_item_set_generated.exit276, %bb.bv, %.critedge
  %i.mx = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = getelementptr i8, ptr %i.my, i64 8      ; 2 uses
  %i.na = load i32, ptr %i.mz, align 8            ; 2 uses
  %.b = load i1, ptr @icv_len, align 4
  %.neg307 = select i1 %.b, i32 0, i32 -16
  %.neg298 = select i1 %.not237.not, i32 -8, i32 -16
  %.neg300 = sub i32 %.neg298, %.0203
  %.neg301 = add i32 %.neg300, %i.na
  %i.nb = add i32 %.neg301, %.neg307
  store i32 %i.nb, ptr %i.mz, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.nc, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ad, ptr %i.nd, align 8
  %i.ne = load i32, ptr @hf_macsec_eth_padding, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ne, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.ng, align 4
  %i.nh = load ptr, ptr @ethertype_handle, align 8
  %i.ni = call i32 @call_dissector_with_data(ptr noundef %i.nh, ptr noundef %.0213, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) ; 0 uses
  %i.nj = load ptr, ptr %i.mx, align 8
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  store i32 %i.na, ptr %i.nk, align 8
  br i1 %11, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.thread297, %proto_item_set_generated.exit270
  %i.nl = load ptr, ptr %i.k, align 8
  call void @col_append_str(ptr noundef %i.nl, i32 noundef 25, ptr noundef nonnull @.str.89)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %proto_item_set_generated.exit270
  %i.nm = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ca

bb.ca:                                            ; preds = %bb.b, %bb.a, %bb.bz
  %.0 = phi i32 [ %i.nm, %bb.bz ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @psk_config_data_key_set_cb(ptr nofree noundef captures(none) initializes((8, 12)) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  %i.b = tail call ptr @g_memdup2(ptr noundef %1, i64 noundef %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @psk_config_data_key_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @g_memdup2(ptr noundef nonnull %i.a, i64 noundef %i.d) #10
  br label %g_strdup_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #13 ; 2 uses
  store i8 0, ptr %i.f, align 1
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  store ptr %i.g, ptr %1, align 8
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  store i32 %i.i, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_str(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @psk_config_data_name_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @psk_config_data_name_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #14
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #13 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @uat_new(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @copy_psk_config_cb(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 12), (16, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
g_strdup_inline.exit:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @g_memdup2(ptr noundef %i.a, i64 noundef %i.d) #10
  store ptr %i.e, ptr %0, align 8
  %i.f = load i32, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noalias ptr @g_strdup(ptr noundef %i.i)
  %i.k = getelementptr i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @update_psk_config(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %.sink.split [
    i32 16, label %bb.b
    i32 32, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %char0 = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %char0, 0
  br i1 %i.e, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.str.97.sink = phi ptr [ @.str.96, %bb.a ], [ @.str.97, %bb.b ]
  %i.f = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull %.str.97.sink)
  store ptr %i.f, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @free_psk_config_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @post_update_psk_config_cb() #0 {
bb.a:
  %i.a = tail call zeroext i1 @ws_log_msg_is_active(ptr noundef nonnull @.str.67, i32 noundef 2)
  %i.b = load i32, ptr @psk_config_data_count, align 4
  %i.c = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @psk_config_data, align 8
  %i.e = getelementptr [24 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = tail call ptr @bytes_to_str_maxlen(ptr noundef null, ptr noundef %i.f, i64 noundef %i.i, i64 noundef 0)
  tail call void @g_free(ptr noundef %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @psk_config_data_count, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %bb.a
end_hunk_0
