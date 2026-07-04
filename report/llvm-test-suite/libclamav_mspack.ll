inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 47
begin_hunk_0_@lzx_read_lens:bb.a
  %i.ku = load i16, ptr %.13210, align 1
  %i.kv = zext i16 %i.ku to i32
  %i.kw = sub i32 16, %.7225456
  %i.kx = shl nuw i32 %i.kv, %i.kw
  %i.ky = or i32 %i.kx, %.7234455                 ; 2 uses
  %i.kz = add nuw nsw i32 %.7225456, 16           ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.13210, i64 2 ; 2 uses
  %i.lb = icmp slt i32 %.7225456, 0
  br i1 %i.lb, label %.lr.ph460, label %._crit_edge461, !llvm.loop !182

._crit_edge461:                                   ; preds = %bb.bu, %._crit_edge450
  %.7234.lcssa = phi i32 [ %i.jx, %._crit_edge450 ], [ %i.ky, %bb.bu ] ; 4 uses
  %.7225.lcssa = phi i32 [ %i.jy, %._crit_edge450 ], [ %i.kz, %bb.bu ]
  %.12209.lcssa = phi ptr [ %.10207.lcssa, %._crit_edge450 ], [ %i.la, %bb.bu ]
  %.12.lcssa = phi ptr [ %.10.lcssa, %._crit_edge450 ], [ %.13, %bb.bu ]
  %i.lc = lshr i32 %.7234.lcssa, 26
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !51 ; 3 uses
  %i.lg = icmp ugt i16 %i.lf, 19
  br i1 %i.lg, label %.preheader302.preheader, label %.loopexit303

.preheader302:                                    ; preds = %bb.by
  %i.lh = shl i16 %i.md, 1                        ; 2 uses
  %i.li = icmp ugt i16 %i.lh, 103
  br i1 %i.li, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.preheader302
  %i.lj = lshr i32 %i.lu, 1
  %i.lk = and i32 %i.lj, %.7234.lcssa
  %.not245.1 = icmp ne i32 %i.lk, 0
  %i.ll = zext i1 %.not245.1 to i16
  %i.lm = or disjoint i16 %i.lh, %i.ll
  %i.ln = zext nneg i16 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !51 ; 3 uses
  %i.lq = icmp ugt i16 %i.lp, 19
  br i1 %i.lq, label %.preheader302.1, label %.loopexit303, !llvm.loop !183

.preheader302.1:                                  ; preds = %bb.bv
  %i.lr = lshr i32 %i.lu, 2                       ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bw, label %.preheader302.preheader, !llvm.loop !183

bb.bw:                                            ; preds = %.preheader302.1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -124, ptr %i.lt, align 8, !tbaa !99
  br label %bb.cb

.preheader302.preheader:                          ; preds = %._crit_edge461, %.preheader302.1
  %i.lu = phi i32 [ %i.lr, %.preheader302.1 ], [ 33554432, %._crit_edge461 ] ; 3 uses
  %.2214605 = phi i16 [ %i.lp, %.preheader302.1 ], [ %i.lf, %._crit_edge461 ]
  %i.lv = shl i16 %.2214605, 1                    ; 2 uses
  %i.lw = icmp ugt i16 %i.lv, 103
  br i1 %i.lw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader302, %.preheader302.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -124, ptr %i.lx, align 8, !tbaa !99
  br label %bb.cb

bb.by:                                            ; preds = %.preheader302.preheader
  %i.ly = and i32 %i.lu, %.7234.lcssa
  %.not245 = icmp ne i32 %i.ly, 0
  %i.lz = zext i1 %.not245 to i16
  %i.ma = or disjoint i16 %i.lv, %i.lz
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !51 ; 3 uses
  %i.me = icmp ugt i16 %i.md, 19
  br i1 %i.me, label %.preheader302, label %.loopexit303, !llvm.loop !183

