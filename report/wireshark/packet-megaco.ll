Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-megaco?download=true
inline.NumInlined: 117
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.359 = private unnamed_addr constant [4 x i8] c"Mux\00", align 1
@.str.360 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.361 = private unnamed_addr constant [6 x i8] c"Media\00", align 1
@.str.362 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.363 = private unnamed_addr constant [8 x i8] c"Signals\00", align 1
@.str.364 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@.str.365 = private unnamed_addr constant [9 x i8] c"Services\00", align 1
@.str.366 = private unnamed_addr constant [3 x i8] c"SV\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.368 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"Events\00", align 1
@.str.370 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.371 = private unnamed_addr constant [6 x i8] c"Audit\00", align 1
@.str.372 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.373 = private unnamed_addr constant [9 x i8] c"DigitMap\00", align 1
@.str.374 = private unnamed_addr constant [3 x i8] c"DM\00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"ObservedEvents\00", align 1
@.str.376 = private unnamed_addr constant [3 x i8] c"OE\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"Topology\00", align 1
@.str.378 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@.str.379 = private unnamed_addr constant [3 x i8] c"PG\00", align 1
@.str.380 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.381 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"Remote\00", align 1
@.str.383 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.384 = private unnamed_addr constant [13 x i8] c"LocalControl\00", align 1
@.str.385 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"Stream\00", align 1
@.str.387 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.388 = private unnamed_addr constant [17 x i8] c"TerminationState\00", align 1
@.str.389 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@__const.dissect_megaco_LocalRemotedescriptor.content_info = private unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null }, align 8
@.str.390 = private unnamed_addr constant [11 x i8] c" (Mode:%s)\00", align 1
@.str.391 = private unnamed_addr constant [10 x i8] c" [%i b/s]\00", align 1
@megaco_localParam_names = internal unnamed_addr constant [23 x %struct.megaco_tokens_t] [%struct.megaco_tokens_t { ptr @.str.349, ptr null }, %struct.megaco_tokens_t { ptr @.str.48, ptr @.str.392 }, %struct.megaco_tokens_t { ptr @.str.393, ptr @.str.394 }, %struct.megaco_tokens_t { ptr @.str.395, ptr @.str.396 }, %struct.megaco_tokens_t { ptr @.str.98, ptr null }, %struct.megaco_tokens_t { ptr @.str.68, ptr null }, %struct.megaco_tokens_t { ptr @.str.70, ptr null }, %struct.megaco_tokens_t { ptr @.str.397, ptr null }, %struct.megaco_tokens_t { ptr @.str.398, ptr null }, %struct.megaco_tokens_t { ptr @.str.399, ptr null }, %struct.megaco_tokens_t { ptr @.str.400, ptr null }, %struct.megaco_tokens_t { ptr @.str.401, ptr null }, %struct.megaco_tokens_t { ptr @.str.402, ptr null }, %struct.megaco_tokens_t { ptr @.str.403, ptr null }, %struct.megaco_tokens_t { ptr @.str.404, ptr null }, %struct.megaco_tokens_t { ptr @.str.405, ptr null }, %struct.megaco_tokens_t { ptr @.str.406, ptr null }, %struct.megaco_tokens_t { ptr @.str.407, ptr null }, %struct.megaco_tokens_t { ptr @.str.408, ptr null }, %struct.megaco_tokens_t { ptr @.str.409, ptr null }, %struct.megaco_tokens_t { ptr @.str.410, ptr null }, %struct.megaco_tokens_t { ptr @.str.411, ptr null }, %struct.megaco_tokens_t { ptr @.str.412, ptr null }], align 16
@.str.392 = private unnamed_addr constant [3 x i8] c"MO\00", align 1
@.str.393 = private unnamed_addr constant [14 x i8] c"ReservedValue\00", align 1
@.str.394 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str.395 = private unnamed_addr constant [14 x i8] c"ReservedGroup\00", align 1
@.str.396 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"ds/dscp\00", align 1
@.str.398 = private unnamed_addr constant [7 x i8] c"gm/saf\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"gm/sam\00", align 1
@.str.400 = private unnamed_addr constant [7 x i8] c"gm/spf\00", align 1
@.str.401 = private unnamed_addr constant [7 x i8] c"gm/spr\00", align 1
@.str.402 = private unnamed_addr constant [8 x i8] c"gm/esas\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"gm/lsa\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"gm/esps\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"gm/lsp\00", align 1
@.str.406 = private unnamed_addr constant [7 x i8] c"gm/rsb\00", align 1
@.str.407 = private unnamed_addr constant [9 x i8] c"tman/pol\00", align 1
@.str.408 = private unnamed_addr constant [9 x i8] c"tman/sdr\00", align 1
@.str.409 = private unnamed_addr constant [9 x i8] c"tman/mbs\00", align 1
@.str.410 = private unnamed_addr constant [9 x i8] c"tman/pdr\00", align 1
@.str.411 = private unnamed_addr constant [9 x i8] c"tman/dvt\00", align 1
@.str.412 = private unnamed_addr constant [11 x i8] c"ipdc/realm\00", align 1
@.str.413 = private unnamed_addr constant [18 x i8] c"H.245 over MEGACO\00", align 1
@.str.414 = private unnamed_addr constant [15 x i8] c" (Signal:none)\00", align 1
@.str.415 = private unnamed_addr constant [13 x i8] c" (Signal:%s)\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"[ %s ]\00", align 1
@.str.417 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"Reason\00", align 1
@.str.419 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"Delay\00", align 1
@.str.421 = private unnamed_addr constant [3 x i8] c"DL\00", align 1
@.str.422 = private unnamed_addr constant [21 x i8] c"ServiceChangeAddress\00", align 1
@.str.423 = private unnamed_addr constant [3 x i8] c"AD\00", align 1
@.str.424 = private unnamed_addr constant [11 x i8] c"MgcIdToTry\00", align 1
@.str.425 = private unnamed_addr constant [3 x i8] c"MG\00", align 1
@.str.426 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.427 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.428 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.429 = private unnamed_addr constant [3 x i8] c"MT\00", align 1
@.str.430 = private unnamed_addr constant [17 x i8] c"Service Restored\00", align 1
@.str.431 = private unnamed_addr constant [10 x i8] c"Cold Boot\00", align 1
@.str.432 = private unnamed_addr constant [10 x i8] c"Warm Boot\00", align 1
@.str.433 = private unnamed_addr constant [20 x i8] c"MGC Directed Change\00", align 1
@.str.434 = private unnamed_addr constant [27 x i8] c"Termination malfunctioning\00", align 1
@.str.435 = private unnamed_addr constant [33 x i8] c"Termination taken out of service\00", align 1
@.str.436 = private unnamed_addr constant [56 x i8] c"Loss of lower layer connectivity (e.g. downstream sync)\00", align 1
@.str.437 = private unnamed_addr constant [21 x i8] c"Transmission Failure\00", align 1
@.str.438 = private unnamed_addr constant [21 x i8] c"MG Impending Failure\00", align 1
@.str.439 = private unnamed_addr constant [22 x i8] c"MGC Impending Failure\00", align 1
@.str.440 = private unnamed_addr constant [25 x i8] c"Media Capability Failure\00", align 1
@.str.441 = private unnamed_addr constant [25 x i8] c"Modem Capability Failure\00", align 1
@.str.442 = private unnamed_addr constant [23 x i8] c"Mux Capability Failure\00", align 1
@.str.443 = private unnamed_addr constant [26 x i8] c"Signal Capability Failure\00", align 1
@.str.444 = private unnamed_addr constant [25 x i8] c"Event Capability Failure\00", align 1
@.str.445 = private unnamed_addr constant [11 x i8] c"State Loss\00", align 1
@.str.446 = private unnamed_addr constant [16 x i8] c"Packages Change\00", align 1
@.str.447 = private unnamed_addr constant [20 x i8] c"Capabilities Change\00", align 1
@.str.448 = private unnamed_addr constant [16 x i8] c"Cancel Graceful\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"Warm Failover\00", align 1
@.str.450 = private unnamed_addr constant [14 x i8] c"Cold Failover\00", align 1
@MEGACO_ServiceChangeReasons_vals = internal constant [22 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 900, [4 x i8] zeroinitializer, ptr @.str.430 }, { i32, [4 x i8], ptr } { i32 901, [4 x i8] zeroinitializer, ptr @.str.431 }, { i32, [4 x i8], ptr } { i32 902, [4 x i8] zeroinitializer, ptr @.str.432 }, { i32, [4 x i8], ptr } { i32 903, [4 x i8] zeroinitializer, ptr @.str.433 }, { i32, [4 x i8], ptr } { i32 904, [4 x i8] zeroinitializer, ptr @.str.434 }, { i32, [4 x i8], ptr } { i32 905, [4 x i8] zeroinitializer, ptr @.str.435 }, { i32, [4 x i8], ptr } { i32 906, [4 x i8] zeroinitializer, ptr @.str.436 }, { i32, [4 x i8], ptr } { i32 907, [4 x i8] zeroinitializer, ptr @.str.437 }, { i32, [4 x i8], ptr } { i32 908, [4 x i8] zeroinitializer, ptr @.str.438 }, { i32, [4 x i8], ptr } { i32 909, [4 x i8] zeroinitializer, ptr @.str.439 }, { i32, [4 x i8], ptr } { i32 910, [4 x i8] zeroinitializer, ptr @.str.440 }, { i32, [4 x i8], ptr } { i32 911, [4 x i8] zeroinitializer, ptr @.str.441 }, { i32, [4 x i8], ptr } { i32 912, [4 x i8] zeroinitializer, ptr @.str.442 }, { i32, [4 x i8], ptr } { i32 913, [4 x i8] zeroinitializer, ptr @.str.443 }, { i32, [4 x i8], ptr } { i32 914, [4 x i8] zeroinitializer, ptr @.str.444 }, { i32, [4 x i8], ptr } { i32 915, [4 x i8] zeroinitializer, ptr @.str.445 }, { i32, [4 x i8], ptr } { i32 916, [4 x i8] zeroinitializer, ptr @.str.446 }, { i32, [4 x i8], ptr } { i32 917, [4 x i8] zeroinitializer, ptr @.str.447 }, { i32, [4 x i8], ptr } { i32 918, [4 x i8] zeroinitializer, ptr @.str.448 }, { i32, [4 x i8], ptr } { i32 919, [4 x i8] zeroinitializer, ptr @.str.449 }, { i32, [4 x i8], ptr } { i32 920, [4 x i8] zeroinitializer, ptr @.str.450 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.452 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.453 = private unnamed_addr constant [5 x i8] c"ADD \00", align 1
@.str.454 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.455 = private unnamed_addr constant [5 x i8] c"MDFY\00", align 1
@.str.456 = private unnamed_addr constant [5 x i8] c"SUBT\00", align 1
@.str.457 = private unnamed_addr constant [5 x i8] c"AUCP\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"AUVL\00", align 1
@.str.459 = private unnamed_addr constant [5 x i8] c"NTFY\00", align 1
@.str.460 = private unnamed_addr constant [5 x i8] c"SVCC\00", align 1
@.str.461 = private unnamed_addr constant [5 x i8] c"TOPO\00", align 1
@.str.462 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.463 = private unnamed_addr constant [5 x i8] c"ALL \00", align 1
@megaco_message_type = internal constant [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.453 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.454 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.455 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.456 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.457 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.458 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.459 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.460 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.461 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.462 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.463 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.465 = private unnamed_addr constant [150 x i8] c"Track Context option at Protocols -> MEGACO and Protocols -> H248 preferences\0Ahas to be set to true to enable measurement of service response times.\0A\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_megaco() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.179, ptr noundef @.str.179, ptr noundef @.str.180) ; 2 uses
  store i32 %i.a, ptr @proto_megaco, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.180, ptr noundef @dissect_megaco_text, i32 noundef %i.a)
  store ptr %i.b, ptr @megaco_text_handle, align 8
  %i.c = load i32, ptr @proto_megaco, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_megaco.hf, i32 noundef 63)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_megaco.ett, i32 noundef 27)
  %i.d = load i32, ptr @proto_megaco, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef @proto_register_megaco.ei, i32 noundef 10)
  %i.f = load i32, ptr @proto_megaco, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef null) ; 3 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.181, ptr noundef @.str.182, ptr noundef @.str.183, ptr noundef @global_megaco_raw_text)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.184, ptr noundef @.str.185, ptr noundef @.str.186, ptr noundef @global_megaco_dissect_tree)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef @.str.187, ptr noundef @.str.188, ptr noundef @.str.189, ptr noundef @keep_persistent_data)
  %i.h = tail call i32 @register_tap(ptr noundef @.str.180)
  store i32 %i.h, ptr @megaco_tap, align 4
  tail call void @ws_mempbrk_compile(ptr noundef @pbrk_whitespace, ptr noundef @.str.190)
  tail call void @ws_mempbrk_compile(ptr noundef @pbrk_braces, ptr noundef @.str.191)
  %i.i = load i32, ptr @proto_megaco, align 4
  tail call void @register_rtd_table(i32 noundef %i.i, ptr noundef null, i32 noundef 1, i32 noundef 12, ptr noundef @megaco_message_type, ptr noundef @megacostat_packet, ptr noundef @megacostat_filtercheck)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @megaco_fmt_content(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, -3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @val_to_str_const(i32 noundef %1, ptr noundef @megaco_context_vals, ptr noundef @.str.204)
  %i.b = tail call i64 @g_strlcpy(ptr noundef %0, ptr noundef %i.a, i64 noundef 240) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef @.str.205, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_megaco_text(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 11 uses
  %i.o = alloca i32, align 4                      ; 27 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 37 uses
  %i.s = alloca i32, align 4                      ; 43 uses
  %i.t = alloca i32, align 4                      ; 55 uses
  %i.u = alloca i32, align 4                      ; 10 uses
  %i.v = alloca i32, align 4                      ; 11 uses
  %i.w = alloca i32, align 4                      ; 7 uses
  %i.x = alloca i32, align 4                      ; 54 uses
  %i.y = alloca i32, align 4                      ; 13 uses
  %i.z = alloca i32, align 4                      ; 15 uses
  %i.aa = alloca ptr, align 8                     ; 26 uses
  %i.ab = alloca [15 x i8], align 1               ; 3 uses
  %i.ac = alloca [30 x i8], align 16              ; 5 uses
  %i.ad = alloca i32, align 4                     ; 9 uses
  %i.ae = alloca i32, align 4                     ; 28 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %i.ag = alloca i32, align 4                     ; 10 uses
  %i.ah = alloca i32, align 4                     ; 8 uses
  %i.ai = alloca i32, align 4                     ; 12 uses
  %i.aj = alloca i8, align 1                      ; 4 uses
  %i.ak = alloca i8, align 1                      ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 7 uses
  %i.an = alloca i32, align 4                     ; 6 uses
  %i.ao = alloca i32, align 4                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #9
  store i32 0, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #9
  store i32 0, ptr %i.ai, align 4
  %i.ap = tail call i32 @tvb_reported_length(ptr noundef %0) ; 20 uses
  %i.aq = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef 0)
  %i.ar = icmp eq i32 %i.aq, 8611843
  %i.as = load ptr, ptr @h248_otp_handle, align 8 ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = tail call i32 @call_dissector(ptr noundef nonnull %i.as, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.av = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.c:                                             ; preds = %bb.a
  %i.aw = tail call i32 @tvb_raw_offset(ptr noundef %0)
  %i.ax = load i8, ptr @keep_persistent_data, align 1, !range !8, !noundef !9
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = tail call ptr @gcp_msg(ptr noundef %1, i32 noundef %i.aw, i1 noundef zeroext %i.ay) ; 9 uses
  %i.ba = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %.not1231 = icmp eq i32 %i.ba, 0
  br i1 %.not1231, label %megaco_tvb_skip_wsp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = load ptr, ptr @g_ascii_table, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %bb.e ] ; 3 uses
  %i.bc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.07.i)
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr [2 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = and i16 %i.bf, 256
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %megaco_tvb_skip_wsp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = add nuw i32 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.ba
  br i1 %exitcond.not.i, label %megaco_tvb_skip_wsp.exit, label %bb.d, !llvm.loop !0

megaco_tvb_skip_wsp.exit:                         ; preds = %bb.d, %bb.e, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %.07.i, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.t, align 4
  %i.bi = call i32 @tvb_get_raw_bytes_as_stringz(ptr noundef %0, i32 noundef %.0.lcssa.i, i32 noundef 15, ptr noundef nonnull %i.ab)
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %megaco_tvb_skip_wsp.exit
  %i.bj = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.g:                                             ; preds = %megaco_tvb_skip_wsp.exit
  %i.bk = load i32, ptr %i.t, align 4
  %i.bl = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %i.bk, ptr noundef @.str.290, i64 noundef 14)
  %i.bm = icmp eq i32 %i.bl, 0
  %.old = load i32, ptr %i.t, align 4             ; 4 uses
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.old, ptr noundef @.str.291, i64 noundef 2)
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = load i32, ptr %i.t, align 4             ; 3 uses
  %i.bq = icmp ult i32 %i.bp, %i.ap
  %or.cond936 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond936, label %.lr.ph.preheader, label %.loopexit779

