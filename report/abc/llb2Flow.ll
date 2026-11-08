Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb2Flow?download=true
inline.NumInlined: 368
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Llb_ManComputeCuts:bb.a
  store i32 100, ptr %i.j, align 8, !tbaa !24
  %i.l = call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #21 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = call ptr @Llb_ManComputeCutLo(ptr noundef nonnull %0)
  store ptr %i.n, ptr %i.l, align 8, !tbaa !27
  %i.o = call ptr @Llb_ManComputeCutLi(ptr noundef nonnull %0)
  store i32 2, ptr %i.k, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr i8, ptr %0, i64 312
  %.not63 = icmp eq i32 %3, 0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Vec_PtrPush.exit87, %._crit_edge
  %indvar = phi i64 [ 0, %Vec_PtrPush.exit87 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %i.r = phi i32 [ 100, %Vec_PtrPush.exit87 ], [ %i.ci, %._crit_edge ] ; 3 uses
  %indvars.iv137.a = phi i64 [ 2, %Vec_PtrPush.exit87 ], [ %indvars.iv.next138.a, %._crit_edge ] ; 20 uses
  %storemerge126 = phi ptr [ %i.l, %Vec_PtrPush.exit87 ], [ %storemerge127, %._crit_edge ] ; 8 uses
  %.060 = phi ptr [ null, %Vec_PtrPush.exit87 ], [ %.3, %._crit_edge ]
  %i.s = trunc i64 %indvar to i35
  %i.t = add i64 %indvar, 1
  %i.u = shl i64 %indvar, 3
  %i.v = add i64 %i.u, 24
  %i.w = trunc i64 %i.v to i35                    ; 2 uses
  %i.x = load ptr, ptr %storemerge126, align 8, !tbaa !27
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge67
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge67 ] ; 4 uses
  %.059115 = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.z, %.critedge67 ] ; 6 uses
  %.161114 = phi ptr [ %.060, %.lr.ph.preheader ], [ %.2, %.critedge67 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 7 uses
  call void @Aig_ManIncrementTravId(ptr noundef nonnull %0) #23
  %i.aa = getelementptr i8, ptr %.059115, i64 4
  %.val21.i = load i32, ptr %i.aa, align 4, !tbaa !26 ; 3 uses
  %i.ab = icmp sgt i32 %.val21.i, 0
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %.059115, i64 8
  %.val19.i = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 9 uses
  %.val22.i = load i32, ptr %i.q, align 8, !tbaa !42 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.val21.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ad = icmp ult i32 %.val21.i, 8
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.d

.critedge.preheader.i.loopexit.unr-lcssa:         ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.critedge.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %.val22.i, ptr %i.ag, align 8, !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.c, !llvm.loop !118

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %bb.c, %.lr.ph
  %i.ah = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val2024.i = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.ai = icmp sgt i32 %.val2024.i, 0
  br i1 %i.ai, label %.lr.ph27.i, label %Llb_ManCutVolume.exit

.lr.ph27.i:                                       ; preds = %.critedge.preheader.i
  %i.aj = getelementptr i8, ptr %i.z, i64 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.d ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %.val22.i, ptr %i.am, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %.val22.i, ptr %i.aq, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i32 %.val22.i, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %.val22.i, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i32 %.val22.i, ptr %i.bc, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i32 %.val22.i, ptr %i.bg, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 %.val22.i, ptr %i.bk, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i32 %.val22.i, ptr %i.bo, align 8, !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge.preheader.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !6

.critedge.i:                                      ; preds = %.critedge.i, %.lr.ph27.i
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next30.i, %.critedge.i ] ; 2 uses
  %.026.i = phi i32 [ 0, %.lr.ph27.i ], [ %i.bs, %.critedge.i ]
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv29.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.br = call i32 @Llb_ManCutVolume_rec(ptr noundef nonnull %0, ptr noundef %i.bq)
  %i.bs = add nsw i32 %i.br, %.026.i              ; 2 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %.val20.i = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.bt = sext i32 %.val20.i to i64
  %i.bu = icmp slt i64 %indvars.iv.next30.i, %i.bt
  br i1 %i.bu, label %.critedge.i, label %Llb_ManCutVolume.exit, !llvm.loop !7

Llb_ManCutVolume.exit:                            ; preds = %.critedge.i, %.critedge.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.critedge.preheader.i ], [ %i.bs, %.critedge.i ]
  %.not = icmp sgt i32 %.0.lcssa.i, %i.d
  br i1 %.not, label %bb.e, label %.critedge67

bb.e:                                             ; preds = %Llb_ManCutVolume.exit
  br i1 %.not63, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bv = call ptr @Llb_ManFlowFindBestCut(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.z, i32 noundef %1) ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.critedge67, label %.critedge

.thread:                                          ; preds = %bb.e
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.z)
  %i.bx = call ptr @Llb_ManFlowFindBestCut(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.z, i32 noundef %1) ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %.critedge69