.loopexit303:                                     ; preds = %bb.by, %bb.bv, %._crit_edge461
  %.3215 = phi i16 [ %i.lf, %._crit_edge461 ], [ %i.md, %bb.by ], [ %i.lp, %bb.bv ] ; 2 uses
  %i.mf = zext nneg i16 %.3215 to i32
  %i.mg = zext nneg i16 %.3215 to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !31
  %i.mj = zext i32 %.1189496 to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !31
  %i.mm = zext i8 %i.ml to i32
  %i.mn = sub nsw i32 %i.mm, %i.mf                ; 3 uses
  %i.mo = icmp slt i32 %i.mn, 0
  %i.mp = add nsw i32 %i.mn, 17
  %spec.select = select i1 %i.mo, i32 %i.mp, i32 %i.mn
  %i.mq = trunc i32 %spec.select to i8            ; 5 uses
  %i.mr = zext i32 %.1189496 to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 %i.mr
  store i8 %i.mq, ptr %i.ms, align 1, !tbaa !31
  %i.mt = add i32 %.1189496, 1
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu
  store i8 %i.mq, ptr %i.mv, align 1, !tbaa !31
  %i.mw = add i32 %.1189496, 2
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %i.mx
  store i8 %i.mq, ptr %i.my, align 1, !tbaa !31
  %i.mz = add i32 %.1189496, 3
  %i.na = add i32 %.1189496, 4                    ; 2 uses
  %i.nb = zext i32 %i.mz to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %i.nb
  store i8 %i.mq, ptr %i.nc, align 1, !tbaa !31
  %.not246.3 = icmp sgt i32 %.6233.lcssa, -1
  br i1 %.not246.3, label %.loopexit.loopexit503, label %bb.bz

bb.bz:                                            ; preds = %.loopexit303
  %i.nd = add i32 %.1189496, 5
  %i.ne = zext i32 %i.na to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ne
  store i8 %i.mq, ptr %i.nf, align 1, !tbaa !31
  br label %.loopexit.loopexit503

bb.ca:                                            ; preds = %.loopexit306
  %i.ng = zext nneg i16 %.1213 to i32
  %i.nh = zext i32 %.1189496 to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.nh ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !31
  %i.nk = zext i8 %i.nj to i32
  %i.nl = sub nsw i32 %i.nk, %i.ng                ; 3 uses
  %i.nm = icmp slt i32 %i.nl, 0
  %i.nn = add nsw i32 %i.nl, 17
  %spec.select261 = select i1 %i.nm, i32 %i.nn, i32 %i.nl
  %i.no = trunc i32 %spec.select261 to i8
  %i.np = add i32 %.1189496, 1
  store i8 %i.no, ptr %i.ni, align 1, !tbaa !31
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.body
  %.lcssa598 = phi i32 [ %i.fa, %vec.epilog.middle.block ], [ %i.ev, %vector.body ], [ %.lcssa660.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gb, %vec.epilog.scalar.ph ]
  %i.nq = shl i32 %.4231.lcssa, 4
  %i.nr = add nsw i32 %.4222.lcssa, -4
  br label %.loopexit

.loopexit.loopexit502:                            ; preds = %vec.epilog.scalar.ph627.prol.loopexit, %vec.epilog.scalar.ph627, %vec.epilog.middle.block636, %middle.block622
  %.lcssa594 = phi i32 [ %i.hx, %vec.epilog.middle.block636 ], [ %i.hl, %middle.block622 ], [ %.lcssa656.unr, %vec.epilog.scalar.ph627.prol.loopexit ], [ %i.is, %vec.epilog.scalar.ph627 ]
  %i.ns = shl i32 %.5232.lcssa, 5
  %i.nt = add nsw i32 %.5223.lcssa, -5
  br label %.loopexit

.loopexit.loopexit503:                            ; preds = %bb.bz, %.loopexit303
  %.lcssa652 = phi i32 [ %i.nd, %bb.bz ], [ %i.na, %.loopexit303 ]
  %i.nu = zext i8 %i.mi to i32                    ; 2 uses
  %i.nv = shl i32 %.7234.lcssa, %i.nu
  %i.nw = sub nsw i32 %.7225.lcssa, %i.nu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit503, %.loopexit.loopexit502, %.loopexit.loopexit, %bb.ca
  %.8235 = phi i32 [ %i.dk, %bb.ca ], [ %i.nq, %.loopexit.loopexit ], [ %i.ns, %.loopexit.loopexit502 ], [ %i.nv, %.loopexit.loopexit503 ] ; 2 uses
  %.8226 = phi i32 [ %i.dl, %bb.ca ], [ %i.nr, %.loopexit.loopexit ], [ %i.nt, %.loopexit.loopexit502 ], [ %i.nw, %.loopexit.loopexit503 ] ; 2 uses
  %.14211 = phi ptr [ %.4201.lcssa, %bb.ca ], [ %.6203.lcssa, %.loopexit.loopexit ], [ %.8205.lcssa, %.loopexit.loopexit502 ], [ %.12209.lcssa, %.loopexit.loopexit503 ] ; 2 uses
  %.14 = phi ptr [ %.4195.lcssa, %bb.ca ], [ %.6.lcssa, %.loopexit.loopexit ], [ %.8.lcssa, %.loopexit.loopexit502 ], [ %.12.lcssa, %.loopexit.loopexit503 ] ; 2 uses
  %.5 = phi i32 [ %i.np, %bb.ca ], [ %.lcssa598, %.loopexit.loopexit ], [ %.lcssa594, %.loopexit.loopexit502 ], [ %.lcssa652, %.loopexit.loopexit503 ] ; 2 uses
  %i.nx = icmp ult i32 %.5, %3
  br i1 %i.nx, label %.preheader307, label %._crit_edge497, !llvm.loop !184

