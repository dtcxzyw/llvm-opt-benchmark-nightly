Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@T1_Get_MM_Var:bb.a
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv.i ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  store ptr %i.q, ptr %i.n, align 8, !tbaa !394
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !396  ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !397
  %i.v = load i8, ptr %i.o, align 8, !tbaa !120
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !398
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv.next.i ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !394
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !396 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !397
  %i.aj = load i8, ptr %i.ac, align 8, !tbaa !120
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !398
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !399

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod109 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !394
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !396 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !397
  %i.ax = load i8, ptr %i.aq, align 8, !tbaa !120
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !398
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count.i, %.loopexit.loopexit.unr-lcssa ], [ %wide.trip.count.i, %.epil.preheader ] ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.bd = shl nuw nsw i64 %.pre-phi, 1            ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 6
  %i.bf = and i64 %i.be, 17179869176              ; 2 uses
  %i.bg = mul nuw nsw i64 %.pre-phi, 48
  %i.bh = add nuw nsw i64 %i.bg, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bf
  %i.bj = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef %i.bi, ptr noundef nonnull %i.a) #17 ; 7 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %.not66 = icmp eq i32 %i.bk, 0
  br i1 %.not66, label %bb.d, label %T1_Get_Multi_Master.exit

bb.d:                                             ; preds = %.loopexit
  store i32 %i.h, ptr %i.bj, align 8, !tbaa !407
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.i, ptr %i.bl, align 4, !tbaa !411
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !412
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bn, i8 0, i64 %i.bd, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !413
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr null, ptr %i.bq, align 8, !tbaa !414
  br i1 %.not25.i, label %._crit_edge82, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !394 ; 7 uses
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.bo, i64 %indvars.iv ; 5 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !415
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !397
  %i.bx = shl nsw i64 %i.bw, 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !417
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !398
  %i.cb = shl nsw i64 %i.ca, 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !418
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 -1, ptr %i.cd, align 8, !tbaa !419
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  store i64 4294967295, ptr %i.ce, align 8, !tbaa !420
  %.not67 = icmp eq ptr %i.bt, null
  br i1 %.not67, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(7) @.str.9) #18
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(6) @.str.10) #18
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(12) @.str.11) #18
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(6) @.str.12) #18
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(7) @.str.13) #18
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i64 [ 2003265652, %bb.f ], [ 2003072104, %bb.g ], [ 1936486004, %bb.i ], [ 1869640570, %bb.h ], [ 1769234796, %bb.j ]
  store i64 %.sink, ptr %i.ce, align 8, !tbaa !420
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.pre-phi
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !421

