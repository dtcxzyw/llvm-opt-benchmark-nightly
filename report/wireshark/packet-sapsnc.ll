Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sapsnc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expert_field = type { i32, i32 }
%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }

@hf_sapsnc_frame = internal global i32 0, align 4
@ett_sapsnc = internal global i32 0, align 4
@hf_sapsnc_eye_catcher = internal global i32 0, align 4
@hf_sapsnc_frame_type = internal global i32 0, align 4
@hf_sapsnc_protocol_version = internal global i32 0, align 4
@hf_sapsnc_header_length = internal global i32 0, align 4
@ei_sapsnc_invalid_header_length = internal global %struct.expert_field zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid header length %u\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid captured length %d (reported %u)\00", align 1
@hf_sapsnc_token_length = internal global i32 0, align 4
@hf_sapsnc_data_length = internal global i32 0, align 4
@hf_sapsnc_mech_id = internal global i32 0, align 4
@hf_sapsnc_flags = internal global i32 0, align 4
@hf_sapsnc_qop_use = internal global i32 0, align 4
@hf_sapsnc_qop_max = internal global i32 0, align 4
@hf_sapsnc_qop_min = internal global i32 0, align 4
@hf_sapsnc_ext_flags = internal global i32 0, align 4
@hf_sapsnc_ext_field_length = internal global i32 0, align 4
@hf_sapsnc_ext_field = internal global i32 0, align 4
@hf_sapsnc_token = internal global i32 0, align 4
@hf_sapsnc_data = internal global i32 0, align 4
@proto_register_sapsnc.hf = internal global [17 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_sapsnc_frame, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_eye_catcher, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_frame_type, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 4, i32 2, ptr @sapsnc_frame_type_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_protocol_version, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_header_length, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_token_length, %struct._header_field_info { ptr @.str.12, ptr @.str.13, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_data_length, %struct._header_field_info { ptr @.str.14, ptr @.str.15, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_mech_id, %struct._header_field_info { ptr @.str.16, ptr @.str.17, i32 5, i32 2, ptr @sapsnc_mech_id_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_flags, %struct._header_field_info { ptr @.str.18, ptr @.str.19, i32 5, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_qop_min, %struct._header_field_info { ptr @.str.20, ptr @.str.21, i32 4, i32 2, ptr @sapsnc_qop_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_qop_max, %struct._header_field_info { ptr @.str.22, ptr @.str.23, i32 4, i32 2, ptr @sapsnc_qop_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_qop_use, %struct._header_field_info { ptr @.str.24, ptr @.str.25, i32 4, i32 2, ptr @sapsnc_qop_vals, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_ext_flags, %struct._header_field_info { ptr @.str.26, ptr @.str.27, i32 7, i32 2, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_ext_field_length, %struct._header_field_info { ptr @.str.28, ptr @.str.29, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_ext_field, %struct._header_field_info { ptr @.str.30, ptr @.str.31, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_token, %struct._header_field_info { ptr @.str.32, ptr @.str.33, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_sapsnc_data, %struct._header_field_info { ptr @.str.34, ptr @.str.35, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"SNC Frame\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"sapsnc.frame\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"SNC Eye Catcher\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"sapsnc.eyecatcher\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SNC Frame Type\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"sapsnc.frame.type\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SNC Protocol Version\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"sapsnc.frame.protocolversion\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"SNC Header length\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"sapsnc.frame.header_length\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"SNC Token length\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"sapsnc.frame.tokenlength\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"SNC Data length\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"sapsnc.frame.datalength\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SNC Mech ID\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"sapsnc.frame.mech_id\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SNC Flags\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"sapsnc.frame.flags\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SNC QOP Min\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"sapsnc.frame.qop_min\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"SNC QOP Max\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"sapsnc.frame.qop_max\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"SNC QOP Use\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"sapsnc.frame.qop_use\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"SNC Extensions Flags\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"sapsnc.frame.ext_flags\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"SNC Extensions Field length\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"sapsnc.frame.ext_field_length\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"SNC Extensions Field\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"sapsnc.frame.ext_field\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"SNC Token\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"sapsnc.frame.token\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"SNC Data\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"sapsnc.frame.data\00", align 1
@proto_register_sapsnc.ett = internal global [1 x ptr] [ptr @ett_sapsnc], align 8
@proto_register_sapsnc.ei = internal global [1 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_sapsnc_invalid_header_length, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.36, i32 117440512, i32 6291456, ptr @.str.37, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@.str.36 = private unnamed_addr constant [35 x i8] c"sapsnc.frame.header_length_invalid\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Invalid header length\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"SAP SNC Protocol\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"SAPSNC\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"sapsnc\00", align 1
@proto_sapsnc = internal unnamed_addr global i32 0, align 4
@proto_reg_handoff_sapsnc.initialized = internal unnamed_addr global i1 false, align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"REVERSE_REQ\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"INIT_REQ\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"INIT_ACK\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"ACCEPT_ACK\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"ACCEPT_FAILED\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"DATA_OPEN\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"DATA_MIC/DATA_SIGNED\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"DATA_WRAP/DATA_SEALED\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"SHUTDOWN\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"SHUTDOWN_MSG\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"REJECTED\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@sapsnc_frame_type_vals = internal constant [16 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.41 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.45 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.47 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [12 x i8] c"No security\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"Generic GSS-API v2 Mechanism\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"Kerberos 5/GSS-API v2\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"Secude 5 GSS-API v2\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"SAP's GSS-API v2 over NTLM(SSPI)\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"SPKM1 GSS-API v2 library\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"SPKM2 GSS-API v2 library\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"reserved ID\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"itsec\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"SDTI Connect Agent\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"AccessMaster DCE\00", align 1
@sapsnc_mech_id_vals = internal constant [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.61 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.62 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.63 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.64 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.65 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.66 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.67 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"INTEGRITY/SIGNED\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"PRIVACY/SEALED\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@sapsnc_qop_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.69 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.70 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.71 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.72 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.74 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.75 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [9 x i8] c", SAPSNC\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @dissect_sapsnc_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 0, ptr %i.e, align 4
  %i.f = load i32, ptr @hf_sapsnc_frame, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_sapsnc, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 13 uses
  %i.j = load i32, ptr @hf_sapsnc_eye_catcher, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef %3, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 8
  %i.m = load i32, ptr @hf_sapsnc_frame_type, align 4
  %i.n = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.i, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = add i32 %3, 9
  %i.p = load i32, ptr @hf_sapsnc_protocol_version, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add i32 %3, 10                           ; 4 uses
  %i.s = load i32, ptr @hf_sapsnc_header_length, align 4
  %i.t = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %i.u = load i32, ptr %i.b, align 4
  %i.v = add i32 %i.u, -10                        ; 3 uses
  store i32 %i.v, ptr %i.b, align 4
  %i.w = icmp ult i32 %i.v, 14
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.t, ptr noundef nonnull @ei_sapsnc_invalid_header_length, ptr noundef nonnull @.str, i32 noundef %i.v) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.y = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  %i.z = load i32, ptr %i.b, align 4              ; 2 uses
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.t, ptr noundef nonnull @ei_sapsnc_invalid_header_length, ptr noundef nonnull @.str.1, i32 noundef %i.ab, i32 noundef %i.ac) ; 0 uses
  %i.ae = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.af = phi i32 [ %i.z, %bb.c ], [ %i.ae, %bb.d ], [ 14, %bb.b ]
  %i.ag = add i32 %3, 12
  %i.ah = add i32 %i.af, -2
  store i32 %i.ah, ptr %i.b, align 4
  %i.ai = load i32, ptr @hf_sapsnc_token_length, align 4
  %i.aj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ag, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ak = add i32 %3, 16
  %i.al = load i32, ptr %i.b, align 4
  %i.am = add i32 %i.al, -4
  store i32 %i.am, ptr %i.b, align 4
  %i.an = load i32, ptr @hf_sapsnc_data_length, align 4
  %i.ao = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.ap = add i32 %3, 20
  %i.aq = load i32, ptr %i.b, align 4
  %i.ar = add i32 %i.aq, -4
  store i32 %i.ar, ptr %i.b, align 4
  %i.as = load i32, ptr @hf_sapsnc_mech_id, align 4
  %i.at = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.au = add i32 %3, 22
  %i.av = load i32, ptr %i.b, align 4
  %i.aw = add i32 %i.av, -2
  store i32 %i.aw, ptr %i.b, align 4
  %i.ax = load i32, ptr @hf_sapsnc_flags, align 4
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.au, i32 noundef 2, i32 noundef 0)
  %i.az = load i32, ptr @ett_sapsnc, align 4
  %i.ba = call ptr @proto_item_add_subtree(ptr noundef %i.ay, i32 noundef %i.az) ; 3 uses
  %i.bb = load i32, ptr %i.b, align 4
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.b, align 4
  %i.bd = load i32, ptr @hf_sapsnc_qop_use, align 4
  %i.be = shl i32 %3, 3                           ; 3 uses
  %i.bf = add i32 %i.be, 185
  %i.bg = call ptr @proto_tree_add_bits_item(ptr noundef %i.ba, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_sapsnc_qop_max, align 4
  %4 = add i32 %i.be, 187
  %i.bi = call ptr @proto_tree_add_bits_item(ptr noundef %i.ba, i32 noundef %i.bh, ptr noundef %0, i32 noundef %4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = load i32, ptr @hf_sapsnc_qop_min, align 4
  %5 = add i32 %i.be, 189
  %i.bk = call ptr @proto_tree_add_bits_item(ptr noundef %i.ba, i32 noundef %i.bj, ptr noundef %0, i32 noundef %5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bl = add i32 %3, 24                          ; 3 uses
  %i.bm = load i32, ptr %i.b, align 4
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.b, align 4
  %i.bo = icmp ugt i32 %i.bn, 5
  br i1 %i.bo, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bp = add i32 %3, 30                          ; 6 uses
  %i.bq = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.bp)
  br i1 %i.bq, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.br = load i32, ptr @hf_sapsnc_ext_flags, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %3, 28
  %i.bu = load i32, ptr @hf_sapsnc_ext_field_length, align 4
  %i.bv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.bw = load i32, ptr %i.c, align 4             ; 2 uses
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = add i32 %i.bw, %i.bp
  %i.by = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.bx)
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr @hf_sapsnc_ext_field, align 4
  %i.ca = load i32, ptr %i.c, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.ca, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr %i.c, align 4
  %i.cd = add i32 %i.cc, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f, %bb.e
  %.088 = phi i32 [ %i.cd, %bb.i ], [ %i.bp, %bb.h ], [ %i.bp, %bb.g ], [ %i.bl, %bb.f ], [ %i.bl, %bb.e ] ; 5 uses
  %i.ce = load i32, ptr %i.d, align 4             ; 2 uses
  %.not93 = icmp eq i32 %i.ce, 0
  br i1 %.not93, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = add i32 %i.ce, %.088
  %i.cg = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.cf)
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = load i32, ptr @hf_sapsnc_token, align 4
  %i.ci = load i32, ptr %i.d, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ch, ptr noundef %0, i32 noundef %.088, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %i.ck = load i32, ptr %i.d, align 4
  %i.cl = add i32 %i.ck, %.088
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1 = phi i32 [ %i.cl, %bb.l ], [ %.088, %bb.k ], [ %.088, %bb.j ] ; 3 uses
  %i.cm = load i32, ptr %i.e, align 4             ; 2 uses
  %.not94 = icmp eq i32 %i.cm, 0
  br i1 %.not94, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = add i32 %i.cm, %.1
  %i.co = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.cn)
  br i1 %i.co, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr @hf_sapsnc_data, align 4
  %i.cq = load i32, ptr %i.e, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.cp, ptr noundef %0, i32 noundef %.1, i32 noundef %i.cq, i32 noundef 0) ; 0 uses
  %i.cs = load i8, ptr %i.a, align 1
  %i.ct = add i8 %i.cs, -7
  %or.cond = icmp ult i8 %i.ct, 2
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0 = phi ptr [ %i.cu, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_offset_exists(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_sapsnc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) ; 2 uses
  store i32 %i.a, ptr @proto_sapsnc, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_sapsnc.hf, i32 noundef 17)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_sapsnc.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_sapsnc, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_sapsnc.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_sapsnc, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.40, ptr noundef nonnull @dissect_sapsnc, i32 noundef %i.d) ; 0 uses
  ret void
}

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
define internal i32 @dissect_sapsnc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.77)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call ptr @dissect_sapsnc_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) ; 0 uses
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_sapsnc() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @proto_reg_handoff_sapsnc.initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @proto_sapsnc, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_sapsnc, i32 noundef %i.a) ; 0 uses
  store i1 true, ptr @proto_reg_handoff_sapsnc.initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

end_hunk_0