._crit_edge497:                                   ; preds = %.loopexit, %.preheader308
  %.2229.lcssa = phi i32 [ %i.as, %.preheader308 ], [ %.8235, %.loopexit ]
  %.2220.lcssa = phi i32 [ %i.at, %.preheader308 ], [ %.8226, %.loopexit ]
  %.3200.lcssa = phi ptr [ %.1198.lcssa, %.preheader308 ], [ %.14211, %.loopexit ]
  %.3194.lcssa = phi ptr [ %.1192.lcssa, %.preheader308 ], [ %.14, %.loopexit ]
  store ptr %.3200.lcssa, ptr %i.a, align 8, !tbaa !101
  store ptr %.3194.lcssa, ptr %i.c, align 8, !tbaa !100
  store i32 %.2229.lcssa, ptr %i.e, align 8, !tbaa !105
  store i32 %.2220.lcssa, ptr %i.g, align 4, !tbaa !104
  br label %bb.cb

bb.cb:                                            ; preds = %bb.br, %bb.bo, %bb.bg, %bb.bd, %bb.av, %bb.as, %bb.ak, %bb.ah, %bb.v, %bb.s, %bb.i, %bb.f, %._crit_edge497, %bb.bx, %bb.bw, %bb.ab, %bb.aa, %bb.n
  %.0236 = phi i32 [ 0, %._crit_edge497 ], [ -124, %bb.n ], [ -123, %bb.i ], [ -124, %bb.aa ], [ -124, %bb.ab ], [ -123, %bb.v ], [ -123, %bb.ak ], [ -123, %bb.av ], [ -123, %bb.bg ], [ -124, %bb.bw ], [ -124, %bb.bx ], [ -123, %bb.f ], [ -123, %bb.s ], [ -123, %bb.ah ], [ -123, %bb.as ], [ -123, %bb.bd ], [ -123, %bb.bo ], [ -123, %bb.br ]
  ret i32 %.0236
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @lzx_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  tail call void @free(ptr noundef %i.d) #11
  tail call void @free(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @qtm_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.b = add i32 %2, -22
  %or.cond = icmp ult i32 %i.b, -7
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %3, 1
  %i.d = and i32 %i.c, -2                         ; 2 uses
  %i.e = icmp slt i32 %3, 1
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @cli_malloc(i64 noundef 2136) #11 ; 154 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %.preheader132

.preheader132:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 268 ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 310 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 337 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.preheader132
  %indvars.iv = phi i64 [ 0, %.preheader132 ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %.091133 = phi i32 [ 0, %.preheader132 ], [ %i.z, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.091133, ptr %i.k, align 4, !tbaa !4
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.l, i32 2)
  %i.n = lshr exact i32 %i.m, 1                   ; 2 uses
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  store i8 %i.o, ptr %i.p, align 1, !tbaa !31
  %i.q = shl nuw nsw i32 1, %i.n
  %i.r = add i32 %i.q, %.091133                   ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %i.t = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.u = tail call i32 @llvm.usub.sat.i32(i32 %i.t, i32 2)
  %i.v = lshr i32 %i.u, 1                         ; 2 uses
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next
  store i8 %i.w, ptr %i.x, align 1, !tbaa !31
  %i.y = shl nuw nsw i32 1, %i.v
  %i.z = add i32 %i.y, %i.r
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 42
  br i1 %exitcond.not.1, label %.preheader, label %bb.d, !llvm.loop !185

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv138 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next139.1, %bb.e ] ; 5 uses
  %.192135 = phi i32 [ 0, %.preheader ], [ %i.ar, %bb.e ] ; 2 uses
  %i.aa = trunc i32 %.192135 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv138
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !31
  %i.ac = trunc nuw nsw i64 %indvars.iv138 to i32
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 %i.ac, i32 2)
  %i.ae = lshr i32 %i.ad, 2                       ; 2 uses
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv138
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !31
  %i.ah = shl nuw nsw i32 1, %i.ae
  %i.ai = add i32 %i.ah, %.192135                 ; 2 uses
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 3 uses
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next139
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !31
  %i.al = trunc nuw nsw i64 %indvars.iv.next139 to i32
  %i.am = tail call i32 @llvm.usub.sat.i32(i32 %i.al, i32 2)
  %i.an = lshr i32 %i.am, 2                       ; 2 uses
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next139
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !31
  %i.aq = shl nuw nsw i32 1, %i.an
  %i.ar = add i32 %i.aq, %i.ai
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next139.1, 26
  br i1 %exitcond141.not.1, label %bb.f, label %bb.e, !llvm.loop !186

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  store i8 -2, ptr %i.as, align 2, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 363
  store i8 0, ptr %i.at, align 1, !tbaa !31
  %i.au = zext nneg i32 %i.a to i64
  %i.av = tail call ptr @cli_malloc(i64 noundef %i.au) #11 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !187
  %.not97 = icmp eq ptr %i.av, null
  br i1 %.not97, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ax = zext nneg i32 %i.d to i64
  %i.ay = tail call ptr @cli_malloc(i64 noundef %i.ax) #11 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !191
  %.not98 = icmp eq ptr %i.ay, null
  br i1 %.not98, label %bb.i, label %vector.ph

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !187
  tail call void @free(ptr noundef %i.ba) #11
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.j

