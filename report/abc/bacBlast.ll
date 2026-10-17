Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bacBlast?download=true
inline.NumInlined: 467
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Bac_ManExtract:bb.a
  %i.lr = load ptr, ptr %i.li, align 8, !tbaa !24 ; 2 uses
  %.not.i87 = icmp eq ptr %i.lr, null
  br i1 %.not.i87, label %Vec_IntFreeP.exit, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.lr) #21
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %._crit_edge, %.thread.i
  tail call void @free(ptr noundef nonnull %i.lf) #21
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.hi) #21
  %.val60120 = load i32, ptr %i.lj, align 4, !tbaa !23
  %i.ls = icmp sgt i32 %.val60120, 0
  br i1 %i.ls, label %.lr.ph122, label %.critedge6

.lr.ph122:                                        ; preds = %Vec_IntFreeP.exit
  %i.lt = getelementptr i8, ptr %i.hh, i64 56
  %i.lu = getelementptr i8, ptr %i.hh, i64 168
  %i.lv = getelementptr i8, ptr %i.hi, i64 32     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.hi, i64 72 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hi, i64 232
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph122, %Gia_ManAppendCo.exit
  %indvars.iv136 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next137, %Gia_ManAppendCo.exit ] ; 2 uses
  %.val56 = load ptr, ptr %i.lt, align 8, !tbaa !24
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %indvars.iv136
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !25
  %.val = load ptr, ptr %i.lu, align 8, !tbaa !24
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !25 ; 2 uses
  %i.md = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.hi) ; 8 uses
  %i.me = load i64, ptr %i.md, align 4
  %i.mf = or i64 %i.me, 2147483648                ; 2 uses
  store i64 %i.mf, ptr %i.md, align 4
  %.val20.i = load ptr, ptr %i.lv, align 8, !tbaa !44
  %i.mg = ptrtoint ptr %i.md to i64               ; 2 uses
  %i.mh = ptrtoint ptr %.val20.i to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = sdiv exact i64 %i.mi, 12
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = lshr i32 %i.mc, 1
  %i.mm = sub i32 %i.mk, %i.ml
  %i.mn = and i32 %i.mm, 536870911
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = and i64 %i.mf, -1073741824
  %i.mq = shl i32 %i.mc, 29
  %i.mr = and i32 %i.mq, 536870912
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = or disjoint i64 %i.mp, %i.ms
  %i.mu = or disjoint i64 %i.mt, %i.mo            ; 2 uses
  store i64 %i.mu, ptr %i.md, align 4
  %i.mv = load ptr, ptr %i.lw, align 8, !tbaa !63
  %i.mw = getelementptr i8, ptr %i.mv, i64 4
  %.val.i88 = load i32, ptr %i.mw, align 4, !tbaa !23
  %i.mx = and i32 %.val.i88, 536870911
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = shl nuw nsw i64 %i.my, 32
  %i.na = and i64 %i.mu, -2305843004918726657
  %i.nb = or disjoint i64 %i.na, %i.mz
  store i64 %i.nb, ptr %i.md, align 4
  %i.nc = load ptr, ptr %i.lw, align 8, !tbaa !63 ; 6 uses
  %.val19.i = load ptr, ptr %i.lv, align 8, !tbaa !44
  %i.nd = ptrtoint ptr %.val19.i to i64
  %i.ne = sub i64 %i.mg, %i.nd
  %i.nf = sdiv exact i64 %i.ne, 12
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 3 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !23 ; 7 uses
  %i.nj = load i32, ptr %i.nc, align 8, !tbaa !43
  %i.nk = icmp eq i32 %i.ni, %i.nj
  br i1 %i.nk, label %bb.cc, label %Vec_IntPush.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.nl = icmp slt i32 %i.ni, 16
  br i1 %i.nl, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i96 = icmp eq ptr %i.nn, null
  br i1 %.not9.i.i.i96, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.no = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nn, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i97

bb.cf:                                            ; preds = %bb.cd
  %i.np = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i97

Vec_IntGrow.exit.i.i97:                           ; preds = %bb.cf, %bb.ce
  %i.nq = phi ptr [ %i.no, %bb.ce ], [ %i.np, %bb.cf ]
  store ptr %i.nq, ptr %i.nm, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i.i93

