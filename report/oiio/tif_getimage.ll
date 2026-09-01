Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_getimage?download=true
inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 32
begin_hunk_0_@buildMap:bb.a
.split.us.us.i.i:                                 ; preds = %.split138.us.i.i, %.split.us.us.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.split.us.us.i.i ], [ 0, %.split138.us.i.i ] ; 10 uses
  %.0137.us.us.i.i = phi ptr [ %i.ji, %.split.us.us.i.i ], [ %i.bw, %.split138.us.i.i ] ; 10 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv172.i.i
  store ptr %.0137.us.us.i.i, ptr %i.gx, align 8, !tbaa !77
  %i.gy = lshr i64 %indvars.iv172.i.i, 7
  %i.gz = and i64 %i.gy, 33554431
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !57
  %i.hc = zext i8 %i.hb to i32
  %i.hd = mul nuw nsw i32 %i.hc, 65793
  %i.he = or disjoint i32 %i.hd, -16777216
  %i.hf = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 4
  store i32 %i.he, ptr %.0137.us.us.i.i, align 4, !tbaa !3
  %i.hg = lshr i64 %indvars.iv172.i.i, 6
  %i.hh = and i64 %i.hg, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !57
  %i.hk = zext i8 %i.hj to i32
  %i.hl = mul nuw nsw i32 %i.hk, 65793
  %i.hm = or disjoint i32 %i.hl, -16777216
  %i.hn = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 8
  store i32 %i.hm, ptr %i.hf, align 4, !tbaa !3
  %i.ho = lshr i64 %indvars.iv172.i.i, 5
  %i.hp = and i64 %i.ho, 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !57
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nuw nsw i32 %i.hs, 65793
  %i.hu = or disjoint i32 %i.ht, -16777216
  %i.hv = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 12
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !3
  %i.hw = lshr i64 %indvars.iv172.i.i, 4
  %i.hx = and i64 %i.hw, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !57
  %i.ia = zext i8 %i.hz to i32
  %i.ib = mul nuw nsw i32 %i.ia, 65793
  %i.ic = or disjoint i32 %i.ib, -16777216
  %i.id = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 16
  store i32 %i.ic, ptr %i.hv, align 4, !tbaa !3
  %i.ie = lshr i64 %indvars.iv172.i.i, 3
  %i.if = and i64 %i.ie, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !57
  %i.ii = zext i8 %i.ih to i32
  %i.ij = mul nuw nsw i32 %i.ii, 65793
  %i.ik = or disjoint i32 %i.ij, -16777216
  %i.il = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 20
  store i32 %i.ik, ptr %i.id, align 4, !tbaa !3
  %i.im = lshr i64 %indvars.iv172.i.i, 2
  %i.in = and i64 %i.im, 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !57
  %i.iq = zext i8 %i.ip to i32
  %i.ir = mul nuw nsw i32 %i.iq, 65793
  %i.is = or disjoint i32 %i.ir, -16777216
  %i.it = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 24
  store i32 %i.is, ptr %i.il, align 4, !tbaa !3
  %i.iu = lshr i64 %indvars.iv172.i.i, 1
  %i.iv = and i64 %i.iu, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !57
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.iy, 65793
  %i.ja = or disjoint i32 %i.iz, -16777216
  %i.jb = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 28
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !3
  %i.jc = and i64 %indvars.iv172.i.i, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !57
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jf, 65793
  %i.jh = or disjoint i32 %i.jg, -16777216
  %i.ji = getelementptr inbounds nuw i8, ptr %.0137.us.us.i.i, i64 32
  store i32 %i.jh, ptr %i.jb, align 4, !tbaa !3
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond175.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, 256
  br i1 %exitcond175.not.i.i, label %.loopexit.i, label %.split.us.us.i.i

