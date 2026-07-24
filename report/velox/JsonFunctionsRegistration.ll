inline.NumInlined: 34235
inline.NumDeleted: 5823
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand5valueESD_Rbm:bb.a

bb.ap:                                            ; preds = %.lr.ph754, %.lr.ph754
  %i.hq = add nuw nsw i32 %i.hj, 1                ; 2 uses
  store i32 %i.hq, ptr %i.fj, align 4, !tbaa !1947
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph754, %.lr.ph754
  %i.hr = add nsw i32 %i.hj, -1                   ; 4 uses
  store i32 %i.hr, ptr %i.fj, align 4, !tbaa !1947
  %.not8.i.i.i = icmp sgt i32 %i.hr, %i.ev
  br i1 %.not8.i.i.i, label %bb.ar, label %.loopexit719

bb.ar:                                            ; preds = %.lr.ph754, %bb.aq, %bb.ap
  %i.hs = phi i32 [ %i.hj, %.lr.ph754 ], [ %i.hr, %bb.aq ], [ %i.hq, %bb.ap ] ; 2 uses
  %i.ht = load ptr, ptr %i.he, align 8, !tbaa !852
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hf
  %i.hv = icmp ult ptr %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph754, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i: ; preds = %bb.ar, %bb.ao
  %i.hw = phi i32 [ %i.gx, %bb.ao ], [ %i.hs, %bb.ar ]
  store i32 3, ptr %i.fk, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit719:                                     ; preds = %bb.aq, %bb.ai, %bb.ak, %bb.an
  %i.hx = phi i32 [ %i.gw, %bb.an ], [ %.pre789, %bb.ai ], [ %i.gp, %bb.ak ], [ %i.hr, %bb.aq ]
  %i.hy = phi ptr [ %i.gk, %bb.an ], [ %i.gh, %bb.ai ], [ %i.gk, %bb.ak ], [ %i.hl, %bb.aq ] ; 3 uses
  %i.hz = icmp ugt ptr %i.hy, %.sroa.6498.0.copyload
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp eq i32 %i.hx, %i.ev
  call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store ptr %i.ib, ptr %i.ei, align 8, !tbaa !1933
  %i.ic = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre788, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26
  switch i8 %i.if, label %bb.at [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread
    i8 44, label %bb.as
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread: ; preds = %.loopexit719
  store i32 %i.fq, ptr %i.fj, align 4, !tbaa !1947
  br label %.thread713

bb.as:                                            ; preds = %.loopexit719
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.at:                                            ; preds = %.loopexit719
  store i32 3, ptr %i.fk, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.at, %bb.as, %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i
  %i.ig = phi i32 [ %i.ev, %bb.at ], [ %i.fn, %bb.as ], [ %i.hw, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %.pre789, %bb.ah ] ; 2 uses
  %i.ih = phi i32 [ 3, %bb.at ], [ 0, %bb.as ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %i.gg, %bb.ah ]
  %.not716 = icmp slt i32 %i.ig, %i.ev
  br i1 %.not716, label %.thread713, label %bb.af

bb.au:                                            ; preds = %.thread657
  %i.ii = add nuw nsw i64 %indvars.iv, 1
  %i.ij = call noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand5valueESD_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.ii) ; 2 uses
  %.not126 = icmp eq i32 %i.ij, 0
  br i1 %.not126, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, label %.thread713

bb.av:                                            ; preds = %.thread657
  %i.ik = call noundef i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  %.not = icmp eq i32 %i.ik, 0
  br i1 %.not, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, label %.thread713

_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread: ; preds = %bb.d, %.thread657, %bb.e, %bb.au, %bb.av, %bb.ab, %bb.aa
  %i.il = load i8, ptr %i.a, align 8, !tbaa !1967, !range !125, !noundef !126
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.aw, label %.thread713