._crit_edge:                                      ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !422
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !115
  call fastcc void @mm_weights_unmap(ptr noundef %i.cq, ptr noundef %i.b, i32 noundef %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %mm_axis_unmap.exit
  %i.ct = phi ptr [ %i.bo, %._crit_edge ], [ %i.dz, %mm_axis_unmap.exit ] ; 2 uses
  %indvars.iv87 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next88, %mm_axis_unmap.exit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %indvars.iv87 ; 5 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv87
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !109 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !400 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !109
  %.not.i68 = icmp sgt i64 %i.cw, %i.cz
  br i1 %.not.i68, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.l
  %i.da = load i8, ptr %i.cu, align 8, !tbaa !120 ; 2 uses
  %i.db = icmp ugt i8 %i.da, 1
  %wide.trip.count.i69 = zext i8 %i.da to i64     ; 2 uses
  br i1 %i.db, label %.lr.ph.i70, label %._crit_edge.i

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !396
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !109
  br label %mm_axis_unmap.exit

.lr.ph.i70:                                       ; preds = %.preheader.i, %bb.o
  %indvars.iv.i71 = phi i64 [ %indvars.iv.next.i72, %bb.o ], [ 1, %.preheader.i ] ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.i71
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !109 ; 2 uses
  %.not28.i = icmp sgt i64 %i.cw, %i.dg
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i70
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !396 ; 2 uses
  %sext.i = add nuw i64 %indvars.iv.i71, 4294967295
  %3 = and i64 %sext.i, 4294967295                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %3
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !109 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %3
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !109 ; 2 uses
  %i.dn = sub nsw i64 %i.cw, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i71
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !109
  %i.dq = sub nsw i64 %i.dp, %i.dk
  %i.dr = sub nsw i64 %i.dg, %i.dm
  %i.ds = call i64 @FT_MulDiv(i64 noundef %i.dn, i64 noundef %i.dq, i64 noundef %i.dr) #17
  %i.dt = add nsw i64 %i.ds, %i.dk
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !413
  br label %mm_axis_unmap.exit

bb.o:                                             ; preds = %.lr.ph.i70
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i69
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i70, !llvm.loop !423

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !396
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %wide.trip.count.i69
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !109
  br label %mm_axis_unmap.exit

mm_axis_unmap.exit:                               ; preds = %bb.m, %bb.n, %._crit_edge.i
  %i.dz = phi ptr [ %i.ct, %bb.m ], [ %.pre, %bb.n ], [ %i.ct, %._crit_edge.i ] ; 2 uses
  %.024.in.i = phi i64 [ %i.de, %bb.m ], [ %i.dt, %bb.n ], [ %i.dy, %._crit_edge.i ]
  %.024.i = shl nsw i64 %.024.in.i, 16
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 %.024.i, ptr %i.eb, align 8, !tbaa !424
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %.pre-phi
  br i1 %exitcond91.not, label %._crit_edge82, label %bb.l, !llvm.loop !425

._crit_edge82:                                    ; preds = %mm_axis_unmap.exit, %bb.d
  store ptr %i.bj, ptr %1, align 8, !tbaa !426
  %.pre92 = load i32, ptr %i.a, align 4, !tbaa !21
  br label %T1_Get_Multi_Master.exit

T1_Get_Multi_Master.exit:                         ; preds = %bb.a, %.loopexit, %._crit_edge82
  %i.ec = phi i32 [ %.pre92, %._crit_edge82 ], [ %i.bk, %.loopexit ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %i.ec
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 7) i32 @T1_Set_Var_Design(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 4) ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = tail call i64 @FT_RoundFix(i64 noundef %i.c) #17
  %i.e = ashr i64 %i.d, 16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.e, ptr %i.f, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !428

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = call i32 @T1_Set_MM_Design(ptr noundef %0, i32 noundef %spec.store.select, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @T1_Get_Var_Design(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !115  ; 3 uses
  call fastcc void @mm_weights_unmap(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %i.g)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.g) ; 4 uses
  %.not32 = icmp eq i32 %spec.select, 0
  br i1 %.not32, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %wide.trip.count = zext i32 %spec.select to i64
  br label %bb.c

.preheader:                                       ; preds = %mm_axis_unmap.exit, %bb.b
  %i.i = icmp ult i32 %i.g, %1
  br i1 %i.i, label %.lr.ph31.preheader, label %.loopexit

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.j = zext i32 %spec.select to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = xor i32 %spec.select, -1
  %i.m = add i32 %1, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !109
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %mm_axis_unmap.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %mm_axis_unmap.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !400  ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %.not.i = icmp sgt i64 %i.s, %i.v
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.w = load i8, ptr %i.q, align 8, !tbaa !120   ; 2 uses
  %i.x = icmp ugt i8 %i.w, 1
  %wide.trip.count.i = zext i8 %i.w to i64        ; 2 uses
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !396
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !109
  br label %mm_axis_unmap.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 1, %.preheader.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109 ; 2 uses
  %.not28.i = icmp sgt i64 %i.s, %i.ac
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !396 ; 2 uses
  %sext.i = add nuw i64 %indvars.iv.i, 4294967295
  %3 = and i64 %sext.i, 4294967295                ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %3
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !109 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %3
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !109 ; 2 uses
  %i.aj = sub nsw i64 %i.s, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.am = sub nsw i64 %i.al, %i.ag
  %i.an = sub nsw i64 %i.ac, %i.ai
  %i.ao = tail call i64 @FT_MulDiv(i64 noundef %i.aj, i64 noundef %i.am, i64 noundef %i.an) #17
  %i.ap = add nsw i64 %i.ao, %i.ag
  br label %mm_axis_unmap.exit

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !423

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !396
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %wide.trip.count.i
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !109
  br label %mm_axis_unmap.exit

mm_axis_unmap.exit:                               ; preds = %bb.d, %bb.e, %._crit_edge.i
  %.024.in.i = phi i64 [ %i.aa, %bb.d ], [ %i.ap, %bb.e ], [ %i.au, %._crit_edge.i ]
  %.024.i = shl nsw i64 %.024.in.i, 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %.024.i, ptr %i.av, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !429

.loopexit:                                        ; preds = %.lr.ph31.preheader, %.preheader, %bb.a
  %.023 = phi i32 [ 6, %bb.a ], [ 0, %.preheader ], [ 0, %.lr.ph31.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.023
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @T1_Reset_MM_Blend(ptr nofree noundef readonly captures(none) %0, i32 %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %T1_Set_MM_WeightVector.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 3 uses
  %.not42.i = icmp eq i32 %i.c, 0
  br i1 %.not42.i, label %T1_Set_MM_WeightVector.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !422  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 7 uses
  %wide.trip.count.i = zext i32 %i.c to i64       ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = ptrtoaddr ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !tbaa !109
  %wide.load2 = load <2 x i64>, ptr %i.l, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8, !tbaa !109
  store <2 x i64> %wide.load2, ptr %i.n, align 8, !tbaa !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %T1_Set_MM_WeightVector.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.prol
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.prol
  store i64 %i.q, ptr %i.r, align 8, !tbaa !109
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !431

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %T1_Set_MM_WeightVector.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  store i64 %i.v, ptr %i.w, align 8, !tbaa !109
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i64 %i.y, ptr %i.z, align 8, !tbaa !109
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.1
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.1
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !109
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.2
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.2
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !109
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %T1_Set_MM_WeightVector.exit, label %scalar.ph, !llvm.loop !433

T1_Set_MM_WeightVector.exit:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a, %bb.b
  %.030.i = phi i32 [ 0, %bb.b ], [ 6, %bb.a ], [ 0, %middle.block ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  ret i32 %.030.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @T1_Set_MM_WeightVector(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #10 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %1, 0
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %.preheader35

.preheader35:                                     ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !tbaa !113  ; 3 uses
  %.not42 = icmp eq i32 %i.f, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader35
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !422  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117  ; 7 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = ptrtoaddr ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond74 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond74, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !tbaa !109
  %wide.load57 = load <2 x i64>, ptr %i.o, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %wide.load, ptr %i.p, align 8, !tbaa !109
  store <2 x i64> %wide.load57, ptr %i.q, align 8, !tbaa !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
end_hunk_0