.split.us.us140.i.i:                              ; preds = %.split138.us.i.i, %.split.us.us140.i.i
  %indvars.iv168.i.i = phi i64 [ %indvars.iv.next169.i.i, %.split.us.us140.i.i ], [ 0, %.split138.us.i.i ] ; 6 uses
  %.0137.us.us141.i.i = phi ptr [ %i.ko, %.split.us.us140.i.i ], [ %i.bw, %.split138.us.i.i ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv168.i.i
  store ptr %.0137.us.us141.i.i, ptr %i.jj, align 8, !tbaa !77
  %i.jk = lshr i64 %indvars.iv168.i.i, 6
  %i.jl = and i64 %i.jk, 67108863
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !57
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.jo, 65793
  %i.jq = or disjoint i32 %i.jp, -16777216
  %i.jr = getelementptr inbounds nuw i8, ptr %.0137.us.us141.i.i, i64 4
  store i32 %i.jq, ptr %.0137.us.us141.i.i, align 4, !tbaa !3
  %i.js = lshr i64 %indvars.iv168.i.i, 4
  %i.jt = and i64 %i.js, 3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !57
  %i.jw = zext i8 %i.jv to i32
  %i.jx = mul nuw nsw i32 %i.jw, 65793
  %i.jy = or disjoint i32 %i.jx, -16777216
  %i.jz = getelementptr inbounds nuw i8, ptr %.0137.us.us141.i.i, i64 8
  store i32 %i.jy, ptr %i.jr, align 4, !tbaa !3
  %i.ka = lshr i64 %indvars.iv168.i.i, 2
  %i.kb = and i64 %i.ka, 3
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !57
  %i.ke = zext i8 %i.kd to i32
  %i.kf = mul nuw nsw i32 %i.ke, 65793
  %i.kg = or disjoint i32 %i.kf, -16777216
  %i.kh = getelementptr inbounds nuw i8, ptr %.0137.us.us141.i.i, i64 12
  store i32 %i.kg, ptr %i.jz, align 4, !tbaa !3
  %i.ki = and i64 %indvars.iv168.i.i, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !57
  %i.kl = zext i8 %i.kk to i32
  %i.km = mul nuw nsw i32 %i.kl, 65793
  %i.kn = or disjoint i32 %i.km, -16777216
  %i.ko = getelementptr inbounds nuw i8, ptr %.0137.us.us141.i.i, i64 16
  store i32 %i.kn, ptr %i.kh, align 4, !tbaa !3
  %indvars.iv.next169.i.i = add nuw nsw i64 %indvars.iv168.i.i, 1 ; 2 uses
  %exitcond171.not.i.i = icmp eq i64 %indvars.iv.next169.i.i, 256
  br i1 %exitcond171.not.i.i, label %.loopexit.i, label %.split.us.us140.i.i

.split.us.us145.i.i:                              ; preds = %.split138.us.i.i, %.split.us.us145.i.i
  %indvars.iv164.i.i = phi i64 [ %indvars.iv.next165.i.i, %.split.us.us145.i.i ], [ 0, %.split138.us.i.i ] ; 4 uses
  %.0137.us.us146.i.i = phi ptr [ %i.le, %.split.us.us145.i.i ], [ %i.bw, %.split138.us.i.i ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv164.i.i
  store ptr %.0137.us.us146.i.i, ptr %i.kp, align 8, !tbaa !77
  %i.kq = lshr i64 %indvars.iv164.i.i, 4
  %i.kr = and i64 %i.kq, 268435455
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !57
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nuw nsw i32 %i.ku, 65793
  %i.kw = or disjoint i32 %i.kv, -16777216
  %i.kx = getelementptr inbounds nuw i8, ptr %.0137.us.us146.i.i, i64 4
  store i32 %i.kw, ptr %.0137.us.us146.i.i, align 4, !tbaa !3
  %i.ky = and i64 %indvars.iv164.i.i, 15
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !57
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.lb, 65793
  %i.ld = or disjoint i32 %i.lc, -16777216
  %i.le = getelementptr inbounds nuw i8, ptr %.0137.us.us146.i.i, i64 8
  store i32 %i.ld, ptr %i.kx, align 4, !tbaa !3
  %indvars.iv.next165.i.i = add nuw nsw i64 %indvars.iv164.i.i, 1 ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %indvars.iv.next165.i.i, 256
  br i1 %exitcond167.not.i.i, label %.loopexit.i, label %.split.us.us145.i.i

.split.us.us150.i.i:                              ; preds = %.split.us.us150.i.i, %.split.us.us150.i.i.preheader
  %indvars.iv160.i.i = phi i64 [ 0, %.split.us.us150.i.i.preheader ], [ %indvars.iv.next161.i.i.1, %.split.us.us150.i.i ] ; 4 uses
  %.0137.us.us151.i.i = phi ptr [ %i.bw, %.split.us.us150.i.i.preheader ], [ %i.ls, %.split.us.us150.i.i ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv160.i.i
  store ptr %.0137.us.us151.i.i, ptr %i.lf, align 8, !tbaa !77
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv160.i.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !57
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul nuw nsw i32 %i.li, 65793
  %i.lk = or disjoint i32 %i.lj, -16777216
  %i.ll = getelementptr inbounds nuw i8, ptr %.0137.us.us151.i.i, i64 4 ; 2 uses
  store i32 %i.lk, ptr %.0137.us.us151.i.i, align 4, !tbaa !3
  %indvars.iv.next161.i.i = or disjoint i64 %indvars.iv160.i.i, 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next161.i.i
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !77
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next161.i.i
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !57
  %i.lp = zext i8 %i.lo to i32
  %i.lq = mul nuw nsw i32 %i.lp, 65793
  %i.lr = or disjoint i32 %i.lq, -16777216
  %i.ls = getelementptr inbounds nuw i8, ptr %.0137.us.us151.i.i, i64 8
  store i32 %i.lr, ptr %i.ll, align 4, !tbaa !3
  %indvars.iv.next161.i.i.1 = add nuw nsw i64 %indvars.iv160.i.i, 2 ; 2 uses
  %exitcond163.not.i.i.1 = icmp eq i64 %indvars.iv.next161.i.i.1, 256
  br i1 %exitcond163.not.i.i.1, label %.loopexit.i, label %.split.us.us150.i.i

default.unreachable42:                            ; preds = %.split144.us.i, %.split138.us.i.i
  unreachable

makebwmap.exit.i:                                 ; preds = %bb.g
  %i.lt = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.lu = tail call ptr @TIFFFileName(ptr noundef %i.lt) #11
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.lt, ptr noundef %i.lu, ptr noundef nonnull @.str.49) #11
  br label %setupMap.exit

.loopexit.i:                                      ; preds = %.split.us.us150.i.i, %.split.us.us145.i.i, %.split.us.us140.i.i, %.split.us.us.i.i, %vector.ph91
  %i.lv = load ptr, ptr %0, align 8, !tbaa !38
  %i.lw = load ptr, ptr %i.p, align 8, !tbaa !34
  tail call void @_TIFFfreeExt(ptr noundef %i.lv, ptr noundef %i.lw) #11
  store ptr null, ptr %i.p, align 8, !tbaa !34
  br label %setupMap.exit

bb.i:                                             ; preds = %bb.a
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !45 ; 8 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !46 ; 8 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !47 ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.me = load i16, ptr %i.md, align 4, !tbaa !50 ; 5 uses
  %i.mf = zext i16 %i.me to i64                   ; 3 uses
  %1 = shl nuw i64 1, %i.mf                       ; 2 uses
  %.not = icmp eq i16 %i.me, 63
  br i1 %.not, label %checkcmap.exit, label %bb.k

bb.j:                                             ; preds = %bb.m
  %i.mg = getelementptr inbounds nuw i8, ptr %.08.i63, i64 2
  %i.mh = getelementptr inbounds nuw i8, ptr %.09.i62, i64 2
  %i.mi = icmp sgt i64 %i.mj, 1
  br i1 %i.mi, label %bb.k, label %checkcmap.exit

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.mj = phi i64 [ %2, %bb.j ], [ %1, %bb.i ]    ; 2 uses
  %.08.i63 = phi ptr [ %i.mg, %bb.j ], [ %i.mc, %bb.i ] ; 2 uses
  %.09.i62 = phi ptr [ %i.mh, %bb.j ], [ %i.ma, %bb.i ] ; 2 uses
  %.010.i61 = phi ptr [ %i.mk, %bb.j ], [ %i.ly, %bb.i ] ; 2 uses
  %2 = add nsw i64 %i.mj, -1
  %i.mk = getelementptr inbounds nuw i8, ptr %.010.i61, i64 2
  %i.ml = load i16, ptr %.010.i61, align 2, !tbaa !31
  %i.mm = icmp ugt i16 %i.ml, 255
  br i1 %i.mm, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mn = load i16, ptr %.09.i62, align 2, !tbaa !31
  %i.mo = icmp ugt i16 %i.mn, 255
  br i1 %i.mo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.mp = load i16, ptr %.08.i63, align 2, !tbaa !31
  %i.mq = icmp ugt i16 %i.mp, 255
  br i1 %i.mq, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %notmask.i10 = shl nsw i64 -1, %i.mf            ; 2 uses
  %i.mr = xor i64 %notmask.i10, -1                ; 5 uses
  %min.iters.check = icmp ult i16 %i.me, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.n
  %lcmp.mod.not.not = icmp eq i16 %i.me, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %i.mr ; 2 uses
  %4 = load i16, ptr %3, align 2, !tbaa !31
  %5 = lshr i16 %4, 8
  store i16 %5, ptr %3, align 2, !tbaa !31
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.mr ; 2 uses
  %7 = load i16, ptr %6, align 2, !tbaa !31
  %8 = lshr i16 %7, 8
  store i16 %8, ptr %6, align 2, !tbaa !31
  %9 = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %i.mr ; 2 uses
  %10 = load i16, ptr %9, align 2, !tbaa !31
  %11 = lshr i16 %10, 8
  store i16 %11, ptr %9, align 2, !tbaa !31
  %12 = sub nsw i64 -2, %notmask.i10
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %i.mr, %scalar.ph.preheader ], [ %12, %scalar.ph.prol ]
  %13 = icmp eq i16 %i.me, 0
  br i1 %13, label %cvtcmap.exit, label %scalar.ph

vector.memcheck:                                  ; preds = %bb.n
  %14 = shl i64 2, %i.mf                          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ly, i64 %14 ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ma, i64 %14 ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.mc, i64 %14 ; 2 uses
  %bound0 = icmp ult ptr %i.ly, %scevgep64
  %bound1 = icmp ult ptr %i.ma, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound066 = icmp ult ptr %i.ly, %scevgep65
  %bound167 = icmp ult ptr %i.mc, %scevgep
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx = or i1 %found.conflict, %found.conflict68
  %bound069 = icmp ult ptr %i.ma, %scevgep65
  %bound170 = icmp ult ptr %i.mc, %scevgep64
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx, %found.conflict71
  br i1 %conflict.rdx72, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, -8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ms = sub i64 %i.mr, %index                   ; 3 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %i.ms
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 -14 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.mu, align 2, !tbaa !31, !alias.scope !79, !noalias !82
  %i.mv = lshr <8 x i16> %wide.load, splat (i16 8)
  store <8 x i16> %i.mv, ptr %i.mu, align 2, !tbaa !31, !alias.scope !79, !noalias !82
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.ms
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -14 ; 2 uses
  %wide.load73 = load <8 x i16>, ptr %i.mx, align 2, !tbaa !31, !alias.scope !85, !noalias !86
  %i.my = lshr <8 x i16> %wide.load73, splat (i16 8)
  store <8 x i16> %i.my, ptr %i.mx, align 2, !tbaa !31, !alias.scope !85, !noalias !86
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %i.ms
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 -14 ; 2 uses
  %wide.load74 = load <8 x i16>, ptr %i.na, align 2, !tbaa !31, !alias.scope !86
  %i.nb = lshr <8 x i16> %wide.load74, splat (i16 8)
  store <8 x i16> %i.nb, ptr %i.na, align 2, !tbaa !31, !alias.scope !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %cvtcmap.exit, label %vector.body, !llvm.loop !87

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.nw, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %.017.i ; 2 uses
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !31
  %i.nf = lshr i16 %i.ne, 8
  store i16 %i.nf, ptr %i.nd, align 2, !tbaa !31
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %.017.i ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !31
  %i.ni = lshr i16 %i.nh, 8
  store i16 %i.ni, ptr %i.ng, align 2, !tbaa !31
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %.017.i ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !31
  %i.nl = lshr i16 %i.nk, 8
  store i16 %i.nl, ptr %i.nj, align 2, !tbaa !31
  %i.nm = add nsw i64 %.017.i, -1                 ; 4 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %i.nm ; 2 uses
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !31
  %i.np = lshr i16 %i.no, 8
  store i16 %i.np, ptr %i.nn, align 2, !tbaa !31
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.nm ; 2 uses
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !31
  %i.ns = lshr i16 %i.nr, 8
  store i16 %i.ns, ptr %i.nq, align 2, !tbaa !31
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %i.nm ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !31
  %i.nv = lshr i16 %i.nu, 8
  store i16 %i.nv, ptr %i.nt, align 2, !tbaa !31
  %i.nw = add nsw i64 %.017.i, -2
  %.not.i.1 = icmp eq i64 %i.nm, 0
  br i1 %.not.i.1, label %cvtcmap.exit, label %scalar.ph, !llvm.loop !88

checkcmap.exit:                                   ; preds = %bb.j, %bb.i
  %i.nx = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ny = tail call ptr @TIFFFileName(ptr noundef %i.nx) #11
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %i.nx, ptr noundef %i.ny, ptr noundef nonnull @.str.47) #11
  br label %cvtcmap.exit

