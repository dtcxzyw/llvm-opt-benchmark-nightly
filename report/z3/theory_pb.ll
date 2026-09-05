Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12mk_at_most_1EbjPKN3sat7literalER7svectorIS5_jEb:bb.a
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE21mk_at_most_1_bimanderEbjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %9 = alloca %class.svector.202, align 8         ; 10 uses
  %10 = alloca %class.svector.202, align 8        ; 8 uses
  %11 = alloca %class.svector.202, align 8        ; 10 uses
  %12 = alloca %class.svector.202, align 8        ; 7 uses
  %13 = alloca %class.svector.202, align 8        ; 11 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12mk_at_most_1EbjPKN3sat7literalER7svectorIS5_jEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !641
  %.not.i.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext i32 %2 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %.lr.ph.preheader.i.i
  %i.b = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.j, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %.pre.i.i.i = load ptr, ptr %11, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ] ; 3 uses
  %i.k = phi i32 [ %.pre2.i.i.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.c, align 4, !tbaa !38
  store i32 %i.o, ptr %i.n, align 4, !tbaa !38
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !38
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit:       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !798
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !798
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !793, !nonnull !90, !align !91
  %i.v = invoke i32 @_ZN3smt9theory_pb10psort_expr5freshEPKc(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull @.str.65)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit unwind label %bb.f ; 4 uses

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit: ; preds = %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !641
  br i1 %.not.i.i, label %.preheader126, label %.lr.ph

.preheader126:                                    ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !641   ; 2 uses
  %i.w = icmp eq ptr %.pre, null
  br i1 %i.w, label %.preheader125.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph

.preheader125.thread:                             ; preds = %.preheader126
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  br label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.k, %.preheader126
  %i.x = phi ptr [ %.pre, %.preheader126 ], [ %i.aq, %bb.k ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

bb.f:                                             ; preds = %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.lr.ph:                                           ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit, %bb.k
  %.052128 = phi i32 [ %i.av, %bb.k ], [ 0, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit ] ; 3 uses
  %i.ab = sub nuw i32 %2, %.052128
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ab, i32 2) ; 2 uses
  %i.ac = load ptr, ptr %11, align 8, !tbaa !641
  %i.ad = zext i32 %.052128 to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE18mk_at_most_1_smallEbjPKN3sat7literalES5_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false, i32 noundef %.sroa.speculated, ptr noundef %i.ae, i32 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %11, align 8, !tbaa !641
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  %i.ah = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.sroa.speculated, ptr noundef %i.ag)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %4, align 8, !tbaa !641   ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.ap = phi i32 [ %.pre2.i, %.noexc ], [ %i.al, %bb.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i, %.noexc ], [ %i.ai, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %i.ah, ptr %i.at, align 4, !tbaa !38
  %i.au = add i32 %i.ap, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !38
  %i.av = add i32 %.052128, 2                     ; 2 uses
  %i.aw = icmp ult i32 %i.av, %2
  br i1 %i.aw, label %.lr.ph, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph, !llvm.loop !1071

bb.l:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.m:                                             ; preds = %bb.j, %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph
  %.056129 = phi i32 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.bb, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ] ; 5 uses
  %i.az = shl nuw i32 1, %.056129
  %i.ba = icmp ult i32 %i.az, %i.z
  %i.bb = add i32 %.056129, 1
  br i1 %i.ba, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr null, ptr %13, align 8, !tbaa !641
  %.not154 = icmp eq i32 %.056129, 0
  br i1 %.not154, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.lr.ph133

