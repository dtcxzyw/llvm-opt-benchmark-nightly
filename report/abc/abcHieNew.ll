Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcHieNew?download=true
inline.NumInlined: 551
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Au_ManReorderModels:bb.a
  %i.cb = phi i32 [ %i.bd, %bb.d ], [ %i.by, %Vec_IntPush.exit129 ] ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.cc = sext i32 %.val101 to i64
  %i.cd = icmp slt i64 %indvars.iv.next183, %i.cc
  br i1 %i.cd, label %bb.d, label %.critedge2, !llvm.loop !70

.critedge2:                                       ; preds = %bb.n, %Vec_IntPush.exit
  %i.ce = phi i32 [ %i.ba, %Vec_IntPush.exit ], [ %i.cb, %bb.n ] ; 17 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !30
  %i.ch = load i32, ptr %i.ap, align 8, !tbaa !25
  %i.ci = icmp eq i32 %i.ce, %i.ch
  br i1 %i.ci, label %bb.o, label %.critedge2.Vec_IntPush.exit137_crit_edge

.critedge2.Vec_IntPush.exit137_crit_edge:         ; preds = %.critedge2
  %.pre205 = load ptr, ptr %i.ay, align 8, !tbaa !24
  br label %Vec_IntPush.exit137

bb.o:                                             ; preds = %.critedge2
  %i.cj = icmp slt i32 %i.ce, 16
  br i1 %i.cj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i135 = icmp eq ptr %i.ck, null
  br i1 %.not9.i.i135, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i133

bb.r:                                             ; preds = %bb.p
  %i.cm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i133

bb.s:                                             ; preds = %bb.o
  %i.cn = icmp samesign ult i32 %i.ce, 1073741823
  %i.co = shl nuw nsw i32 %i.ce, 1
  %spec.select.i130 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 4 uses
  %.not.i9.i131 = icmp samesign ult i32 %i.ce, %spec.select.i130
  %.pre206 = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i131, label %bb.t, label %Vec_IntPush.exit137

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i132 = icmp eq ptr %.pre206, null
  %i.cp = zext nneg i32 %spec.select.i130 to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  br i1 %.not9.i10.i132, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = tail call ptr @realloc(ptr noundef nonnull %.pre206, i64 noundef %i.cq) #31
  br label %Vec_IntGrow.exit11.sink.split.i133

bb.v:                                             ; preds = %bb.t
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cq) #29
  br label %Vec_IntGrow.exit11.sink.split.i133

Vec_IntGrow.exit11.sink.split.i133:               ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge = phi ptr [ %i.cm, %bb.r ], [ %i.cl, %bb.q ], [ %i.cr, %bb.u ], [ %i.cs, %bb.v ]
  %spec.select.sink.i134 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i130, %bb.u ], [ %spec.select.i130, %bb.v ]
  store i32 %spec.select.sink.i134, ptr %i.ap, align 8, !tbaa !25
  br label %Vec_IntPush.exit137

Vec_IntPush.exit137:                              ; preds = %.critedge2.Vec_IntPush.exit137_crit_edge, %bb.s, %Vec_IntGrow.exit11.sink.split.i133
  %i.ct = phi ptr [ %.pre205, %.critedge2.Vec_IntPush.exit137_crit_edge ], [ %.pre206, %bb.s ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i133 ] ; 11 uses
  %i.cu = add i32 %i.ce, 1                        ; 7 uses
  %i.cv = sext i32 %i.ce to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  store i32 %i.cg, ptr %i.cw, align 4, !tbaa !47
  store i32 %i.ce, ptr %i.aq, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 6 uses
  %i.cy = icmp sgt i32 %i.ce, 1
  br i1 %i.cy, label %.lr.ph.i.preheader, label %Vec_IntReverseOrder.exit

.lr.ph.i.preheader:                               ; preds = %Vec_IntPush.exit137
  %i.cz = lshr i32 %i.ce, 1                       ; 3 uses
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %xtraiter223 = and i64 %i.da, 1
  %i.db = icmp eq i32 %i.cz, 1
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter227 = and i64 %i.da, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter228 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter228.next.1, %.lr.ph.i ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.de = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.df = xor i32 %i.de, -1
  %i.dg = add nsw i32 %i.ce, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !47
  store i32 %i.dj, ptr %i.dc, align 4, !tbaa !47
  store i32 %i.dd, ptr %i.di, align 4, !tbaa !47
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !47
  %i.dm = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.dn = xor i32 %i.dm, -1
  %i.do = add nsw i32 %i.ce, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !47
  store i32 %i.dr, ptr %i.dk, align 4, !tbaa !47
  store i32 %i.dl, ptr %i.dq, align 4, !tbaa !47
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !71

Vec_IntReverseOrder.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod225.not, label %Vec_IntReverseOrder.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod226 = trunc i32 %i.cz to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !47
  %i.du = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.dv = xor i32 %i.du, -1
  %i.dw = add nsw i32 %i.ce, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !47
  store i32 %i.dz, ptr %i.ds, align 4, !tbaa !47
  store i32 %i.dt, ptr %i.dy, align 4, !tbaa !47
  br label %Vec_IntReverseOrder.exit

Vec_IntReverseOrder.exit:                         ; preds = %.lr.ph.i.epil.preheader, %Vec_IntReverseOrder.exit.loopexit.unr-lcssa, %Vec_IntPush.exit137
  store ptr %i.ct, ptr %i.ay, align 8, !tbaa !24
  store i32 %i.cu, ptr %i.aq, align 4, !tbaa !48
  %.val120 = load i32, ptr %i.a, align 4, !tbaa !20 ; 2 uses
  %i.ea = add nsw i32 %.val120, -1
  %i.eb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 5 uses
  %or.cond.i138 = icmp ult i32 %i.ea, 7
  %spec.store.select.i139 = select i1 %or.cond.i138, i32 8, i32 %.val120 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  store i32 0, ptr %i.ec, align 4, !tbaa !20
  store i32 %spec.store.select.i139, ptr %i.eb, align 8, !tbaa !21
  %.not.i140 = icmp eq i32 %spec.store.select.i139, 0
  br i1 %.not.i140, label %Vec_PtrAlloc.exit, label %bb.w