vector.ph:                                        ; preds = %bb.h
  store i32 %0, ptr %i.f, align 8, !tbaa !192
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %1, ptr %i.bb, align 4, !tbaa !193
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.bc, align 8, !tbaa !194
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  store i32 %i.d, ptr %i.bd, align 4, !tbaa !195
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.a, ptr %i.be, align 8, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 0, ptr %i.bf, align 4, !tbaa !197
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 0, ptr %i.bg, align 8, !tbaa !198
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i8 0, ptr %i.bh, align 2, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 0, ptr %i.bi, align 4, !tbaa !200
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.ay, ptr %i.bj, align 8, !tbaa !201
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.ay, ptr %i.bk, align 8, !tbaa !202
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !187 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !203
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !204
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 0, ptr %i.bo, align 8, !tbaa !205
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i32 0, ptr %i.bp, align 8, !tbaa !206
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 2 uses
  store i32 4, ptr %i.bq, align 8, !tbaa !207
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 372
  store i32 64, ptr %i.bs, align 4, !tbaa !208
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !209
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  store <8 x i16> <i16 0, i16 64, i16 1, i16 63, i16 2, i16 62, i16 3, i16 61>, ptr %i.br, align 8, !tbaa !51
  store <8 x i16> <i16 4, i16 60, i16 5, i16 59, i16 6, i16 58, i16 7, i16 57>, ptr %i.bu, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 560
  store <8 x i16> <i16 8, i16 56, i16 9, i16 55, i16 10, i16 54, i16 11, i16 53>, ptr %i.bv, align 8, !tbaa !51
  store <8 x i16> <i16 12, i16 52, i16 13, i16 51, i16 14, i16 50, i16 15, i16 49>, ptr %i.bw, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  store <8 x i16> <i16 16, i16 48, i16 17, i16 47, i16 18, i16 46, i16 19, i16 45>, ptr %i.bx, align 8, !tbaa !51
  store <8 x i16> <i16 20, i16 44, i16 21, i16 43, i16 22, i16 42, i16 23, i16 41>, ptr %i.by, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  store <8 x i16> <i16 24, i16 40, i16 25, i16 39, i16 26, i16 38, i16 27, i16 37>, ptr %i.bz, align 8, !tbaa !51
  store <8 x i16> <i16 28, i16 36, i16 29, i16 35, i16 30, i16 34, i16 31, i16 33>, ptr %i.ca, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  store <8 x i16> <i16 32, i16 32, i16 33, i16 31, i16 34, i16 30, i16 35, i16 29>, ptr %i.cb, align 8, !tbaa !51
  store <8 x i16> <i16 36, i16 28, i16 37, i16 27, i16 38, i16 26, i16 39, i16 25>, ptr %i.cc, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 688
  store <8 x i16> <i16 40, i16 24, i16 41, i16 23, i16 42, i16 22, i16 43, i16 21>, ptr %i.cd, align 8, !tbaa !51
  store <8 x i16> <i16 44, i16 20, i16 45, i16 19, i16 46, i16 18, i16 47, i16 17>, ptr %i.ce, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 720
  store <8 x i16> <i16 48, i16 16, i16 49, i16 15, i16 50, i16 14, i16 51, i16 13>, ptr %i.cf, align 8, !tbaa !51
  store <8 x i16> <i16 52, i16 12, i16 53, i16 11, i16 54, i16 10, i16 55, i16 9>, ptr %i.cg, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 752
  store <8 x i16> <i16 56, i16 8, i16 57, i16 7, i16 58, i16 6, i16 59, i16 5>, ptr %i.ch, align 8, !tbaa !51
  store <8 x i16> <i16 60, i16 4, i16 61, i16 3, i16 62, i16 2, i16 63, i16 1>, ptr %i.ci, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  store i16 64, ptr %i.cj, align 8, !tbaa !210
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 770
  store i16 0, ptr %i.ck, align 2, !tbaa !212
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 772 ; 2 uses
  store i32 4, ptr %i.cl, align 8, !tbaa !207
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 388
  store i32 64, ptr %i.cn, align 4, !tbaa !208
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !209
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 788
  store <8 x i16> <i16 64, i16 64, i16 65, i16 63, i16 66, i16 62, i16 67, i16 61>, ptr %i.cm, align 4, !tbaa !51
  store <8 x i16> <i16 68, i16 60, i16 69, i16 59, i16 70, i16 58, i16 71, i16 57>, ptr %i.cp, align 4, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 804
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 820
  store <8 x i16> <i16 72, i16 56, i16 73, i16 55, i16 74, i16 54, i16 75, i16 53>, ptr %i.cq, align 4, !tbaa !51
  store <8 x i16> <i16 76, i16 52, i16 77, i16 51, i16 78, i16 50, i16 79, i16 49>, ptr %i.cr, align 4, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 836
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 852
  store <8 x i16> <i16 80, i16 48, i16 81, i16 47, i16 82, i16 46, i16 83, i16 45>, ptr %i.cs, align 4, !tbaa !51
  store <8 x i16> <i16 84, i16 44, i16 85, i16 43, i16 86, i16 42, i16 87, i16 41>, ptr %i.ct, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 868
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 884
  store <8 x i16> <i16 88, i16 40, i16 89, i16 39, i16 90, i16 38, i16 91, i16 37>, ptr %i.cu, align 4, !tbaa !51
  store <8 x i16> <i16 92, i16 36, i16 93, i16 35, i16 94, i16 34, i16 95, i16 33>, ptr %i.cv, align 4, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 900
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 916
  store <8 x i16> <i16 96, i16 32, i16 97, i16 31, i16 98, i16 30, i16 99, i16 29>, ptr %i.cw, align 4, !tbaa !51
  store <8 x i16> <i16 100, i16 28, i16 101, i16 27, i16 102, i16 26, i16 103, i16 25>, ptr %i.cx, align 4, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 948
  store <8 x i16> <i16 104, i16 24, i16 105, i16 23, i16 106, i16 22, i16 107, i16 21>, ptr %i.cy, align 4, !tbaa !51
  store <8 x i16> <i16 108, i16 20, i16 109, i16 19, i16 110, i16 18, i16 111, i16 17>, ptr %i.cz, align 4, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 964
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 980
  store <8 x i16> <i16 112, i16 16, i16 113, i16 15, i16 114, i16 14, i16 115, i16 13>, ptr %i.da, align 4, !tbaa !51
  store <8 x i16> <i16 116, i16 12, i16 117, i16 11, i16 118, i16 10, i16 119, i16 9>, ptr %i.db, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 996
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 1012
  store <8 x i16> <i16 120, i16 8, i16 121, i16 7, i16 122, i16 6, i16 123, i16 5>, ptr %i.dc, align 4, !tbaa !51
  store <8 x i16> <i16 124, i16 4, i16 125, i16 3, i16 126, i16 2, i16 127, i16 1>, ptr %i.dd, align 4, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 1028
  store i16 128, ptr %i.de, align 4, !tbaa !210
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 1030
  store i16 0, ptr %i.df, align 2, !tbaa !212
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 1032 ; 2 uses
  store i32 4, ptr %i.dg, align 8, !tbaa !207
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 404
  store i32 64, ptr %i.di, align 4, !tbaa !208
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !209
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 1048
  store <8 x i16> <i16 128, i16 64, i16 129, i16 63, i16 130, i16 62, i16 131, i16 61>, ptr %i.dh, align 8, !tbaa !51
  store <8 x i16> <i16 132, i16 60, i16 133, i16 59, i16 134, i16 58, i16 135, i16 57>, ptr %i.dk, align 8, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 1080
  store <8 x i16> <i16 136, i16 56, i16 137, i16 55, i16 138, i16 54, i16 139, i16 53>, ptr %i.dl, align 8, !tbaa !51
  store <8 x i16> <i16 140, i16 52, i16 141, i16 51, i16 142, i16 50, i16 143, i16 49>, ptr %i.dm, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 1096
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 1112
  store <8 x i16> <i16 144, i16 48, i16 145, i16 47, i16 146, i16 46, i16 147, i16 45>, ptr %i.dn, align 8, !tbaa !51
  store <8 x i16> <i16 148, i16 44, i16 149, i16 43, i16 150, i16 42, i16 151, i16 41>, ptr %i.do, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 1128
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 1144
  store <8 x i16> <i16 152, i16 40, i16 153, i16 39, i16 154, i16 38, i16 155, i16 37>, ptr %i.dp, align 8, !tbaa !51
  store <8 x i16> <i16 156, i16 36, i16 157, i16 35, i16 158, i16 34, i16 159, i16 33>, ptr %i.dq, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 1160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 1176
  store <8 x i16> <i16 160, i16 32, i16 161, i16 31, i16 162, i16 30, i16 163, i16 29>, ptr %i.dr, align 8, !tbaa !51
  store <8 x i16> <i16 164, i16 28, i16 165, i16 27, i16 166, i16 26, i16 167, i16 25>, ptr %i.ds, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 1192
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 1208
  store <8 x i16> <i16 168, i16 24, i16 169, i16 23, i16 170, i16 22, i16 171, i16 21>, ptr %i.dt, align 8, !tbaa !51
  store <8 x i16> <i16 172, i16 20, i16 173, i16 19, i16 174, i16 18, i16 175, i16 17>, ptr %i.du, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 1224
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 1240
  store <8 x i16> <i16 176, i16 16, i16 177, i16 15, i16 178, i16 14, i16 179, i16 13>, ptr %i.dv, align 8, !tbaa !51
  store <8 x i16> <i16 180, i16 12, i16 181, i16 11, i16 182, i16 10, i16 183, i16 9>, ptr %i.dw, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 1256
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 1272
  store <8 x i16> <i16 184, i16 8, i16 185, i16 7, i16 186, i16 6, i16 187, i16 5>, ptr %i.dx, align 8, !tbaa !51
  store <8 x i16> <i16 188, i16 4, i16 189, i16 3, i16 190, i16 2, i16 191, i16 1>, ptr %i.dy, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 1288
  store i16 192, ptr %i.dz, align 8, !tbaa !210
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 1290
  store i16 0, ptr %i.ea, align 2, !tbaa !212
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 1292 ; 2 uses
  store i32 4, ptr %i.eb, align 8, !tbaa !207
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  store i32 64, ptr %i.ed, align 4, !tbaa !208
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !209
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 1308
  store <8 x i16> <i16 192, i16 64, i16 193, i16 63, i16 194, i16 62, i16 195, i16 61>, ptr %i.ec, align 4, !tbaa !51
  store <8 x i16> <i16 196, i16 60, i16 197, i16 59, i16 198, i16 58, i16 199, i16 57>, ptr %i.ef, align 4, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 1324
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 1340
  store <8 x i16> <i16 200, i16 56, i16 201, i16 55, i16 202, i16 54, i16 203, i16 53>, ptr %i.eg, align 4, !tbaa !51
  store <8 x i16> <i16 204, i16 52, i16 205, i16 51, i16 206, i16 50, i16 207, i16 49>, ptr %i.eh, align 4, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 1356
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 1372
  store <8 x i16> <i16 208, i16 48, i16 209, i16 47, i16 210, i16 46, i16 211, i16 45>, ptr %i.ei, align 4, !tbaa !51
  store <8 x i16> <i16 212, i16 44, i16 213, i16 43, i16 214, i16 42, i16 215, i16 41>, ptr %i.ej, align 4, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 1388
end_hunk_0