bb.i:                                             ; preds = %bb.g
  %.old935 = icmp ult i32 %.old, %i.ap
  br i1 %.old935, label %.lr.ph.preheader, label %.loopexit779

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.h
  %.0563920.ph = phi i32 [ %.old, %bb.i ], [ %i.bp, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %.0563920 = phi i32 [ %.pre1086, %.lr.ph._crit_edge ], [ %.0563920.ph, %.lr.ph.preheader ] ; 2 uses
  %i.br = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0563920) ; 2 uses
  store i8 %i.br, ptr %i.af, align 1
  %.pre1086 = add nuw i32 %.0563920, 1            ; 5 uses
  switch i8 %i.br, label %.lr.ph._crit_edge [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.bs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.pre1086)
  switch i8 %i.bs, label %bb.k [
    i8 32, label %.lr.ph._crit_edge
    i8 13, label %.lr.ph._crit_edge
    i8 10, label %.lr.ph._crit_edge
  ]

bb.k:                                             ; preds = %bb.j
  store i32 %.pre1086, ptr %i.t, align 4
  br label %.loopexit779

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.j, %bb.j, %bb.j
  %i.bt = icmp ult i32 %.pre1086, %i.ap
  br i1 %i.bt, label %.lr.ph, label %.loopexit779.loopexit, !llvm.loop !11