bb.w:                                             ; preds = %Vec_IntReverseOrder.exit
  %i.ed = sext i32 %spec.store.select.i139 to i64
  %i.ee = shl nsw i64 %i.ed, 3
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #29
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Vec_IntReverseOrder.exit, %bb.w
  %.promoted168 = phi ptr [ %i.ef, %bb.w ], [ null, %Vec_IntReverseOrder.exit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  store ptr %.promoted168, ptr %i.eg, align 8, !tbaa !22
  %.not153162 = icmp slt i32 %i.ce, 0
  br i1 %.not153162, label %.critedge4, label %.lr.ph164

.lr.ph164:                                        ; preds = %Vec_PtrAlloc.exit
  %i.eh = getelementptr i8, ptr %0, i64 16
  %wide.trip.count193 = zext i32 %i.cu to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph164, %Vec_PtrPush.exit
  %indvars.iv188 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next189, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv186 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next187, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge156169 = phi ptr [ %.promoted168, %.lr.ph164 ], [ %storemerge156170, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i142167 = phi i32 [ %spec.store.select.i139, %.lr.ph164 ], [ %spec.select.sink.i142166, %Vec_PtrPush.exit ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv188
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !47
  %.val115 = load ptr, ptr %i.eh, align 8, !tbaa !22
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %.val115, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31
  %i.en = trunc nsw i64 %indvars.iv186 to i32
  %i.eo = icmp eq i32 %spec.select.sink.i142167, %i.en
  br i1 %i.eo, label %bb.y, label %Vec_PtrPush.exit

bb.y:                                             ; preds = %bb.x
  %i.ep = icmp samesign ult i64 %indvars.iv186, 16
  br i1 %i.ep, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not9.i.i143 = icmp eq ptr %storemerge156169, null
  br i1 %.not9.i.i143, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge156169, i64 noundef 128) #31
  br label %Vec_PtrPush.exit

bb.ab:                                            ; preds = %bb.z
  %i.er = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #29
  br label %Vec_PtrPush.exit

bb.ac:                                            ; preds = %bb.y
  %i.es = icmp samesign ult i64 %indvars.iv186, 1073741823
  %indvars.iv186.tr = trunc i64 %indvars.iv186 to i32
  %i.et = shl i32 %indvars.iv186.tr, 1
  %spec.select.i141 = select i1 %i.es, i32 %i.et, i32 2147483647 ; 4 uses
  %i.eu = sext i32 %spec.select.i141 to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv186, %i.eu
  br i1 %.not.i10.i, label %bb.ad, label %Vec_PtrPush.exit

bb.ad:                                            ; preds = %bb.ac
  %.not9.i11.i = icmp eq ptr %storemerge156169, null
  %i.ev = zext nneg i32 %spec.select.i141 to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ex = tail call ptr @realloc(ptr noundef nonnull %storemerge156169, i64 noundef %i.ew) #31
  br label %Vec_PtrPush.exit

bb.af:                                            ; preds = %bb.ad
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ew) #29
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.ab, %bb.aa, %bb.af, %bb.ae, %bb.x, %bb.ac
  %storemerge156170 = phi ptr [ %storemerge156169, %bb.x ], [ %storemerge156169, %bb.ac ], [ %i.er, %bb.ab ], [ %i.eq, %bb.aa ], [ %i.ex, %bb.ae ], [ %i.ey, %bb.af ] ; 3 uses
  %spec.select.sink.i142166 = phi i32 [ %spec.select.sink.i142167, %bb.x ], [ %spec.select.sink.i142167, %bb.ac ], [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i141, %bb.ae ], [ %spec.select.i141, %bb.af ] ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %storemerge156170, i64 %indvars.iv186
  store ptr %i.em, ptr %i.ez, align 8, !tbaa !31
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count193
  br i1 %exitcond194.not, label %..critedge4_crit_edge, label %bb.x, !llvm.loop !72

..critedge4_crit_edge:                            ; preds = %Vec_PtrPush.exit
  %i.fa = trunc nsw i64 %indvars.iv.next187 to i32
  store i32 %i.fa, ptr %i.ec, align 4, !tbaa !20
  store i32 %spec.select.sink.i142166, ptr %i.eb, align 8
  store ptr %storemerge156170, ptr %i.eg, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %Vec_PtrAlloc.exit
  %calloc30.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %calloc30.i, i64 4
  %i.fc = getelementptr i8, ptr %calloc30.i, i64 8 ; 3 uses
  %i.fd = icmp eq i32 %i.cu, 0
  br i1 %i.fd, label %Vec_IntFree.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge4
  %i.fe = load i32, ptr %i.ct, align 4, !tbaa !47 ; 3 uses
  %i.ff = icmp sgt i32 %i.ce, 0
  br i1 %i.ff, label %.lr.ph.preheader.i.i, label %Vec_IntFindMax.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ag
  %wide.trip.count.i.i = zext nneg i32 %i.cu to i64 ; 2 uses
  %i.fg = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.cu, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.fg, -8                      ; 3 uses
  %i.fh = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fl, %vector.body ]
  %vec.phi218 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fm, %vector.body ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  %wide.load = load <4 x i32>, ptr %i.fj, align 4, !tbaa !47
  %wide.load219 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !47
  %i.fl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.fm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi218, <4 x i32> %wide.load219) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fl, <4 x i32> %i.fm)
  %i.fo = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.fh, %middle.block ]
  %.015.i.i.ph = phi i32 [ %i.fe, %.lr.ph.preheader.i.i ], [ %i.fo, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.015.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !47
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %.015.i.i, i32 %i.fq) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i, !llvm.loop !76

Vec_IntFindMax.exit.i:                            ; preds = %.lr.ph.i.i, %middle.block, %bb.ag
  %.012.i.i = phi i32 [ %i.fe, %bb.ag ], [ %i.fo, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.fr = add nsw i32 %.012.i.i, 1                ; 3 uses
  %.not.i.i.i = icmp sgt i32 %.012.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i21.i, label %Vec_IntFill.exit.i

.lr.ph.i21.i:                                     ; preds = %Vec_IntFindMax.exit.i
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.ft) ; 2 uses
  store ptr %calloc.i, ptr %i.fc, align 8, !tbaa !24
  store i32 %i.fr, ptr %calloc30.i, align 8, !tbaa !25
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i21.i, %Vec_IntFindMax.exit.i
  %.val20.i = phi ptr [ %calloc.i, %.lr.ph.i21.i ], [ null, %Vec_IntFindMax.exit.i ] ; 3 uses
  store i32 %i.fr, ptr %i.fb, align 4, !tbaa !48
  %i.fu = icmp sgt i32 %i.ce, -1
  br i1 %i.fu, label %.lr.ph.i144, label %Vec_IntFree.exit

.lr.ph.i144:                                      ; preds = %Vec_IntFill.exit.i
  %i.fv = zext i32 %i.cu to i64                   ; 2 uses
  %xtraiter230 = and i64 %i.fv, 1
  %i.fw = icmp eq i32 %i.ce, 0
  br i1 %i.fw, label %.epil.preheader229, label %.lr.ph.i144.new