cvtcmap.exit:                                     ; preds = %vector.body, %scalar.ph.prol.loopexit, %scalar.ph, %checkcmap.exit
  %i.nz = load i16, ptr %i.md, align 4, !tbaa !50 ; 3 uses
  %i.oa = icmp ult i16 %i.nz, 9
  br i1 %i.oa, label %bb.o, label %setupMap.exit

bb.o:                                             ; preds = %cvtcmap.exit
  %.rhs.trunc = trunc nuw nsw i16 %i.nz to i8
  %i.ob = udiv i8 8, %.rhs.trunc
  %.zext = zext nneg i8 %i.ob to i64
  %i.oc = load ptr, ptr %i.lx, align 8, !tbaa !45 ; 15 uses
  %i.od = load ptr, ptr %i.lz, align 8, !tbaa !46 ; 15 uses
  %i.oe = load ptr, ptr %i.mb, align 8, !tbaa !47 ; 15 uses
  %i.of = load ptr, ptr %0, align 8, !tbaa !38
  %i.og = shl nuw nsw i64 %.zext, 10
  %narrow141.i = add nuw nsw i64 %i.og, 2048
  %i.oh = tail call ptr @_TIFFmallocExt(ptr noundef %i.of, i64 noundef %narrow141.i) #11 ; 135 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.oh, ptr %i.oi, align 8, !tbaa !40
  %i.oj = icmp eq ptr %i.oh, null
  br i1 %i.oj, label %makecmap.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ok = zext nneg i16 %i.nz to i32              ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 2048 ; 5 uses
  %i.om = tail call range(i32 1, 5) i32 @llvm.ctpop.i32(i32 %i.ok)
  %i.on = icmp eq i32 %i.om, 1
  br i1 %i.on, label %.split144.us.i, label %vector.ph76