.preheader125:                                    ; preds = %bb.an
  %.pre166 = load ptr, ptr %4, align 8, !tbaa !641 ; 2 uses
  %i.bc = icmp eq ptr %.pre166, null
  br i1 %i.bc, label %.critedge.thread261, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.lr.ph: ; preds = %.preheader125
  %i.bd = xor i32 %i.v, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext i32 %.056129 to i64
  %i.bf = icmp eq i32 %i.v, 1
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.us

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.us: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.lr.ph, %._crit_edge.us
  %indvars.iv160 = phi i64 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.lr.ph ], [ %indvars.iv.next161, %._crit_edge.us ] ; 4 uses
  %i.bg = phi ptr [ %.pre166, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.lr.ph ], [ %i.fd, %._crit_edge.us ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !38
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv160, %i.bj
  br i1 %i.bk, label %.preheader.us, label %.critedge

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us: ; preds = %.preheader.us, %.loopexit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us ] ; 3 uses
  %i.bl = trunc nuw i64 %indvars.iv to i32
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %14
  %.not.us = icmp eq i32 %i.bn, 0
  %i.bo = load ptr, ptr %4, align 8, !tbaa !641
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv160
  %.sroa.02.0.copyload.us = load i32, ptr %i.bp, align 4, !tbaa !38 ; 2 uses
  switch i32 %.sroa.02.0.copyload.us, label %bb.o [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us

bb.o:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
  %i.bq = xor i32 %.sroa.02.0.copyload.us, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us: ; preds = %bb.o, %bb.n, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
  %.sroa.06.0.i79.us = phi i32 [ %i.bq, %bb.o ], [ 0, %bb.n ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us ] ; 2 uses
  %i.br = load ptr, ptr %13, align 8, !tbaa !641
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %.sroa.0.0.copyload.us = load i32, ptr %i.bs, align 4, !tbaa !38 ; 3 uses
  br i1 %.not.us, label %bb.p, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us

bb.p:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us
  switch i32 %.sroa.0.0.copyload.us, label %bb.r [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us

bb.r:                                             ; preds = %bb.p
  %i.bt = xor i32 %.sroa.0.0.copyload.us, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us, %bb.r, %bb.q, %bb.p
  %.sroa.01.0.us = phi i32 [ 1, %bb.p ], [ %i.bt, %bb.r ], [ 0, %bb.q ], [ %.sroa.0.0.copyload.us, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit80.us ] ; 2 uses
  %i.bu = icmp eq i32 %.sroa.06.0.i79.us, 0
  %or.cond = or i1 %i.bf, %i.bu
  %i.bv = icmp eq i32 %.sroa.01.0.us, 0
  %or.cond264 = select i1 %or.cond, i1 true, i1 %i.bv
  br i1 %or.cond264, label %.loopexit.us, label %bb.s

bb.s:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us
  %i.bw = load <2 x i32>, ptr %i.be, align 8, !tbaa !38
  %i.bx = add <2 x i32> %i.bw, <i32 1, i32 3>
  store <2 x i32> %i.bx, ptr %i.be, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !641
  %i.by = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %bb.t unwind label %.split138.us ; 8 uses

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.by, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  store ptr %i.bz, ptr %10, align 8, !tbaa !641
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.bd, ptr %i.bz, align 4, !tbaa !38
  store i32 1, ptr %i.ca, align 4, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 %.sroa.06.0.i79.us, ptr %i.cc, align 4, !tbaa !38
  store i32 2, ptr %i.cb, align 4, !tbaa !38
  %i.cd = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cf = load i32, ptr %i.by, align 4, !tbaa !38 ; 3 uses
  %i.cg = mul i32 %i.cf, 3
  %i.ch = add i32 %i.cg, 1
  %i.ci = lshr i32 %i.ch, 1                       ; 3 uses
  %i.cj = shl i32 %i.ci, 2
  %i.ck = add i32 %i.cj, 8                        ; 2 uses
  %.not.i.us.2 = icmp ugt i32 %i.ci, %i.cf
  br i1 %.not.i.us.2, label %bb.v, label %.split.us

bb.v:                                             ; preds = %bb.u
  %i.cl = shl i32 %i.cf, 2
  %i.cm = add i32 %i.cl, 8
  %.not27.i.us.2 = icmp ugt i32 %i.ck, %i.cm
  br i1 %.not27.i.us.2, label %bb.w, label %.split.us

bb.w:                                             ; preds = %bb.v
  %i.cn = zext i32 %i.ck to i64
  %i.co = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.by, i64 noundef %i.cn)
          to label %.noexc84.us.2 unwind label %.split138.us ; 3 uses

.noexc84.us.2:                                    ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cp, ptr %10, align 8, !tbaa !641
  store i32 %i.ci, ptr %i.co, align 4, !tbaa !38
  %.phi.trans.insert.i.i.i.i.us.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %.pre2.i.i.i.i.us.2 = load i32, ptr %.phi.trans.insert.i.i.i.i.us.2, align 4, !tbaa !38
  br label %bb.x

bb.x:                                             ; preds = %.noexc84.us.2, %bb.t
  %i.cq = phi ptr [ %i.cp, %.noexc84.us.2 ], [ %i.bz, %bb.t ] ; 5 uses
  %i.cr = phi i32 [ %.pre2.i.i.i.i.us.2, %.noexc84.us.2 ], [ 2, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ct
  store i32 %.sroa.01.0.us, ptr %i.cu, align 4, !tbaa !38
  %i.cv = add i32 %i.cr, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !38
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !793, !nonnull !90, !align !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr null, ptr %9, align 8, !tbaa !641
  %i.cx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %bb.y unwind label %.split143.us ; 7 uses

bb.y:                                             ; preds = %bb.x
  store i32 2, ptr %i.cx, align 4, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  store ptr %i.cz, ptr %9, align 8, !tbaa !641
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load i32, ptr %i.cq, align 4, !tbaa !38
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !38
  store i32 1, ptr %i.da, align 4, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.dd = load i32, ptr %i.cx, align 4, !tbaa !38
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.df = load i32, ptr %i.cx, align 4, !tbaa !38 ; 3 uses
  %i.dg = mul i32 %i.df, 3
  %i.dh = add i32 %i.dg, 1
  %i.di = lshr i32 %i.dh, 1                       ; 3 uses
  %i.dj = shl i32 %i.di, 2
  %i.dk = add i32 %i.dj, 8                        ; 2 uses
  %.not.i104.us.1 = icmp ugt i32 %i.di, %i.df
  br i1 %.not.i104.us.1, label %bb.aa, label %.split141.us

bb.aa:                                            ; preds = %bb.z
  %i.dl = shl i32 %i.df, 2
  %i.dm = add i32 %i.dl, 8
  %.not27.i113.us.1 = icmp ugt i32 %i.dk, %i.dm
  br i1 %.not27.i113.us.1, label %bb.ab, label %.split141.us

bb.ab:                                            ; preds = %bb.aa
  %i.dn = zext i32 %i.dk to i64
  %i.do = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dn)
          to label %.noexc95.us.1 unwind label %.split143.us ; 3 uses

.noexc95.us.1:                                    ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  store ptr %i.dp, ptr %9, align 8, !tbaa !641
  store i32 %i.di, ptr %i.do, align 4, !tbaa !38
  %.phi.trans.insert.i.i.i.i93.us.1 = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.pre2.i.i.i.i94.us.1 = load i32, ptr %.phi.trans.insert.i.i.i.i93.us.1, align 4, !tbaa !38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %.noexc95.us.1
  %i.dq = phi ptr [ %i.dp, %.noexc95.us.1 ], [ %i.cz, %bb.y ] ; 5 uses
  %i.dr = phi i32 [ %.pre2.i.i.i.i94.us.1, %.noexc95.us.1 ], [ 1, %bb.y ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = load i32, ptr %i.dc, align 4, !tbaa !38
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !38
  %i.dw = add i32 %i.dr, 1                        ; 3 uses
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dy = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !38
  %i.ea = icmp eq i32 %i.dw, %i.dz
  br i1 %i.ea, label %bb.ad, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i87.us.2

bb.ad:                                            ; preds = %bb.ac
  %i.eb = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38 ; 3 uses
  %i.ed = mul i32 %i.ec, 3
  %i.ee = add i32 %i.ed, 1
  %i.ef = lshr i32 %i.ee, 1                       ; 3 uses
  %i.eg = shl i32 %i.ef, 2
  %i.eh = add i32 %i.eg, 8                        ; 2 uses
  %.not.i104.us.2 = icmp ugt i32 %i.ef, %i.ec
  br i1 %.not.i104.us.2, label %bb.ae, label %.split141.us

bb.ae:                                            ; preds = %bb.ad
  %i.ei = shl i32 %i.ec, 2
  %i.ej = add i32 %i.ei, 8
  %.not27.i113.us.2 = icmp ugt i32 %i.eh, %i.ej
  br i1 %.not27.i113.us.2, label %bb.af, label %.split141.us

bb.af:                                            ; preds = %bb.ae
  %i.ek = zext i32 %i.eh to i64
  %i.el = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ek)
          to label %.noexc95.us.2 unwind label %.split143.us ; 3 uses

.noexc95.us.2:                                    ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.em, ptr %9, align 8, !tbaa !641
  store i32 %i.ef, ptr %i.el, align 4, !tbaa !38
  %.phi.trans.insert.i.i.i.i93.us.2 = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.pre2.i.i.i.i94.us.2 = load i32, ptr %.phi.trans.insert.i.i.i.i93.us.2, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i87.us.2

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i87.us.2: ; preds = %.noexc95.us.2, %bb.ac
  %i.en = phi ptr [ %i.em, %.noexc95.us.2 ], [ %i.dq, %bb.ac ] ; 3 uses
  %i.eo = phi i32 [ %.pre2.i.i.i.i94.us.2, %.noexc95.us.2 ], [ %i.dw, %bb.ac ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -4
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eq
  %i.es = load i32, ptr %i.dx, align 4, !tbaa !38
  store i32 %i.es, ptr %i.er, align 4, !tbaa !38
  %i.et = add i32 %i.eo, 1
  store i32 %i.et, ptr %i.ep, align 4, !tbaa !38
  %i.eu = load ptr, ptr %i.cw, align 8, !tbaa !797, !nonnull !90, !align !91
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !799, !nonnull !90, !align !91
  %i.ex = invoke noundef ptr @_ZN3smt9theory_pb7justifyERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(968) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ag unwind label %.split146.us

bb.ag:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i87.us.2
  %i.ey = invoke noundef ptr @_ZN3smt7context9mk_clauseEjPN3sat7literalEPNS_13justificationENS_11clause_kindEPNS_13clause_del_ehE(ptr noundef nonnull align 8 dereferenceable(10728) %i.eu, i32 noundef 3, ptr noundef nonnull %i.en, ptr noundef %i.ex, i32 noundef 0, ptr noundef null)
          to label %bb.ah unwind label %.split146.us ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %9, align 8, !tbaa !641   ; 2 uses
  %.not.i.i5.i.us = icmp eq ptr %i.ez, null
  br i1 %.not.i.i5.i.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fa)
          to label %bb.aj unwind label %.split149.us

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fb = load ptr, ptr %10, align 8, !tbaa !641  ; 2 uses
  %.not.i.i13.i.us = icmp eq ptr %i.fb, null
  br i1 %.not.i.i13.i.us, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fc)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i.us unwind label %.split152.us

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i.us:    ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit82.us, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond159.not, label %._crit_edge.us, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us, !llvm.loop !1072