bb.g:                                             ; preds = %.thread
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %putchar65 = call i32 @putchar(i32 10)          ; 0 uses
  br label %.critedge67

.critedge69:                                      ; preds = %.thread
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.z)
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef nonnull %.059115, ptr noundef nonnull %i.bx)
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.critedge

.critedge67:                                      ; preds = %bb.f, %bb.g, %Llb_ManCutVolume.exit
  %.2 = phi ptr [ %.161114, %Llb_ManCutVolume.exit ], [ null, %bb.g ], [ null, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv137.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !119

.critedge:                                        ; preds = %.critedge67, %bb.f, %.critedge69
  %.058112.in = phi i64 [ %indvars.iv, %.critedge69 ], [ %indvars.iv137.a, %.critedge67 ], [ %indvars.iv, %bb.f ] ; 2 uses
  %.3 = phi ptr [ %i.bx, %.critedge69 ], [ %.2, %.critedge67 ], [ %i.bv, %bb.f ] ; 2 uses
  %i.bz = and i64 %.058112.in, 4294967295         ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %indvars.iv137.a
  br i1 %i.ca, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.cb = zext i32 %i.r to i64
  %i.cc = icmp eq i64 %indvars.iv137.a, %i.cb
  br i1 %i.cc, label %bb.i, label %Vec_PtrPush.exit95

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp samesign ult i64 %indvars.iv137.a, 16
  br i1 %i.cd, label %Vec_PtrGrow.exit12.sink.split.i91, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = icmp samesign ult i64 %indvars.iv137.a, 1073741823
  %indvars.iv137.tr = trunc nuw i64 %indvars.iv137.a to i32
  %i.cf = shl nuw i32 %indvars.iv137.tr, 1
  %spec.select.i88 = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 2 uses
  %6 = zext i32 %spec.select.i88 to i64           ; 2 uses
  %.not.i10.i89 = icmp samesign ult i64 %indvars.iv137.a, %6
  br i1 %.not.i10.i89, label %bb.k, label %Vec_PtrPush.exit95

bb.k:                                             ; preds = %bb.j
  %i.cg = shl nuw nsw i64 %6, 3
  br label %Vec_PtrGrow.exit12.sink.split.i91

Vec_PtrGrow.exit12.sink.split.i91:                ; preds = %bb.i, %bb.k
  %.sink = phi i64 [ %i.cg, %bb.k ], [ 128, %bb.i ]
  %spec.select.sink.i92 = phi i32 [ %spec.select.i88, %bb.k ], [ 16, %bb.i ] ; 2 uses
  %i.ch = call ptr @realloc(ptr noundef nonnull %storemerge126, i64 noundef %.sink) #22
  store i32 %spec.select.sink.i92, ptr %i.j, align 8, !tbaa !24
  br label %Vec_PtrPush.exit95

Vec_PtrPush.exit95:                               ; preds = %bb.h, %bb.j, %Vec_PtrGrow.exit12.sink.split.i91
  %i.ci = phi i32 [ %i.r, %bb.h ], [ %i.r, %bb.j ], [ %spec.select.sink.i92, %Vec_PtrGrow.exit12.sink.split.i91 ]
  %storemerge127 = phi ptr [ %storemerge126, %bb.h ], [ %storemerge126, %bb.j ], [ %i.ch, %Vec_PtrGrow.exit12.sink.split.i91 ] ; 7 uses
  %indvars.iv.next138.a = add nuw i64 %indvars.iv137.a, 1 ; 6 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %storemerge127, i64 %indvars.iv137.a
  store ptr null, ptr %i.cj, align 8, !tbaa !27
  %i.ck = shl i64 %.058112.in, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 4 uses
  %i.cm = icmp sgt i64 %indvars.iv137.a, %i.cl
  br i1 %i.cm, label %.lr.ph125.preheader, label %._crit_edge

.lr.ph125.preheader:                              ; preds = %Vec_PtrPush.exit95
  %i.cn = sub i64 %indvars.iv137.a, %i.cl         ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 26
  br i1 %min.iters.check, label %.lr.ph125.preheader160, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph125.preheader
  %i.co = sub i64 %i.t, %i.cl                     ; 2 uses
  %i.cp = trunc i64 %i.co to i35
  %mul.result = shl i35 %i.cp, 3
  %i.cq = sub i35 %i.w, %mul.result
  %i.cr = icmp sgt i35 %i.cq, %i.w
  %i.cs = icmp ugt i64 %i.co, 4294967295
  %i.ct = or i1 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph125.preheader160, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cu = shl i64 %indvar, 3
  %i.cv = shl i35 %i.s, 3
  %i.cw = add i35 %i.cv, 24
  %i.cx = sext i35 %i.cw to i64
  %reass.sub = sub i64 %i.cx, %i.cu
  %i.cy = add i64 %reass.sub, -33
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %.lr.ph125.preheader160, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, -4                      ; 4 uses
  %i.cz = sub i64 %indvars.iv137.a, %n.vec
  %i.da = sub i64 %indvars.iv.next138.a, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = sub i64 %indvars.iv137.a, %index
  %i.dc = sub i64 %indvars.iv.next138.a, %index
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr i8, ptr %storemerge127, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = getelementptr i8, ptr %i.df, i64 -40
  %wide.load = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !27
  %wide.load158 = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !27
  %i.di = getelementptr inbounds [8 x i8], ptr %storemerge127, i64 %i.db ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -24
  store <2 x ptr> %wide.load, ptr %i.dj, align 8, !tbaa !27
  store <2 x ptr> %wide.load158, ptr %i.dk, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph125.preheader160

.lr.ph125.preheader160:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph125.preheader, %middle.block
  %indvars.iv139.ph = phi i64 [ %indvars.iv137.a, %vector.memcheck ], [ %indvars.iv137.a, %vector.scevcheck ], [ %indvars.iv137.a, %.lr.ph125.preheader ], [ %i.cz, %middle.block ]
  %.0.in123.in.ph = phi i64 [ %indvars.iv.next138.a, %vector.memcheck ], [ %indvars.iv.next138.a, %vector.scevcheck ], [ %indvars.iv.next138.a, %.lr.ph125.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader160, %.lr.ph125
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %.lr.ph125 ], [ %indvars.iv139.ph, %.lr.ph125.preheader160 ] ; 3 uses
  %.0.in123.in = phi i64 [ %indvars.iv139, %.lr.ph125 ], [ %.0.in123.in.ph, %.lr.ph125.preheader160 ]
  %i.dm = shl i64 %.0.in123.in, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr i8, ptr %storemerge127, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27
  %i.dr = getelementptr inbounds [8 x i8], ptr %storemerge127, i64 %indvars.iv139
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !27
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, -1 ; 2 uses
  %i.ds = icmp sgt i64 %indvars.iv.next140, %i.cl
  br i1 %i.ds, label %.lr.ph125, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph125, %middle.block, %Vec_PtrPush.exit95
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %storemerge127, i64 %i.bz
  store ptr %.3, ptr %i.dt, align 8, !tbaa !27
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %.critedge
  %i.du = trunc nuw nsw i64 %indvars.iv137.a to i32 ; 2 uses
  store ptr %storemerge126, ptr %i.m, align 8
  store i32 %i.du, ptr %i.k, align 4
  %.not64 = icmp eq i32 %2, 0
  br i1 %.not64, label %Llb_ManResultPrint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.dv) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.dx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.peel.next, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = load i64, ptr %4, align 8, !tbaa !124
  %i.ea = mul nsw i64 %i.dz, 1000000
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !125
  %i.ed = sdiv i64 %i.ec, 1000
  %i.ee = add nsw i64 %i.ed, %i.ea
  br label %.peel.next