.lr.ph.i144.new:                                  ; preds = %.lr.ph.i144
  %unroll_iter234 = and i64 %i.fv, 4294967294
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %.lr.ph.i144.new
  %indvars.iv.i145 = phi i64 [ 0, %.lr.ph.i144.new ], [ %indvars.iv.next.i147.1, %bb.al ] ; 4 uses
  %niter235 = phi i64 [ 0, %.lr.ph.i144.new ], [ %niter235.next.1, %bb.al ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i145
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !47 ; 2 uses
  %.not.i146 = icmp eq i32 %i.fy, 0
  br i1 %.not.i146, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %.val20.i, i64 %i.fz
  %i.gb = trunc nuw nsw i64 %indvars.iv.i145 to i32
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !47
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next.i147 = or disjoint i64 %indvars.iv.i145, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i147
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !47 ; 2 uses
  %.not.i146.1 = icmp eq i32 %i.gd, 0
  br i1 %.not.i146.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %.val20.i, i64 %i.ge
  %i.gg = trunc nuw nsw i64 %indvars.iv.next.i147 to i32
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !47
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next.i147.1 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %niter235.next.1 = add i64 %niter235, 2         ; 2 uses
  %niter235.ncmp.1 = icmp eq i64 %niter235.next.1, %unroll_iter234
  br i1 %niter235.ncmp.1, label %Vec_IntFree.exit.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !77

Vec_IntFree.exit.loopexit.unr-lcssa:              ; preds = %bb.al
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod232.not, label %Vec_IntFree.exit, label %.epil.preheader229

.epil.preheader229:                               ; preds = %Vec_IntFree.exit.loopexit.unr-lcssa, %.lr.ph.i144
  %indvars.iv.i145.epil.init = phi i64 [ 0, %.lr.ph.i144 ], [ %indvars.iv.next.i147.1, %Vec_IntFree.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod233 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i145.epil.init
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !47 ; 2 uses
  %.not.i146.epil = icmp eq i32 %i.gi, 0
  br i1 %.not.i146.epil, label %Vec_IntFree.exit, label %bb.am

bb.am:                                            ; preds = %.epil.preheader229
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.val20.i, i64 %i.gj
  %i.gl = trunc nuw nsw i64 %indvars.iv.i145.epil.init to i32
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !47
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntFree.exit.loopexit.unr-lcssa, %bb.am, %.epil.preheader229, %.critedge4, %Vec_IntFill.exit.i
  tail call void @free(ptr noundef nonnull %i.ct) #30
  tail call void @free(ptr noundef nonnull %i.ap) #30
  %.val100176 = load i32, ptr %i.a, align 4, !tbaa !20 ; 2 uses
  %i.gm = icmp sgt i32 %.val100176, 1
  br i1 %i.gm, label %.lr.ph178, label %.critedge6

.lr.ph178:                                        ; preds = %Vec_IntFree.exit
  %i.gn = getelementptr i8, ptr %0, i64 16
  %.val107 = load ptr, ptr %i.fc, align 8, !tbaa !24 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph178, %.critedge8
  %.val100207 = phi i32 [ %.val100176, %.lr.ph178 ], [ %.val100, %.critedge8 ]
  %indvars.iv199 = phi i64 [ 1, %.lr.ph178 ], [ %indvars.iv.next200, %.critedge8 ] ; 2 uses
  %.val114 = load ptr, ptr %i.gn, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.val114, i64 %indvars.iv199
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !31 ; 4 uses
end_hunk_0
begin_hunk_1_@Au_NtkParseCBlif:bb.a
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.val15.i257, i64 %indvars.iv.i258.prol
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !47
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i258.prol
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !47
  %indvars.iv.next.i259.prol = add nuw nsw i64 %indvars.iv.i258.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol, !llvm.loop !115

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv.i258.unr = phi i64 [ %indvars.iv.i258.ph, %scalar.ph479.preheader ], [ %indvars.iv.next.i259.prol, %scalar.ph479.prol ]
  %i.kr = sub nsw i64 %indvars.iv.i258.ph, %i.ke
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %Au_NtkCreateNode.exit261, label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479
  %indvars.iv.i258 = phi i64 [ %indvars.iv.next.i259.3, %scalar.ph479 ], [ %indvars.iv.i258.unr, %scalar.ph479.prol.loopexit ] ; 6 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.val15.i257, i64 %indvars.iv.i258
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !47
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i258
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !47
  %indvars.iv.next.i259 = add nuw nsw i64 %indvars.iv.i258, 1 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.val15.i257, i64 %indvars.iv.next.i259
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !47
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i259
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !47
  %indvars.iv.next.i259.1 = add nuw nsw i64 %indvars.iv.i258, 2 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val15.i257, i64 %indvars.iv.next.i259.1
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !47
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i259.1
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !47
  %indvars.iv.next.i259.2 = add nuw nsw i64 %indvars.iv.i258, 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.val15.i257, i64 %indvars.iv.next.i259.2
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !47
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i259.2
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !47
  %indvars.iv.next.i259.3 = add nuw nsw i64 %indvars.iv.i258, 4 ; 2 uses
  %exitcond399.not.3 = icmp eq i64 %indvars.iv.next.i259.3, %i.ke
  br i1 %exitcond399.not.3, label %Au_NtkCreateNode.exit261, label %scalar.ph479, !llvm.loop !116

Au_NtkCreateNode.exit261:                         ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block488, %Vec_IntPush.exit252.2
  %i.lf = load i64, ptr %i.kb, align 4
  %i.lg = and i64 %i.lf, -1073741824
  %i.lh = or disjoint i64 %i.lg, 3
  store i64 %i.lh, ptr %i.kb, align 4
  %i.li = load i32, ptr %i.ax, align 4, !tbaa !48 ; 7 uses
  %i.lj = load i32, ptr %i.aw, align 8, !tbaa !25
  %i.lk = icmp eq i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.ax, label %Au_NtkCreateNode.exit261.Vec_IntPush.exit269_crit_edge

Au_NtkCreateNode.exit261.Vec_IntPush.exit269_crit_edge: ; preds = %Au_NtkCreateNode.exit261
  %.pre420 = load ptr, ptr %i.az, align 8, !tbaa !24
  br label %Vec_IntPush.exit269

bb.ax:                                            ; preds = %Au_NtkCreateNode.exit261
  %i.ll = icmp slt i32 %i.li, 16
  br i1 %i.ll, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.lm = load ptr, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i267 = icmp eq ptr %i.lm, null
  br i1 %.not9.i.i267, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.lm, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i265

bb.ba:                                            ; preds = %bb.ay
  %i.lo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i265

bb.bb:                                            ; preds = %bb.ax
  %i.lp = icmp samesign ult i32 %i.li, 1073741823
  %i.lq = shl nuw nsw i32 %i.li, 1
  %spec.select.i262 = select i1 %i.lp, i32 %i.lq, i32 2147483647 ; 4 uses
  %.not.i9.i263 = icmp samesign ult i32 %i.li, %spec.select.i262
  %.pre421 = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i263, label %bb.bc, label %Vec_IntPush.exit269

bb.bc:                                            ; preds = %bb.bb
  %.not9.i10.i264 = icmp eq ptr %.pre421, null
  %i.lr = zext nneg i32 %spec.select.i262 to i64
  %i.ls = shl nuw nsw i64 %i.lr, 2                ; 2 uses
  br i1 %.not9.i10.i264, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lt = tail call ptr @realloc(ptr noundef nonnull %.pre421, i64 noundef %i.ls) #31
  br label %Vec_IntGrow.exit11.sink.split.i265

bb.be:                                            ; preds = %bb.bc
  %i.lu = tail call noalias ptr @malloc(i64 noundef %i.ls) #29
  br label %Vec_IntGrow.exit11.sink.split.i265

Vec_IntGrow.exit11.sink.split.i265:               ; preds = %bb.bd, %bb.be, %bb.az, %bb.ba
  %storemerge308 = phi ptr [ %i.lo, %bb.ba ], [ %i.ln, %bb.az ], [ %i.lt, %bb.bd ], [ %i.lu, %bb.be ] ; 2 uses
  %spec.select.sink.i266 = phi i32 [ 16, %bb.ba ], [ 16, %bb.az ], [ %spec.select.i262, %bb.bd ], [ %spec.select.i262, %bb.be ]
  store ptr %storemerge308, ptr %i.az, align 8, !tbaa !24
  store i32 %spec.select.sink.i266, ptr %i.aw, align 8, !tbaa !25
  br label %Vec_IntPush.exit269

Vec_IntPush.exit269:                              ; preds = %Au_NtkCreateNode.exit261.Vec_IntPush.exit269_crit_edge, %bb.bb, %Vec_IntGrow.exit11.sink.split.i265
  %i.lv = phi ptr [ %.pre420, %Au_NtkCreateNode.exit261.Vec_IntPush.exit269_crit_edge ], [ %.pre421, %bb.bb ], [ %storemerge308, %Vec_IntGrow.exit11.sink.split.i265 ]
  %i.lw = add nsw i32 %i.li, 1
  store i32 %i.lw, ptr %i.ax, align 4, !tbaa !48
  %i.lx = sext i32 %i.li to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.lx
  store i32 %i.js, ptr %i.ly, align 4, !tbaa !47
  br label %.critedge2

bb.bf:                                            ; preds = %bb.ar
  %i.lz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(8) @.str.33) #28
  %.not178 = icmp eq i32 %i.lz, 0
  br i1 %.not178, label %bb.bg, label %bb.br

bb.bg:                                            ; preds = %bb.bf
  %i.ma = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = sub i64 %i.mb, %i.j
  %i.md = trunc i64 %i.mc to i32
  %i.me = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 0 uses
  %i.mf = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30
  %i.mg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.mf, ptr noundef null, i32 noundef 10) #30, !inline_history !107
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.bg, %bb.bh
  %i.mk = phi ptr [ %i.mn, %bb.bh ], [ %i.mi, %bb.bg ] ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !105
  %i.mm = icmp eq i8 %i.ml, 35
  br i1 %i.mm, label %._crit_edge329, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph328
  tail call fastcc void @Au_NtkParseCBlifNum(ptr noundef nonnull %i.ba, ptr noundef %i.mk, ptr noundef nonnull %i.aw)
  %i.mn = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %._crit_edge329, label %.lr.ph328