.loopexit779.loopexit:                            ; preds = %.lr.ph._crit_edge
  %.pre = load i32, ptr %i.t, align 4
  br label %.loopexit779

.loopexit779:                                     ; preds = %.loopexit779.loopexit, %bb.i, %bb.k, %bb.h
  %i.bu = phi i32 [ %.pre, %.loopexit779.loopexit ], [ %.old, %bb.i ], [ %.pre1086, %bb.k ], [ %i.bp, %bb.h ]
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bu)
  %i.bw = icmp eq i8 %i.bv, 33                    ; 2 uses
  %i.bx = load i32, ptr %i.t, align 4
  %i.by = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %i.bx, ptr noundef @.str.179, i64 noundef 6)
  %i.bz = icmp eq i32 %i.by, 0
  %or.cond17 = select i1 %i.bz, i1 true, i1 %i.bw
  br i1 %or.cond17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #9
  %i.ca = load ptr, ptr @data_handle, align 8
  %i.cb = call i32 @get_ber_identifier(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) ; 0 uses
  %i.cc = load i8, ptr %i.aj, align 1
  %i.cd = icmp eq i8 %i.cc, 0
  %i.ce = load i8, ptr %i.ak, align 1, !range !8
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond19 = select i1 %i.cd, i1 %i.cf, i1 false
  %i.cg = load i32, ptr %i.al, align 4
  %i.ch = icmp eq i32 %i.cg, 16
  %or.cond21 = select i1 %or.cond19, i1 %i.ch, i1 false
  %i.ci = load ptr, ptr @h248_handle, align 8
  %spec.select = select i1 %or.cond21, ptr %i.ci, ptr %i.ca
  %i.cj = call i32 @call_dissector(ptr noundef %spec.select, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.ck = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #9
  br label %bb.jk

bb.m:                                             ; preds = %.loopexit779
  %i.cl = getelementptr i8, ptr %1, i64 8         ; 25 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  call void @col_set_str(ptr noundef %i.cm, i32 noundef 35, ptr noundef @.str.179)
  %i.cn = getelementptr i8, ptr %1, i64 276
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, 1
  %.not631 = icmp eq i8 %i.cp, 0
  br i1 %.not631, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr @exported_pdu_tap, align 4
  %i.cr = call zeroext i1 @have_tap_listener(i32 noundef %i.cq)
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef @.str.180, i16 noundef zeroext 12) ; 4 uses
  %i.ct = call i32 @tvb_captured_length(ptr noundef %0)
  %i.cu = getelementptr i8, ptr %i.cs, i64 16
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = call i32 @tvb_reported_length(ptr noundef %0)
  %i.cw = getelementptr i8, ptr %i.cs, i64 20
  store i32 %i.cv, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %i.cs, i64 24
  store ptr %0, ptr %i.cx, align 8
  %i.cy = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.cy, ptr noundef %1, ptr noundef %i.cs)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.cz = load i32, ptr @proto_megaco, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cz, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 4 uses
  %i.db = load i32, ptr @ett_megaco, align 4
  %i.dc = call ptr @proto_item_add_subtree(ptr noundef %i.da, i32 noundef %i.db) ; 22 uses
  %i.dd = call zeroext i1 @tvb_find_uint8_remaining(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 47, ptr noundef nonnull %i.r)
  br i1 %i.dd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.da, ptr noundef @ei_megaco_parse_error, ptr noundef @.str.292) ; 0 uses
  %i.df = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.r:                                             ; preds = %bb.p
  %i.dg = load i32, ptr @hf_megaco_start, align 4
  %i.dh = load i32, ptr %i.r, align 4             ; 2 uses
  %i.di = add i32 %i.dh, 1
  %i.dj = getelementptr i8, ptr %1, i64 416       ; 17 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call ptr @tvb_get_string_enc(ptr noundef %i.dk, ptr noundef %0, i32 noundef 0, i32 noundef %i.dh, i32 noundef 2)
  %i.dm = call ptr @proto_tree_add_string(ptr noundef %i.dc, i32 noundef %i.dg, ptr noundef %0, i32 noundef 0, i32 noundef %i.di, ptr noundef %i.dl) ; 2 uses
  %i.dn = load i8, ptr @global_megaco_dissect_tree, align 1, !range !8, !noundef !9
  %i.do = trunc nuw i8 %i.dn to i1
  %.not.i.i = icmp eq ptr %i.dm, null
  %or.cond.i = select i1 %i.do, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %megaco_tree_add_string.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr i8, ptr %i.dm, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i.i, label %megaco_tree_add_string.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr i8, ptr %i.dq, i64 28     ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = or i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4
  br label %megaco_tree_add_string.exit