.preheader.us:                                    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.us
  %14 = trunc nuw i64 %indvars.iv160 to i32
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us

._crit_edge.us:                                   ; preds = %.loopexit.us
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %i.fd = load ptr, ptr %4, align 8, !tbaa !641   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.us, !llvm.loop !1073

.split138.us:                                     ; preds = %bb.w, %bb.s
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split143.us:                                     ; preds = %bb.af, %bb.ab, %bb.x
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.split146.us:                                     ; preds = %bb.ag, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i87.us.2
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body96

.split149.us:                                     ; preds = %bb.ai
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #27
  unreachable

.split152.us:                                     ; preds = %bb.ak
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #27
  unreachable

.lr.ph133:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, %bb.an
  %.055132 = phi i32 [ %i.gd, %bb.an ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread ]
  %i.fm = load i32, ptr %i.q, align 4, !tbaa !798
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.q, align 4, !tbaa !798
  %i.fo = load ptr, ptr %i.t, align 8, !tbaa !793, !nonnull !90, !align !91
  %i.fp = invoke i32 @_ZN3smt9theory_pb10psort_expr5freshEPKc(ptr noundef nonnull align 8 dereferenceable(88) %i.fo, ptr noundef nonnull @.str.66)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit66 unwind label %bb.ao

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit66: ; preds = %.lr.ph133
  %i.fq = load ptr, ptr %13, align 8, !tbaa !641  ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit66
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !38 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 -8
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !38
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit66
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc70 unwind label %bb.ao

