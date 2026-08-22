Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@CbInit:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !24
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, 20
  br i1 %exitcond.not, label %.split38, label %.split

.split38:                                         ; preds = %.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 4 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 24 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr i8, ptr %4, i64 20008      ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !29   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.o = load double, ptr %i.n, align 8, !tbaa !28
  %i.p = sub i32 0, %i.k                          ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 304        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %i.s = icmp sgt i32 %i.f, 0
  %i.t = sub i32 0, %i.f                          ; 2 uses
  %.not88 = icmp slt i32 %i.f, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 24 uses
  %i.u = add i32 %i.f, 1                          ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 4 uses
  %i.w = sext i32 %i.k to i64                     ; 4 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 20008
  %i.y = zext i32 %i.k to i64
  %i.z = shl nuw nsw i64 %wide.trip.count, 3      ; 3 uses
  %i.aa = getelementptr i8, ptr %4, i64 %i.z
  %scevgep102 = getelementptr i8, ptr %i.aa, i64 20000
  %i.ab = add nsw i64 %i.z, -8                    ; 6 uses
  %scevgep105 = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.ac = getelementptr i8, ptr %4, i64 %i.z
  %scevgep107 = getelementptr i8, ptr %i.ac, i64 728
  %scevgep109 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep112 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep115 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep118 = getelementptr i8, ptr %i.b, i64 %i.ab
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.ab
  %i.ad = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ae = shl nsw i64 %i.w, 3
  %i.af = shl nsw i64 %i.v, 3
  %i.ag = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ah = getelementptr i8, ptr %4, i64 %i.ag
  %scevgep155 = getelementptr i8, ptr %i.ah, i64 256
  %i.ai = shl nsw i64 %i.w, 3
  %i.aj = mul nsw i64 %i.v, 152
  %i.ak = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.al = add nsw i64 %i.aj, %i.ak                ; 2 uses
  %i.am = shl nsw i64 %i.w, 3
  %i.an = shl nsw i64 %i.v, 3
  %i.ao = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ap = getelementptr i8, ptr %4, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 20008
  %i.ar = getelementptr i8, ptr %4, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 20008
  %min.iters.check217 = icmp ult i32 %i.f, 4
  %n.vec219 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n228 = icmp eq i64 %n.vec219, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter234 = and i64 %wide.trip.count.i, 1
  %i.at = icmp eq i64 %i.ao, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  %lcmp.mod236 = trunc i32 %i.f to i1
  %min.iters.check203 = icmp eq i32 %i.f, 1
  %n.vec205 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec205, %wide.trip.count.i
  %xtraiter237 = and i64 %wide.trip.count.i, 1
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %i.au = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check170 = icmp ult i32 %i.f, 4
  %n.vec172 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec172, %wide.trip.count.i
  %xtraiter240 = and i64 %wide.trip.count.i, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %i.av = add nsw i64 %wide.trip.count.i, -1
  %i.aw = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.ax = trunc i64 %i.x to i32                   ; 5 uses
  %i.ay = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.aw, -2                      ; 2 uses
  %i.az = or i64 %i.aw, 1
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.ba = mul i64 %i.am, %indvars.iv97
  %i.bb = mul i64 %i.ai, %indvars.iv97            ; 5 uses
  %i.bc = getelementptr i8, ptr %4, i64 %i.bb
  %scevgep186 = getelementptr i8, ptr %i.bc, i64 808 ; 2 uses
  %scevgep187 = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %scevgep188 = getelementptr i8, ptr %i.b, i64 %i.bb
  %i.bd = add i64 %i.al, %i.bb                    ; 2 uses
  %scevgep189 = getelementptr i8, ptr %i.b, i64 %i.bd
  %scevgep190 = getelementptr i8, ptr %i.a, i64 %i.bb
  %scevgep191 = getelementptr i8, ptr %i.a, i64 %i.bd
  %i.be = mul i64 %i.ae, %indvars.iv97            ; 2 uses
  %i.bf = add i64 %i.ad, %i.be
  %i.bg = mul i64 %indvars.iv97, %i.y             ; 2 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = trunc i64 %indvars.iv97 to i32
  %i.bj = mul i32 %i.k, %i.bi                     ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bl = uitofp nneg i32 %i.bk to double
  %i.bm = fmul double %i.o, %i.bl
  %i.bn = mul nsw i64 %indvars.iv97, %i.w
  %i.bo = icmp eq i64 %indvars.iv97, 19
  %i.bp = select i1 %i.bo, i32 %i.p, i32 %i.k     ; 4 uses
  %i.bq = icmp eq i64 %indvars.iv97, 0
  %i.br = select i1 %i.bq, i32 %i.k, i32 %i.p     ; 4 uses
  %i.bs = add i32 %i.br, %i.bj
  %i.bt = add i32 %i.bp, %i.bj
  %i.bu = add i32 %i.bp, %i.bh
  %i.bv = add i32 %i.br, %i.bh
  %i.bw = insertelement <2 x ptr> poison, ptr %scevgep186, i64 0
  %i.bx = insertelement <2 x ptr> %i.bw, ptr %scevgep190, i64 1
  %i.by = insertelement <2 x ptr> poison, ptr %scevgep189, i64 0
  %i.bz = insertelement <2 x ptr> %i.by, ptr %scevgep187, i64 1
  %i.ca = insertelement <2 x ptr> poison, ptr %scevgep188, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %scevgep186, i64 1
  %i.cc = insertelement <2 x ptr> poison, ptr %scevgep187, i64 0
  %i.cd = insertelement <2 x ptr> %i.cc, ptr %scevgep191, i64 1
  %i.ce = getelementptr i8, ptr %i.as, i64 %i.be
  %invariant.op = add i64 215, %i.ba
  %i.cf = icmp ult <2 x ptr> %i.bx, %i.bz
  %i.cg = icmp ult <2 x ptr> %i.cb, %i.cd
  %i.ch = and <2 x i1> %i.cg, %i.cf
  %i.ci = bitcast <2 x i1> %i.ch to i2
  %conflict.rdx201.not = icmp eq i2 %i.ci, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.cj = mul i64 %i.af, %indvars.iv93            ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.ce, i64 %i.cj ; 3 uses
  %i.ck = add i64 %i.bf, %i.cj                    ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.a, i64 %i.ck
  %scevgep157 = getelementptr i8, ptr %i.b, i64 %i.ck
  %i.cl = mul i64 %indvars.iv93, %wide.trip.count.i ; 3 uses
  %i.cm = add i64 %i.bg, %i.cl                    ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %sext = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %sext, 29                ; 6 uses
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.co
  %scevgep104 = getelementptr i8, ptr %i.c, i64 %i.co ; 7 uses
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.co ; 7 uses
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = add i32 %i.bu, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 3                    ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.b, i64 %i.cs
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.cs
  %i.ct = trunc i64 %i.cl to i32
  %i.cu = add i32 %i.bv, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.b, i64 %i.cw
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.cw
  %scevgep120 = getelementptr i8, ptr %i.b, i64 %i.co
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.co
  %i.cx = mul i64 %indvars.iv93, %wide.trip.count.i ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = add i32 %i.bs, %i.cy                    ; 2 uses
  %i.da = trunc i64 %i.cx to i32
  %i.db = add i32 %i.bt, %i.da                    ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fmul double %i.m, %i.dd
  %i.df = mul nsw i64 %indvars.iv93, %i.v
  %i.dg = add i64 %i.df, %i.bn                    ; 5 uses
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %i.dg ; 7 uses
  %i.di = getelementptr [8 x i8], ptr %i.b, i64 %i.dg ; 6 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dg ; 13 uses
  %i.dk = getelementptr [8 x i8], ptr %i.h, i64 %i.dg ; 11 uses
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.de, double %i.bm, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.dm = mul i64 %i.an, %indvars.iv93
  %op.rdx230.reass = add i64 %i.dm, %invariant.op
  %diff.check = icmp ult i64 %op.rdx230.reass, 31
  %or.cond = select i1 %min.iters.check217, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %i.dl, i64 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph218
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body222 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index223 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load224 = load <2 x double>, ptr %i.dn, align 8, !tbaa !24
  %wide.load225 = load <2 x double>, ptr %i.do, align 8, !tbaa !24
  %i.dp = fmul <2 x double> %broadcast.splat221, %wide.load224
  %i.dq = fmul <2 x double> %broadcast.splat221, %wide.load225
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index223 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <2 x double> %i.dp, ptr %i.dr, align 8, !tbaa !24
  store <2 x double> %i.dq, ptr %i.ds, align 8, !tbaa !24
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.dt, label %middle.block227, label %vector.body222, !llvm.loop !103