._crit_edge329:                                   ; preds = %.lr.ph328, %bb.bh, %bb.bg
  %i.mp = tail call i32 @Au_NtkCreateBox(ptr noundef %.0162374, ptr noundef nonnull %i.ba, i32 noundef %i.mh, i32 noundef %i.md) ; 2 uses
  %i.mq = getelementptr i8, ptr %.0162374, i64 120
  %.0162.val = load ptr, ptr %i.mq, align 8, !tbaa !38
  %i.mr = ashr i32 %i.mp, 12
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %.0162.val, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !31
  %i.mv = and i32 %i.mp, 4095
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %i.mw ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 3 uses
  %i.mz = load i64, ptr %i.mx, align 4
  %i.na = lshr i64 %i.mz, 35                      ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !47
  %i.nd = icmp sgt i32 %i.nc, 0
  br i1 %i.nd, label %.lr.ph333, label %.critedge2

.lr.ph333:                                        ; preds = %._crit_edge329
  %.promoted = load i32, ptr %i.ax, align 4, !tbaa !48
  %.promoted334 = load i32, ptr %i.aw, align 8, !tbaa !25
  %.promoted337 = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.ne = sext i32 %.promoted to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph333, %Vec_IntPush.exit277
  %indvars.iv392 = phi i64 [ %i.ne, %.lr.ph333 ], [ %indvars.iv.next393, %Vec_IntPush.exit277 ] ; 7 uses
  %storemerge307338 = phi ptr [ %.promoted337, %.lr.ph333 ], [ %storemerge307339, %Vec_IntPush.exit277 ] ; 6 uses
  %spec.select.sink.i274336 = phi i32 [ %.promoted334, %.lr.ph333 ], [ %spec.select.sink.i274335, %Vec_IntPush.exit277 ] ; 3 uses
  %i.nf = phi i64 [ %i.na, %.lr.ph333 ], [ %i.oa, %Vec_IntPush.exit277 ]
  %.3331 = phi i32 [ 0, %.lr.ph333 ], [ %i.nh, %Vec_IntPush.exit277 ]
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = add nuw nsw i32 %.3331, 1               ; 3 uses
  %i.ni = add nuw i32 %i.nh, %i.ng
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !47
  %i.nm = trunc nsw i64 %indvars.iv392 to i32
  %i.nn = icmp eq i32 %spec.select.sink.i274336, %i.nm
  br i1 %i.nn, label %bb.bj, label %Vec_IntPush.exit277

bb.bj:                                            ; preds = %bb.bi
  %i.no = icmp slt i64 %indvars.iv392, 16
  br i1 %i.no, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.not9.i.i275 = icmp eq ptr %storemerge307338, null
  br i1 %.not9.i.i275, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.np = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge307338, i64 noundef 64) #31
  br label %Vec_IntPush.exit277

bb.bm:                                            ; preds = %bb.bk
  %i.nq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntPush.exit277

bb.bn:                                            ; preds = %bb.bj
  %i.nr = icmp samesign ult i64 %indvars.iv392, 1073741823
  %indvars.iv392.tr = trunc i64 %indvars.iv392 to i32
  %i.ns = shl i32 %indvars.iv392.tr, 1
  %spec.select.i270 = select i1 %i.nr, i32 %i.ns, i32 2147483647 ; 4 uses
  %i.nt = sext i32 %spec.select.i270 to i64
  %.not.i9.i271 = icmp samesign ult i64 %indvars.iv392, %i.nt
  br i1 %.not.i9.i271, label %bb.bo, label %Vec_IntPush.exit277

bb.bo:                                            ; preds = %bb.bn
  %.not9.i10.i272 = icmp eq ptr %storemerge307338, null
  %i.nu = zext nneg i32 %spec.select.i270 to i64
  %i.nv = shl nuw nsw i64 %i.nu, 2                ; 2 uses
  br i1 %.not9.i10.i272, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = tail call ptr @realloc(ptr noundef nonnull %storemerge307338, i64 noundef %i.nv) #31
  br label %Vec_IntPush.exit277

bb.bq:                                            ; preds = %bb.bo
  %i.nx = tail call noalias ptr @malloc(i64 noundef %i.nv) #29
  br label %Vec_IntPush.exit277

Vec_IntPush.exit277:                              ; preds = %bb.bm, %bb.bl, %bb.bq, %bb.bp, %bb.bi, %bb.bn
  %storemerge307339 = phi ptr [ %storemerge307338, %bb.bi ], [ %storemerge307338, %bb.bn ], [ %i.nq, %bb.bm ], [ %i.np, %bb.bl ], [ %i.nw, %bb.bp ], [ %i.nx, %bb.bq ] ; 3 uses
  %spec.select.sink.i274335 = phi i32 [ %spec.select.sink.i274336, %bb.bi ], [ %spec.select.sink.i274336, %bb.bn ], [ 16, %bb.bm ], [ 16, %bb.bl ], [ %spec.select.i270, %bb.bp ], [ %spec.select.i270, %bb.bq ] ; 2 uses
  %indvars.iv.next393 = add nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %storemerge307339, i64 %indvars.iv392
  store i32 %i.nl, ptr %i.ny, align 4, !tbaa !47
  %i.nz = load i64, ptr %i.mx, align 4
  %i.oa = lshr i64 %i.nz, 35                      ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !47
  %i.od = icmp slt i32 %i.nh, %i.oc
  br i1 %i.od, label %bb.bi, label %..critedge2.loopexit_crit_edge, !llvm.loop !117

bb.br:                                            ; preds = %bb.bf
  %i.oe = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(7) @.str.34) #28
  %.not179 = icmp eq i32 %i.oe, 0
  br i1 %.not179, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.of = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30
  %i.og = tail call ptr @Au_NtkAlloc(ptr noundef nonnull %i.am, ptr noundef %i.of) ; 2 uses
  %i.oh = tail call i32 @Au_NtkAllocObj(ptr noundef %i.og, i32 noundef 0, i32 noundef 1)
  %i.oi = load i32, ptr %i.aw, align 8, !tbaa !25
  %i.oj = icmp eq i32 %i.oi, 0
  %.pre419 = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  br i1 %i.oj, label %bb.bt, label %Vec_IntPush.exit285

bb.bt:                                            ; preds = %bb.bs
  %.not9.i.i283 = icmp eq ptr %.pre419, null
  br i1 %.not9.i.i283, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ok = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre419, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i281

bb.bv:                                            ; preds = %bb.bt
  %i.ol = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i281

Vec_IntGrow.exit11.sink.split.i281:               ; preds = %bb.bu, %bb.bv
  %i.om = phi ptr [ %i.ok, %bb.bu ], [ %i.ol, %bb.bv ] ; 2 uses
  store ptr %i.om, ptr %i.az, align 8, !tbaa !24
  store i32 16, ptr %i.aw, align 8, !tbaa !25
  br label %Vec_IntPush.exit285

Vec_IntPush.exit285:                              ; preds = %bb.bs, %Vec_IntGrow.exit11.sink.split.i281
  %i.on = phi ptr [ %.pre419, %bb.bs ], [ %i.om, %Vec_IntGrow.exit11.sink.split.i281 ]
  store i32 1, ptr %i.ax, align 4, !tbaa !48
  store i32 %i.oh, ptr %i.on, align 4, !tbaa !47
  br label %.critedge2

bb.bw:                                            ; preds = %bb.br
  %i.oo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(8) @.str.35) #28
  %.not180 = icmp eq i32 %i.oo, 0
  br i1 %.not180, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.op = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30
  %i.oq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.op, ptr noundef null, i32 noundef 10) #30, !inline_history !107
  %i.or = trunc i64 %i.oq to i32                  ; 2 uses
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %.lr.ph326, label %.critedge2