megaco_tree_add_string.exit:                      ; preds = %bb.r, %bb.s, %bb.t
  %i.du = load i32, ptr %i.r, align 4             ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.r, align 4
  %i.dw = add i32 %i.du, 2                        ; 2 uses
  store i32 %i.dw, ptr %i.s, align 4
  %i.dx = load ptr, ptr @g_ascii_table, align 8   ; 33 uses
  %i.dy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dw)
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr [2 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = and i16 %i.eb, 8
  %.not632 = icmp eq i16 %i.ec, 0
  %.pre1069 = load i32, ptr %i.s, align 4         ; 2 uses
  br i1 %.not632, label %bb.v, label %bb.u

bb.u:                                             ; preds = %megaco_tree_add_string.exit
  %i.ed = add i32 %.pre1069, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.s, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %megaco_tree_add_string.exit
  %i.ee = phi i32 [ %i.ed, %bb.u ], [ %.pre1069, %megaco_tree_add_string.exit ]
  %i.ef = load i32, ptr @hf_megaco_version, align 4
  %i.eg = load i32, ptr %i.r, align 4             ; 3 uses
  %i.eh = sub i32 %i.ee, %i.eg                    ; 2 uses
  %i.ei = load ptr, ptr %i.dj, align 8
  %i.ej = call ptr @tvb_get_string_enc(ptr noundef %i.ei, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef 2)
  %i.ek = call ptr @proto_tree_add_string(ptr noundef %i.dc, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.eh, ptr noundef %i.ej) ; 2 uses
  %i.el = load i8, ptr @global_megaco_dissect_tree, align 1, !range !8, !noundef !9
  %i.em = trunc nuw i8 %i.el to i1
  %.not.i.i669 = icmp eq ptr %i.ek, null
  %or.cond.i670 = select i1 %i.em, i1 true, i1 %.not.i.i669
  br i1 %or.cond.i670, label %megaco_tree_add_string.exit672, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr i8, ptr %i.ek, i64 40
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not5.i.i671 = icmp eq ptr %i.eo, null
  br i1 %.not5.i.i671, label %megaco_tree_add_string.exit672, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = getelementptr i8, ptr %i.eo, i64 28     ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = or i32 %i.eq, 1
  store i32 %i.er, ptr %i.ep, align 4
  br label %megaco_tree_add_string.exit672

megaco_tree_add_string.exit672:                   ; preds = %bb.v, %bb.w, %bb.x
  %i.es = load i32, ptr %i.s, align 4             ; 4 uses
  store i32 %i.es, ptr %i.r, align 4
  %i.et = call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.eu = icmp ult i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph.i674, label %megaco_tvb_skip_wsp.exit678

.lr.ph.i674:                                      ; preds = %megaco_tree_add_string.exit672, %bb.y
  %.07.i675 = phi i32 [ %i.fa, %bb.y ], [ %i.es, %megaco_tree_add_string.exit672 ] ; 3 uses
  %i.ev = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.07.i675)
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr [2 x i8], ptr %i.dx, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = and i16 %i.ey, 256
  %.not.i676 = icmp eq i16 %i.ez, 0
  br i1 %.not.i676, label %megaco_tvb_skip_wsp.exit678, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i674
  %i.fa = add nuw i32 %.07.i675, 1                ; 2 uses
  %exitcond.not.i677 = icmp eq i32 %i.fa, %i.et
  br i1 %exitcond.not.i677, label %megaco_tvb_skip_wsp.exit678, label %.lr.ph.i674, !llvm.loop !0

