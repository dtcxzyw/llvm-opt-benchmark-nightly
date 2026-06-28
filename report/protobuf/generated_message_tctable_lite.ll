inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb
define noundef zeroext i1 @_ZN6google8protobuf8internal8TcParser24RepeatedFieldIsEmptySlowEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseERKNS6_10FieldEntryEPKvb(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !55   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %default.unreachable [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.j
    i32 6, label %bb.m
    i32 7, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = and i16 %i.b, 448
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 6 uses
  switch i16 %i.e, label %bb.i [
    i16 0, label %bb.c
    i16 128, label %bb.e
    i16 192, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %4, label %bb.d, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  br i1 %4, label %bb.f, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !61
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.e, %bb.f
  %.0.i.i39 = phi ptr [ %i.k, %bb.f ], [ %i.h, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  br i1 %4, label %bb.h, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !63
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.g, %bb.h
  %.0.i.i40 = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 4
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.o = and i32 %i.c, 448
  %i.p = icmp eq i32 %i.o, 128
  br i1 %i.p, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr %2, align 4, !tbaa !58
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 2 uses
  br i1 %4, label %bb.l, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.k, %bb.l
  %.0.i.i41 = phi ptr [ %i.t, %bb.l ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 4
  br label %bb.r

bb.m:                                             ; preds = %bb.j, %bb.a
  %i.v = load i32, ptr %2, align 4, !tbaa !58
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w ; 2 uses
  br i1 %4, label %bb.n, label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  br label %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit

_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit: ; preds = %bb.m, %bb.n
  %.0.i.i42 = phi ptr [ %i.y, %bb.n ], [ %i.x, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !36
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = zext i16 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !39
  %i.ak = and i8 %.sroa.3.0.copyload, 2
  %.not = icmp eq i8 %i.ak, 0
  %i.al = load i32, ptr %2, align 4, !tbaa !58
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am ; 4 uses
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ar = load atomic ptr, ptr @_ZN6google8protobuf8internal20MapFieldBaseForParse22sync_map_with_repeatedE monotonic, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i1 noundef zeroext false), !inline_history !88
  br label %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit

_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit: ; preds = %bb.p, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.r

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.r:                                             ; preds = %bb.o, %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit
  %.0.in.in = phi ptr [ %i.j, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIhEEEERKT_PKvmPKNS0_11MessageLiteEb.exit ], [ %i.l, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIjEEEERKT_PKvmPKNS0_11MessageLiteEb.exit ], [ %i.n, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldImEEEERKT_PKvmPKNS0_11MessageLiteEb.exit ], [ %i.z, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS1_20RepeatedPtrFieldBaseEEERKT_PKvmPKNS0_11MessageLiteEb.exit ], [ %i.u, %_ZN6google8protobuf8internal8TcParser18GetRepeatedFieldAtINS0_13RepeatedFieldIN4absl12lts_202505124CordEEEEERKT_PKvmPKNS0_11MessageLiteEb.exit ], [ %i.as, %_ZNK6google8protobuf8internal20MapFieldBaseForParse6GetMapEv.exit ], [ %i.an, %bb.o ]
  %.0.in = load i32, ptr %.0.in.in, align 4, !tbaa !3
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8internal8TcParser23VerifyHasBitConsistencyEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseEENK3$_0clEv"(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !89, !nonnull !72, !align !91
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call { i64, ptr } @_ZNK6google8protobuf11MessageLite11GetTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  store i64 %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = extractvalue { i64, ptr } %i.c, 1
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92, !nonnull !72, !align !91
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93, !nonnull !72, !align !94
  %i.l = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = zext i32 %i.n to i64
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = add i64 %i.l, %i.o                       ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 12                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31   ; 2 uses
  %.not2.i.i = icmp eq i32 %i.u, -1
  br i1 %.not2.i.i, label %.loopexit84.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.v = xor i32 %i.u, -1                         ; 2 uses
  %i.w = icmp eq i64 %i.q, %i.p
  br i1 %i.w, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit.i", label %.lr.ph

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, 0
  br i1 %i.x, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit.i", label %.lr.ph, !llvm.loop !95

.lr.ph:                                           ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.03.i.i38 = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.v, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i.preheader.i ]
  %i.z = add i64 %i.y, -1                         ; 3 uses
  %i.aa = add i32 %.03.i.i38, -1
  %i.ab = and i32 %i.aa, %.03.i.i38               ; 3 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %.loopexit84.i, label %.lr.ph.i.i, !llvm.loop !95

"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit.i": ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.03.i.i.lcssa = phi i32 [ %i.v, %.lr.ph.i.preheader.i ], [ %i.ab, %.lr.ph.i.i ]
  %i.ac = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03.i.i.lcssa, i1 true)
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE.exit

.loopexit84.i:                                    ; preds = %.lr.ph, %bb.a
  %.457.ph.i = phi i64 [ %i.s, %bb.a ], [ %i.z, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !32
  %i.ag = zext i16 %i.af to i64
  %i.ah = add i64 %i.ag, %i.l
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit.i, %.loopexit84.i
  %.053.i = phi i64 [ %.457.ph.i, %.loopexit84.i ], [ %.255.i, %.loopexit.i ] ; 2 uses
  %.031.i = phi ptr [ %i.ai, %.loopexit84.i ], [ %.13290.i, %.loopexit.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.031.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.031.i, i64 6 ; 2 uses
  %i.al = load i16, ptr %i.aj, align 2, !tbaa !33 ; 2 uses
  %.not3597.not.i = icmp eq i16 %i.al, 0
  br i1 %.not3597.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i"
  %.0100.i = phi i16 [ %i.av, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i" ], [ 0, %.critedge.i ] ; 2 uses
  %.13299.i = phi ptr [ %i.au, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i" ], [ %i.ak, %.critedge.i ] ; 2 uses
  %.15498.i = phi i64 [ %.65875.ph.i, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i" ], [ %.053.i, %.critedge.i ] ; 3 uses
  %i.am = load i16, ptr %.13299.i, align 2, !tbaa !33 ; 2 uses
  %.not2.i39.i = icmp eq i16 %i.am, -1
  br i1 %.not2.i39.i, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i", label %.lr.ph.i40.preheader.i

.lr.ph.i40.preheader.i:                           ; preds = %.lr.ph.i
  %i.an = xor i16 %i.am, -1
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = icmp eq i64 %.15498.i, 0
  br i1 %i.ap, label %.thread.loopexit.i, label %.lr.ph41

.lr.ph.i40.i:                                     ; preds = %.lr.ph41
  %i.aq = icmp eq i64 %i.ar, 0
  br i1 %i.aq, label %.thread.loopexit.i, label %.lr.ph41, !llvm.loop !95

.lr.ph41:                                         ; preds = %.lr.ph.i40.preheader.i, %.lr.ph.i40.i
  %.03.i42.i40 = phi i32 [ %i.at, %.lr.ph.i40.i ], [ %i.ao, %.lr.ph.i40.preheader.i ] ; 2 uses
  %.5.i39 = phi i64 [ %i.ar, %.lr.ph.i40.i ], [ %.15498.i, %.lr.ph.i40.preheader.i ]
  %i.ar = add i64 %.5.i39, -1                     ; 3 uses
  %i.as = add nsw i32 %.03.i42.i40, -1
  %i.at = and i32 %i.as, %.03.i42.i40             ; 3 uses
  %.not.i43.i = icmp eq i32 %i.at, 0
  br i1 %.not.i43.i, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i", label %.lr.ph.i40.i, !llvm.loop !95

"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i": ; preds = %.lr.ph41, %.lr.ph.i
  %.65875.ph.i = phi i64 [ %.15498.i, %.lr.ph.i ], [ %i.ar, %.lr.ph41 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.13299.i, i64 4 ; 2 uses
  %i.av = add nuw i16 %.0100.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.av, %i.al
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !96

.loopexit.i:                                      ; preds = %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i", %.critedge.i
  %.13290.i = phi ptr [ %i.ak, %.critedge.i ], [ %i.au, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i" ]
  %.255.i = phi i64 [ %.053.i, %.critedge.i ], [ %.65875.ph.i, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread.i" ]
  br label %.critedge.i, !llvm.loop !97

.thread.loopexit.i:                               ; preds = %.lr.ph.i40.preheader.i, %.lr.ph.i40.i
  %.03.i42.i.lcssa = phi i32 [ %i.at, %.lr.ph.i40.i ], [ %i.ao, %.lr.ph.i40.preheader.i ]
  %i.aw = load i32, ptr %.031.i, align 2
  %i.ax = zext i16 %.0100.i to i32
  %i.ay = shl nuw nsw i32 %i.ax, 4
  %i.az = add i32 %i.ay, %i.aw
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03.i42.i.lcssa, i1 true)
  %i.bb = add nsw i32 %i.az, %i.ba
  br label %_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE.exit

_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE.exit: ; preds = %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit.i", %.thread.loopexit.i
  %.6.i = phi i32 [ %i.ad, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit.i" ], [ %i.bb, %.thread.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !98
  store ptr %4, ptr %2, align 8, !tbaa !39, !noalias !98
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bc, align 8, !tbaa !101, !noalias !98
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.6.i to i64
  %i.be = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !39, !noalias !98
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.bf, align 8, !tbaa !101, !noalias !98
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.60, i64 39, ptr nonnull %2, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !98
  %i.bg = load ptr, ptr %3, align 8, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !81
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.bi, ptr %i.bg)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !39
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !39
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal8TcParser22CheckHasBitConsistencyEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN6google8protobuf8internal8TcParser23VerifyHasBitConsistencyEPKNS0_11MessageLiteEPKNS1_16TcParseTableBaseE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %2, ptr noundef %0, ptr noundef %1)
  %i.a = load i64, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZN4absl12lts_2025051215status_internal19MakeCheckFailStringEPKNS0_6StatusEPKc(ptr noundef nonnull %2, ptr noundef nonnull @.str) #28
  %i.d = trunc i64 %i.a to i1
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 240, ptr noundef %i.c) #30
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN4absl12lts_2025051215status_internal19MakeCheckFailStringEPKNS0_6StatusEPKc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser21ParseLoopPreserveNoneEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ak, %bb.e ]   ; 4 uses
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.v, %bb.e ] ; 3 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !103
  %i.g = load ptr, ptr %2, align 8, !tbaa !108
  %i.h = icmp ult ptr %.0, %i.g
  br i1 %i.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.j = ptrtoint ptr %.0 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !110
  %i.o = icmp eq i32 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %i.m, 0
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, null
  %or.cond.i.i = select i1 %i.p, i1 %i.s, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.c
  %i.t = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.m, i32 noundef %i.f) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.t, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.t, 1
  %i.u = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.u, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9: ; preds = %bb.b, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.212 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.b ] ; 2 uses
  %i.v = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i) #31, !srcloc !111 ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -56
  %.0.copyload.i.i = load i16, ptr %.212, align 1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !112
  %i.z = zext i8 %i.y to i16
  %i.aa = and i16 %.0.copyload.i.i, %i.z
  %i.ab = zext nneg i16 %i.aa to i64              ; 2 uses
  %i.ac = and i64 %i.ab, 7
  %i.ad = icmp eq i64 %i.ac, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = lshr exact i64 %i.ab, 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.ah = zext i16 %.0.copyload.i.i to i64
  %i.ai = xor i64 %.sroa.01.0.copyload.i, %i.ah
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ak = tail call noundef ptr %i.aj(ptr noundef %0, ptr noundef nonnull %.212, ptr noundef nonnull %2, i64 %i.ai, ptr noundef nonnull %i.w, i64 noundef 0), !inline_history !116 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9
  %i.am = load i32, ptr %i.e, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !117

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.e, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.d
  %.1 = phi ptr [ %spec.select, %bb.d ], [ %i.ak, %bb.e ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9 ], [ %.0.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.1.i, i64 -47
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 1
  %.not14.i = icmp eq i8 %i.ap, 0
  br i1 %.not14.i, label %_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit, label %bb.f, !prof !29

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.aq = getelementptr inbounds i8, ptr %.1.i, i64 -16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  %i.as = tail call noundef ptr %i.ar(ptr noundef %0, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !119
  br label %_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit

_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.f
  %.013.i = phi ptr [ %i.as, %bb.f ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  ret ptr %.013.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_ZN6google8protobuf8internal8TcParser11MessageNameEPKNS1_16TcParseTableBaseE(ptr noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %i.d, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.g = load i16, ptr %i.f, align 2, !tbaa !120
  %i.h = zext i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = add i64 %i.e, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i16, ptr %i.l, align 4, !tbaa !47
  %i.n = zext i16 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 8
  %i.p = and i64 %i.o, 131064
  %i.q = load i8, ptr %i.k, align 1, !tbaa !39
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.r, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.s, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_ZN6google8protobuf8internal8TcParser9FieldNameEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = zext i32 %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = add i64 %i.a, %i.d
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !120
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = add i64 %i.l, %i.p
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i16, ptr %i.s, align 4, !tbaa !47
  %i.u = zext i16 %i.t to i64
  %i.v = add nsw i64 %i.h, 1                      ; 3 uses
  %i.w = add nuw nsw i64 %i.u, 8
  %i.x = and i64 %i.w, 131064                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %.not6.i.i = icmp samesign eq i64 %i.v, 0
  br i1 %.not6.i.i, label %_ZN6google8protobuf8internalL8FindNameEPKcmm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.08.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.prol ], [ %i.x, %.lr.ph.i.i.preheader ]
  %.057.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %.057.i.i.prol, align 1, !tbaa !39
  %i.aa = zext i8 %i.z to i64
  %i.ab = add i64 %.08.i.i.prol, %i.aa            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.057.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !121

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.prol ]
  %.08.i.i.unr = phi i64 [ %i.x, %.lr.ph.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %i.ad = icmp ult i64 %i.h, 7
  br i1 %i.ad, label %_ZN6google8protobuf8internalL8FindNameEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.bi, %.lr.ph.i.i ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.057.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.057.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ae = load i8, ptr %.057.i.i, align 1, !tbaa !39
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %.08.i.i, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !39
  %i.an = zext i8 %i.am to i64
  %i.ao = add i64 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !39
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4
  %i.au = load i8, ptr %i.at, align 1, !tbaa !39
  %i.av = zext i8 %i.au to i64
  %i.aw = add i64 %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = zext i8 %i.ay to i64
  %i.ba = add i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bd = zext i8 %i.bc to i64
  %i.be = add i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i64
  %i.bi = add i64 %i.be, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bj, %i.y
  br i1 %.not.i.i.7, label %_ZN6google8protobuf8internalL8FindNameEPKcmm.exit, label %.lr.ph.i.i, !llvm.loop !123

_ZN6google8protobuf8internalL8FindNameEPKcmm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ %i.x, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bi, %.lr.ph.i.i ]
  %i.bk = load i8, ptr %i.y, align 1, !tbaa !39
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.lcssa.i.i
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.bl, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bm, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @_ZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = zext i32 %i.c to i64
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = add i64 %i.a, %i.d                       ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 2 uses
  %.not2.i = icmp eq i32 %i.j, -1
  br i1 %.not2.i, label %.loopexit84, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.k = xor i32 %i.j, -1                         ; 2 uses
  %i.l = icmp eq i64 %i.f, %i.e
  br i1 %i.l, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit", label %.lr.ph139

.lr.ph.i:                                         ; preds = %.lr.ph139
  %i.m = icmp eq i64 %i.o, 0
  br i1 %i.m, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit", label %.lr.ph139, !llvm.loop !95

.lr.ph139:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i138 = phi i32 [ %i.q, %.lr.ph.i ], [ %i.k, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = add i32 %.03.i138, -1
  %i.q = and i32 %i.p, %.03.i138                  ; 3 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.loopexit84, label %.lr.ph.i, !llvm.loop !95

"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit": ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.03.i.lcssa = phi i32 [ %i.k, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i ]
  %i.r = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03.i.lcssa, i1 true)
  %i.s = add nuw nsw i32 %i.r, 1
  br label %.thread

.loopexit84:                                      ; preds = %.lr.ph139, %bb.a
  %.457.ph = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph139 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !32
  %i.v = zext i16 %i.u to i64
  %i.w = add i64 %i.v, %i.a
  %i.x = inttoptr i64 %i.w to ptr
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %.loopexit84
  %.053 = phi i64 [ %.457.ph, %.loopexit84 ], [ %.255, %.loopexit ] ; 2 uses
  %.031 = phi ptr [ %i.x, %.loopexit84 ], [ %.13290, %.loopexit ] ; 4 uses
  %i.y = load i16, ptr %.031, align 2, !tbaa !33  ; 2 uses
  %.not = icmp eq i16 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !33  ; 2 uses
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not34 = icmp ne i16 %i.aa, -1
  tail call void @llvm.assume(i1 %.not34)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.031, i64 6 ; 2 uses
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !33 ; 2 uses
  %.not3597.not = icmp eq i16 %i.ad, 0
  br i1 %.not3597.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread"
  %.0100 = phi i16 [ %i.an, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread" ], [ 0, %.critedge ] ; 2 uses
  %.13299 = phi ptr [ %i.am, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread" ], [ %i.ac, %.critedge ] ; 2 uses
  %.15498 = phi i64 [ %.65875.ph, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread" ], [ %.053, %.critedge ] ; 3 uses
  %i.ae = load i16, ptr %.13299, align 2, !tbaa !33 ; 2 uses
  %.not2.i39 = icmp eq i16 %i.ae, -1
  br i1 %.not2.i39, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread", label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %.lr.ph
  %i.af = xor i16 %i.ae, -1
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = icmp eq i64 %.15498, 0
  br i1 %i.ah, label %.thread.loopexit, label %.lr.ph142

.lr.ph.i40:                                       ; preds = %.lr.ph142
  %i.ai = icmp eq i64 %i.aj, 0
  br i1 %i.ai, label %.thread.loopexit, label %.lr.ph142, !llvm.loop !95

.lr.ph142:                                        ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40
  %.03.i42141 = phi i32 [ %i.al, %.lr.ph.i40 ], [ %i.ag, %.lr.ph.i40.preheader ] ; 2 uses
  %.5140 = phi i64 [ %i.aj, %.lr.ph.i40 ], [ %.15498, %.lr.ph.i40.preheader ]
  %i.aj = add i64 %.5140, -1                      ; 3 uses
  %i.ak = add nsw i32 %.03.i42141, -1
  %i.al = and i32 %i.ak, %.03.i42141              ; 3 uses
  %.not.i43 = icmp eq i32 %i.al, 0
  br i1 %.not.i43, label %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread", label %.lr.ph.i40, !llvm.loop !95

"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread": ; preds = %.lr.ph142, %.lr.ph
  %.65875.ph = phi i64 [ %.15498, %.lr.ph ], [ %i.aj, %.lr.ph142 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.13299, i64 4 ; 2 uses
  %i.an = add nuw i16 %.0100, 1                   ; 2 uses
  %exitcond.not = icmp eq i16 %i.an, %i.ad
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !96

.loopexit:                                        ; preds = %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread", %.critedge
  %.13290 = phi ptr [ %i.ac, %.critedge ], [ %i.am, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread" ]
  %.255 = phi i64 [ %.053, %.critedge ], [ %.65875.ph, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit45.thread" ]
  br label %bb.b, !llvm.loop !97

.thread.loopexit:                                 ; preds = %.lr.ph.i40.preheader, %.lr.ph.i40
  %.03.i42.lcssa = phi i32 [ %i.al, %.lr.ph.i40 ], [ %i.ag, %.lr.ph.i40.preheader ]
  %i.ao = zext i16 %i.y to i32
  %i.ap = zext i16 %i.aa to i32
  %i.aq = shl nuw i32 %i.ap, 16
  %i.ar = or disjoint i32 %i.aq, %i.ao
  %i.as = zext i16 %.0100 to i32
  %i.at = shl nuw nsw i32 %i.as, 4
  %i.au = add i32 %i.at, %i.ar
  %i.av = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03.i42.lcssa, i1 true)
  %i.aw = add nsw i32 %i.au, %i.av
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit"
  %.6 = phi i32 [ %i.s, %"_ZZN6google8protobuf8internal8TcParser11FieldNumberEPKNS1_16TcParseTableBaseEPKNS3_10FieldEntryEENK3$_0clEji.exit" ], [ %i.aw, %.thread.loopexit ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noalias noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) #10 align 2 {
bb.a:
  %i.a = load i16, ptr %4, align 8, !tbaa !8
  %i.b = trunc i64 %5 to i32
  %i.c = zext i16 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = or i32 %i.e, %i.b
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3
  ret ptr null
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !39      ; 3 uses
  %i.f = icmp slt i8 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.j, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = zext i8 %i.e to i64
  %i.i = load i8, ptr %i.g, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1, !tbaa !39
  %i.j = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, i64 %i.h) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = and i64 %i.j, 128
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !39
  %i.n = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, i64 %i.j) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = and i64 %i.n, 128
  %.not32.i = icmp eq i64 %i.o, 0
  br i1 %.not32.i, label %bb.h, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.q, ptr %i.c, align 1, !tbaa !39
  %i.r = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.c, i64 %i.n) #32, !srcloc !124 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = and i64 %i.r, 128
  %.not33.i = icmp eq i64 %i.s, 0
  br i1 %.not33.i, label %bb.g, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.u, ptr %i.d, align 1, !tbaa !39
  %i.v = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.d, i64 %i.r) #32, !srcloc !124 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = and i64 %i.v, 128
  %.not34.i = icmp eq i64 %i.w, 0
  br i1 %.not34.i, label %bb.f, label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 28)
  %i.y = trunc i64 %i.x to i32
  %i.z = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %1) #31, !srcloc !125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ab = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 14)
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ah = call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 7)
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ak = zext nneg i8 %i.e to i32
  br label %bb.k

_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit: ; preds = %bb.e
  %i.al = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.al

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.ph = phi i32 [ %i.ak, %bb.j ], [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ] ; 3 uses
  %.0.i.ph = phi ptr [ %i.g, %bb.j ], [ %i.aa, %bb.f ], [ %i.ad, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = lshr i32 %.0.ph, 3                      ; 4 uses
  %i.an = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !30
  %i.aq = add nsw i32 %i.am, -1                   ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 32
  br i1 %i.ar, label %bb.l, label %bb.n, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31 ; 2 uses
  %i.au = shl nuw i32 1, %i.aq                    ; 2 uses
  %i.av = and i32 %i.at, %i.au
  %.not57.i = icmp eq i32 %i.av, 0
  br i1 %.not57.i, label %bb.m, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.aw = add i32 %i.au, -1
  %i.ax = and i32 %i.at, %i.aw
  %i.ay = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ax)
  %i.az = sub nsw i32 %i.aq, %i.ay
  br label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit

bb.n:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !32
  %i.bc = zext i16 %i.bb to i64
  %i.bd = add i64 %i.bc, %i.an
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %.0.copyload65.i = load i32, ptr %i.be, align 2 ; 2 uses
  %i.bf = icmp ult i32 %i.am, %.0.copyload65.i
  br i1 %i.bf, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.q
  %.pn.i = phi ptr [ %i.cc, %bb.q ], [ %i.be, %bb.n ] ; 2 uses
  %.0.copyload66.i = phi i32 [ %.0.copyload.i, %bb.q ], [ %.0.copyload65.i, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 6 ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %i.bh = load i16, ptr %.in.i, align 2, !tbaa !33 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nuw nsw i32 %i.am, %.0.copyload66.i ; 2 uses
  %i.bk = lshr i32 %i.bj, 4                       ; 2 uses
  %.not61.i = icmp samesign ult i32 %i.bk, %i.bi
  br i1 %.not61.i, label %bb.o, label %bb.q, !prof !29

bb.o:                                             ; preds = %.lr.ph.i
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bm ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !33
  %i.bp = and i32 %i.bj, 15                       ; 2 uses
  %i.bq = zext i16 %i.bo to i32                   ; 2 uses
  %i.br = shl nuw nsw i32 1, %i.bp                ; 2 uses
  %i.bs = and i32 %i.br, %i.bq
  %.not.i4 = icmp eq i32 %i.bs, 0
  br i1 %.not.i4, label %bb.p, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, !prof !29

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !33
  %i.bv = add nuw nsw i32 %i.br, 65535
  %i.bw = and i32 %i.bv, %i.bq
  %i.bx = zext i16 %i.bu to i32
  %i.by = call noundef range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bw)
  %i.bz = sub nsw i32 %i.bp, %i.by
  %i.ca = add nsw i32 %i.bz, %i.bx
  br label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit

bb.q:                                             ; preds = %.lr.ph.i
  %i.cb = zext i16 %i.bh to i64
  %.idx.i = shl nuw nsw i64 %i.cb, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i ; 2 uses
  %.0.copyload.i = load i32, ptr %i.cc, align 2   ; 2 uses
  %i.cd = icmp ult i32 %i.am, %.0.copyload.i
  br i1 %i.cd, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, label %.lr.ph.i, !llvm.loop !34

_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread: ; preds = %bb.q, %bb.o, %bb.n, %bb.l
  %i.ce = zext i32 %.0.ph to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !126
  %i.ch = musttail call noundef ptr %i.cg(ptr noundef %0, ptr noundef nonnull %.0.i.ph, ptr noundef %2, i64 %i.ce, ptr noundef %4, i64 noundef %5), !inline_history !127
  ret ptr %i.ch

_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit: ; preds = %bb.p, %bb.m
  %.sink80.i = phi i32 [ %i.ca, %bb.p ], [ %i.az, %bb.m ]
  %i.ci = zext i32 %i.ap to i64
  %i.cj = add i64 %i.ci, %i.an
end_hunk_0