bb.cg:                                            ; preds = %bb.cc
  %i.nr = icmp samesign ult i32 %i.ni, 1073741823
  %i.ns = shl nuw nsw i32 %i.ni, 1
  %spec.select.i.i90 = select i1 %i.nr, i32 %i.ns, i32 2147483647 ; 3 uses
  %.not.i9.i.i91 = icmp samesign ult i32 %i.ni, %spec.select.i.i90
  br i1 %.not.i9.i.i91, label %bb.ch, label %Vec_IntPush.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i.i92 = icmp eq ptr %i.nu, null
  %i.nv = zext nneg i32 %spec.select.i.i90 to i64
  %i.nw = shl nuw nsw i64 %i.nv, 2                ; 2 uses
  br i1 %.not9.i10.i.i92, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nx = tail call ptr @realloc(ptr noundef nonnull %i.nu, i64 noundef %i.nw) #23
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.ny = tail call noalias ptr @malloc(i64 noundef %i.nw) #24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.nz = phi ptr [ %i.nx, %bb.ci ], [ %i.ny, %bb.cj ]
  store ptr %i.nz, ptr %i.nt, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i.i93

Vec_IntGrow.exit11.sink.split.i.i93:              ; preds = %bb.ck, %Vec_IntGrow.exit.i.i97
  %spec.select.sink.i.i94 = phi i32 [ %spec.select.i.i90, %bb.ck ], [ 16, %Vec_IntGrow.exit.i.i97 ]
  store i32 %spec.select.sink.i.i94, ptr %i.nc, align 8, !tbaa !43
  %.pre.i95 = load i32, ptr %i.nh, align 4, !tbaa !23
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i93, %bb.cg, %bb.cb
  %i.oa = phi i32 [ %i.ni, %bb.cb ], [ %i.ni, %bb.cg ], [ %.pre.i95, %Vec_IntGrow.exit11.sink.split.i.i93 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !24
  %i.od = add nsw i32 %i.oa, 1
  store i32 %i.od, ptr %i.nh, align 4, !tbaa !23
  %i.oe = sext i32 %i.oa to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oe
  store i32 %i.ng, ptr %i.of, align 4, !tbaa !25
  %i.og = load ptr, ptr %i.lx, align 8, !tbaa !116
  %.not.i89 = icmp eq ptr %i.og, null
  br i1 %.not.i89, label %Gia_ManAppendCo.exit, label %bb.cl

bb.cl:                                            ; preds = %Vec_IntPush.exit.i
  %i.oh = load i64, ptr %i.md, align 4
  %i.oi = and i64 %i.oh, 536870911
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds [12 x i8], ptr %i.md, i64 %i.oj
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.ok, ptr noundef nonnull %i.md) #21
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.cl
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %.val60 = load i32, ptr %i.lj, align 4, !tbaa !23
  %i.ol = sext i32 %.val60 to i64
  %i.om = icmp slt i64 %indvars.iv.next137, %i.ol
  br i1 %i.om, label %bb.cb, label %.critedge6, !llvm.loop !113