megaco_tvb_skip_wsp.exit678:                      ; preds = %.lr.ph.i674, %bb.y, %megaco_tree_add_string.exit672
  %.0.lcssa.i673 = phi i32 [ %i.es, %megaco_tree_add_string.exit672 ], [ %.07.i675, %.lr.ph.i674 ], [ %i.et, %bb.y ] ; 4 uses
  store i32 %.0.lcssa.i673, ptr %i.s, align 4
  %i.fb = load i32, ptr %i.r, align 4
  %i.fc = icmp eq i32 %i.fb, %.0.lcssa.i673
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %megaco_tvb_skip_wsp.exit678
  %i.fd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.da, ptr noundef @ei_megaco_parse_error, ptr noundef @.str.293) ; 0 uses
  %i.fe = load i32, ptr %i.s, align 4
  br label %bb.jk

bb.aa:                                            ; preds = %megaco_tvb_skip_wsp.exit678
  store i32 %.0.lcssa.i673, ptr %i.r, align 4
  %i.ff = call zeroext i1 @tvb_ws_mempbrk_uint8_length(ptr noundef %0, i32 noundef %.0.lcssa.i673, i32 noundef %i.ap, ptr noundef @pbrk_whitespace, ptr noundef nonnull %i.s, ptr noundef nonnull %i.af)
  br i1 %i.ff, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.da, ptr noundef @ei_megaco_parse_error, ptr noundef @.str.294) ; 0 uses
  %i.fh = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.jk

bb.ac:                                            ; preds = %bb.aa
  %i.fi = load i32, ptr %i.s, align 4
  %i.fj = call fastcc i32 @megaco_tvb_skip_wsp(ptr noundef %0, i32 noundef %i.fi)
end_hunk_0
