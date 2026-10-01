Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !798
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !798
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 %.sroa.06.0.copyload.pre, ptr %6, align 4, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.05.0.copyload.pre, ptr %i.o, align 4, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !793, !nonnull !90, !align !91
  %i.r = call i32 @_ZN3smt9theory_pb10psort_expr6mk_minEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(88) %i.q, i32 noundef 2, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_minEN3sat7literalES5_.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_minEN3sat7literalES5_.exit: ; preds = %bb.b, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_maxEN3sat7literalES5_.exit, %bb.c
  %.sroa.0.0.i225 = phi i32 [ %i.j, %bb.c ], [ %i.j, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_maxEN3sat7literalES5_.exit ], [ %.sroa.08.0.copyload, %bb.b ] ; 2 uses
  %.sroa.0.0.i52 = phi i32 [ %i.r, %bb.c ], [ %.sroa.05.0.copyload.pre, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_maxEN3sat7literalES5_.exit ], [ %.sroa.08.0.copyload, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !641    ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_minEN3sat7literalES5_.exit
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !38   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_minEN3sat7literalES5_.exit
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre2.i, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i, %bb.e ], [ %i.s, %bb.d ] ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  store i32 %.sroa.0.0.i225, ptr %i.ad, align 4, !tbaa !38
  %i.ae = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !38
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit56

bb.g:                                             ; preds = %bb.f
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i53 = load ptr, ptr %5, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i54 = getelementptr inbounds i8, ptr %.pre.i53, i64 -4
  %.pre2.i55 = load i32, ptr %.phi.trans.insert.i54, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit56

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit56: ; preds = %bb.f, %bb.g
  %i.ai = phi i32 [ %.pre2.i55, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i53, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  store i32 %.sroa.0.0.i52, ptr %i.am, align 4, !tbaa !38
  %i.an = add i32 %i.ai, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !38
  %.sroa.04.0.copyload = load i32, ptr %.tr123, align 4, !tbaa !38
  %.sroa.03.0.copyload = load i32, ptr %.tr125, align 4, !tbaa !38
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE3cmpEN3sat7literalES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %.sroa.04.0.copyload, i32 %.sroa.03.0.copyload, i32 %.sroa.0.0.i225, i32 %.sroa.0.0.i52)
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

