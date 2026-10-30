Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonFunctionsRegistration?download=true
inline.NumInlined: 34233
inline.NumDeleted: 5822
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand5valueESD_Rbm:bb.a
bb.ah:                                            ; preds = %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.gg = load i32, ptr %i.fk, align 8, !tbaa !685 ; 2 uses
  %.not.i180 = icmp eq i32 %i.gg, 0
  %.pre764 = load i32, ptr %i.fj, align 4, !tbaa !684 ; 11 uses
  br i1 %.not.i180, label %bb.ai, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ai:                                            ; preds = %bb.ah
  %i.gh = load ptr, ptr %i.ei, align 8, !tbaa !704 ; 5 uses
  %i.gi = icmp ugt ptr %i.gh, %.sroa.6498.0.copyload
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp sge i32 %.pre764, %i.ev
  call void @llvm.assume(i1 %i.gj)
  %.not.i.i.i = icmp sgt i32 %.pre764, %i.ev
  %.pre763 = load ptr, ptr %i.o, align 8, !tbaa !505 ; 4 uses
  br i1 %.not.i.i.i, label %bb.aj, label %.loopexit694

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 10 uses
  store ptr %i.gk, ptr %i.ei, align 8, !tbaa !673
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !97
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !84
  switch i8 %i.go, label %bb.an [
    i8 91, label %bb.ao
    i8 123, label %bb.ao
    i8 58, label %bb.ao
    i8 44, label %bb.ao
    i8 93, label %bb.ak
    i8 125, label %bb.ak
    i8 34, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.gp = add nsw i32 %.pre764, -1                ; 4 uses
  store i32 %i.gp, ptr %i.fj, align 4, !tbaa !684
  %.not6.i.i.i = icmp samesign ugt i32 %i.gp, %i.ev
  br i1 %.not6.i.i.i, label %bb.ao, label %.loopexit694

bb.al:                                            ; preds = %bb.aj
  %i.gq = load i32, ptr %i.gk, align 4, !tbaa !97
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !84
  %i.gu = icmp eq i8 %i.gt, 58
  br i1 %i.gu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  store ptr %i.gv, ptr %i.ei, align 8, !tbaa !673
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.gw = add nsw i32 %.pre764, -1                ; 4 uses
  store i32 %i.gw, ptr %i.fj, align 4, !tbaa !684
  %.not7.i.i.i = icmp samesign ugt i32 %i.gw, %i.ev
  br i1 %.not7.i.i.i, label %bb.ao, label %.loopexit694

bb.ao:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.an, %bb.am, %bb.ak
  %i.gx = phi i32 [ %.pre764, %bb.aj ], [ %.pre764, %bb.aj ], [ %.pre764, %bb.aj ], [ %.pre764, %bb.aj ], [ %i.gw, %bb.an ], [ %.pre764, %bb.am ], [ %i.gp, %bb.ak ] ; 2 uses
  %i.gy = phi ptr [ %i.gk, %bb.aj ], [ %i.gk, %bb.aj ], [ %i.gk, %bb.aj ], [ %i.gk, %bb.aj ], [ %i.gk, %bb.an ], [ %i.gv, %bb.am ], [ %i.gk, %bb.ak ] ; 2 uses
  %i.gz = load ptr, ptr %i.fl, align 8, !tbaa !663
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !675 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !683
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 2 uses
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !499
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = icmp ult ptr %i.gy, %i.hh
  br i1 %i.hi, label %.lr.ph729, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i

.lr.ph729:                                        ; preds = %bb.ao, %bb.ar
  %i.hj = phi i32 [ %i.hs, %bb.ar ], [ %i.gx, %bb.ao ] ; 3 uses
  %i.hk = phi ptr [ %i.hl, %bb.ar ], [ %i.gy, %bb.ao ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 4 uses
  store ptr %i.hl, ptr %i.ei, align 8, !tbaa !673
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !97
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !84
  switch i8 %i.hp, label %bb.ar [
    i8 91, label %bb.ap
    i8 123, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.aq
  ]

bb.ap:                                            ; preds = %.lr.ph729, %.lr.ph729
  %i.hq = add nuw nsw i32 %i.hj, 1                ; 2 uses
  store i32 %i.hq, ptr %i.fj, align 4, !tbaa !684
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph729, %.lr.ph729
  %i.hr = add nsw i32 %i.hj, -1                   ; 4 uses
  store i32 %i.hr, ptr %i.fj, align 4, !tbaa !684
  %.not8.i.i.i = icmp sgt i32 %i.hr, %i.ev
  br i1 %.not8.i.i.i, label %bb.ar, label %.loopexit694

bb.ar:                                            ; preds = %.lr.ph729, %bb.aq, %bb.ap
  %i.hs = phi i32 [ %i.hj, %.lr.ph729 ], [ %i.hr, %bb.aq ], [ %i.hq, %bb.ap ] ; 2 uses
  %i.ht = load ptr, ptr %i.he, align 8, !tbaa !499
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hf
  %i.hv = icmp ult ptr %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph729, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i, !llvm.loop !36

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i: ; preds = %bb.ar, %bb.ao
  %i.hw = phi i32 [ %i.gx, %bb.ao ], [ %i.hs, %bb.ar ]
  store i32 3, ptr %i.fk, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit694:                                     ; preds = %bb.aq, %bb.ai, %bb.ak, %bb.an
  %i.hx = phi i32 [ %i.gw, %bb.an ], [ %.pre764, %bb.ai ], [ %i.gp, %bb.ak ], [ %i.hr, %bb.aq ]
  %i.hy = phi ptr [ %i.gk, %bb.an ], [ %i.gh, %bb.ai ], [ %i.gk, %bb.ak ], [ %i.hl, %bb.aq ] ; 3 uses
  %i.hz = icmp ugt ptr %i.hy, %.sroa.6498.0.copyload
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp eq i32 %i.hx, %i.ev
  call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store ptr %i.ib, ptr %i.ei, align 8, !tbaa !673
  %i.ic = load i32, ptr %i.hy, align 4, !tbaa !97
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre763, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !84
  switch i8 %i.if, label %bb.at [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread
    i8 44, label %bb.as
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread: ; preds = %.loopexit694
  store i32 %i.fq, ptr %i.fj, align 4, !tbaa !684
  br label %.thread687

bb.as:                                            ; preds = %.loopexit694
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !684
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.at:                                            ; preds = %.loopexit694
  store i32 3, ptr %i.fk, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.at, %bb.as, %bb.ah, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i
  %i.ig = phi i32 [ %i.ev, %bb.at ], [ %i.fn, %bb.as ], [ %i.hw, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %.pre764, %bb.ah ] ; 2 uses
  %i.ih = phi i32 [ 3, %bb.at ], [ 0, %bb.as ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %i.gg, %bb.ah ]
  %.not690 = icmp slt i32 %i.ig, %i.ev
  br i1 %.not690, label %.thread687, label %bb.af

bb.au:                                            ; preds = %.thread643
  %i.ii = add nuw nsw i64 %indvars.iv, 1
  %i.ij = call noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewESB_EUlRT_E_EEN8simdjson10error_codeERNSF_8fallback8ondemand5valueESD_Rbm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.ii) ; 2 uses
  %.not126 = icmp eq i32 %i.ij, 0
  br i1 %.not126, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, label %.thread687

bb.av:                                            ; preds = %.thread643
  %i.ik = call noundef i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  %.not = icmp eq i32 %i.ik, 0
  br i1 %.not, label %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, label %.thread687

_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread: ; preds = %bb.d, %.thread643, %bb.e, %bb.au, %bb.av, %bb.ab, %bb.aa
  %i.il = load i8, ptr %i.a, align 8, !tbaa !695, !range !107, !noundef !108
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.aw, label %.thread687

bb.aw:                                            ; preds = %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !693
  store i8 0, ptr %i.a, align 8, !tbaa !695
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !697
  %i.io = load ptr, ptr %0, align 8, !tbaa !698   ; 2 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = sdiv exact i64 %i.ir, 40
  %.not137 = icmp ugt i64 %i.is, %indvars.iv.next
  br i1 %.not137, label %bb.b, label %.thread684, !llvm.loop !10574

.thread684:                                       ; preds = %bb.aw, %bb.a
  %i.it = call noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %.thread687

.thread687:                                       ; preds = %bb.au, %bb.ab, %bb.aa, %bb.av, %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.thread, %.thread, %bb.ad, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.thread, %bb.g, %bb.l, %bb.j, %.thread639, %.thread676, %.thread684
  %.25 = phi i32 [ %i.it, %.thread684 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.5100.ph, %.thread639 ], [ %.16111.ph, %.thread676 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread ], [ %i.be, %bb.j ], [ 17, %bb.g ], [ 0, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.thread ], [ 3, %bb.l ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ 0, %.thread ], [ 17, %bb.ad ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.thread ], [ %i.ik, %bb.av ], [ %i.ij, %bb.au ], [ %i.eg, %bb.ab ], [ %i.ef, %bb.aa ], [ 0, %_ZNO8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand9json_typeEE10take_valueEv.exit145.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.25
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions16JsonSizeFunctionINS0_4exec10VectorExecEE8callImplERlRKNS0_10StringViewES9_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1490, !nonnull !108, !align !191 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !154
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %.thread563

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !701    ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !702  ; 11 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !505  ; 16 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !97
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !84
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !673, !noalias !10596 ; 4 uses
  %i.p = icmp eq ptr %i.o, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !684, !noalias !10596 ; 3 uses
  %i.s = load i32, ptr %i.m, align 8, !tbaa !703, !noalias !10596 ; 2 uses
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.p, label %bb.d, label %._crit_edge627

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.t), !noalias !10596
  %i.u = icmp sgt i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u), !noalias !10596
  %i.v = load i32, ptr %i.o, align 4, !tbaa !97, !noalias !10596
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !84, !noalias !10596
  %.not8.i.i = icmp eq i8 %i.y, 123
  br i1 %.not8.i.i, label %bb.e, label %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !673, !noalias !10596
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %bb.c, %bb.e
  %i.aa = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.c ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.o, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ad = icmp eq ptr %i.ab, %i.ac
  tail call void @llvm.assume(i1 %i.ad), !noalias !10596
  %i.ae = icmp sgt i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ae), !noalias !10596
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !97, !noalias !10596
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !84, !noalias !10596
  %i.aj = icmp eq i8 %i.ai, 125
  br i1 %i.aj, label %bb.f, label %.split.lr.ph