bb.aw:                                            ; preds = %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1966
  store i8 0, ptr %i.a, align 8, !tbaa !1967
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !1969
  %i.io = load ptr, ptr %0, align 8, !tbaa !1971  ; 2 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = sdiv exact i64 %i.ir, 40
  %.not137 = icmp ugt i64 %i.is, %indvars.iv.next
  br i1 %.not137, label %bb.b, label %.thread710, !llvm.loop !10430

.thread710:                                       ; preds = %bb.aw, %bb.a
  %i.it = call noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %.thread713

.thread713:                                       ; preds = %bb.au, %bb.ab, %bb.aa, %bb.av, %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.thread, %.thread853, %bb.ad, %.thread, %bb.g, %bb.l, %bb.j, %.thread653, %.thread689, %.thread710
  %.25 = phi i32 [ %i.it, %.thread710 ], [ 17, %bb.g ], [ %.5.ph, %.thread653 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread ], [ %i.be, %bb.j ], [ %.16.ph, %.thread689 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ 0, %.thread ], [ 3, %bb.l ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ 0, %.thread853 ], [ 17, %bb.ad ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.thread ], [ %i.ik, %bb.av ], [ %i.ij, %bb.au ], [ %i.eg, %bb.ab ], [ %i.ef, %bb.aa ], [ 0, %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.25
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10381, !nonnull !126, !align !247 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !186
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %.thread563

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1973   ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1975 ; 11 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !866  ; 16 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26
  switch i8 %i.l, label %.thread563 [
    i8 123, label %bb.c
    i8 91, label %bb.y
    i8 34, label %bb.aq
    i8 110, label %bb.aq
    i8 116, label %bb.aq
    i8 102, label %bb.aq
    i8 45, label %bb.aq
    i8 48, label %bb.aq
    i8 49, label %bb.aq
    i8 50, label %bb.aq
    i8 51, label %bb.aq
    i8 52, label %bb.aq
    i8 53, label %bb.aq
    i8 54, label %bb.aq
    i8 55, label %bb.aq
    i8 56, label %bb.aq
    i8 57, label %bb.aq
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 13 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1933, !noalias !10431 ; 4 uses
  %i.p = icmp eq ptr %i.o, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1947, !noalias !10431 ; 4 uses
  %i.s = load i32, ptr %i.m, align 8, !tbaa !1979, !noalias !10431 ; 2 uses
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.p, label %bb.d, label %._crit_edge630

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.t), !noalias !10431
  %i.u = icmp sgt i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u), !noalias !10431
  %i.v = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !10431
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26, !noalias !10431
  %.not8.i.i = icmp eq i8 %i.y, 123
  br i1 %.not8.i.i, label %bb.e, label %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !1933, !noalias !10431
  br label %._crit_edge630

._crit_edge630:                                   ; preds = %bb.c, %bb.e
  %i.aa = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.c ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ad = icmp eq ptr %i.ab, %i.ac
  tail call void @llvm.assume(i1 %i.ad), !noalias !10431
  %i.ae = icmp sgt i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ae), !noalias !10431
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !3, !noalias !10431
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !26, !noalias !10431
  %i.aj = icmp eq i8 %i.ai, 125
  br i1 %i.aj, label %bb.f, label %.lr.ph618