.critedge6:                                       ; preds = %Gia_ManAppendCo.exit, %Vec_IntFreeP.exit
  %i.on = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.hi) #21
  tail call void @Gia_ManStop(ptr noundef nonnull %i.hi) #21
  ret ptr %i.on
}

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #3

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Bac_ManMarkNodesGia(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val38 = load ptr, ptr %i.a, align 8, !tbaa !44
  %.val38.fr = freeze ptr %.val38                 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val38.fr, i64 8
  store i32 1, ptr %i.b, align 4, !tbaa !65
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val39 = load i32, ptr %i.c, align 8, !tbaa !66 ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 64
  %.val40 = load ptr, ptr %i.d, align 8, !tbaa !62 ; 2 uses
  %i.e = getelementptr i8, ptr %.val40, i64 4
  %.val40.val = load i32, ptr %i.e, align 4, !tbaa !23
  %i.f = sub nsw i32 %.val40.val, %.val39         ; 3 uses
  %.not = icmp eq ptr %.val38.fr, null            ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  %or.cond52 = or i1 %.not, %i.g
  br i1 %or.cond52, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val40, i64 8
  %.val42.val = load ptr, ptr %i.h, align 8, !tbaa !24 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %2 = add nsw i32 %i.f, -1
  %i.i = icmp ult i32 %2, 3
  br i1 %i.i, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph.split

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv.epil
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.n, align 4, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader, label %.lr.ph.split.epil, !llvm.loop !117

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.epil, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph56.split.preheader, label %.critedge2

.lr.ph56.split.preheader:                         ; preds = %.critedge.preheader
  %i.r = getelementptr i8, ptr %0, i64 104
  %wide.trip.count66 = zext nneg i32 %i.p to i64
  br label %.lr.ph56.split

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.w, align 4, !tbaa !65
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 1, ptr %i.ac, align 4, !tbaa !65
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.ai, align 4, !tbaa !65
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val42.val, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1, ptr %i.ao, align 4, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !118

.lr.ph56.split:                                   ; preds = %.lr.ph56.split.preheader, %.critedge
  %indvars.iv63 = phi i64 [ 0, %.lr.ph56.split.preheader ], [ %indvars.iv.next64, %.critedge ] ; 2 uses
  %.055 = phi i32 [ 0, %.lr.ph56.split.preheader ], [ %.1, %.critedge ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val38.fr, i64 %indvars.iv63 ; 3 uses
  %.val43 = load i64, ptr %i.ap, align 4          ; 4 uses
  %i.aq = and i64 %.val43, 2147483648
  %.not.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %.val43, 536870911              ; 2 uses
  %i.as = icmp ne i64 %i.ar, 536870911
  %narrow.i = and i1 %.not.i, %i.as
  br i1 %narrow.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph56.split
  %i.at = trunc i64 %.val43 to i32
  %i.au = and i32 %i.at, 536870911                ; 2 uses
  %i.av = lshr i64 %.val43, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp eq i32 %i.au, %i.ax
  %.not.i49 = icmp ne i32 %i.au, 536870911
  %or.cond.not.i = and i1 %.not.i49, %i.ay
  br i1 %or.cond.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = add nsw i32 %.055, 1
  %.val = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.ba = sext i32 %.055 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ba
  br label %.critedge.sink.split

bb.d:                                             ; preds = %bb.b
  %i.bc = sub nsw i64 0, %i.ar
  %i.bd = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.c, %bb.d
  %.sink.in = phi ptr [ %i.be, %bb.d ], [ %i.bb, %bb.c ]
  %.1.ph = phi i32 [ %.055, %bb.d ], [ %i.az, %bb.c ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sink, ptr %i.bf, align 4, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.lr.ph56.split
  %.1 = phi i32 [ %.055, %.lr.ph56.split ], [ %.1.ph, %.critedge.sink.split ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %.critedge2, label %.lr.ph56.split, !llvm.loop !119

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %i.bg = getelementptr i8, ptr %1, i64 72
  %.val46 = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val46, i64 4
  %.val46.val = load i32, ptr %i.bh, align 4, !tbaa !23
  %i.bi = sub nsw i32 %.val46.val, %.val39        ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 1
  %or.cond5157 = or i1 %.not, %i.bj
  br i1 %or.cond5157, label %.critedge4, label %.lr.ph59.split.preheader

.lr.ph59.split.preheader:                         ; preds = %.critedge2
  %i.bk = getelementptr i8, ptr %.val46, i64 8
  %.val48.val = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 5 uses
  %wide.trip.count71 = zext nneg i32 %i.bi to i64 ; 2 uses
  %xtraiter78 = and i64 %wide.trip.count71, 3     ; 3 uses
  %3 = add nsw i32 %i.bi, -1
  %i.bl = icmp ult i32 %3, 3
  br i1 %i.bl, label %.lr.ph59.split.epil.preheader, label %.lr.ph59.split.preheader.new

.lr.ph59.split.preheader.new:                     ; preds = %.lr.ph59.split.preheader
  %unroll_iter82 = and i64 %wide.trip.count71, 2147483644
  br label %.lr.ph59.split

.lr.ph59.split:                                   ; preds = %.lr.ph59.split, %.lr.ph59.split.preheader.new
  %indvars.iv68 = phi i64 [ 0, %.lr.ph59.split.preheader.new ], [ %indvars.iv.next69.3, %.lr.ph59.split ] ; 5 uses
  %niter83 = phi i64 [ 0, %.lr.ph59.split.preheader.new ], [ %niter83.next.3, %.lr.ph59.split ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv68
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 1, ptr %i.bq, align 4, !tbaa !65
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 1, ptr %i.bw, align 4, !tbaa !65
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv68
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cc, align 4, !tbaa !65
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 1, ptr %i.ci, align 4, !tbaa !65
  %indvars.iv.next69.3 = add nuw nsw i64 %indvars.iv68, 4 ; 2 uses
  %niter83.next.3 = add i64 %niter83, 4           ; 2 uses
  %niter83.ncmp.3 = icmp eq i64 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %.critedge4.loopexit.unr-lcssa, label %.lr.ph59.split, !llvm.loop !120

.critedge4.loopexit.unr-lcssa:                    ; preds = %.lr.ph59.split
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod80.not, label %.critedge4, label %.lr.ph59.split.epil.preheader

.lr.ph59.split.epil.preheader:                    ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph59.split.preheader
  %indvars.iv68.epil.init = phi i64 [ 0, %.lr.ph59.split.preheader ], [ %indvars.iv.next69.3, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter78, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph59.split.epil

.lr.ph59.split.epil:                              ; preds = %.lr.ph59.split.epil, %.lr.ph59.split.epil.preheader
  %indvars.iv68.epil = phi i64 [ %indvars.iv68.epil.init, %.lr.ph59.split.epil.preheader ], [ %indvars.iv.next69.epil, %.lr.ph59.split.epil ] ; 2 uses
  %epil.iter79 = phi i64 [ 0, %.lr.ph59.split.epil.preheader ], [ %epil.iter79.next, %.lr.ph59.split.epil ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv68.epil
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [12 x i8], ptr %.val38.fr, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 1, ptr %i.cn, align 4, !tbaa !65
  %indvars.iv.next69.epil = add nuw nsw i64 %indvars.iv68.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %.critedge4, label %.lr.ph59.split.epil, !llvm.loop !121

.critedge4:                                       ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph59.split.epil, %.critedge2
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Bac_ManRemapBarbufs(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 68         ; 2 uses
  %.val7.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.c = icmp sgt i32 %.val7.i, 0
  br i1 %i.c, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = load i32, ptr %i.e, align 4, !tbaa !23   ; 7 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !43
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !24
  br label %Vec_IntPush.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.i, 16
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.c
  %i.p = icmp samesign ult i32 %i.i, 1073741823
  %i.q = shl nuw nsw i32 %i.i, 1
  %spec.select.i.i = select i1 %i.p, i32 %i.q, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.i, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.f, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.h, label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.r = zext nneg i32 %spec.select.i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.s) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.v = phi ptr [ %i.o, %bb.f ], [ %i.n, %bb.e ], [ %i.t, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %bb.j ]
  store ptr %i.v, ptr %i.f, align 8, !tbaa !24
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !43
  %.pre11.i = load i32, ptr %i.e, align 4, !tbaa !23
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.g, %.Vec_IntPush.exit_crit_edge.i
  %i.w = phi i32 [ %i.i, %.Vec_IntPush.exit_crit_edge.i ], [ %i.i, %bb.g ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.g ], [ %i.v, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.y = add nsw i32 %i.w, 1
  store i32 %i.y, ptr %i.e, align 4, !tbaa !23
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  store i32 %i.h, ptr %i.aa, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.ab = sext i32 %.val.i to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %bb.b, label %Vec_IntAppend.exit, !llvm.loop !0

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 84        ; 4 uses
  %.val7.i42 = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.af = icmp sgt i32 %.val7.i42, 0
  br i1 %i.af, label %.lr.ph.i43, label %Vec_IntAppend.exit59

.lr.ph.i43:                                       ; preds = %Vec_IntAppend.exit
  %i.ag = getelementptr i8, ptr %1, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit.i48, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i49, %Vec_IntPush.exit.i48 ] ; 2 uses
  %.val6.i45 = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val6.i45, i64 %indvars.iv.i44
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !23 ; 7 uses
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !43
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %.Vec_IntPush.exit_crit_edge.i46

.Vec_IntPush.exit_crit_edge.i46:                  ; preds = %bb.k
  %.pre.i47 = load ptr, ptr %i.ai, align 8, !tbaa !24
  br label %Vec_IntPush.exit.i48

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp slt i32 %i.al, 16
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i58 = icmp eq ptr %i.ap, null
  br i1 %.not9.i.i.i58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ap, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i55

bb.o:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@Bac_ObjAlloc:bb.a
  %.pr = load i32, ptr %i.a, align 4, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.a
  %i.az = phi i32 [ %.pr, %thread-pre-split ], [ %.val, %bb.a ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.tr = trunc i32 %1 to i8
  %i.bb = shl i8 %.tr, 1
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !57
  %i.bd = icmp eq i32 %i.az, %i.bc
  br i1 %i.bd, label %bb.w, label %Vec_StrPush.exit

bb.w:                                             ; preds = %bb.v
  %i.be = icmp slt i32 %i.az, 16
  br i1 %i.be, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i23 = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i23, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 16) #23
  br label %Vec_StrGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.bj = phi ptr [ %i.bh, %bb.y ], [ %i.bi, %bb.z ]
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.bk = icmp samesign ult i32 %i.az, 1073741823
  %i.bl = shl nuw nsw i32 %i.az, 1
  %spec.select.i19 = select i1 %i.bk, i32 %i.bl, i32 2147483647 ; 3 uses
  %.not.i9.i20 = icmp samesign ult i32 %i.az, %spec.select.i19
  br i1 %.not.i9.i20, label %bb.ab, label %Vec_StrPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i21 = icmp eq ptr %i.bn, null
  %i.bo = zext nneg i32 %spec.select.i19 to i64   ; 2 uses
  br i1 %.not9.i10.i21, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bo) #23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.br = phi ptr [ %i.bp, %bb.ac ], [ %i.bq, %bb.ad ]
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_StrGrow.exit.i
  %spec.select.sink.i22 = phi i32 [ %spec.select.i19, %bb.ae ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i22, ptr %i.ba, align 8, !tbaa !57
  %.pre33 = load i32, ptr %i.a, align 4, !tbaa !56
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.v, %bb.aa, %Vec_StrGrow.exit11.sink.split.i
  %i.bs = phi i32 [ %i.az, %bb.v ], [ %i.az, %bb.aa ], [ %.pre33, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  %i.bv = add nsw i32 %i.bs, 1
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !56
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw
  store i8 %i.bb, ptr %i.bx, align 1, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !23 ; 7 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !43
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.af, label %Vec_IntPush.exit31

bb.af:                                            ; preds = %Vec_StrPush.exit
  %i.cd = icmp slt i32 %i.ca, 16
  br i1 %i.cd, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i29 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i30

bb.ai:                                            ; preds = %bb.ag
  %i.ch = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i30

Vec_IntGrow.exit.i30:                             ; preds = %bb.ai, %bb.ah
  %i.ci = phi ptr [ %i.cg, %bb.ah ], [ %i.ch, %bb.ai ]
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.aj:                                            ; preds = %bb.af
  %i.cj = icmp samesign ult i32 %i.ca, 1073741823
  %i.ck = shl nuw nsw i32 %i.ca, 1
  %spec.select.i24 = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 3 uses
  %.not.i9.i25 = icmp samesign ult i32 %i.ca, %spec.select.i24
  br i1 %.not.i9.i25, label %bb.ak, label %Vec_IntPush.exit31

bb.ak:                                            ; preds = %bb.aj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24 ; 2 uses
  %.not9.i10.i26 = icmp eq ptr %i.cm, null
  %i.cn = zext nneg i32 %spec.select.i24 to i64
  %i.co = shl nuw nsw i64 %i.cn, 2                ; 2 uses
  br i1 %.not9.i10.i26, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef %i.co) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.co) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = phi ptr [ %i.cp, %bb.al ], [ %i.cq, %bb.am ]
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i27

Vec_IntGrow.exit11.sink.split.i27:                ; preds = %bb.an, %Vec_IntGrow.exit.i30
  %spec.select.sink.i28 = phi i32 [ %spec.select.i24, %bb.an ], [ 16, %Vec_IntGrow.exit.i30 ]
  store i32 %spec.select.sink.i28, ptr %i.by, align 8, !tbaa !43
  %.pre34 = load i32, ptr %i.bz, align 4, !tbaa !23
  br label %Vec_IntPush.exit31

Vec_IntPush.exit31:                               ; preds = %Vec_StrPush.exit, %bb.aj, %Vec_IntGrow.exit11.sink.split.i27
  %i.cs = phi i32 [ %i.ca, %Vec_StrPush.exit ], [ %i.ca, %bb.aj ], [ %.pre34, %Vec_IntGrow.exit11.sink.split.i27 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.cv = add nsw i32 %i.cs, 1
  store i32 %i.cv, ptr %i.bz, align 4, !tbaa !23
  %i.cw = sext i32 %i.cs to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cw
  store i32 %2, ptr %i.cx, align 4, !tbaa !25
  ret i32 %.val
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Bac_NtkInsertGia(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %Bac_ManNtkIsOk.exit.i.i, label %Bac_ManRoot.exit

Bac_ManNtkIsOk.exit.i.i:                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 36
  %.val.i.i.i = load i32, ptr %i.d, align 4, !tbaa !52
  %.not4.i.i = icmp sgt i32 %i.b, %.val.i.i.i
  br i1 %.not4.i.i, label %Bac_ManRoot.exit, label %bb.b

bb.b:                                             ; preds = %Bac_ManNtkIsOk.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [208 x i8], ptr %i.f, i64 %i.g
  br label %Bac_ManRoot.exit

Bac_ManRoot.exit:                                 ; preds = %bb.a, %Bac_ManNtkIsOk.exit.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %Bac_ManNtkIsOk.exit.i.i ], [ null, %bb.a ] ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.val146 = load ptr, ptr %i.j, align 8, !tbaa !44
  %.val146.fr = freeze ptr %.val146               ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val146.fr, i64 8
  store i32 -1, ptr %i.k, align 4, !tbaa !65
  %i.l = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val147 = load i32, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr i8, ptr %1, i64 64
  %.val148 = load ptr, ptr %i.m, align 8, !tbaa !62 ; 2 uses
  %i.n = getelementptr i8, ptr %.val148, i64 4
  %.val148.val = load i32, ptr %i.n, align 4, !tbaa !23
  %i.o = sub nsw i32 %.val148.val, %.val147       ; 3 uses
  %.not = icmp eq ptr %.val146.fr, null
  %i.p = icmp slt i32 %i.o, 1
  %or.cond260 = or i1 %.not, %i.p
  br i1 %or.cond260, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %Bac_ManRoot.exit
  %i.q = getelementptr i8, ptr %.val148, i64 8
  %.val150.val = load ptr, ptr %i.q, align 8, !tbaa !24 ; 5 uses
  %i.r = getelementptr i8, ptr %i.i, i64 40
  %.val143 = load ptr, ptr %i.r, align 8, !tbaa !24 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %2 = add nsw i32 %i.o, -1
  %i.s = icmp ult i32 %2, 3
  br i1 %i.s, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph.split

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod360 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod360)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val150.val, i64 %indvars.iv.epil
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %.val146.fr, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv.epil
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader, label %.lr.ph.split.epil, !llvm.loop !124

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.epil, %Bac_ManRoot.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph264, label %.critedge2

.lr.ph264:                                        ; preds = %.critedge.preheader
  %i.ad = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 72
  %i.ag = getelementptr i8, ptr %0, i64 88
  %i.ah = getelementptr i8, ptr %0, i64 120
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val150.val, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %.val146.fr, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val150.val, i64 %indvars.iv.next
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [12 x i8], ptr %.val146.fr, i64 %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv.next
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.au, ptr %i.av, align 4, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val150.val, i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [12 x i8], ptr %.val146.fr, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv.next.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val150.val, i64 %indvars.iv.next.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %.val146.fr, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv.next.2
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !125

bb.c:                                             ; preds = %.lr.ph264, %.critedge
  %indvars.iv288 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next289, %.critedge ] ; 2 uses
  %.0105263 = phi i32 [ 0, %.lr.ph264 ], [ %.1, %.critedge ] ; 4 uses
  %.val132 = load ptr, ptr %i.j, align 8, !tbaa !44 ; 2 uses
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.val132, i64 %indvars.iv288 ; 6 uses
  %.not116 = icmp eq ptr %.val132, null
  br i1 %.not116, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val151 = load i64, ptr %i.bk, align 4         ; 6 uses
  %i.bl = and i64 %.val151, 2147483648
  %.not.i = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %.val151, 536870911             ; 2 uses
  %i.bn = icmp ne i64 %i.bm, 536870911
  %narrow.i = and i1 %.not.i, %i.bn
  br i1 %narrow.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bo = trunc i64 %.val151 to i32               ; 2 uses
  %i.bp = and i32 %i.bo, 536870911                ; 2 uses
  %i.bq = lshr i64 %.val151, 32                   ; 2 uses
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 536870911
  %i.bt = icmp eq i32 %i.bp, %i.bs
  %.not.i161 = icmp ne i32 %i.bp, 536870911
  %or.cond.not.i = and i1 %.not.i161, %i.bt
  br i1 %or.cond.not.i, label %Bac_ManNtkIsOk.exit.i, label %bb.h

Bac_ManNtkIsOk.exit.i:                            ; preds = %bb.e
  %.val131 = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.bu = sext i32 %.0105263 to i64               ; 3 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val131, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !25 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  tail call void @llvm.assume(i1 %i.bx)
  %.val.i.i = load i32, ptr %i.ad, align 4, !tbaa !52
  %.not4.i163 = icmp sle i32 %i.bw, %.val.i.i
  tail call void @llvm.assume(i1 %.not4.i163)
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [208 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %.val130 = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val130, i64 %i.bu
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ca, i64 104
  %.val137 = load ptr, ptr %i.cd, align 8, !tbaa !24
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val137, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Bac_ManNtkIsOk.exit.i
  tail call void @Bac_NtkCreateAndConnectBuffer(ptr noundef nonnull %1, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ca, i32 noundef %i.cc)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Bac_ManNtkIsOk.exit.i
  %i.ci = add nsw i32 %.0105263, 1
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bu
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !65
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.cm = sub nsw i64 0, %i.bm
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !65 ; 4 uses
  %i.cq = and i64 %i.bq, 536870911
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !65 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !65 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %Bac_ManNtkIsOk.exit.i164, label %Bac_ManNtk.exit167

Bac_ManNtkIsOk.exit.i164:                         ; preds = %bb.h
  %.val.i.i165 = load i32, ptr %i.ad, align 4, !tbaa !52
  %.not4.i166 = icmp sgt i32 %i.cw, %.val.i.i165
  br i1 %.not4.i166, label %Bac_ManNtk.exit167, label %bb.i

bb.i:                                             ; preds = %Bac_ManNtkIsOk.exit.i164
  %i.cy = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %i.cz
  br label %Bac_ManNtk.exit167

Bac_ManNtk.exit167:                               ; preds = %bb.h, %Bac_ManNtkIsOk.exit.i164, %bb.i
  %i.db = phi ptr [ %i.da, %bb.i ], [ null, %Bac_ManNtkIsOk.exit.i164 ], [ null, %bb.h ] ; 4 uses
  %i.dc = and i32 %i.bo, 536870912
  %.not124 = icmp eq i32 %i.dc, 0                 ; 3 uses
  %i.dd = and i64 %.val151, 2305843009750564864
  %or.cond257.not = icmp eq i64 %i.dd, 2305843009750564864
  br i1 %or.cond257.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %Bac_ManNtk.exit167
  %i.de = and i64 %.val151, 2305843009213693952
  %.not126 = icmp eq i64 %i.de, 0
  br i1 %.not126, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %. = select i1 %.not124, i32 %i.cp, i32 %i.cu
  %.128 = select i1 %.not124, i32 %i.cu, i32 %i.cp
  %.129 = select i1 %.not124, i32 12, i32 18
  br label %bb.l

bb.l:                                             ; preds = %Bac_ManNtk.exit167, %bb.k, %bb.j
end_hunk_1