.lr.ph326:                                        ; preds = %bb.bx, %Vec_IntPush.exit293
  %.4324 = phi i32 [ %i.pl, %Vec_IntPush.exit293 ], [ 0, %bb.bx ]
  %i.ot = tail call i32 @Au_NtkAllocObj(ptr noundef %.0162374, i32 noundef 0, i32 noundef 2)
  %i.ou = load i32, ptr %i.ax, align 4, !tbaa !48 ; 7 uses
  %i.ov = load i32, ptr %i.aw, align 8, !tbaa !25
  %i.ow = icmp eq i32 %i.ou, %i.ov
  br i1 %i.ow, label %bb.by, label %.lr.ph326.Vec_IntPush.exit293_crit_edge

.lr.ph326.Vec_IntPush.exit293_crit_edge:          ; preds = %.lr.ph326
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !24
  br label %Vec_IntPush.exit293

bb.by:                                            ; preds = %.lr.ph326
  %i.ox = icmp slt i32 %i.ou, 16
  br i1 %i.ox, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.oy = load ptr, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i291 = icmp eq ptr %i.oy, null
  br i1 %.not9.i.i291, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.oy, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i289

bb.cb:                                            ; preds = %bb.bz
  %i.pa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i289

bb.cc:                                            ; preds = %bb.by
  %i.pb = icmp samesign ult i32 %i.ou, 1073741823
  %i.pc = shl nuw nsw i32 %i.ou, 1
  %spec.select.i286 = select i1 %i.pb, i32 %i.pc, i32 2147483647 ; 4 uses
  %.not.i9.i287 = icmp samesign ult i32 %i.ou, %spec.select.i286
  %.pre418 = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i287, label %bb.cd, label %Vec_IntPush.exit293

bb.cd:                                            ; preds = %bb.cc
  %.not9.i10.i288 = icmp eq ptr %.pre418, null
  %i.pd = zext nneg i32 %spec.select.i286 to i64
  %i.pe = shl nuw nsw i64 %i.pd, 2                ; 2 uses
  br i1 %.not9.i10.i288, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pf = tail call ptr @realloc(ptr noundef nonnull %.pre418, i64 noundef %i.pe) #31
  br label %Vec_IntGrow.exit11.sink.split.i289

bb.cf:                                            ; preds = %bb.cd
  %i.pg = tail call noalias ptr @malloc(i64 noundef %i.pe) #29
  br label %Vec_IntGrow.exit11.sink.split.i289

Vec_IntGrow.exit11.sink.split.i289:               ; preds = %bb.ce, %bb.cf, %bb.ca, %bb.cb
  %storemerge306 = phi ptr [ %i.pa, %bb.cb ], [ %i.oz, %bb.ca ], [ %i.pf, %bb.ce ], [ %i.pg, %bb.cf ] ; 2 uses
  %spec.select.sink.i290 = phi i32 [ 16, %bb.cb ], [ 16, %bb.ca ], [ %spec.select.i286, %bb.ce ], [ %spec.select.i286, %bb.cf ]
  store ptr %storemerge306, ptr %i.az, align 8, !tbaa !24
  store i32 %spec.select.sink.i290, ptr %i.aw, align 8, !tbaa !25
  br label %Vec_IntPush.exit293

Vec_IntPush.exit293:                              ; preds = %.lr.ph326.Vec_IntPush.exit293_crit_edge, %bb.cc, %Vec_IntGrow.exit11.sink.split.i289
  %i.ph = phi ptr [ %.pre, %.lr.ph326.Vec_IntPush.exit293_crit_edge ], [ %.pre418, %bb.cc ], [ %storemerge306, %Vec_IntGrow.exit11.sink.split.i289 ]
  %i.pi = add nsw i32 %i.ou, 1
  store i32 %i.pi, ptr %i.ax, align 4, !tbaa !48
  %i.pj = sext i32 %i.ou to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.pj
  store i32 %i.ot, ptr %i.pk, align 4, !tbaa !47
  %i.pl = add nuw nsw i32 %.4324, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.pl, %i.or
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph326, !llvm.loop !118

bb.cg:                                            ; preds = %bb.bw
  %i.pm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(9) @.str.36) #28
  %.not181 = icmp eq i32 %i.pm, 0
  br i1 %.not181, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.pn = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 0 uses
  %i.po = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ch, %bb.ci
  %i.pq = phi ptr [ %i.pt, %bb.ci ], [ %i.po, %bb.ch ] ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !105
  %i.ps = icmp eq i8 %i.pr, 35
  br i1 %i.ps, label %._crit_edge, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph
  tail call fastcc void @Au_NtkParseCBlifNum(ptr noundef nonnull %i.ba, ptr noundef %i.pq, ptr noundef nonnull %i.aw)
  %i.pt = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.28) #30 ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.ci
  %.val184320.pre = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.pv = icmp sgt i32 %.val184320.pre, 0
  br i1 %i.pv, label %.lr.ph323, label %.critedge2

.lr.ph323:                                        ; preds = %._crit_edge
  %i.pw = getelementptr i8, ptr %.0162374, i64 120
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph323, %Au_NtkCreatePo.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next, %Au_NtkCreatePo.exit ] ; 2 uses
  %.val186 = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.val186, i64 %indvars.iv
  %i.py = load i32, ptr %i.px, align 4, !tbaa !47 ; 2 uses
  %i.pz = tail call i32 @Au_NtkAllocObj(ptr noundef %.0162374, i32 noundef 1, i32 noundef 3) ; 2 uses
  %.not.i = icmp eq i32 %i.py, 0
  br i1 %.not.i, label %Au_NtkCreatePo.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.val.i294 = load ptr, ptr %i.pw, align 8, !tbaa !38
  %i.qa = ashr i32 %i.pz, 12
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %.val.i294, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !31
  %i.qe = and i32 %i.pz, 4095
  %i.qf = zext nneg i32 %i.qe to i64
end_hunk_1
begin_hunk_2_@Au_NtkTerSimulate:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  tail call void @Au_NtkTerSimulate_rec(ptr noundef nonnull %0)
  %i.v = getelementptr i8, ptr %0, i64 44
  %.val30 = load i32, ptr %i.v, align 4, !tbaa !48 ; 2 uses
  %i.w = icmp sgt i32 %.val30, 0
  br i1 %i.w, label %.lr.ph43, label %.critedge2