.noexc70:                                         ; preds = %bb.am
  %.pre.i67 = load ptr, ptr %13, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i68 = getelementptr inbounds i8, ptr %.pre.i67, i64 -4
  %.pre2.i69 = load i32, ptr %.phi.trans.insert.i68, align 4, !tbaa !38
  br label %bb.an

bb.an:                                            ; preds = %.noexc70, %bb.al
  %i.fx = phi i32 [ %.pre2.i69, %.noexc70 ], [ %i.ft, %bb.al ] ; 2 uses
  %i.fy = phi ptr [ %.pre.i67, %.noexc70 ], [ %i.fq, %bb.al ] ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.ga = zext i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ga
  store i32 %i.fp, ptr %i.gb, align 4, !tbaa !38
  %i.gc = add i32 %i.fx, 1
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !38
  %i.gd = add nuw i32 %.055132, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gd, %.056129
  br i1 %exitcond.not, label %.preheader125, label %.lr.ph133, !llvm.loop !1074

bb.ao:                                            ; preds = %bb.am, %.lr.ph133
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit73.us, %._crit_edge.us
  %.pre192 = load ptr, ptr %13, align 8, !tbaa !641 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pre192, null
  br i1 %.not.i.i74, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.critedge.thread261

.critedge.thread261:                              ; preds = %.preheader125, %.critedge
  %i.gf = phi ptr [ %.pre192, %.critedge ], [ %i.fy, %.preheader125 ]
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gg)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.critedge.thread261
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, %.preheader125.thread, %.critedge, %.critedge.thread261
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.gj = load ptr, ptr %12, align 8, !tbaa !641  ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i75, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gk)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gn = load ptr, ptr %11, align 8, !tbaa !641  ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i77, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78, label %bb.as

bb.as:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.go)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bg

.split.us:                                        ; preds = %bb.v, %bb.u
  %i.gr = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %.split.us
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gr, align 8, !tbaa !639
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 3 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !640
  %i.gu = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !56 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nuw nsw i64 %i.gy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gt, ptr noundef nonnull align 8 dereferenceable(1) %i.gv, i64 %i.ha, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !55
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !57
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !57
  %.phi.trans.insert.i98 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i99 = load i64, ptr %.phi.trans.insert.i98, align 8, !tbaa !56
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.av
  %i.hc = phi i64 [ %i.gy, %bb.av ], [ %.pre.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.hc, ptr %i.he, align 8, !tbaa !56
  store ptr %i.gv, ptr %7, align 8, !tbaa !55
  store i64 0, ptr %i.hd, align 8, !tbaa !56
  store i8 0, ptr %i.gv, align 8, !tbaa !57
  invoke void @__cxa_throw(ptr nonnull %i.gr, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gv
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aw
  %i.hi = load i64, ptr %i.gv, align 8, !tbaa !57
  %i.hj = add i64 %i.hi, 1
end_hunk_0