bb.f:                                             ; preds = %._crit_edge630
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.al, ptr %i.n, align 8, !tbaa !1933, !noalias !10431
  %i.am = add nsw i32 %i.aa, -1                   ; 2 uses
  %or.cond.i.i.i = icmp ne i32 %i.aa, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i), !noalias !10431
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !1947, !noalias !10431
  br label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.f, %._crit_edge630
  %.ph = phi ptr [ %i.al, %bb.f ], [ %i.ab, %._crit_edge630 ]
  %.promoted622.ph = phi i32 [ %i.am, %bb.f ], [ %i.aa, %._crit_edge630 ] ; 2 uses
  %.sroa.4140.0.copyload = load i32, ptr %i.m, align 8, !tbaa !3 ; 20 uses
  %.sroa.6142.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !852 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aq = add nuw nsw i32 %.sroa.4140.0.copyload, 1 ; 2 uses
  %or.cond.i.i11.i = icmp ult i32 %.sroa.4140.0.copyload, 2147483646
  %i.ar = icmp ne i32 %.sroa.4140.0.copyload, 0
  %i.as = add nsw i32 %.sroa.4140.0.copyload, -1  ; 3 uses
  %or.cond.i.i.i.i.i = icmp ult i32 %i.as, 2147483646
  %i.at = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not609 = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not.i.i11.i.i = icmp slt i32 %.sroa.4140.0.copyload, 0
  %i.au = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not608702 = icmp slt i32 %.promoted622.ph, %.sroa.4140.0.copyload
  br i1 %.not608702, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i, label %.lr.ph705.preheader

.lr.ph705.preheader:                              ; preds = %.lr.ph618
  %.promoted725 = load i32, ptr %i.ao, align 8, !tbaa !1948
  br label %.lr.ph705

_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit.thread: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.r, ptr %i.av, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.n, align 8, !tbaa !1933
  br label %.thread563

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i, %.lr.ph618
  %.0500617.lcssa = phi i64 [ 0, %.lr.ph618 ], [ %i.dz, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1948 ; 2 uses
  %.not.i5.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i5.i, label %bb.v, label %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit

.lr.ph705:                                        ; preds = %.lr.ph705.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i
  %i.ay = phi i32 [ %i.dy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.promoted725, %.lr.ph705.preheader ] ; 3 uses
  %.0500617703 = phi i64 [ %i.dz, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ 0, %.lr.ph705.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.eb, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.promoted622.ph, %.lr.ph705.preheader ]
  %i.ba = phi ptr [ %i.ea, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.ph, %.lr.ph705.preheader ] ; 5 uses
  %.not.i4.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i4.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph705
  %i.bb = icmp ugt ptr %i.ba, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bb), !noalias !10434
  %i.bc = icmp eq i32 %i.az, %.sroa.4140.0.copyload
  tail call void @llvm.assume(i1 %i.bc), !noalias !10434
  tail call void @llvm.assume(i1 %i.at), !noalias !10434
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 4 uses
  store ptr %i.bd, ptr %i.n, align 8, !tbaa !1933, !noalias !10434
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !10434
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !26, !noalias !10434
  %.not.i6.i.i = icmp eq i8 %i.bh, 34
  br i1 %.not.i6.i.i, label %.critedge.i.i.i, label %bb.h

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bi = icmp ugt ptr %i.bd, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bi), !noalias !10434
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  store ptr %i.bj, ptr %i.n, align 8, !tbaa !1933, !noalias !10434
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !10434
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !26, !noalias !10434
  %.not.i7.i.i = icmp eq i8 %i.bn, 58
  br i1 %.not.i7.i.i, label %.thread672, label %bb.h

.thread672:                                       ; preds = %.critedge.i.i.i
  tail call void @llvm.assume(i1 %or.cond.i.i11.i), !noalias !10434
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !1947, !noalias !10434
  %i.bo = icmp ugt ptr %i.bj, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bo), !noalias !10437
  tail call void @llvm.assume(i1 %i.ar), !noalias !10437
  %i.bp = add i64 %.0500617703, 1
  br label %bb.k