.lr.ph43:                                         ; preds = %.critedge
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val34 = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.y = getelementptr i8, ptr %0, i64 120
  %.val35 = load ptr, ptr %i.y, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %.val30 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph43, %bb.c
  %indvars.iv46 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next47, %bb.c ] ; 2 uses
  %.sroa.6.042 = phi i32 [ 0, %.lr.ph43 ], [ %spec.select, %bb.c ]
  %.sroa.0.041 = phi i32 [ 0, %.lr.ph43 ], [ %.sroa.0.1, %bb.c ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv46
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %i.ab = ashr i32 %i.aa, 12
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val35, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = and i32 %i.aa, 4095
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ag
  %.val37 = load i64, ptr %i.ah, align 4
  %i.ai = trunc i64 %.val37 to i32
  %i.aj = lshr i32 %i.ai, 30                      ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 2
  %i.am = zext i1 %i.al to i32
  %spec.select = add nuw nsw i32 %.sroa.6.042, %i.am ; 2 uses
  %i.an = zext i1 %i.ak to i32
  %.sroa.0.1 = add nuw nsw i32 %.sroa.0.041, %i.an ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.c, !llvm.loop !165

.critedge2:                                       ; preds = %bb.c, %.critedge
  %.sroa.0.0.lcssa = phi i32 [ 0, %.critedge ], [ %.sroa.0.1, %bb.c ]
  %.sroa.6.0.lcssa = phi i32 [ 0, %.critedge ], [ %spec.select, %bb.c ]
  %i.ao = getelementptr i8, ptr %0, i64 84
  %.val29 = load i32, ptr %i.ao, align 4, !tbaa !47
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %.sroa.0.0.lcssa, i32 noundef %.sroa.6.0.lcssa, i32 noundef %.val29) ; 0 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !26  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.au = load double, ptr %i.at, align 8, !tbaa !167 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.aw = load double, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  %i.ax = fadd double %i.as, %i.au
  %i.ay = fadd double %i.ax, %i.aw
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %i.as, double noundef %i.au, double noundef %i.aw, double noundef %i.ay) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define noundef ptr @Au_NtkDerive(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  tail call void @Abc_NtkCleanCopy(ptr noundef %1) #30
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val75 = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.b = tail call ptr @Au_NtkAlloc(ptr noundef %0, ptr noundef %.val75) ; 7 uses
  %i.c = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %.val76113 = load ptr, ptr %i.c, align 8, !tbaa !178 ; 2 uses
  %i.d = getelementptr i8, ptr %.val76113, i64 4
  %.val76.val114 = load i32, ptr %i.d, align 4, !tbaa !20
  %i.e = icmp sgt i32 %.val76.val114, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val76116 = phi ptr [ %.val76, %.lr.ph ], [ %.val76113, %bb.a ]
  %i.f = getelementptr i8, ptr %.val76116, i64 8
  %.val77.val = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val77.val, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = tail call i32 @Au_NtkAllocObj(ptr noundef %i.b, i32 noundef 0, i32 noundef 2)
  %.val82 = load ptr, ptr %i.h, align 8, !tbaa !179
  %i.j = getelementptr i8, ptr %i.h, i64 48
  %.val83 = load ptr, ptr %i.j, align 8, !tbaa !182
  %i.k = getelementptr i8, ptr %.val82, i64 32
  %.val82.val = load ptr, ptr %i.k, align 8, !tbaa !183
  %.val83.val = load i32, ptr %.val83, align 4, !tbaa !47
  %i.l = getelementptr i8, ptr %.val82.val, i64 8
  %.val82.val.val = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.m = sext i32 %.val83.val to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %.val82.val.val, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 %i.i, ptr %i.p, align 8, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val76 = load ptr, ptr %i.c, align 8, !tbaa !178 ; 2 uses
  %i.q = getelementptr i8, ptr %.val76, i64 4
  %.val76.val = load i32, ptr %i.q, align 4, !tbaa !20
  %i.r = sext i32 %.val76.val to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !184

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  store i32 0, ptr %i.u, align 4, !tbaa !48
  store i32 100, ptr %i.t, align 8, !tbaa !25
  %i.v = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #29 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val140 = load i32, ptr %i.x, align 4, !tbaa !20
  %i.y = icmp sgt i32 %.val140, 0
  br i1 %i.y, label %.lr.ph142, label %.critedge2

.lr.ph142:                                        ; preds = %.critedge
  %i.z = getelementptr i8, ptr %2, i64 8
  %i.aa = getelementptr i8, ptr %i.b, i64 120     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph142, %.critedge8
  %.val15.i184 = phi ptr [ %i.v, %.lr.ph142 ], [ %.val15.i185, %.critedge8 ] ; 2 uses
  %.promoted137 = phi ptr [ %i.v, %.lr.ph142 ], [ %.promoted123179, %.critedge8 ] ; 4 uses
  %.promoted134 = phi i32 [ 100, %.lr.ph142 ], [ %.promoted120175, %.critedge8 ] ; 4 uses
  %indvars.iv167 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next168, %.critedge8 ] ; 2 uses
  %.val73 = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv167
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 14 uses
  store i32 0, ptr %i.u, align 4, !tbaa !48
  %i.ae = getelementptr i8, ptr %i.ad, i64 20
  %.val84 = load i32, ptr %i.ae, align 4
  %i.af = and i32 %.val84, 15
  %.not = icmp eq i32 %i.af, 7
  %i.ag = getelementptr i8, ptr %i.ad, i64 28     ; 3 uses
  %.val86129 = load i32, ptr %i.ag, align 4, !tbaa !185
  %i.ah = icmp sgt i32 %.val86129, 0              ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader112

.preheader112:                                    ; preds = %bb.b
  br i1 %i.ah, label %.lr.ph119, label %.critedge6

.lr.ph119:                                        ; preds = %.preheader112
  %i.ai = getelementptr i8, ptr %i.ad, i64 32
  br label %bb.l

.preheader:                                       ; preds = %bb.b
  br i1 %i.ah, label %.lr.ph131, label %.critedge4

.lr.ph131:                                        ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %i.ad, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph131, %Vec_IntPush.exit
  %indvars.iv162 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next163, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv160 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next161, %Vec_IntPush.exit ] ; 7 uses
  %storemerge138 = phi ptr [ %.promoted137, %.lr.ph131 ], [ %storemerge139, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i136 = phi i32 [ %.promoted134, %.lr.ph131 ], [ %spec.select.sink.i135, %Vec_IntPush.exit ] ; 3 uses
  %.val89 = load ptr, ptr %i.ad, align 8, !tbaa !179
  %.val90 = load ptr, ptr %i.aj, align 8, !tbaa !186
  %i.ak = getelementptr i8, ptr %.val89, i64 32
  %.val89.val = load ptr, ptr %i.ak, align 8, !tbaa !183
  %i.al = getelementptr i8, ptr %.val89.val, i64 8
  %.val89.val.val = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val90, i64 %indvars.iv162
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %.val89.val.val, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !105
  %i.at = shl nsw i32 %i.as, 1
  %i.au = trunc nsw i64 %indvars.iv160 to i32
  %i.av = icmp eq i32 %spec.select.sink.i136, %i.au
  br i1 %i.av, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.aw = icmp samesign ult i64 %indvars.iv160, 16
  br i1 %i.aw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge138, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge138, i64 noundef 64) #31
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.az = icmp samesign ult i64 %indvars.iv160, 1073741823
  %indvars.iv160.tr = trunc i64 %indvars.iv160 to i32
  %i.ba = shl i32 %indvars.iv160.tr, 1
  %spec.select.i = select i1 %i.az, i32 %i.ba, i32 2147483647 ; 4 uses
  %i.bb = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv160, %i.bb
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge138, null
  %i.bc = zext nneg i32 %spec.select.i to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = tail call ptr @realloc(ptr noundef nonnull %storemerge138, i64 noundef %i.bd) #31
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #29
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge139 = phi ptr [ %storemerge138, %bb.c ], [ %storemerge138, %bb.h ], [ %i.ay, %bb.g ], [ %i.ax, %bb.f ], [ %i.be, %bb.j ], [ %i.bf, %bb.k ] ; 5 uses
  %spec.select.sink.i135 = phi i32 [ %spec.select.sink.i136, %bb.c ], [ %spec.select.sink.i136, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %storemerge139, i64 %indvars.iv160
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !47
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %.val86 = load i32, ptr %i.ag, align 4, !tbaa !185
  %i.bh = sext i32 %.val86 to i64
  %i.bi = icmp slt i64 %indvars.iv.next163, %i.bh
  br i1 %i.bi, label %bb.c, label %..critedge4_crit_edge, !llvm.loop !187

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.bj = trunc nsw i64 %indvars.iv.next161 to i32 ; 2 uses
  store i32 %i.bj, ptr %i.u, align 4, !tbaa !48
  store i32 %spec.select.sink.i135, ptr %i.t, align 8
  store ptr %storemerge139, ptr %i.w, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %.preheader
  %.val15.i = phi ptr [ %storemerge139, %..critedge4_crit_edge ], [ %.val15.i184, %.preheader ] ; 11 uses
  %.val14.i = phi i32 [ %i.bj, %..critedge4_crit_edge ], [ 0, %.preheader ] ; 4 uses
  %.promoted123181 = phi ptr [ %storemerge139, %..critedge4_crit_edge ], [ %.promoted137, %.preheader ]
  %.promoted120176 = phi i32 [ %spec.select.sink.i135, %..critedge4_crit_edge ], [ %.promoted134, %.preheader ]
  %.val15.i188 = ptrtoaddr ptr %.val15.i to i64
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !105
  %i.bn = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef null) #30
  %i.bo = tail call i32 @Au_NtkAllocObj(ptr noundef %i.b, i32 noundef %.val14.i, i32 noundef 7) ; 3 uses
  %.val16.i = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.bp = ashr i32 %i.bo, 12
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %.val16.i, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = and i32 %i.bo, 4095
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bv ; 3 uses
  %i.bx = icmp sgt i32 %.val14.i, 0
  br i1 %i.bx, label %.lr.ph.i, label %Au_NtkCreateNode.exit