.peel.next:                                       ; preds = %bb.m, %bb.n
  %.0.i96 = phi i64 [ %i.ee, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ef = add i64 %.0.i96, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16)
  %i.eg = sitofp i64 %i.ef to double
  %i.eh = fdiv double %i.eg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.eh)
  %indvars.iv.next.i101.peel = add nsw i64 %indvars.iv137.a, -1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv.next.i101.peel
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.peel.next
  %indvars.iv.i100 = phi i64 [ %indvars.iv.next.i101.peel, %.peel.next ], [ %indvars.iv.next.i101, %bb.q ] ; 3 uses
  %.01014.i = phi ptr [ %i.ej, %.peel.next ], [ %i.el, %bb.q ]
  %indvars.iv.next.i101 = add nsw i64 %indvars.iv.i100, -1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %storemerge126, i64 %indvars.iv.next.i101
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27 ; 2 uses
  %i.em = icmp slt i64 %indvars.iv.i100, %indvars.iv137.a
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @Llb_ManCutPrint(ptr noundef nonnull %0, ptr noundef %i.el, ptr noundef %.01014.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.en = icmp samesign ugt i64 %indvars.iv.i100, 1
  br i1 %i.en, label %bb.o, label %Llb_ManResultPrint.exit, !llvm.loop !122

Llb_ManResultPrint.exit:                          ; preds = %bb.q, %bb.l
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Llb_BddSetDefaultParams(ptr nofree noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store <4 x i32> <i32 1000000, i32 10000000, i32 20, i32 0>, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 0, i32 0, i32 100, i32 30>, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.e, align 4, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.f, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.h, align 8, !tbaa !62
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define void @Llb_ManMinCutTest(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Gia_ParLlb_t_, align 16     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store <4 x i32> <i32 1000000, i32 10000000, i32 20, i32 0>, ptr %2, align 16, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 0, i32 0, i32 100, i32 30>, ptr %i.b, align 16, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 0, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104
end_hunk_0