vector.ph76:                                      ; preds = %bb.p
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ol, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 128 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.oh, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.oo, align 8, !tbaa !77
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  store <2 x ptr> %broadcast.splat, ptr %i.op, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.oq, align 8, !tbaa !77
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.os = getelementptr inbounds nuw i8, ptr %i.oh, i64 80
  store <2 x ptr> %broadcast.splat, ptr %i.or, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.os, align 8, !tbaa !77
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 96
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oh, i64 112
  store <2 x ptr> %broadcast.splat, ptr %i.ot, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ou, align 8, !tbaa !77
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oh, i64 128
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 144
  store <2 x ptr> %broadcast.splat, ptr %i.ov, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ow, align 8, !tbaa !77
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oh, i64 160
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oh, i64 176
  store <2 x ptr> %broadcast.splat, ptr %i.ox, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.oy, align 8, !tbaa !77
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oh, i64 192
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oh, i64 208
  store <2 x ptr> %broadcast.splat, ptr %i.oz, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pa, align 8, !tbaa !77
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oh, i64 224
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 240
  store <2 x ptr> %broadcast.splat, ptr %i.pb, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pc, align 8, !tbaa !77
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oh, i64 256
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oh, i64 272
  store <2 x ptr> %broadcast.splat, ptr %i.pd, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pe, align 8, !tbaa !77
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oh, i64 288
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oh, i64 304
  store <2 x ptr> %broadcast.splat, ptr %i.pf, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pg, align 8, !tbaa !77
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oh, i64 320
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oh, i64 336
  store <2 x ptr> %broadcast.splat, ptr %i.ph, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pi, align 8, !tbaa !77
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oh, i64 352
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oh, i64 368
  store <2 x ptr> %broadcast.splat, ptr %i.pj, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pk, align 8, !tbaa !77
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oh, i64 384
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 400
  store <2 x ptr> %broadcast.splat, ptr %i.pl, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pm, align 8, !tbaa !77
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oh, i64 416
  %i.po = getelementptr inbounds nuw i8, ptr %i.oh, i64 432
  store <2 x ptr> %broadcast.splat, ptr %i.pn, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.po, align 8, !tbaa !77
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oh, i64 448
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oh, i64 464
  store <2 x ptr> %broadcast.splat, ptr %i.pp, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pq, align 8, !tbaa !77
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oh, i64 480
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oh, i64 496
  store <2 x ptr> %broadcast.splat, ptr %i.pr, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ps, align 8, !tbaa !77
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oh, i64 512
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oh, i64 528
  store <2 x ptr> %broadcast.splat, ptr %i.pt, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pu, align 8, !tbaa !77
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oh, i64 544
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oh, i64 560
  store <2 x ptr> %broadcast.splat, ptr %i.pv, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.pw, align 8, !tbaa !77
  %i.px = getelementptr inbounds nuw i8, ptr %i.oh, i64 576
  %i.py = getelementptr inbounds nuw i8, ptr %i.oh, i64 592
  store <2 x ptr> %broadcast.splat, ptr %i.px, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.py, align 8, !tbaa !77
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oh, i64 608
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oh, i64 624
  store <2 x ptr> %broadcast.splat, ptr %i.pz, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qa, align 8, !tbaa !77
  %i.qb = getelementptr inbounds nuw i8, ptr %i.oh, i64 640
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oh, i64 656
  store <2 x ptr> %broadcast.splat, ptr %i.qb, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qc, align 8, !tbaa !77
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oh, i64 672
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oh, i64 688
  store <2 x ptr> %broadcast.splat, ptr %i.qd, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qe, align 8, !tbaa !77
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oh, i64 704
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oh, i64 720
  store <2 x ptr> %broadcast.splat, ptr %i.qf, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qg, align 8, !tbaa !77
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oh, i64 736
  %i.qi = getelementptr inbounds nuw i8, ptr %i.oh, i64 752
  store <2 x ptr> %broadcast.splat, ptr %i.qh, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qi, align 8, !tbaa !77
  %i.qj = getelementptr inbounds nuw i8, ptr %i.oh, i64 768
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oh, i64 784
  store <2 x ptr> %broadcast.splat, ptr %i.qj, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qk, align 8, !tbaa !77
  %i.ql = getelementptr inbounds nuw i8, ptr %i.oh, i64 800
  %i.qm = getelementptr inbounds nuw i8, ptr %i.oh, i64 816
  store <2 x ptr> %broadcast.splat, ptr %i.ql, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qm, align 8, !tbaa !77
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oh, i64 832
  %i.qo = getelementptr inbounds nuw i8, ptr %i.oh, i64 848
  store <2 x ptr> %broadcast.splat, ptr %i.qn, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qo, align 8, !tbaa !77
  %i.qp = getelementptr inbounds nuw i8, ptr %i.oh, i64 864
  %i.qq = getelementptr inbounds nuw i8, ptr %i.oh, i64 880
  store <2 x ptr> %broadcast.splat, ptr %i.qp, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qq, align 8, !tbaa !77
  %i.qr = getelementptr inbounds nuw i8, ptr %i.oh, i64 896
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oh, i64 912
  store <2 x ptr> %broadcast.splat, ptr %i.qr, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qs, align 8, !tbaa !77
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oh, i64 928
  %i.qu = getelementptr inbounds nuw i8, ptr %i.oh, i64 944
  store <2 x ptr> %broadcast.splat, ptr %i.qt, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qu, align 8, !tbaa !77
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oh, i64 960
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oh, i64 976
  store <2 x ptr> %broadcast.splat, ptr %i.qv, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qw, align 8, !tbaa !77
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oh, i64 992
  %i.qy = getelementptr inbounds nuw i8, ptr %i.oh, i64 1008
  store <2 x ptr> %broadcast.splat, ptr %i.qx, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.qy, align 8, !tbaa !77
  %i.qz = getelementptr inbounds nuw i8, ptr %i.oh, i64 1024
  %i.ra = getelementptr inbounds nuw i8, ptr %i.oh, i64 1040
  store <2 x ptr> %broadcast.splat, ptr %i.qz, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ra, align 8, !tbaa !77
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oh, i64 1056
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oh, i64 1072
  store <2 x ptr> %broadcast.splat, ptr %i.rb, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rc, align 8, !tbaa !77
  %i.rd = getelementptr inbounds nuw i8, ptr %i.oh, i64 1088
  %i.re = getelementptr inbounds nuw i8, ptr %i.oh, i64 1104
  store <2 x ptr> %broadcast.splat, ptr %i.rd, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.re, align 8, !tbaa !77
  %i.rf = getelementptr inbounds nuw i8, ptr %i.oh, i64 1120
  %i.rg = getelementptr inbounds nuw i8, ptr %i.oh, i64 1136
  store <2 x ptr> %broadcast.splat, ptr %i.rf, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rg, align 8, !tbaa !77
  %i.rh = getelementptr inbounds nuw i8, ptr %i.oh, i64 1152
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oh, i64 1168
  store <2 x ptr> %broadcast.splat, ptr %i.rh, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ri, align 8, !tbaa !77
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oh, i64 1184
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oh, i64 1200
  store <2 x ptr> %broadcast.splat, ptr %i.rj, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rk, align 8, !tbaa !77
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oh, i64 1216
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oh, i64 1232
  store <2 x ptr> %broadcast.splat, ptr %i.rl, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rm, align 8, !tbaa !77
  %i.rn = getelementptr inbounds nuw i8, ptr %i.oh, i64 1248
  %i.ro = getelementptr inbounds nuw i8, ptr %i.oh, i64 1264
  store <2 x ptr> %broadcast.splat, ptr %i.rn, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.ro, align 8, !tbaa !77
  %i.rp = getelementptr inbounds nuw i8, ptr %i.oh, i64 1280
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oh, i64 1296
  store <2 x ptr> %broadcast.splat, ptr %i.rp, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rq, align 8, !tbaa !77
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oh, i64 1312
  %i.rs = getelementptr inbounds nuw i8, ptr %i.oh, i64 1328
  store <2 x ptr> %broadcast.splat, ptr %i.rr, align 8, !tbaa !77
  store <2 x ptr> %broadcast.splat, ptr %i.rs, align 8, !tbaa !77
  %i.rt = getelementptr inbounds nuw i8, ptr %i.oh, i64 1344
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oh, i64 1360
  store <2 x ptr> %broadcast.splat, ptr %i.rt, align 8, !tbaa !77
end_hunk_0