bb.f:                                             ; preds = %._crit_edge627
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.al, ptr %i.n, align 8, !tbaa !673, !noalias !10596
  %i.am = add nsw i32 %i.aa, -1                   ; 2 uses
  %or.cond.i.i.i = icmp ne i32 %i.aa, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i), !noalias !10596
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !684, !noalias !10596
  br label %.split.lr.ph

.split.lr.ph:                                     ; preds = %bb.f, %._crit_edge627
  %.ph = phi ptr [ %i.al, %bb.f ], [ %i.ab, %._crit_edge627 ]
  %.promoted619.ph = phi i32 [ %i.am, %bb.f ], [ %i.aa, %._crit_edge627 ] ; 2 uses
  %.sroa.4140.0.copyload = load i32, ptr %i.m, align 8, !tbaa !97 ; 20 uses
  %.sroa.6142.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !499 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aq = add nuw nsw i32 %.sroa.4140.0.copyload, 1 ; 2 uses
  %or.cond.i.i11.i = icmp samesign ult i32 %.sroa.4140.0.copyload, 2147483646
  %i.ar = icmp ne i32 %.sroa.4140.0.copyload, 0
  %i.as = add nsw i32 %.sroa.4140.0.copyload, -1  ; 3 uses
  %or.cond.i.i.i.i.i = icmp ult i32 %i.as, 2147483646
  %i.at = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not610 = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not.i.i11.i.i = icmp slt i32 %.sroa.4140.0.copyload, 0
  %i.au = icmp sgt i32 %.sroa.4140.0.copyload, 0
  %.not609699 = icmp slt i32 %.promoted619.ph, %.sroa.4140.0.copyload
  br i1 %.not609699, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i, label %.lr.ph702.preheader