middle.block227:                                  ; preds = %vector.body222
  br i1 %cmp.n228, label %.preheader60.i.preheader, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %.lr.ph.i.preheader, %middle.block227
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec219, %middle.block227 ] ; 3 uses
  %i.du = sub nsw i64 %i.ao, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader233, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader233 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader233 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !24
  %i.dx = fmul double %i.dl, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.prol
  store double %i.dx, ptr %i.dy, align 8, !tbaa !24
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader233
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader233 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dz = icmp ult i64 %i.du, 3
  br i1 %i.dz, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = fmul double %i.dl, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i
  store double %i.ec, ptr %i.ed, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !24
  %i.eg = fmul double %i.dl, %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i
  store double %i.eg, ptr %i.eh, align 8, !tbaa !24
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = fmul double %i.dl, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.1
  store double %i.ek, ptr %i.el, align 8, !tbaa !24
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  %i.en = load double, ptr %i.em, align 8, !tbaa !24
  %i.eo = fmul double %i.dl, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.2
  store double %i.eo, ptr %i.ep, align 8, !tbaa !24
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block227
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.at, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.er = load double, ptr %gep.i, align 8, !tbaa !24
  %i.es = load double, ptr %i.eq, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv74.i ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.er, double %i.es, double %i.eu)
  store double %i.ev, ptr %i.et, align 8, !tbaa !24
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ew = load double, ptr %gep.i.1, align 8, !tbaa !24
  %i.ex = load double, ptr %i.eq, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next75.i ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ex, double %i.ez)
  store double %i.fa, ptr %i.ey, align 8, !tbaa !24
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod235.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.fb = load double, ptr %gep.i.epil, align 8, !tbaa !24
  %i.fc = load double, ptr %i.eq, align 8, !tbaa !24
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !24
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %conflict.rdx201.not.not = xor i1 %conflict.rdx201.not, true
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %conflict.rdx201.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader232, label %vector.body206

