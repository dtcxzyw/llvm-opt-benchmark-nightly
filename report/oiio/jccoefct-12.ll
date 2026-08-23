Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jccoefct-12?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@compress_data:bb.a
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.cw, i64 24
  %i.cx = load ptr, ptr %gep.3, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.cx, align 2, !tbaa !75
  %i.cy = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.4 = getelementptr i8, ptr %i.cy, i64 32
  %i.cz = load ptr, ptr %gep.4, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.cz, align 2, !tbaa !75
  %i.da = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.5 = getelementptr i8, ptr %i.da, i64 40
  %i.db = load ptr, ptr %gep.5, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.db, align 2, !tbaa !75
  %i.dc = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.6 = getelementptr i8, ptr %i.dc, i64 48
  %i.dd = load ptr, ptr %gep.6, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.dd, align 2, !tbaa !75
  %i.de = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.7 = getelementptr i8, ptr %i.de, i64 56
  %i.df = load ptr, ptr %gep.7, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.df, align 2, !tbaa !75
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit154.unr-lcssa, label %bb.i, !llvm.loop !79

.loopexit.loopexit154.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit154.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.loopexit.loopexit154.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.dg = load ptr, ptr %gep.epil, align 8, !tbaa !54
  store i16 %.pre128, ptr %i.dg, align 2, !tbaa !75
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !80