.lr.ph.i:                                         ; preds = %.critedge4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 6 uses
  %i.bz = zext nneg i32 %.val14.i to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %.val14.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ca = add i64 %i.bt, 8
  %i.cb = shl nuw nsw i64 %i.bv, 4
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = sub i64 %.val15.i188, %i.cc
  %diff.check = icmp ugt i64 %i.cd, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !47
  %wide.load189 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !47
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !47
  store <4 x i32> %wide.load189, ptr %i.ch, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br i1 %cmp.n, label %Au_NtkCreateNode.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i.prol
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.prol
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !47
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !189

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv.i.ph, %i.bz
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %Au_NtkCreateNode.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !47
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.next.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !47
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.next.i.1
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !47
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.1
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !47
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.next.i.2
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !47
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.2
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !47
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.i.3, %i.bz
  br i1 %exitcond.not.3, label %Au_NtkCreateNode.exit, label %scalar.ph, !llvm.loop !190

Au_NtkCreateNode.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.critedge4
  %.promoted123180 = phi ptr [ %.promoted123181, %.critedge4 ], [ %.val15.i, %middle.block ], [ %.val15.i, %scalar.ph ], [ %.val15.i, %scalar.ph.prol.loopexit ]
  %i.da = load i64, ptr %i.bw, align 4
  %i.db = and i32 %i.bn, 1073741823
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = and i64 %i.da, -1073741824
  %i.de = or disjoint i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.bw, align 4
  %.val80 = load ptr, ptr %i.ad, align 8, !tbaa !179
  %i.df = getelementptr i8, ptr %i.ad, i64 48
  %.val81 = load ptr, ptr %i.df, align 8, !tbaa !182
  %i.dg = getelementptr i8, ptr %.val80, i64 32
  %.val80.val = load ptr, ptr %i.dg, align 8, !tbaa !183
  %.val81.val = load i32, ptr %.val81, align 4, !tbaa !47
  %i.dh = getelementptr i8, ptr %.val80.val, i64 8
  %.val80.val.val = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.di = sext i32 %.val81.val to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.val80.val.val, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  store i32 %i.bo, ptr %i.dl, align 8, !tbaa !105
  br label %.critedge8

bb.l:                                             ; preds = %.lr.ph119, %Vec_IntPush.exit108
  %indvars.iv152 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next153, %Vec_IntPush.exit108 ] ; 2 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next151, %Vec_IntPush.exit108 ] ; 7 uses
  %storemerge111124 = phi ptr [ %.promoted137, %.lr.ph119 ], [ %storemerge111125, %Vec_IntPush.exit108 ] ; 6 uses
  %spec.select.sink.i105122 = phi i32 [ %.promoted134, %.lr.ph119 ], [ %spec.select.sink.i105121, %Vec_IntPush.exit108 ] ; 3 uses
  %.val87 = load ptr, ptr %i.ad, align 8, !tbaa !179
  %.val88 = load ptr, ptr %i.ai, align 8, !tbaa !186
  %i.dm = getelementptr i8, ptr %.val87, i64 32
  %.val87.val = load ptr, ptr %i.dm, align 8, !tbaa !183
  %i.dn = getelementptr i8, ptr %.val87.val, i64 8
  %.val87.val.val = load ptr, ptr %i.dn, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv152
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !47
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.val87.val.val, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %.val93 = load ptr, ptr %i.ds, align 8, !tbaa !179
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %.val94 = load ptr, ptr %i.dt, align 8, !tbaa !186
  %i.du = getelementptr i8, ptr %.val93, i64 32
  %.val93.val = load ptr, ptr %i.du, align 8, !tbaa !183
  %.val94.val = load i32, ptr %.val94, align 4, !tbaa !47
  %i.dv = getelementptr i8, ptr %.val93.val, i64 8
  %.val93.val.val = load ptr, ptr %i.dv, align 8, !tbaa !22
  %i.dw = sext i32 %.val94.val to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %.val93.val.val, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !105
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = trunc nsw i64 %indvars.iv150 to i32
  %i.ed = icmp eq i32 %spec.select.sink.i105122, %i.ec
  br i1 %i.ed, label %bb.m, label %Vec_IntPush.exit108

bb.m:                                             ; preds = %bb.l
  %i.ee = icmp samesign ult i64 %indvars.iv150, 16
  br i1 %i.ee, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i106 = icmp eq ptr %storemerge111124, null
  br i1 %.not9.i.i106, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge111124, i64 noundef 64) #31
  br label %Vec_IntPush.exit108

bb.p:                                             ; preds = %bb.n
  %i.eg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntPush.exit108

bb.q:                                             ; preds = %bb.m
  %i.eh = icmp samesign ult i64 %indvars.iv150, 1073741823
  %indvars.iv150.tr = trunc i64 %indvars.iv150 to i32
  %i.ei = shl i32 %indvars.iv150.tr, 1
  %spec.select.i101 = select i1 %i.eh, i32 %i.ei, i32 2147483647 ; 4 uses
  %i.ej = sext i32 %spec.select.i101 to i64
  %.not.i9.i102 = icmp samesign ult i64 %indvars.iv150, %i.ej
  br i1 %.not.i9.i102, label %bb.r, label %Vec_IntPush.exit108

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i103 = icmp eq ptr %storemerge111124, null
  %i.ek = zext nneg i32 %spec.select.i101 to i64
  %i.el = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  br i1 %.not9.i10.i103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = tail call ptr @realloc(ptr noundef nonnull %storemerge111124, i64 noundef %i.el) #31
  br label %Vec_IntPush.exit108

bb.t:                                             ; preds = %bb.r
  %i.en = tail call noalias ptr @malloc(i64 noundef %i.el) #29
  br label %Vec_IntPush.exit108

Vec_IntPush.exit108:                              ; preds = %bb.p, %bb.o, %bb.t, %bb.s, %bb.l, %bb.q
  %storemerge111125 = phi ptr [ %storemerge111124, %bb.l ], [ %storemerge111124, %bb.q ], [ %i.eg, %bb.p ], [ %i.ef, %bb.o ], [ %i.em, %bb.s ], [ %i.en, %bb.t ] ; 5 uses
  %spec.select.sink.i105121 = phi i32 [ %spec.select.sink.i105122, %bb.l ], [ %spec.select.sink.i105122, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i101, %bb.s ], [ %spec.select.i101, %bb.t ] ; 3 uses
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %storemerge111125, i64 %indvars.iv150
  store i32 %i.eb, ptr %i.eo, align 4, !tbaa !47
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %.val85 = load i32, ptr %i.ag, align 4, !tbaa !185
  %i.ep = sext i32 %.val85 to i64
  %i.eq = icmp slt i64 %indvars.iv.next153, %i.ep
  br i1 %i.eq, label %bb.l, label %..critedge6_crit_edge, !llvm.loop !191

..critedge6_crit_edge:                            ; preds = %Vec_IntPush.exit108
  %i.er = trunc nsw i64 %indvars.iv.next151 to i32
  store i32 %i.er, ptr %i.u, align 4, !tbaa !48
  store i32 %spec.select.sink.i105121, ptr %i.t, align 8
  store ptr %storemerge111125, ptr %i.w, align 8
  br label %.critedge6