vector.body206:                                   ; preds = %.lr.ph67.i.preheader, %vector.body206
  %index207 = phi i64 [ %index.next211, %vector.body206 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index207
  %wide.load208 = load <2 x double>, ptr %i.fg, align 8, !tbaa !24, !alias.scope !106
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index207 ; 2 uses
  %wide.load209 = load <2 x double>, ptr %i.fh, align 8, !tbaa !24, !alias.scope !109, !noalias !111 ; 2 uses
  %i.fi = fmul <2 x double> %wide.load208, %wide.load209
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index207
  store <2 x double> %i.fi, ptr %i.fj, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index207
  %wide.load210 = load <2 x double>, ptr %i.fk, align 8, !tbaa !24, !alias.scope !113
  %i.fl = fmul <2 x double> %wide.load209, %wide.load210
  store <2 x double> %i.fl, ptr %i.fh, align 8, !tbaa !24, !alias.scope !109, !noalias !111
  %index.next211 = add nuw i64 %index207, 2       ; 2 uses
  %i.fm = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.fm, label %middle.block212, label %vector.body206, !llvm.loop !114

middle.block212:                                  ; preds = %vector.body206
  br i1 %cmp.n213, label %.preheader.i.preheader, label %.lr.ph67.i.preheader232

.lr.ph67.i.preheader232:                          ; preds = %.lr.ph67.i.preheader, %middle.block212
  %indvars.iv84.i.ph = phi i64 [ %n.vec205, %middle.block212 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod238.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader232
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv84.i.ph
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !24
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24 ; 2 uses
  %i.fr = fmul double %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv84.i.ph
  store double %i.fr, ptr %i.fs, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv84.i.ph
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !24
  %i.fv = fmul double %i.fq, %i.fu
  store double %i.fv, ptr %i.fp, align 8, !tbaa !24
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader232
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader232 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.fw = icmp eq i64 %indvars.iv84.i.ph, %i.au
  br i1 %i.fw, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv84.i
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv84.i ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24 ; 2 uses
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv84.i
  store double %i.gb, ptr %i.gc, align 8, !tbaa !24
end_hunk_0