bb.h:                                             ; preds = %tailrecurse
  %i.ao = icmp eq i32 %.tr122, 0
  %.not.i = icmp eq i32 %.tr124, 0                ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext i32 %.tr124 to i64
  %.pre.i57 = load ptr, ptr %5, align 8, !tbaa !641
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %.lr.ph.preheader.i
  %i.ap = phi ptr [ %.pre.i57, %.lr.ph.preheader.i ], [ %i.ax, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.tr125, i64 %indvars.iv.i
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %bb.k, %bb.j
  %i.ax = phi ptr [ %.pre.i.i, %bb.k ], [ %i.ap, %bb.j ] ; 3 uses
  %i.ay = phi i32 [ %.pre2.i.i, %bb.k ], [ %i.at, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !38
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !38
  %i.bd = add i32 %i.ay, 1
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.i, !llvm.loop !23

bb.l:                                             ; preds = %bb.h
  br i1 %.not.i, label %.lr.ph.preheader.i59, label %bb.o

.lr.ph.preheader.i59:                             ; preds = %bb.l
  %wide.trip.count.i60 = zext i32 %.tr122 to i64
  %.pre.i61 = load ptr, ptr %5, align 8, !tbaa !641
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64, %.lr.ph.preheader.i59
  %i.be = phi ptr [ %.pre.i61, %.lr.ph.preheader.i59 ], [ %i.bm, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64 ] ; 4 uses
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %indvars.iv.next.i65, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.tr123, i64 %indvars.iv.i63
  %i.bg = icmp eq ptr %i.be, null
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i62
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !38 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.n, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64

bb.n:                                             ; preds = %bb.m, %.lr.ph.i62
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i67 = load ptr, ptr %5, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i68 = getelementptr inbounds i8, ptr %.pre.i.i67, i64 -4
  %.pre2.i.i69 = load i32, ptr %.phi.trans.insert.i.i68, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64: ; preds = %bb.n, %bb.m
  %i.bm = phi ptr [ %.pre.i.i67, %bb.n ], [ %i.be, %bb.m ] ; 3 uses
  %i.bn = phi i32 [ %.pre2.i.i69, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i32, ptr %i.bf, align 4, !tbaa !38
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !38
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !38
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i60
  br i1 %exitcond.not.i66, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.i62, !llvm.loop !23

bb.o:                                             ; preds = %bb.l
  %i.bt = add i32 %.tr124, %.tr122                ; 2 uses
  %i.bu = tail call noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.tr122, i32 noundef %.tr124, i32 noundef %i.bt)
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dsmergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bt, i32 noundef %.tr122, ptr noundef %.tr123, i32 noundef %.tr124, ptr noundef %.tr125, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = and i32 %.tr122, 1
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = trunc i32 %.tr124 to i1
  %or.cond121 = and i1 %i.bw, %i.bx
  br i1 %or.cond121, label %tailrecurse, label %.lr.ph.preheader.i72

.lr.ph.preheader.i72:                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr null, ptr %9, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr null, ptr %13, align 8, !tbaa !641
  br label %.lr.ph.i74

.preheader.i:                                     ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75
  br i1 %i.a, label %.lr.ph.preheader.i81, label %.lr.ph19.preheader.i

.lr.ph19.preheader.i:                             ; preds = %.preheader.i
  %.pre20.i = load ptr, ptr %9, align 8, !tbaa !641
  %14 = zext i32 %.tr122 to i64
  br label %.lr.ph19.i

.lr.ph.i74:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75, %.lr.ph.preheader.i72
  %i.by = phi ptr [ %i.ch, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75 ], [ null, %.lr.ph.preheader.i72 ] ; 4 uses
  %.01117.i = phi i32 [ %i.co, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75 ], [ 0, %.lr.ph.preheader.i72 ] ; 2 uses
  %i.bz = zext i32 %.01117.i to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.tr123, i64 %i.bz
  %i.cb = icmp eq ptr %i.by, null
  br i1 %i.cb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i74
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !38 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75

bb.s:                                             ; preds = %bb.r, %.lr.ph.i74
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.s
  %.pre.i.i76 = load ptr, ptr %8, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i77 = getelementptr inbounds i8, ptr %.pre.i.i76, i64 -4
  %.pre2.i.i78 = load i32, ptr %.phi.trans.insert.i.i77, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i75: ; preds = %.noexc, %bb.r
  %i.ch = phi ptr [ %.pre.i.i76, %.noexc ], [ %i.by, %bb.r ] ; 3 uses
  %i.ci = phi i32 [ %.pre2.i.i78, %.noexc ], [ %i.cd, %bb.r ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !38
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !38
  %i.cn = add i32 %i.ci, 1
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !38
  %i.co = add i32 %.01117.i, 2                    ; 2 uses
  %i.cp = icmp ult i32 %i.co, %.tr122
  br i1 %i.cp, label %.lr.ph.i74, label %.preheader.i, !llvm.loop !24

.lr.ph19.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i, %.lr.ph19.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i ], [ 1, %.lr.ph19.preheader.i ] ; 2 uses
  %15 = phi ptr [ %i.cx, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i ], [ %.pre20.i, %.lr.ph19.preheader.i ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.tr123, i64 %indvars.iv
  %i.cr = icmp eq ptr %15, null
  br i1 %i.cr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph19.i
  %i.cs = getelementptr inbounds i8, ptr %15, i64 -4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !38 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %15, i64 -8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  %i.cw = icmp eq i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.u, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i

bb.u:                                             ; preds = %bb.t, %.lr.ph19.i
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %bb.u
  %.pre.i13.i = load ptr, ptr %9, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i14.i = getelementptr inbounds i8, ptr %.pre.i13.i, i64 -4
  %.pre2.i15.i = load i32, ptr %.phi.trans.insert.i14.i, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i: ; preds = %.noexc79, %bb.t
  %i.cx = phi ptr [ %.pre.i13.i, %.noexc79 ], [ %15, %bb.t ] ; 3 uses
  %i.cy = phi i32 [ %.pre2.i15.i, %.noexc79 ], [ %i.ct, %bb.t ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load i32, ptr %i.cq, align 4, !tbaa !38
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !38
  %i.dd = add i32 %i.cy, 1
  store i32 %i.dd, ptr %i.cz, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.de = icmp samesign ult i64 %indvars.iv.next, %14
  br i1 %i.de, label %.lr.ph19.i, label %.lr.ph.preheader.i81, !llvm.loop !25

.lr.ph.preheader.i81:                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i, %.preheader.i
  %.pre.i82 = load ptr, ptr %10, align 8, !tbaa !641
  br label %.lr.ph.i83

.preheader.i86:                                   ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85
  br i1 %i.b, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101, label %.lr.ph19.preheader.i88

.lr.ph19.preheader.i88:                           ; preds = %.preheader.i86
  %.pre20.i89 = load ptr, ptr %11, align 8, !tbaa !641
  %16 = zext i32 %.tr124 to i64
  br label %.lr.ph19.i90

.lr.ph.i83:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85, %.lr.ph.preheader.i81
  %i.df = phi ptr [ %i.do, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85 ], [ %.pre.i82, %.lr.ph.preheader.i81 ] ; 4 uses
  %.01117.i84 = phi i32 [ %i.dv, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85 ], [ 0, %.lr.ph.preheader.i81 ] ; 2 uses
  %i.dg = zext i32 %.01117.i84 to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.tr125, i64 %i.dg
  %i.di = icmp eq ptr %i.df, null
  br i1 %i.di, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i83
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !38
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.w, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85

bb.w:                                             ; preds = %bb.v, %.lr.ph.i83
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %bb.w
  %.pre.i.i96 = load ptr, ptr %10, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i.i97 = getelementptr inbounds i8, ptr %.pre.i.i96, i64 -4
  %.pre2.i.i98 = load i32, ptr %.phi.trans.insert.i.i97, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i85: ; preds = %.noexc99, %bb.v
  %i.do = phi ptr [ %.pre.i.i96, %.noexc99 ], [ %i.df, %bb.v ] ; 3 uses
  %i.dp = phi i32 [ %.pre2.i.i98, %.noexc99 ], [ %i.dk, %bb.v ] ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.dr = zext i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load i32, ptr %i.dh, align 4, !tbaa !38
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !38
  %i.du = add i32 %i.dp, 1
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !38
  %i.dv = add i32 %.01117.i84, 2                  ; 2 uses
  %i.dw = icmp ult i32 %i.dv, %.tr124
  br i1 %i.dw, label %.lr.ph.i83, label %.preheader.i86, !llvm.loop !24

.lr.ph19.i90:                                     ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92, %.lr.ph19.preheader.i88
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92 ], [ 1, %.lr.ph19.preheader.i88 ] ; 2 uses
  %17 = phi ptr [ %i.ee, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92 ], [ %.pre20.i89, %.lr.ph19.preheader.i88 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.tr125, i64 %indvars.iv192
  %i.dy = icmp eq ptr %17, null
  br i1 %i.dy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph19.i90
  %i.dz = getelementptr inbounds i8, ptr %17, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !38 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %17, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.y, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92

bb.y:                                             ; preds = %bb.x, %.lr.ph19.i90
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc100 unwind label %.loopexit

.noexc100:                                        ; preds = %bb.y
  %.pre.i13.i93 = load ptr, ptr %11, align 8, !tbaa !641 ; 2 uses
  %.phi.trans.insert.i14.i94 = getelementptr inbounds i8, ptr %.pre.i13.i93, i64 -4
  %.pre2.i15.i95 = load i32, ptr %.phi.trans.insert.i14.i94, align 4, !tbaa !38
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92: ; preds = %.noexc100, %bb.x
  %i.ee = phi ptr [ %.pre.i13.i93, %.noexc100 ], [ %17, %bb.x ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i15.i95, %.noexc100 ], [ %i.ea, %bb.x ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = load i32, ptr %i.dx, align 4, !tbaa !38
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !38
  %i.ek = add i32 %i.ef, 1
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !38
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next193, %16
  br i1 %i.el, label %.lr.ph19.i90, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101, !llvm.loop !25

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit16.i92, %.preheader.i86
  %i.em = load ptr, ptr %8, align 8, !tbaa !641   ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101, %bb.z
  %.0.i = phi i32 [ %i.ep, %bb.z ], [ 0, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5splitEjPKN3sat7literalER7svectorIS5_jESA_.exit101 ]
  %i.eq = load ptr, ptr %10, align 8, !tbaa !641  ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.aa
  %.0.i102 = phi i32 [ %i.et, %bb.aa ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i, ptr noundef %i.em, i32 noundef %.0.i102, ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103
  %i.eu = load ptr, ptr %9, align 8, !tbaa !641   ; 3 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105:  ; preds = %bb.ab, %bb.ac
  %.0.i104 = phi i32 [ %i.ex, %bb.ac ], [ 0, %bb.ab ]
  %i.ey = load ptr, ptr %11, align 8, !tbaa !641  ; 3 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !38
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105, %bb.ad
  %.0.i106 = phi i32 [ %i.fb, %bb.ad ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit105 ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i104, ptr noundef %i.eu, i32 noundef %.0.i106, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10interleaveERK7svectorIN3sat7literalEjES9_RS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.fc = load ptr, ptr %13, align 8, !tbaa !641  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fd)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.fg = load ptr, ptr %12, align 8, !tbaa !641  ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i108, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit109, label %bb.ai

bb.ai:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fh)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit109 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit109:      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.fk = load ptr, ptr %11, align 8, !tbaa !641  ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i110, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit111, label %bb.ak

bb.ak:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit109
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fl)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit111 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit111:      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit109, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.fo = load ptr, ptr %10, align 8, !tbaa !641  ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i112, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit113, label %bb.am

bb.am:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit111
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fp)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit113 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit113:      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit111, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.fs = load ptr, ptr %9, align 8, !tbaa !641   ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i114, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit115, label %bb.ao

bb.ao:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit113
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ft)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit115 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit115:      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit113, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fw = load ptr, ptr %8, align 8, !tbaa !641   ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i116, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit117, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit115
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fx)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit117 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit117:      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit115, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.w
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.u
  %lpad.loopexit131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.s
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit107, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit103
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit131, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit133, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp134, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
end_hunk_0