.critedge6:                                       ; preds = %..critedge6_crit_edge, %.preheader112
  %.val15.i183 = phi ptr [ %storemerge111125, %..critedge6_crit_edge ], [ %.val15.i184, %.preheader112 ] ; 2 uses
  %.promoted123177 = phi ptr [ %storemerge111125, %..critedge6_crit_edge ], [ %.promoted137, %.preheader112 ] ; 2 uses
  %.promoted120173 = phi i32 [ %spec.select.sink.i105121, %..critedge6_crit_edge ], [ %.promoted134, %.preheader112 ] ; 2 uses
  %i.es = getelementptr i8, ptr %i.ad, i64 44     ; 3 uses
  %.val96 = load i32, ptr %i.es, align 4, !tbaa !192
  %i.et = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !105
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 168
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !193
  %i.ex = tail call i32 @Au_NtkCreateBox(ptr noundef %i.b, ptr noundef nonnull %i.t, i32 noundef %.val96, i32 noundef %i.ew) ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !105
  %.val74 = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ez = ashr i32 %i.ex, 12
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %.val74, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %i.fd = and i32 %i.ex, 4095
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fe ; 2 uses
  %.val95126 = load i32, ptr %i.es, align 4, !tbaa !192
  %i.fg = icmp sgt i32 %.val95126, 0
  br i1 %i.fg, label %.lr.ph128, label %.critedge8

.lr.ph128:                                        ; preds = %.critedge6
  %i.fh = getelementptr i8, ptr %i.ad, i64 48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph128, %bb.u
  %indvars.iv157 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next158, %bb.u ] ; 2 uses
  %.val97 = load ptr, ptr %i.ad, align 8, !tbaa !179
  %.val98 = load ptr, ptr %i.fh, align 8, !tbaa !182
  %i.fj = getelementptr i8, ptr %.val97, i64 32
  %.val97.val = load ptr, ptr %i.fj, align 8, !tbaa !183
  %i.fk = getelementptr i8, ptr %.val97.val, i64 8
  %.val97.val.val = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val98, i64 %indvars.iv157
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !47
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %.val97.val.val, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !31 ; 2 uses
  %i.fq = load i64, ptr %i.ff, align 4
  %i.fr = lshr i64 %i.fq, 35
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 3 uses
  %i.fs = add nuw nsw i64 %indvars.iv.next158, %i.fr
  %sext = shl i64 %i.fs, 32
  %i.ft = ashr exact i64 %sext, 30
  %i.fu = getelementptr inbounds i8, ptr %i.fi, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !47
  %.val78 = load ptr, ptr %i.fp, align 8, !tbaa !179
  %i.fw = getelementptr i8, ptr %i.fp, i64 48
  %.val79 = load ptr, ptr %i.fw, align 8, !tbaa !182
  %i.fx = getelementptr i8, ptr %.val78, i64 32
  %.val78.val = load ptr, ptr %i.fx, align 8, !tbaa !183
  %.val79.val = load i32, ptr %.val79, align 4, !tbaa !47
  %i.fy = getelementptr i8, ptr %.val78.val, i64 8
  %.val78.val.val = load ptr, ptr %i.fy, align 8, !tbaa !22
  %i.fz = sext i32 %.val79.val to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %.val78.val.val, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  store i32 %i.fv, ptr %i.gc, align 8, !tbaa !105
  %.val95 = load i32, ptr %i.es, align 4, !tbaa !192
  %i.gd = sext i32 %.val95 to i64
  %i.ge = icmp slt i64 %indvars.iv.next158, %i.gd
  br i1 %i.ge, label %bb.u, label %.critedge8, !llvm.loop !194

.critedge8:                                       ; preds = %bb.u, %.critedge6, %Au_NtkCreateNode.exit
  %.val15.i185 = phi ptr [ %.val15.i, %Au_NtkCreateNode.exit ], [ %.val15.i183, %.critedge6 ], [ %.val15.i183, %bb.u ] ; 2 uses
  %.promoted123179 = phi ptr [ %.promoted123180, %Au_NtkCreateNode.exit ], [ %.promoted123177, %.critedge6 ], [ %.promoted123177, %bb.u ]
  %.promoted120175 = phi i32 [ %.promoted120176, %Au_NtkCreateNode.exit ], [ %.promoted120173, %.critedge6 ], [ %.promoted120173, %bb.u ]
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %.val = load i32, ptr %i.x, align 4, !tbaa !20
  %i.gf = sext i32 %.val to i64
  %i.gg = icmp slt i64 %indvars.iv.next168, %i.gf
  br i1 %i.gg, label %bb.b, label %.critedge2, !llvm.loop !195

.critedge2:                                       ; preds = %.critedge8, %.critedge
  %i.gh = phi ptr [ %i.v, %.critedge ], [ %.val15.i185, %.critedge8 ] ; 2 uses
  %.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.v

bb.v:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.gh) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.v
  tail call void @free(ptr noundef nonnull %i.t) #30
  %i.gi = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %.val99143 = load ptr, ptr %i.gi, align 8, !tbaa !196 ; 2 uses
  %i.gj = getelementptr i8, ptr %.val99143, i64 4
  %.val99.val144 = load i32, ptr %i.gj, align 4, !tbaa !20
  %i.gk = icmp sgt i32 %.val99.val144, 0
  br i1 %i.gk, label %.lr.ph147, label %.critedge10

.lr.ph147:                                        ; preds = %Vec_IntFree.exit
  %i.gl = getelementptr i8, ptr %i.b, i64 120
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph147, %Au_NtkCreatePo.exit
  %indvars.iv170 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next171, %Au_NtkCreatePo.exit ] ; 2 uses
  %.val99146 = phi ptr [ %.val99143, %.lr.ph147 ], [ %.val99, %Au_NtkCreatePo.exit ]
  %i.gm = getelementptr i8, ptr %.val99146, i64 8
  %.val100.val = load ptr, ptr %i.gm, align 8, !tbaa !22
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val100.val, i64 %indvars.iv170
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !31 ; 2 uses
  %.val91 = load ptr, ptr %i.go, align 8, !tbaa !179
  %i.gp = getelementptr i8, ptr %i.go, i64 32
  %.val92 = load ptr, ptr %i.gp, align 8, !tbaa !186
  %i.gq = getelementptr i8, ptr %.val91, i64 32
  %.val91.val = load ptr, ptr %i.gq, align 8, !tbaa !183
  %.val92.val = load i32, ptr %.val92, align 4, !tbaa !47
  %i.gr = getelementptr i8, ptr %.val91.val, i64 8
  %.val91.val.val = load ptr, ptr %i.gr, align 8, !tbaa !22
  %i.gs = sext i32 %.val92.val to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %.val91.val.val, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 72
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !105 ; 2 uses
  %i.gx = tail call i32 @Au_NtkAllocObj(ptr noundef %i.b, i32 noundef 1, i32 noundef 3) ; 2 uses
  %.not.i109 = icmp eq i32 %i.gw, 0
  br i1 %.not.i109, label %Au_NtkCreatePo.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = shl nsw i32 %i.gw, 1
  %.val.i110 = load ptr, ptr %i.gl, align 8, !tbaa !38
  %i.gz = ashr i32 %i.gx, 12
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %.val.i110, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31
  %i.hd = and i32 %i.gx, 4095
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 %i.gy, ptr %i.hg, align 4, !tbaa !47
  br label %Au_NtkCreatePo.exit

Au_NtkCreatePo.exit:                              ; preds = %bb.w, %bb.x
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.val99 = load ptr, ptr %i.gi, align 8, !tbaa !196 ; 2 uses
  %i.hh = getelementptr i8, ptr %.val99, i64 4
  %.val99.val = load i32, ptr %i.hh, align 4, !tbaa !20
  %i.hi = sext i32 %.val99.val to i64
  %i.hj = icmp slt i64 %indvars.iv.next171, %i.hi
  br i1 %i.hj, label %bb.w, label %.critedge10, !llvm.loop !197

.critedge10:                                      ; preds = %Au_NtkCreatePo.exit, %Vec_IntFree.exit
  ret ptr %i.b
}

declare void @Abc_NtkCleanCopy(ptr noundef) local_unnamed_addr #10

declare i32 @Abc_NamStrFindOrAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define ptr @Au_ManDeriveTest(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
end_hunk_2