.loopexit:                                        ; preds = %.loopexit.loopexit154.unr-lcssa, %bb.j, %.lr.ph99.prol.loopexit, %.lr.ph99, %bb.h, %bb.g, %bb.f
  %i.dh = phi i32 [ %i.bn, %.lr.ph99.prol.loopexit ], [ %i.be, %bb.f ], [ %i.cm, %bb.h ], [ %i.bn, %bb.g ], [ %i.bn, %.lr.ph99 ], [ %i.cm, %bb.j ], [ %i.cm, %.loopexit.loopexit154.unr-lcssa ]
  %i.di = add nsw i32 %i.dh, %.187100             ; 2 uses
  %i.dj = add i32 %.0103, 8
  %i.dk = add nuw nsw i32 %.083102, 1             ; 2 uses
  %i.dl = load i32, ptr %i.aj, align 4, !tbaa !67
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre129 = load i32, ptr %i.o, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.dn = phi i32 [ %i.aa, %bb.c ], [ %.pre129, %._crit_edge.loopexit ] ; 2 uses
  %.187.lcssa = phi i32 [ %.086105, %bb.c ], [ %i.di, %._crit_edge.loopexit ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next126, %i.do
  br i1 %i.dp, label %bb.c, label %._crit_edge108, !llvm.loop !82

._crit_edge108:                                   ; preds = %._crit_edge, %.preheader
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !84
  %i.dt = tail call i32 %i.ds(ptr noundef nonnull %0, ptr noundef nonnull %i.r) #5
  %.not93 = icmp eq i32 %i.dt, 0
  br i1 %.not93, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge108
  store i32 %.082112, ptr %i.i, align 8, !tbaa !63
  store i32 %.088110, ptr %i.n, align 4, !tbaa !62
  br label %bb.q

bb.l:                                             ; preds = %._crit_edge108
  %i.du = add i32 %.088110, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.du, %i.e
  br i1 %.not, label %._crit_edge111.loopexit, label %.preheader, !llvm.loop !86

._crit_edge111.loopexit:                          ; preds = %bb.l
  %.pre130 = load i32, ptr %i.k, align 4, !tbaa !58
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %bb.b
  %i.dv = phi i32 [ %.pre130, %._crit_edge111.loopexit ], [ %i.u, %bb.b ] ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !62
  %i.dw = add nsw i32 %.082112, 1                 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.dv
  br i1 %i.dx, label %bb.b, label %._crit_edge115.loopexit, !llvm.loop !87

._crit_edge115.loopexit:                          ; preds = %._crit_edge111
  %.pre131 = load ptr, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %bb.a
  %i.dy = phi ptr [ %.pre131, %._crit_edge115.loopexit ], [ %i.b, %bb.a ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !56
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !57
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 44
  store i32 1, ptr %i.ef, align 4, !tbaa !58
  br label %start_iMCU_row.exit

bb.n:                                             ; preds = %._crit_edge115
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !56
  %i.ei = load i32, ptr %i.f, align 4, !tbaa !59
  %i.ej = add i32 %i.ei, -1
  %i.ek = icmp ult i32 %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 44 ; 2 uses
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !48
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !58
  br label %start_iMCU_row.exit

bb.p:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 76
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !61
  store i32 %i.er, ptr %i.en, align 4, !tbaa !58
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.m, %bb.o, %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 36
  store i32 0, ptr %i.es, align 4, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store i32 0, ptr %i.et, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %start_iMCU_row.exit, %bb.k
  %.089 = phi i32 [ 0, %bb.k ], [ 1, %start_iMCU_row.exit ]
  ret i32 %.089
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @compress_first_pass(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph121, %.loopexit99
  %indvars.iv153 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next154, %.loopexit99 ] ; 3 uses
  %.086118 = phi ptr [ %i.h, %.lr.ph121 ], [ %i.dl, %.loopexit99 ] ; 7 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv153
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = load i32, ptr %i.m, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %.086118, i64 12 ; 7 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = mul i32 %i.v, %i.t
  %i.x = tail call ptr %i.q(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.w, i32 noundef %i.v, i32 noundef 1) #5 ; 5 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !56
  %i.z = icmp ult i32 %i.y, %i.c
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.086118, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !48  ; 2 uses
  %i.ae = urem i32 %i.ac, %i.ad                   ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %i.af, i32 %i.ad, i32 %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.088 = phi i32 [ %i.aa, %bb.c ], [ %spec.select, %bb.d ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.086118, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !44
  %.fr124 = freeze i32 %i.ah                      ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.086118, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !46
  %.fr = freeze i32 %i.aj                         ; 8 uses
  %i.ak = urem i32 %.fr124, %.fr                  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = sub i32 %.fr, %i.ak
  %spec.select98 = select i1 %i.al, i32 %i.am, i32 %i.ak ; 4 uses
  %i.an = icmp sgt i32 %.088, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv153 ; 2 uses
  %i.ap = icmp sgt i32 %spec.select98, 0
  %i.aq = zext i32 %.fr124 to i64
  %i.ar = zext i32 %spec.select98 to i64          ; 3 uses
  %i.as = shl nuw nsw i64 %i.ar, 7
  %wide.trip.count137 = zext nneg i32 %.088 to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.at = icmp ult i32 %spec.select98, 4
  %unroll_iter = and i64 %i.ar, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.loopexit.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.loopexit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv134
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !72
  %indvars.iv134.tr = trunc i64 %indvars.iv134 to i32
  %i.ba = shl i32 %indvars.iv134.tr, 3
  tail call void %i.ay(ptr noundef nonnull %0, ptr noundef %.086118, ptr noundef %i.az, ptr noundef %i.av, i32 noundef %i.ba, i32 noundef 0, i32 noundef %.fr124) #5
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %i.aq ; 7 uses
  tail call void @jzero_far(ptr noundef %i.bb, i64 noundef %i.as) #5
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -128
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !75 ; 5 uses
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us, %.lr.ph.split.us.new
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.3, %.lr.ph.split.us.new ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split.us.new ], [ 0, %.lr.ph.split.us ]
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv129
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !75
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv129
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  store i16 %i.bd, ptr %i.bg, align 2, !tbaa !75
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv129
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  store i16 %i.bd, ptr %i.bi, align 2, !tbaa !75
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv129
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  store i16 %i.bd, ptr %i.bk, align 2, !tbaa !75
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us.unr-lcssa, label %.lr.ph.split.us.new, !llvm.loop !89

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.split.us.new
  br i1 %lcmp.mod.not, label %.loopexit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us.unr-lcssa, %.lr.ph.split.us
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next130.3, %.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %bb.f ], [ %indvars.iv129.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.f ], [ 0, %.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %indvars.iv129.epil
  store i16 %i.bd, ptr %i.bl, align 2, !tbaa !75
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.us, label %bb.f, !llvm.loop !90

.loopexit.us:                                     ; preds = %bb.f, %.loopexit.us.unr-lcssa
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !72
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bs = shl i32 %indvars.iv.tr, 3
  tail call void %i.bq(ptr noundef nonnull %0, ptr noundef nonnull %.086118, ptr noundef %i.br, ptr noundef %i.bn, i32 noundef %i.bs, i32 noundef 0, i32 noundef %.fr124) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count137
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph.split, %.loopexit.us, %bb.e
  %i.bt = load i32, ptr %i.m, align 8, !tbaa !56
  %i.bu = icmp eq i32 %i.bt, %i.c
  br i1 %i.bu, label %bb.g, label %.loopexit99

bb.g:                                             ; preds = %._crit_edge
  %i.bv = add i32 %spec.select98, %.fr124         ; 3 uses
  %i.bw = udiv i32 %i.bv, %.fr
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !48
  %i.by = icmp slt i32 %.088, %i.bx
  br i1 %i.by, label %.lr.ph114, label %.loopexit99

.lr.ph114:                                        ; preds = %bb.g
  %i.bz = zext i32 %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.bz, 7                ; 3 uses
  %.not = icmp ugt i32 %.fr, %i.bv
  %i.cb = sext i32 %.fr to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph114.split.preheader, label %.lr.ph114.split.us

.lr.ph114.split.preheader:                        ; preds = %.lr.ph114
  %i.cc = sext i32 %.088 to i64
  br label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114
  %i.cd = icmp sgt i32 %.fr, 0
  %i.ce = sext i32 %.088 to i64                   ; 2 uses
  br i1 %i.cd, label %.lr.ph110.us.us.preheader, label %.lr.ph110.us

.lr.ph110.us.us.preheader:                        ; preds = %.lr.ph114.split.us
  %wide.trip.count145 = zext nneg i32 %.fr to i64 ; 2 uses
  %xtraiter168 = and i64 %wide.trip.count145, 3   ; 3 uses
  %i.cf = icmp ult i32 %.fr, 4
  %unroll_iter172 = and i64 %wide.trip.count145, 2147483644
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  br label %.lr.ph110.us.us

.lr.ph110.us.us:                                  ; preds = %.lr.ph110.us.us.preheader, %._crit_edge111.us.us
  %indvars.iv147 = phi i64 [ %i.ce, %.lr.ph110.us.us.preheader ], [ %indvars.iv.next148, %._crit_edge111.us.us ] ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv147 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  tail call void @jzero_far(ptr noundef %i.ch, i64 noundef %i.ca) #5
  br label %.lr.ph104.us.us

.lr.ph104.us.us:                                  ; preds = %.lr.ph110.us.us, %._crit_edge105.us.us
  %.0108.us.us = phi ptr [ %i.cj, %.lr.ph110.us.us ], [ %i.ck, %._crit_edge105.us.us ]
  %.085107.us.us = phi ptr [ %i.ch, %.lr.ph110.us.us ], [ %i.cv, %._crit_edge105.us.us ] ; 6 uses
  %.093106.us.us = phi i32 [ 0, %.lr.ph110.us.us ], [ %i.cw, %._crit_edge105.us.us ]
  %i.ck = getelementptr [128 x i8], ptr %.0108.us.us, i64 %i.cb ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -128
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75 ; 5 uses
  br i1 %i.cf, label %.epil.preheader167, label %.lr.ph104.us.us.new

.lr.ph104.us.us.new:                              ; preds = %.lr.ph104.us.us, %.lr.ph104.us.us.new
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %.lr.ph104.us.us.new ], [ 0, %.lr.ph104.us.us ] ; 5 uses
  %niter173 = phi i64 [ %niter173.next.3, %.lr.ph104.us.us.new ], [ 0, %.lr.ph104.us.us ]
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !75
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  store i16 %i.cm, ptr %i.cp, align 2, !tbaa !75
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  store i16 %i.cm, ptr %i.cr, align 2, !tbaa !75
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  store i16 %i.cm, ptr %i.ct, align 2, !tbaa !75
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %._crit_edge105.us.us.unr-lcssa, label %.lr.ph104.us.us.new, !llvm.loop !92

._crit_edge105.us.us.unr-lcssa:                   ; preds = %.lr.ph104.us.us.new
  br i1 %lcmp.mod170.not, label %._crit_edge105.us.us, label %.epil.preheader167

.epil.preheader167:                               ; preds = %._crit_edge105.us.us.unr-lcssa, %.lr.ph104.us.us
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph104.us.us ], [ %indvars.iv.next143.3, %._crit_edge105.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader167
  %indvars.iv142.epil = phi i64 [ %indvars.iv.next143.epil, %bb.h ], [ %indvars.iv142.epil.init, %.epil.preheader167 ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %bb.h ], [ 0, %.epil.preheader167 ]
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %indvars.iv142.epil
  store i16 %i.cm, ptr %i.cu, align 2, !tbaa !75
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %._crit_edge105.us.us, label %bb.h, !llvm.loop !93

._crit_edge105.us.us:                             ; preds = %bb.h, %._crit_edge105.us.us.unr-lcssa
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %.085107.us.us, i64 %i.cb
  %i.cw = add nuw i32 %.093106.us.us, 1           ; 2 uses
  %i.cx = icmp ult i32 %i.cw, %i.bw
end_hunk_0