.lr.ph702.preheader:                              ; preds = %.split.lr.ph
  %.promoted722 = load i32, ptr %i.ao, align 8, !tbaa !685
  br label %.lr.ph702

_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit.thread: ; preds = %bb.d
  store ptr %i.g, ptr %i.n, align 8, !tbaa !673
  br label %.thread563

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i, %.split.lr.ph
  %.0499616.lcssa = phi i64 [ 0, %.split.lr.ph ], [ %i.dy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !685 ; 2 uses
  %.not.i5.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i5.i, label %bb.v, label %_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit

.lr.ph702:                                        ; preds = %.lr.ph702.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i
  %i.ax = phi i32 [ %i.dx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.promoted722, %.lr.ph702.preheader ] ; 3 uses
  %.0499616700 = phi i64 [ %i.dy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ 0, %.lr.ph702.preheader ] ; 2 uses
  %i.ay = phi i32 [ %i.ea, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.promoted619.ph, %.lr.ph702.preheader ]
  %i.az = phi ptr [ %i.dz, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i ], [ %.ph, %.lr.ph702.preheader ] ; 5 uses
  %.not.i4.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i4.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph702
  %i.ba = icmp ugt ptr %i.az, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.ba), !noalias !10597
  %i.bb = icmp eq i32 %i.ay, %.sroa.4140.0.copyload
  tail call void @llvm.assume(i1 %i.bb), !noalias !10597
  tail call void @llvm.assume(i1 %i.at), !noalias !10597
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 4 uses
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !673, !noalias !10597
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !97, !noalias !10597
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !84, !noalias !10597
  %.not.i6.i.i = icmp eq i8 %i.bg, 34
  br i1 %.not.i6.i.i, label %.critedge.i.i.i, label %bb.h

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bh = icmp ugt ptr %i.bc, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bh), !noalias !10597
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  store ptr %i.bi, ptr %i.n, align 8, !tbaa !673, !noalias !10597
  %i.bj = load i32, ptr %i.bc, align 4, !tbaa !97, !noalias !10597
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !84, !noalias !10597
  %.not.i7.i.i = icmp eq i8 %i.bm, 58
  br i1 %.not.i7.i.i, label %.thread669, label %bb.h

