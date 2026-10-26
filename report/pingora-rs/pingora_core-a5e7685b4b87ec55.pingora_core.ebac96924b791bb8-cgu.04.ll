Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.04?download=true
inline.NumInlined: 817
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@454 = private unnamed_addr constant [17 x i8] c"TLSWantX509Lookup", align 1
@455 = private unnamed_addr constant [19 x i8] c"TLSHandshakeFailure", align 1
@456 = private unnamed_addr constant [20 x i8] c"TLSHandshakeTimedout", align 1
@457 = private unnamed_addr constant [11 x i8] c"InvalidCert", align 1
@458 = private unnamed_addr constant [14 x i8] c"HandshakeError", align 1
@459 = private unnamed_addr constant [12 x i8] c"ConnectError", align 1
@460 = private unnamed_addr constant [9 x i8] c"BindError", align 1
@461 = private unnamed_addr constant [11 x i8] c"AcceptError", align 1
@462 = private unnamed_addr constant [11 x i8] c"SocketError", align 1
@463 = private unnamed_addr constant [19 x i8] c"ConnectProxyFailure", align 1
@464 = private unnamed_addr constant [17 x i8] c"InvalidHTTPHeader", align 1
@465 = private unnamed_addr constant [7 x i8] c"H1Error", align 1
@466 = private unnamed_addr constant [7 x i8] c"H2Error", align 1
@467 = private unnamed_addr constant [11 x i8] c"H2Downgrade", align 1
@468 = private unnamed_addr constant [9 x i8] c"InvalidH2", align 1
@469 = private unnamed_addr constant [9 x i8] c"ReadError", align 1
@470 = private unnamed_addr constant [10 x i8] c"WriteError", align 1
@471 = private unnamed_addr constant [12 x i8] c"ReadTimedout", align 1
@472 = private unnamed_addr constant [13 x i8] c"WriteTimedout", align 1
@473 = private unnamed_addr constant [16 x i8] c"ConnectionClosed", align 1
@474 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@475 = private unnamed_addr constant [10 x i8] c"HTTPStatus", align 1
@476 = private unnamed_addr constant [13 x i8] c"FileOpenError", align 1
@477 = private unnamed_addr constant [15 x i8] c"FileCreateError", align 1
@478 = private unnamed_addr constant [13 x i8] c"FileReadError", align 1
@479 = private unnamed_addr constant [14 x i8] c"FileWriteError", align 1
@480 = private unnamed_addr constant [13 x i8] c"InternalError", align 1
@481 = private unnamed_addr constant [12 x i8] c"UnknownError", align 1
@482 = private unnamed_addr constant [6 x i8] c"Custom", align 1
@483 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@484 = private unnamed_addr constant [10 x i8] c"CustomCode", align 1
@485 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCsfb1Yr8Wqamh_4libc4unix10linux_like5linux3gnu8timespecNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@486 = private unnamed_addr constant [8 x i8] c"TimeSpec", align 1
@487 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core }>, align 8
@488 = private unnamed_addr constant [15 x i8] c"SystemTimeError", align 1
@489 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@490 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7823694743086741007 to ptr), ptr inttoptr (i64 5324521292346852605 to ptr) }>, align 8
@491 = private unnamed_addr constant [31 x i8] c"\0Finvalid value: \C0\0B, expected \C0\00", align 1
@492 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@493 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 21992602615773613 to ptr), ptr inttoptr (i64 7102609048711187715 to ptr) }>, align 8
@494 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6665225457469263955 to ptr), ptr inttoptr (i64 -9066706561373785555 to ptr) }>, align 8
@495 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9128072492757871532 to ptr), ptr inttoptr (i64 1872167256428522002 to ptr) }>, align 8
@496 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -269172032297156815 to ptr), ptr inttoptr (i64 -4426948631437355431 to ptr) }>, align 8
@497 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7429658065514507536 to ptr), ptr inttoptr (i64 -6911765289239786968 to ptr) }>, align 8
@498 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4736280870341790704 to ptr), ptr inttoptr (i64 1307520967493961046 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core.108 = private unnamed_addr constant [6 x ptr] [ptr @445, ptr @446, ptr @447, ptr @448, ptr @449, ptr @450], align 8
@switch.table._RNvXs2_NtNtCsifUeDn7Bu1H_3nix5errno6constsNtB5_5ErrnoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [256 x i8] [i8 11, i8 12, i8 10, i8 15, i8 7, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 12, i8 5, i8 6, i8 5, i8 5, i8 3, i8 5, i8 5, i8 7, i8 5, i8 6, i8 6, i8 6, i8 6, i8 6, i8 7, i8 5, i8 6, i8 5, i8 6, i8 7, i8 6, i8 6, i8 6, i8 6, i8 6, i8 7, i8 5, i8 6, i8 6, i8 5, i8 6, i8 5, i8 4, i8 6, i8 7, i8 12, i8 6, i8 6, i8 9, i8 5, i8 poison, i8 6, i8 5, i8 6, i8 8, i8 6, i8 6, i8 6, i8 7, i8 6, i8 6, i8 5, i8 5, i8 6, i8 6, i8 7, i8 7, i8 poison, i8 6, i8 6, i8 7, i8 5, i8 5, i8 6, i8 6, i8 7, i8 7, i8 4, i8 6, i8 5, i8 6, i8 9, i8 7, i8 7, i8 9, i8 8, i8 6, i8 7, i8 7, i8 7, i8 7, i8 7, i8 8, i8 6, i8 8, i8 8, i8 6, i8 8, i8 12, i8 8, i8 10, i8 11, i8 15, i8 15, i8 10, i8 12, i8 12, i8 10, i8 13, i8 8, i8 11, i8 9, i8 12, i8 10, i8 7, i8 7, i8 8, i8 9, i8 12, i8 9, i8 12, i8 9, i8 12, i8 8, i8 11, i8 6, i8 7, i8 7, i8 7, i8 6, i8 9, i8 6, i8 9, i8 11, i8 9, i8 6, i8 11], align 8
@switch.table._RNvXs2_NtNtCsifUeDn7Bu1H_3nix5errno6constsNtB5_5ErrnoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.109 = private unnamed_addr constant [256 x ptr] [ptr @335, ptr @336, ptr @337, ptr @338, ptr @339, ptr @340, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr poison, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr poison, ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298, ptr @299, ptr @300, ptr @301, ptr @302, ptr @303, ptr @304, ptr @305, ptr @306, ptr @307, ptr @308, ptr @309, ptr @310, ptr @311, ptr @312, ptr @313, ptr @314, ptr @315, ptr @316, ptr @317, ptr @318, ptr @319, ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334], align 8
@switch.table._RNvXs9_CsfsXztIhCltD_13pingora_errorNtB5_11ErrorSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\08\0A\08\05", align 8
@switch.table._RNvXs9_CsfsXztIhCltD_13pingora_errorNtB5_11ErrorSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.110 = private unnamed_addr constant [4 x ptr] [ptr @395, ptr @396, ptr @397, ptr @398], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCskItKYAOUBlG_10serde_yaml2deNtB3_12Deserializer2deNtNtNtCskeugdADtBsi_12pingora_core6server13configuration10ServerConfNCINvXs0_B3_By_NtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvBW_s_1__BU_NtB2h_11Deserialize11deserialize9___VisitorE0EB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = alloca [320 x i8], align 8               ; 7 uses
  %i.e = alloca [320 x i8], align 8               ; 11 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 23 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 16 uses
  %i.l = alloca [96 x i8], align 8                ; 10 uses
  %i.m = alloca [320 x i8], align 8               ; 7 uses
  %i.n = alloca [320 x i8], align 8               ; 9 uses
  %i.o = alloca [56 x i8], align 8                ; 19 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.s = load i64, ptr %1, align 8, !range !4, !noundef !5 ; 3 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775804
  tail call void @llvm.assume(i1 %i.t)
  %i.u = xor i64 %i.s, -9223372036854775808
  %i.v = icmp slt i64 %i.s, 0
  %i.w = select i1 %i.v, i64 %i.u, i64 4
  switch i64 %i.w, label %bb.b [
    i64 3, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @_RNvMNtCskItKYAOUBlG_10serde_yaml6loaderNtB2_6Loader3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.x = load i64, ptr %i.j, align 8, !range !6, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !5 ; 2 uses
  br i1 %i.y, label %bb.ah, label %bb.ai

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 13, ptr %i.ab, align 8
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvNtCskItKYAOUBlG_10serde_yaml5error3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.p)
          to label %bb.e unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.o, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.r, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.q, ptr %i.af, align 8
  store i64 0, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i8 -128, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr null, ptr %i.ah, align 8
  invoke fastcc void @_RINvXs8_NtCskItKYAOUBlG_10serde_yaml2deQNtB6_22DeserializerFromEventsNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB2e_10ServerConfNtB17_11Deserialize11deserialize9___VisitorEB2i_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(320) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ai, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aj = load i64, ptr %1, align 8, !range !4, !noundef !5 ; 2 uses
  %i.ak = icmp ne i64 %i.aj, -9223372036854775804
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp sgt i64 %i.aj, -1
  br i1 %i.al, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.p, %bb.h
  %.sroa.038.0 = phi i1 [ %.sroa.038.1, %bb.h ], [ false, %bb.p ]
  %.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.ax, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %bb.ae unwind label %bb.v

bb.h:                                             ; preds = %bb.d, %bb.q
  %.sroa.038.1 = phi i1 [ false, %bb.q ], [ true, %bb.d ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit: ; preds = %bb.d
  %i.an = load i64, ptr %i.m, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBK_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBR_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBR_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.548.0..sroa_idx, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.an, ptr %i.n, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aq, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = invoke noundef nonnull align 8 ptr @_RNvNtCskItKYAOUBlG_10serde_yaml5error6shared(ptr noundef nonnull %i.av)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.n, i64 320, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core6server13configuration10ServerConfEBH_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.n) #24
          to label %bb.g unwind label %bb.v

bb.q:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskeugdADtBsi_12pingora_core6server13configuration10ServerConfEBH_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.n)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.038.2 = phi i8 [ 0, %bb.q ], [ 1, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBK_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBR_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBR_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit73 unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %bb.bw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit119, %bb.bt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit115, %bb.bl, %bb.aj, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit81, %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77, %bb.bx, %bb.az, %bb.aq, %bb.p, %bb.g
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.k
  %.sroa.038.3 = phi i8 [ 1, %bb.k ], [ %.sroa.038.2, %bb.t ]
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.s, %bb.j
  %.sroa.038.3.lpad-body = phi i8 [ 1, %bb.j ], [ %.sroa.038.3, %bb.w ], [ %.sroa.038.2, %bb.s ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.bc, %bb.w ], [ %i.az, %bb.s ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %i.bf = icmp ne ptr %i.be, null
  %4 = trunc nuw i8 %.sroa.038.3.lpad-body to i1
  %or.cond3 = select i1 %i.bf, i1 %4, i1 false
  br i1 %or.cond3, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit73: ; preds = %bb.t
  %i.bg = load ptr, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, null
  %5 = trunc nuw i8 %.sroa.038.2 to i1
  %or.cond = and i1 %i.bh, %5
  br i1 %or.cond, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.x, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapjjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit73, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit
  %i.bj = phi ptr [ %i.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit73 ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit ]
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !73
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq ptr %i.bo, null
  br i1 %.not54, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit, label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77: ; preds = %bb.ac, %bb.ad, %bb.z, %.body
  %.pn55 = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.ad ], [ %eh.lpad-body, %bb.ac ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapjjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75.thread unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.f

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit113, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit107, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit86, %bb.ab, %bb.f
  ret void

bb.ab:                                            ; preds = %bb.f
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml2de8ProgressECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  br label %bb.aa

bb.ac:                                            ; preds = %.body
  %i.br = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !74
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit77 unwind label %bb.v

bb.ae:                                            ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noundef !5 ; 2 uses
  %i.bv = icmp ne ptr %i.bu, null
  %or.cond5 = and i1 %.sroa.038.0, %i.bv
  br i1 %or.cond5, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit81

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit81: ; preds = %bb.af, %bb.ag, %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapjjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75.thread unwind label %bb.v

bb.af:                                            ; preds = %bb.ae
  %i.bx = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !75
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit81

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit81 unwind label %bb.v

bb.ah:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.bz, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit86

bb.ai:                                            ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.aa, ptr %i.k, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.cb, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCskItKYAOUBlG_10serde_yaml6loaderNtB2_6Loader13next_document(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.al unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit103: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit119, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit115, %bb.bl, %bb.ak
  %.pn65 = phi { ptr, i32 } [ %i.cf, %bb.ak ], [ %i.dp, %bb.bl ], [ %.pn63, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit115 ], [ %.pn60, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCskItKYAOUBlG_10serde_yaml5error9ErrorImplEECskeugdADtBsi_12pingora_core.exit119 ] ; 2 uses
  %i.cd = load ptr, ptr %i.k, align 8, !alias.scope !76, !noundef !5
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75.thread127, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit103
  invoke void @_RNvXs0_NtNtCskItKYAOUBlG_10serde_yaml7libyaml4utilINtB5_5OwnedNtNtB7_6parser12ParserPinnedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit75.thread127 unwind label %bb.v

bb.ak:                                            ; preds = %bb.bm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core.exit96, %bb.an, %bb.ai
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapjjEECskeugdADtBsi_12pingora_core.exit103

bb.al:                                            ; preds = %bb.ai
  %i.cg = load i64, ptr %i.g, align 8, !range !8, !noundef !5
  %.not57 = icmp eq i64 %i.cg, -1
  br i1 %.not57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.r, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.q, ptr %i.cj, align 8
  store i64 0, ptr %i.c, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 -128, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.cl, align 8
  invoke fastcc void @_RINvXs8_NtCskItKYAOUBlG_10serde_yaml2deQNtB6_22DeserializerFromEventsNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB2e_10ServerConfNtB17_11Deserialize11deserialize9___VisitorEB2i_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(320) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit84 unwind label %bb.ar

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 12, ptr %i.cm, align 8
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvNtCskItKYAOUBlG_10serde_yaml5error3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.f)
          to label %bb.ao unwind label %bb.ak

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %i.co, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cp = load ptr, ptr %i.k, align 8, !alias.scope !77, !noundef !5
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit86, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvXs0_NtNtCskItKYAOUBlG_10serde_yaml7libyaml4utilINtB5_5OwnedNtNtB7_6parser12ParserPinnedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit86

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskItKYAOUBlG_10serde_yaml6loader6LoaderECskeugdADtBsi_12pingora_core.exit86: ; preds = %bb.ap, %bb.ao, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.aa

bb.aq:                                            ; preds = %bb.az, %bb.ar
  %.sroa.036.0 = phi i1 [ %.sroa.036.1, %bb.ar ], [ %.not58, %bb.az ]
  %.pn60 = phi { ptr, i32 } [ %i.cr, %bb.ar ], [ %i.dc, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtB1d_7libyaml5error4MarkEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %bb.bu unwind label %bb.v

bb.ar:                                            ; preds = %bb.am, %bb.bi, %bb.ba
  %.sroa.036.1 = phi i1 [ false, %bb.ba ], [ true, %bb.bi ], [ true, %bb.am ]
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit84: ; preds = %bb.am
  %i.cs = load i64, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  br i1 %i.ct, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %_RNCINvXs0_NtCskItKYAOUBlG_10serde_yaml2deNtB8_12DeserializerNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCskeugdADtBsi_12pingora_core6server13configurations_1__NtB28_10ServerConfNtBY_11Deserialize11deserialize9___VisitorE0B2c_.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBK_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskItKYAOUBlG_10serde_yaml2de5EventNtNtNtBR_7libyaml5error4MarkEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body89 unwind label %bb.av
end_hunk_0