bb.h:                                             ; preds = %.critedge.i.i.i, %bb.g
  %i.bq = phi ptr [ %i.bj, %.critedge.i.i.i ], [ %i.bd, %bb.g ]
  store i32 3, ptr %i.ao, align 8, !tbaa !1948, !noalias !10434
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph705, %bb.h
  %i.br = phi i32 [ 3, %bb.h ], [ %i.ay, %.lr.ph705 ] ; 3 uses
  %i.bs = phi ptr [ %i.bq, %bb.h ], [ %i.ba, %.lr.ph705 ] ; 4 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !1915
  store i32 0, ptr %i.an, align 4, !tbaa !1947
  %i.bt = add i64 %.0500617703, 1                 ; 3 uses
  br i1 %.not609, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp ugt ptr %i.bs, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bu)
  br i1 %.not.i.i11.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.thread672, %bb.j
  %i.bv = phi i32 [ %i.ay, %.thread672 ], [ %i.br, %bb.j ] ; 3 uses
  %i.bw = phi ptr [ %i.bj, %.thread672 ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bx = phi i32 [ %i.aq, %.thread672 ], [ 0, %bb.j ] ; 7 uses
  %i.by = phi i64 [ %i.bp, %.thread672 ], [ %i.bt, %bb.j ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 10 uses
  store ptr %i.bz, ptr %i.n, align 8, !tbaa !1933
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  switch i8 %i.cd, label %bb.o [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 58, label %bb.p
    i8 44, label %bb.p
    i8 93, label %bb.l
    i8 125, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ce = add nsw i32 %i.bx, -1                   ; 4 uses
  store i32 %i.ce, ptr %i.an, align 4, !tbaa !1947
  %.not6.i.i.i.i = icmp sgt i32 %i.ce, %.sroa.4140.0.copyload
  br i1 %.not6.i.i.i.i, label %bb.p, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !26
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.n, align 8, !tbaa !1933
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.cl = add nsw i32 %i.bx, -1                   ; 4 uses
  store i32 %i.cl, ptr %i.an, align 4, !tbaa !1947
  %.not7.i.i.i.i = icmp sgt i32 %i.cl, %.sroa.4140.0.copyload
  br i1 %.not7.i.i.i.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.o, %bb.n, %bb.l
  %i.cm = phi ptr [ %i.bz, %bb.k ], [ %i.bz, %bb.k ], [ %i.bz, %bb.k ], [ %i.bz, %bb.k ], [ %i.bz, %bb.o ], [ %i.ck, %bb.n ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cn = phi i32 [ %i.bx, %bb.k ], [ %i.bx, %bb.k ], [ %i.bx, %bb.k ], [ %i.bx, %bb.k ], [ %i.cl, %bb.o ], [ %i.bx, %bb.n ], [ %i.ce, %bb.l ] ; 2 uses
  %i.co = load ptr, ptr %i.ap, align 8, !tbaa !1915
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1937 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !1939
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = zext i32 %i.cs to i64                   ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !852
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = icmp ult ptr %i.cm, %i.cw
  br i1 %i.cx, label %.lr.ph616, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

.lr.ph616:                                        ; preds = %bb.p, %bb.s
  %i.cy = phi i32 [ %i.dh, %bb.s ], [ %i.cn, %bb.p ] ; 3 uses
  %i.cz = phi ptr [ %i.da, %bb.s ], [ %i.cm, %bb.p ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 5 uses
  store ptr %i.da, ptr %i.n, align 8, !tbaa !1933
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !26
  switch i8 %i.de, label %bb.s [
    i8 91, label %bb.q
    i8 123, label %bb.q
    i8 93, label %bb.r
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph616, %.lr.ph616
  %i.df = add nsw i32 %i.cy, 1                    ; 2 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !1947
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph616, %.lr.ph616
  %i.dg = add nsw i32 %i.cy, -1                   ; 4 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !1947
  %.not8.i.i.i.i = icmp sgt i32 %i.dg, %.sroa.4140.0.copyload
  br i1 %.not8.i.i.i.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph616, %bb.r, %bb.q
  %i.dh = phi i32 [ %i.cy, %.lr.ph616 ], [ %i.dg, %bb.r ], [ %i.df, %bb.q ] ; 2 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !852
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cu
  %i.dk = icmp ult ptr %i.da, %i.dj
  br i1 %i.dk, label %.lr.ph616, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %bb.s, %bb.p
  %i.dl = phi ptr [ %i.cm, %bb.p ], [ %i.da, %bb.s ]
  %i.dm = phi i32 [ %i.cn, %bb.p ], [ %i.dh, %bb.s ]
  store i32 3, ptr %i.ao, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

.loopexit:                                        ; preds = %bb.r, %bb.j, %bb.l, %bb.o
  %i.dn = phi i32 [ %i.bv, %bb.o ], [ %i.br, %bb.j ], [ %i.bv, %bb.l ], [ %i.bv, %bb.r ] ; 2 uses
  %i.do = phi i64 [ %i.by, %bb.o ], [ %i.bt, %bb.j ], [ %i.by, %bb.l ], [ %i.by, %bb.r ] ; 3 uses
  %i.dp = phi ptr [ %i.bz, %bb.o ], [ %i.bs, %bb.j ], [ %i.bz, %bb.l ], [ %i.da, %bb.r ] ; 3 uses
  %i.dq = phi i32 [ %i.cl, %bb.o ], [ 0, %bb.j ], [ %i.ce, %bb.l ], [ %i.dg, %bb.r ]
  %i.dr = icmp ugt ptr %i.dp, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i32 %i.dq, %.sroa.4140.0.copyload
  tail call void @llvm.assume(i1 %i.ds)
  tail call void @llvm.assume(i1 %i.au)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 4 uses
  store ptr %i.dt, ptr %i.n, align 8, !tbaa !1933
  %i.du = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !26
  switch i8 %i.dx, label %bb.u [
    i8 125, label %bb.t
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i
  ]

bb.t:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i)
  store i32 %i.as, ptr %i.an, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

bb.u:                                             ; preds = %.loopexit
  store i32 3, ptr %i.ao, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i: ; preds = %bb.t, %bb.u, %.loopexit, %bb.i, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.dy = phi i32 [ %i.dn, %bb.t ], [ 3, %bb.u ], [ %i.dn, %.loopexit ], [ %i.br, %bb.i ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.dz = phi i64 [ %i.do, %bb.t ], [ %i.do, %bb.u ], [ %i.do, %.loopexit ], [ %i.bt, %bb.i ], [ %i.by, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ] ; 2 uses
  %i.ea = phi ptr [ %i.dt, %bb.t ], [ %i.dt, %bb.u ], [ %i.dt, %.loopexit ], [ %i.bs, %bb.i ], [ %i.dl, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.eb = phi i32 [ %i.as, %bb.t ], [ %.sroa.4140.0.copyload, %bb.u ], [ %.sroa.4140.0.copyload, %.loopexit ], [ 0, %bb.i ], [ %i.dm, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ] ; 2 uses
  %.not608 = icmp slt i32 %i.eb, %.sroa.4140.0.copyload
  br i1 %.not608, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i, label %.lr.ph705

bb.v:                                             ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %.sroa.4140.0.copyload, ptr %i.ec, align 4, !tbaa !1947
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.6142.0.copyload, i64 4 ; 2 uses
  store ptr %i.ed, ptr %i.n, align 8, !tbaa !1933
  %i.ee = icmp sgt i32 %.sroa.4140.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !26
  %i.ej = icmp eq i8 %i.ei, 125
  br i1 %i.ej, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %or.cond.i.i.i.i = icmp ne i32 %.sroa.4140.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i)
  br label %bb.x

_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit: ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i
  %i.ek = load i32, ptr %i.m, align 8, !tbaa !1979
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.n, align 8, !tbaa !1933
  br label %.thread563

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.em = load i32, ptr %i.m, align 8, !tbaa !1979
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.em, ptr %i.en, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.n, align 8, !tbaa !1933
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !10397, !nonnull !126, !align !247
  store i64 %.0500617.lcssa, ptr %i.ep, align 8, !tbaa !186
  br label %.thread563

bb.y:                                             ; preds = %bb.b
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 11 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1933, !noalias !10442 ; 4 uses
  %i.et = icmp eq ptr %i.es, %i.g
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !1947, !noalias !10442 ; 4 uses
  %i.ew = load i32, ptr %i.eq, align 8, !tbaa !1979, !noalias !10442 ; 2 uses
  %i.ex = icmp eq i32 %i.ev, %i.ew
  br i1 %i.et, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.assume(i1 %i.ex), !noalias !10442
  %i.ey = icmp sgt i32 %i.ev, 0
  tail call void @llvm.assume(i1 %i.ey), !noalias !10442
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !3, !noalias !10442
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !26, !noalias !10442
  %.not8.i.i.i = icmp eq i8 %i.fc, 91
  br i1 %.not8.i.i.i, label %bb.aa, label %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  store ptr %i.fd, ptr %i.er, align 8, !tbaa !1933, !noalias !10442
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.aa
  %i.fe = phi i32 [ %i.ev, %bb.aa ], [ %i.ew, %bb.y ] ; 2 uses
  %i.ff = phi ptr [ %i.fd, %bb.aa ], [ %i.es, %bb.y ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.fh = icmp eq ptr %i.ff, %i.fg
  tail call void @llvm.assume(i1 %i.fh), !noalias !10442
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.fj = icmp sgt i32 %i.fe, 0
  tail call void @llvm.assume(i1 %i.fj), !noalias !10442
  %i.fk = load i32, ptr %i.ff, align 4, !tbaa !3, !noalias !10442
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !26, !noalias !10442
  %i.fo = icmp eq i8 %i.fn, 93
  br i1 %i.fo, label %bb.ab, label %.lr.ph612

bb.ab:                                            ; preds = %._crit_edge
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  store ptr %i.fp, ptr %i.er, align 8, !tbaa !1933, !noalias !10442
  br label %.lr.ph612

_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit.thread: ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.ev, ptr %i.fq, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.er, align 8, !tbaa !1933
  br label %.thread563

.lr.ph612:                                        ; preds = %._crit_edge, %bb.ab
  %.sink = phi i32 [ -1, %bb.ab ], [ 1, %._crit_edge ]
  %i.fr = phi ptr [ %i.fp, %bb.ab ], [ %i.ff, %._crit_edge ]
  %i.fs = add nsw i32 %i.fe, %.sink               ; 3 uses
  store i32 %i.fs, ptr %i.fi, align 4, !tbaa !1947, !noalias !10442
  %.sroa.4354.0.copyload = load i32, ptr %i.eq, align 8, !tbaa !3, !noalias !10442 ; 13 uses
  %.sroa.6356.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !852, !noalias !10442 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.fw = add nsw i32 %.sroa.4354.0.copyload, 1   ; 5 uses
  %i.fx = icmp sgt i32 %.sroa.4354.0.copyload, 0  ; 2 uses
  %or.cond.i.i.i12.i = icmp ult i32 %.sroa.4354.0.copyload, 2147483646
  %i.fy = add nsw i32 %.sroa.4354.0.copyload, -1  ; 3 uses
  %or.cond.i.i.i.i.i53 = icmp ult i32 %i.fy, 2147483646
  %.not605699 = icmp slt i32 %i.fs, %.sroa.4354.0.copyload
  br i1 %.not605699, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i, label %.lr.ph701.preheader

.lr.ph701.preheader:                              ; preds = %.lr.ph612
  %.promoted = load i32, ptr %i.fu, align 8, !tbaa !1948
  br label %.lr.ph701

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %.lr.ph612
  %.0499611.lcssa = phi i64 [ 0, %.lr.ph612 ], [ %i.id, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !1948 ; 2 uses
  %.not.i5.i43 = icmp eq i32 %i.ga, 0
  br i1 %.not.i5.i43, label %bb.ap, label %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit

.lr.ph701:                                        ; preds = %.lr.ph701.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.gb = phi i32 [ %i.ia, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %.promoted, %.lr.ph701.preheader ] ; 4 uses
  %.0499611700 = phi i64 [ %i.id, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ 0, %.lr.ph701.preheader ]
  %i.gc = phi i32 [ %i.ic, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %i.fs, %.lr.ph701.preheader ]
  %i.gd = phi ptr [ %i.ib, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %i.fr, %.lr.ph701.preheader ] ; 5 uses
  %.not.i4.i.i54 = icmp eq i32 %i.gb, 0
  br i1 %.not.i4.i.i54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph701
  store ptr null, ptr %i.fv, align 8, !tbaa !1915, !noalias !10445
  store i32 0, ptr %i.ft, align 4, !tbaa !1947, !noalias !10445
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ad:                                            ; preds = %.lr.ph701
  %i.ge = icmp eq i32 %i.gc, %i.fw
  tail call void @llvm.assume(i1 %i.ge), !noalias !10448
  tail call void @llvm.assume(i1 %i.fx), !noalias !10448
  %i.gf = icmp ugt ptr %i.gd, %.sroa.6356.0.copyload
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 8 uses
  store ptr %i.gg, ptr %i.er, align 8, !tbaa !1933
  %i.gh = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !26
  switch i8 %i.gk, label %bb.ah [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 58, label %bb.ai
    i8 44, label %bb.ai
    i8 93, label %bb.ae
    i8 125, label %bb.ae
    i8 34, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  store i32 %.sroa.4354.0.copyload, ptr %i.ft, align 4, !tbaa !1947
  br label %.loopexit610

bb.af:                                            ; preds = %bb.ad
  %i.gl = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !26
  %i.gp = icmp eq i8 %i.go, 58
  br i1 %i.gp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.er, align 8, !tbaa !1933
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ad
  store i32 %.sroa.4354.0.copyload, ptr %i.ft, align 4, !tbaa !1947
  br label %.loopexit610

bb.ai:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ag
  %i.gr = phi ptr [ %i.gg, %bb.ad ], [ %i.gg, %bb.ad ], [ %i.gg, %bb.ad ], [ %i.gg, %bb.ad ], [ %i.gq, %bb.ag ] ; 3 uses
  %i.gs = load ptr, ptr %i.fv, align 8, !tbaa !1915
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1937 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !1939
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gy = zext i32 %i.gw to i64                   ; 2 uses
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !852
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = icmp ult ptr %i.gr, %i.ha
  br i1 %i.hb, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ai, %bb.al
  %i.hc = phi i32 [ %i.hl, %bb.al ], [ %i.fw, %bb.ai ] ; 3 uses
  %i.hd = phi ptr [ %i.he, %bb.al ], [ %i.gr, %bb.ai ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 5 uses
  store ptr %i.he, ptr %i.er, align 8, !tbaa !1933
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26
  switch i8 %i.hi, label %bb.al [
    i8 91, label %bb.aj
    i8 123, label %bb.aj
    i8 93, label %bb.ak
    i8 125, label %bb.ak
  ]

bb.aj:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hj = add nsw i32 %i.hc, 1                    ; 2 uses
  store i32 %i.hj, ptr %i.ft, align 4, !tbaa !1947
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hk = add nsw i32 %i.hc, -1                   ; 4 uses
  store i32 %i.hk, ptr %i.ft, align 4, !tbaa !1947
  %.not8.i.i.i.i.i = icmp sgt i32 %i.hk, %.sroa.4354.0.copyload
  br i1 %.not8.i.i.i.i.i, label %bb.al, label %.loopexit610.loopexit

bb.al:                                            ; preds = %.lr.ph, %bb.ak, %bb.aj
  %i.hl = phi i32 [ %i.hc, %.lr.ph ], [ %i.hk, %bb.ak ], [ %i.hj, %bb.aj ] ; 2 uses
  %i.hm = load ptr, ptr %i.gx, align 8, !tbaa !852
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.gy
  %i.ho = icmp ult ptr %i.he, %i.hn
  br i1 %i.ho, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %bb.al, %bb.ai
  %i.hp = phi ptr [ %i.gr, %bb.ai ], [ %i.he, %bb.al ]
  %i.hq = phi i32 [ %i.fw, %bb.ai ], [ %i.hl, %bb.al ]
  store i32 3, ptr %i.fu, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit610.loopexit:                            ; preds = %bb.ak
  %i.hr = icmp eq i32 %i.hk, %.sroa.4354.0.copyload
  br label %.loopexit610

.loopexit610:                                     ; preds = %.loopexit610.loopexit, %bb.ah, %bb.ae
  %i.hs = phi ptr [ %i.gg, %bb.ah ], [ %i.gg, %bb.ae ], [ %i.he, %.loopexit610.loopexit ] ; 3 uses
  %i.ht = phi i1 [ true, %bb.ah ], [ true, %bb.ae ], [ %i.hr, %.loopexit610.loopexit ]
  %i.hu = icmp ugt ptr %i.hs, %.sroa.6356.0.copyload
  tail call void @llvm.assume(i1 %i.hu)
  tail call void @llvm.assume(i1 %i.ht)
  tail call void @llvm.assume(i1 %i.fx)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 4 uses
  store ptr %i.hv, ptr %i.er, align 8, !tbaa !1933
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !26
  switch i8 %i.hz, label %bb.ao [
    i8 93, label %bb.am
    i8 44, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit610
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i53)
  store i32 %i.fy, ptr %i.ft, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.an:                                            ; preds = %.loopexit610
  tail call void @llvm.assume(i1 %or.cond.i.i.i12.i)
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ao:                                            ; preds = %.loopexit610
  store i32 3, ptr %i.fu, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.ac, %bb.am, %bb.an, %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.ia = phi i32 [ %i.gb, %bb.am ], [ %i.gb, %bb.an ], [ 3, %bb.ao ], [ %i.gb, %bb.ac ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.ib = phi ptr [ %i.hv, %bb.am ], [ %i.hv, %bb.an ], [ %i.hv, %bb.ao ], [ %i.gd, %bb.ac ], [ %i.hp, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.ic = phi i32 [ %i.fy, %bb.am ], [ %i.fw, %bb.an ], [ %.sroa.4354.0.copyload, %bb.ao ], [ 0, %bb.ac ], [ %i.hq, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ] ; 2 uses
  %i.id = add i64 %.0499611700, 1                 ; 2 uses
  %.not605 = icmp slt i32 %i.ic, %.sroa.4354.0.copyload
  br i1 %.not605, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i, label %.lr.ph701

bb.ap:                                            ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %.sroa.4354.0.copyload, ptr %i.ie, align 4, !tbaa !1947
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.6356.0.copyload, i64 4
  store ptr %i.if, ptr %i.er, align 8, !tbaa !1933
  %i.ig = icmp sgt i32 %.sroa.4354.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ig)
  %i.ih = load i32, ptr %i.eq, align 8, !tbaa !1979
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.er, align 8, !tbaa !1933
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !10397, !nonnull !126, !align !247
  store i64 %.0499611.lcssa, ptr %i.ik, align 8, !tbaa !186
  br label %.thread563

_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit: ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i
  %i.il = load i32, ptr %i.eq, align 8, !tbaa !1979
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.il, ptr %i.im, align 4, !tbaa !1947
  store ptr %i.g, ptr %i.er, align 8, !tbaa !1933
  br label %.thread563

bb.aq:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !10397, !nonnull !126, !align !247
  store i64 0, ptr %i.io, align 8, !tbaa !186
  br label %.thread563

.thread563:                                       ; preds = %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit, %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit, %bb.b, %bb.aq, %bb.x, %bb.ap, %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit.thread, %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit.thread, %bb.a
end_hunk_0