.thread669:                                       ; preds = %.critedge.i.i.i
  tail call void @llvm.assume(i1 %or.cond.i.i11.i), !noalias !10597
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !684, !noalias !10597
  %i.bn = icmp ugt ptr %i.bi, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bn), !noalias !10598
  tail call void @llvm.assume(i1 %i.ar), !noalias !10598
  %i.bo = add i64 %.0499616700, 1
  br label %bb.k

bb.h:                                             ; preds = %.critedge.i.i.i, %bb.g
  %i.bp = phi ptr [ %i.bi, %.critedge.i.i.i ], [ %i.bc, %bb.g ]
  store i32 3, ptr %i.ao, align 8, !tbaa !685, !noalias !10597
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph702, %bb.h
  %i.bq = phi i32 [ 3, %bb.h ], [ %i.ax, %.lr.ph702 ] ; 3 uses
  %i.br = phi ptr [ %i.bp, %bb.h ], [ %i.az, %.lr.ph702 ] ; 4 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !663
  store i32 0, ptr %i.an, align 4, !tbaa !684
  %i.bs = add i64 %.0499616700, 1                 ; 3 uses
  br i1 %.not610, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp ugt ptr %i.br, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.bt)
  br i1 %.not.i.i11.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.thread669, %bb.j
  %i.bu = phi i32 [ %i.ax, %.thread669 ], [ %i.bq, %bb.j ] ; 3 uses
  %i.bv = phi ptr [ %i.bi, %.thread669 ], [ %i.br, %bb.j ] ; 3 uses
  %i.bw = phi i32 [ %i.aq, %.thread669 ], [ 0, %bb.j ] ; 7 uses
  %i.bx = phi i64 [ %i.bo, %.thread669 ], [ %i.bs, %bb.j ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 10 uses
  store ptr %i.by, ptr %i.n, align 8, !tbaa !673
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84
  switch i8 %i.cc, label %bb.o [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 58, label %bb.p
    i8 44, label %bb.p
    i8 93, label %bb.l
    i8 125, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.cd = add nsw i32 %i.bw, -1                   ; 4 uses
  store i32 %i.cd, ptr %i.an, align 4, !tbaa !684
  %.not6.i.i.i.i = icmp sgt i32 %i.cd, %.sroa.4140.0.copyload
  br i1 %.not6.i.i.i.i, label %bb.p, label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !97
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !84
  %i.ci = icmp eq i8 %i.ch, 58
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.n, align 8, !tbaa !673
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ck = add nsw i32 %i.bw, -1                   ; 4 uses
  store i32 %i.ck, ptr %i.an, align 4, !tbaa !684
  %.not7.i.i.i.i = icmp sgt i32 %i.ck, %.sroa.4140.0.copyload
  br i1 %.not7.i.i.i.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.o, %bb.n, %bb.l
  %i.cl = phi ptr [ %i.by, %bb.k ], [ %i.by, %bb.k ], [ %i.by, %bb.k ], [ %i.by, %bb.k ], [ %i.by, %bb.o ], [ %i.cj, %bb.n ], [ %i.by, %bb.l ] ; 3 uses
  %i.cm = phi i32 [ %i.bw, %bb.k ], [ %i.bw, %bb.k ], [ %i.bw, %bb.k ], [ %i.bw, %bb.k ], [ %i.ck, %bb.o ], [ %i.bw, %bb.n ], [ %i.cd, %bb.l ] ; 2 uses
  %i.cn = load ptr, ptr %i.ap, align 8, !tbaa !663
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !675 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !683
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.ct = zext i32 %i.cr to i64                   ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !499
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = icmp ult ptr %i.cl, %i.cv
  br i1 %i.cw, label %.lr.ph615, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i

.lr.ph615:                                        ; preds = %bb.p, %bb.s
  %i.cx = phi i32 [ %i.dg, %bb.s ], [ %i.cm, %bb.p ] ; 3 uses
  %i.cy = phi ptr [ %i.cz, %bb.s ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 5 uses
  store ptr %i.cz, ptr %i.n, align 8, !tbaa !673
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !84
  switch i8 %i.dd, label %bb.s [
    i8 91, label %bb.q
    i8 123, label %bb.q
    i8 93, label %bb.r
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph615, %.lr.ph615
  %i.de = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !684
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph615, %.lr.ph615
  %i.df = add nsw i32 %i.cx, -1                   ; 4 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !684
  %.not8.i.i.i.i = icmp sgt i32 %i.df, %.sroa.4140.0.copyload
  br i1 %.not8.i.i.i.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph615, %bb.r, %bb.q
  %i.dg = phi i32 [ %i.cx, %.lr.ph615 ], [ %i.df, %bb.r ], [ %i.de, %bb.q ] ; 2 uses
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !499
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ct
  %i.dj = icmp ult ptr %i.cz, %i.di
  br i1 %i.dj, label %.lr.ph615, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i, !llvm.loop !36

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %bb.s, %bb.p
  %i.dk = phi ptr [ %i.cl, %bb.p ], [ %i.cz, %bb.s ]
  %i.dl = phi i32 [ %i.cm, %bb.p ], [ %i.dg, %bb.s ]
  store i32 3, ptr %i.ao, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

.loopexit:                                        ; preds = %bb.r, %bb.j, %bb.l, %bb.o
  %i.dm = phi i32 [ %i.bu, %bb.o ], [ %i.bq, %bb.j ], [ %i.bu, %bb.l ], [ %i.bu, %bb.r ] ; 2 uses
  %i.dn = phi i64 [ %i.bx, %bb.o ], [ %i.bs, %bb.j ], [ %i.bx, %bb.l ], [ %i.bx, %bb.r ] ; 3 uses
  %i.do = phi ptr [ %i.by, %bb.o ], [ %i.br, %bb.j ], [ %i.by, %bb.l ], [ %i.cz, %bb.r ] ; 3 uses
  %i.dp = phi i32 [ %i.ck, %bb.o ], [ 0, %bb.j ], [ %i.cd, %bb.l ], [ %i.df, %bb.r ]
  %i.dq = icmp ugt ptr %i.do, %.sroa.6142.0.copyload
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i32 %i.dp, %.sroa.4140.0.copyload
  tail call void @llvm.assume(i1 %i.dr)
  tail call void @llvm.assume(i1 %i.au)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 4 uses
  store ptr %i.ds, ptr %i.n, align 8, !tbaa !673
  %i.dt = load i32, ptr %i.do, align 4, !tbaa !97
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !84
  switch i8 %i.dw, label %bb.u [
    i8 125, label %bb.t
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i
  ]

bb.t:                                             ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i)
  store i32 %i.as, ptr %i.an, align 4, !tbaa !684
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

bb.u:                                             ; preds = %.loopexit
  store i32 3, ptr %i.ao, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.i.i: ; preds = %bb.t, %bb.u, %.loopexit, %bb.i, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.dx = phi i32 [ %i.dm, %bb.t ], [ 3, %bb.u ], [ %i.dm, %.loopexit ], [ %i.bq, %bb.i ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.dy = phi i64 [ %i.dn, %bb.t ], [ %i.dn, %bb.u ], [ %i.dn, %.loopexit ], [ %i.bs, %bb.i ], [ %i.bx, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ] ; 2 uses
  %i.dz = phi ptr [ %i.ds, %bb.t ], [ %i.ds, %bb.u ], [ %i.ds, %.loopexit ], [ %i.br, %bb.i ], [ %i.dk, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ]
  %i.ea = phi i32 [ %i.as, %bb.t ], [ %.sroa.4140.0.copyload, %bb.u ], [ %.sroa.4140.0.copyload, %.loopexit ], [ 0, %bb.i ], [ %i.dl, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ] ; 2 uses
  %.not609 = icmp slt i32 %i.ea, %.sroa.4140.0.copyload
  br i1 %.not609, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i, label %.lr.ph702

bb.v:                                             ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %.sroa.4140.0.copyload, ptr %i.eb, align 4, !tbaa !684
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.6142.0.copyload, i64 4 ; 2 uses
  store ptr %i.ec, ptr %i.n, align 8, !tbaa !673
  %i.ed = icmp sgt i32 %.sroa.4140.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !97
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !84
  %i.ei = icmp eq i8 %i.eh, 125
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %or.cond.i.i.i.i = icmp ne i32 %.sroa.4140.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i)
  br label %bb.x

_ZNR8simdjson8fallback8ondemand5value12count_fieldsEv.exit: ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEneERKS4_.exit.i.i
  %i.ej = load i32, ptr %i.m, align 8, !tbaa !703
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !684
  store ptr %i.g, ptr %i.n, align 8, !tbaa !673
  br label %.thread563

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.el = load i32, ptr %i.m, align 8, !tbaa !703
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.el, ptr %i.em, align 4, !tbaa !684
  store ptr %i.g, ptr %i.n, align 8, !tbaa !673
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1491, !nonnull !108, !align !191
  store i64 %.0499616.lcssa, ptr %i.eo, align 8, !tbaa !154
  br label %.thread563

bb.y:                                             ; preds = %bb.b
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 11 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !673, !noalias !10599 ; 4 uses
  %i.es = icmp eq ptr %i.er, %i.g
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !684, !noalias !10599 ; 3 uses
  %i.ev = load i32, ptr %i.ep, align 8, !tbaa !703, !noalias !10599 ; 2 uses
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.es, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.assume(i1 %i.ew), !noalias !10599
  %i.ex = icmp sgt i32 %i.eu, 0
  tail call void @llvm.assume(i1 %i.ex), !noalias !10599
  %i.ey = load i32, ptr %i.er, align 4, !tbaa !97, !noalias !10599
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !84, !noalias !10599
  %.not8.i.i.i = icmp eq i8 %i.fb, 91
  br i1 %.not8.i.i.i, label %bb.aa, label %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  store ptr %i.fc, ptr %i.eq, align 8, !tbaa !673, !noalias !10599
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.aa
  %i.fd = phi i32 [ %i.eu, %bb.aa ], [ %i.ev, %bb.y ] ; 2 uses
  %i.fe = phi ptr [ %i.fc, %bb.aa ], [ %i.er, %bb.y ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.fg = icmp eq ptr %i.fe, %i.ff
  tail call void @llvm.assume(i1 %i.fg), !noalias !10599
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.fi = icmp sgt i32 %i.fd, 0
  tail call void @llvm.assume(i1 %i.fi), !noalias !10599
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !97, !noalias !10599
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84, !noalias !10599
  %i.fn = icmp eq i8 %i.fm, 93
  br i1 %i.fn, label %bb.ab, label %.split581.lr.ph

bb.ab:                                            ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  store ptr %i.fo, ptr %i.eq, align 8, !tbaa !673, !noalias !10599
  br label %.split581.lr.ph

_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit.thread: ; preds = %bb.z
  store ptr %i.g, ptr %i.eq, align 8, !tbaa !673
  br label %.thread563

.split581.lr.ph:                                  ; preds = %._crit_edge, %bb.ab
  %.sink = phi i32 [ -1, %bb.ab ], [ 1, %._crit_edge ]
  %i.fp = phi ptr [ %i.fo, %bb.ab ], [ %i.fe, %._crit_edge ]
  %i.fq = add nsw i32 %i.fd, %.sink               ; 3 uses
  store i32 %i.fq, ptr %i.fh, align 4, !tbaa !684, !noalias !10599
  %.sroa.4354.0.copyload = load i32, ptr %i.ep, align 8, !tbaa !97, !noalias !10599 ; 13 uses
  %.sroa.6356.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !499, !noalias !10599 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 7 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.fu = add nuw nsw i32 %.sroa.4354.0.copyload, 1 ; 5 uses
  %i.fv = icmp sgt i32 %.sroa.4354.0.copyload, 0  ; 2 uses
  %or.cond.i.i.i12.i = icmp samesign ult i32 %.sroa.4354.0.copyload, 2147483646
  %i.fw = add nsw i32 %.sroa.4354.0.copyload, -1  ; 3 uses
  %or.cond.i.i.i.i.i53 = icmp ult i32 %i.fw, 2147483646
  %.not606696 = icmp slt i32 %i.fq, %.sroa.4354.0.copyload
  br i1 %.not606696, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i, label %.lr.ph698.preheader

.lr.ph698.preheader:                              ; preds = %.split581.lr.ph
  %.promoted = load i32, ptr %i.fs, align 8, !tbaa !685
  br label %.lr.ph698

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i, %.split581.lr.ph
  %.0500612.lcssa = phi i64 [ 0, %.split581.lr.ph ], [ %i.ib, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !685 ; 2 uses
  %.not.i5.i43 = icmp eq i32 %i.fy, 0
  br i1 %.not.i5.i43, label %bb.ap, label %_ZNR8simdjson8fallback8ondemand5value14count_elementsEv.exit

.lr.ph698:                                        ; preds = %.lr.ph698.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i
  %i.fz = phi i32 [ %i.hy, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %.promoted, %.lr.ph698.preheader ] ; 4 uses
  %.0500612697 = phi i64 [ %i.ib, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ 0, %.lr.ph698.preheader ]
  %i.ga = phi i32 [ %i.ia, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %i.fq, %.lr.ph698.preheader ]
  %i.gb = phi ptr [ %i.hz, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i ], [ %i.fp, %.lr.ph698.preheader ] ; 5 uses
  %.not.i4.i.i54 = icmp eq i32 %i.fz, 0
  br i1 %.not.i4.i.i54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph698
  store ptr null, ptr %i.ft, align 8, !tbaa !663, !noalias !10600
  store i32 0, ptr %i.fr, align 4, !tbaa !684, !noalias !10600
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ad:                                            ; preds = %.lr.ph698
  %i.gc = icmp eq i32 %i.ga, %i.fu
  tail call void @llvm.assume(i1 %i.gc), !noalias !10601
  tail call void @llvm.assume(i1 %i.fv), !noalias !10601
  %i.gd = icmp ugt ptr %i.gb, %.sroa.6356.0.copyload
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 8 uses
  store ptr %i.ge, ptr %i.eq, align 8, !tbaa !673
  %i.gf = load i32, ptr %i.gb, align 4, !tbaa !97
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !84
  switch i8 %i.gi, label %bb.ah [
    i8 91, label %bb.ai
    i8 123, label %bb.ai
    i8 58, label %bb.ai
    i8 44, label %bb.ai
    i8 93, label %bb.ae
    i8 125, label %bb.ae
    i8 34, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  store i32 %.sroa.4354.0.copyload, ptr %i.fr, align 4, !tbaa !684
  br label %.loopexit611

bb.af:                                            ; preds = %bb.ad
  %i.gj = load i32, ptr %i.ge, align 4, !tbaa !97
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !84
  %i.gn = icmp eq i8 %i.gm, 58
  br i1 %i.gn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  store ptr %i.go, ptr %i.eq, align 8, !tbaa !673
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ad
  store i32 %.sroa.4354.0.copyload, ptr %i.fr, align 4, !tbaa !684
  br label %.loopexit611

bb.ai:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ag
  %i.gp = phi ptr [ %i.ge, %bb.ad ], [ %i.ge, %bb.ad ], [ %i.ge, %bb.ad ], [ %i.ge, %bb.ad ], [ %i.go, %bb.ag ] ; 3 uses
  %i.gq = load ptr, ptr %i.ft, align 8, !tbaa !663
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !675 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !683
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gw = zext i32 %i.gu to i64                   ; 2 uses
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !499
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = icmp ult ptr %i.gp, %i.gy
  br i1 %i.gz, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ai, %bb.al
  %i.ha = phi i32 [ %i.hj, %bb.al ], [ %i.fu, %bb.ai ] ; 3 uses
  %i.hb = phi ptr [ %i.hc, %bb.al ], [ %i.gp, %bb.ai ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 5 uses
  store ptr %i.hc, ptr %i.eq, align 8, !tbaa !673
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !97
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !84
  switch i8 %i.hg, label %bb.al [
    i8 91, label %bb.aj
    i8 123, label %bb.aj
    i8 93, label %bb.ak
    i8 125, label %bb.ak
  ]

bb.aj:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hh = add nsw i32 %i.ha, 1                    ; 2 uses
  store i32 %i.hh, ptr %i.fr, align 4, !tbaa !684
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph, %.lr.ph
  %i.hi = add nsw i32 %i.ha, -1                   ; 4 uses
  store i32 %i.hi, ptr %i.fr, align 4, !tbaa !684
  %.not8.i.i.i.i.i = icmp sgt i32 %i.hi, %.sroa.4354.0.copyload
  br i1 %.not8.i.i.i.i.i, label %bb.al, label %.loopexit611.loopexit

bb.al:                                            ; preds = %.lr.ph, %bb.ak, %bb.aj
  %i.hj = phi i32 [ %i.ha, %.lr.ph ], [ %i.hi, %bb.ak ], [ %i.hh, %bb.aj ] ; 2 uses
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !499
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.gw
  %i.hm = icmp ult ptr %i.hc, %i.hl
  br i1 %i.hm, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i, !llvm.loop !36

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i: ; preds = %bb.al, %bb.ai
  %i.hn = phi ptr [ %i.gp, %bb.ai ], [ %i.hc, %bb.al ]
  %i.ho = phi i32 [ %i.fu, %bb.ai ], [ %i.hj, %bb.al ]
  store i32 3, ptr %i.fs, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

.loopexit611.loopexit:                            ; preds = %bb.ak
  %i.hp = icmp eq i32 %i.hi, %.sroa.4354.0.copyload
  br label %.loopexit611

.loopexit611:                                     ; preds = %.loopexit611.loopexit, %bb.ah, %bb.ae
  %i.hq = phi ptr [ %i.ge, %bb.ah ], [ %i.ge, %bb.ae ], [ %i.hc, %.loopexit611.loopexit ] ; 3 uses
  %i.hr = phi i1 [ true, %bb.ah ], [ true, %bb.ae ], [ %i.hp, %.loopexit611.loopexit ]
  %i.hs = icmp ugt ptr %i.hq, %.sroa.6356.0.copyload
  tail call void @llvm.assume(i1 %i.hs)
  tail call void @llvm.assume(i1 %i.hr)
  tail call void @llvm.assume(i1 %i.fv)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 4 uses
  store ptr %i.ht, ptr %i.eq, align 8, !tbaa !673
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !97
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !84
  switch i8 %i.hx, label %bb.ao [
    i8 93, label %bb.am
    i8 44, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit611
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i53)
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !684
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.an:                                            ; preds = %.loopexit611
  tail call void @llvm.assume(i1 %or.cond.i.i.i12.i)
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !684
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

bb.ao:                                            ; preds = %.loopexit611
  store i32 3, ptr %i.fs, align 8, !tbaa !685
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.i: ; preds = %bb.ac, %bb.am, %bb.an, %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i
  %i.hy = phi i32 [ %i.fz, %bb.am ], [ %i.fz, %bb.an ], [ 3, %bb.ao ], [ %i.fz, %bb.ac ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.hz = phi ptr [ %i.ht, %bb.am ], [ %i.ht, %bb.an ], [ %i.ht, %bb.ao ], [ %i.gb, %bb.ac ], [ %i.hn, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ]
  %i.ia = phi i32 [ %i.fw, %bb.am ], [ %i.fu, %bb.an ], [ %.sroa.4354.0.copyload, %bb.ao ], [ 0, %bb.ac ], [ %i.ho, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i.i ] ; 2 uses
  %i.ib = add i64 %.0500612697, 1                 ; 2 uses
  %.not606 = icmp slt i32 %i.ia, %.sroa.4354.0.copyload
  br i1 %.not606, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i, label %.lr.ph698

bb.ap:                                            ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %.sroa.4354.0.copyload, ptr %i.ic, align 4, !tbaa !684
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.6356.0.copyload, i64 4
  store ptr %i.id, ptr %i.eq, align 8, !tbaa !673
  %i.ie = icmp sgt i32 %.sroa.4354.0.copyload, 0
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = load i32, ptr %i.ep, align 8, !tbaa !703
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !684
  store ptr %i.g, ptr %i.eq, align 8, !tbaa !673
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !1491, !nonnull !108, !align !191
  store i64 %.0500612.lcssa, ptr %i.ii, align 8, !tbaa !154
end_hunk_0
