Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@CbInit:bb.a
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep59, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep61, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep63, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep65, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep67, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep69, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep71 = getelementptr i8, ptr %invariant.gep70, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep71, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep73 = getelementptr i8, ptr %invariant.gep72, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep73, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep75 = getelementptr i8, ptr %invariant.gep74, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep75, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep77, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep79 = getelementptr i8, ptr %invariant.gep78, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep79, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
  %gep81 = getelementptr i8, ptr %invariant.gep80, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gep81, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !22
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 808
  %i.h = getelementptr i8, ptr %4, i64 20008      ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 688        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 736 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !27   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.m = load double, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 792
  %i.o = load double, ptr %i.n, align 8, !tbaa !26
  %i.p = sub i32 0, %i.k                          ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 304        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 592 ; 6 uses
  %i.s = icmp sgt i32 %i.f, 0
  %i.t = sub i32 0, %i.f                          ; 2 uses
  %.not88 = icmp slt i32 %i.f, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 23 uses
  %i.u = add i32 %i.f, 1                          ; 2 uses
  %i.v = sext i32 %i.f to i64                     ; 4 uses
  %i.w = sext i32 %i.k to i64                     ; 4 uses
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %i.x = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 6 uses
  %i.z = getelementptr i8, ptr %4, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 728
  %i.aa = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.ab = shl nsw i64 %i.w, 3
  %i.ac = shl nsw i64 %i.v, 3
  %i.ad = mul nuw nsw i64 %wide.trip.count.i, 56
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %scevgep194 = getelementptr i8, ptr %i.ae, i64 256
  %i.af = shl nsw i64 %i.v, 3
  %i.ag = mul nsw i64 %i.v, 152
  %i.ah = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.ai = add nsw i64 %i.ag, %i.ah                ; 2 uses
  %i.aj = shl nsw i64 %i.w, 3
  %i.ak = shl nsw i64 %i.w, 3
  %i.al = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.am = getelementptr i8, ptr %4, i64 %i.ai
  %i.an = getelementptr i8, ptr %i.am, i64 20008
  %i.ao = getelementptr i8, ptr %4, i64 %i.aa
  %i.ap = getelementptr i8, ptr %i.ao, i64 20008
  %min.iters.check267 = icmp ult i32 %i.f, 4
  %n.vec270 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n279 = icmp eq i64 %n.vec270, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter284 = and i64 %wide.trip.count.i, 1
  %i.aq = icmp eq i64 %i.al, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  %lcmp.mod286 = trunc i32 %i.f to i1
  %min.iters.check245 = icmp eq i32 %i.f, 1
  %n.vec255 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n263 = icmp eq i64 %n.vec255, %wide.trip.count.i
  %xtraiter287 = and i64 %wide.trip.count.i, 1
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  %i.ar = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check197 = icmp ult i32 %i.f, 4
  %n.vec211 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n222 = icmp eq i64 %n.vec211, %wide.trip.count.i
  %xtraiter290 = and i64 %wide.trip.count.i, 1
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  %i.as = add nsw i64 %wide.trip.count.i, -1
  %i.at = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 9
  %i.au = trunc i64 %i.x to i32                   ; 5 uses
  %i.av = icmp ugt i64 %i.x, 4294967295
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep293 = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep295 = getelementptr i8, ptr %i.b, i64 %i.y
  %invariant.gep297 = getelementptr i8, ptr %i.b, i64 %i.y
  %n.vec = and i64 %i.at, -2                      ; 2 uses
  %i.aw = or i64 %i.at, 1
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv97 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next98, %bb.d ] ; 10 uses
  %i.ax = mul i64 %i.ak, %indvars.iv97
  %i.ay = mul i64 %i.aj, %indvars.iv97            ; 5 uses
  %i.az = add i64 %i.ai, %i.ay                    ; 2 uses
  %scevgep238 = getelementptr i8, ptr %i.a, i64 %i.az
  %scevgep239 = getelementptr i8, ptr %i.a, i64 %i.ay
  %scevgep240 = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep241 = getelementptr i8, ptr %i.b, i64 %i.ay
  %scevgep242 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep243 = getelementptr i8, ptr %i.ba, i64 808 ; 2 uses
  %i.bb = mul i64 %i.ab, %indvars.iv97            ; 2 uses
  %i.bc = add i64 %i.aa, %i.bb
  %i.bd = trunc i64 %indvars.iv97 to i32
  %i.be = mul i32 %i.k, %i.bd                     ; 2 uses
  %i.bf = trunc i64 %indvars.iv97 to i32
  %i.bg = mul i32 %i.k, %i.bf                     ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul double %i.o, %i.bi
  %i.bk = mul nsw i64 %indvars.iv97, %i.w
  %i.bl = icmp eq i64 %indvars.iv97, 19
  %i.bm = select i1 %i.bl, i32 %i.p, i32 %i.k     ; 4 uses
  %i.bn = icmp eq i64 %indvars.iv97, 0
  %i.bo = select i1 %i.bn, i32 %i.k, i32 %i.p     ; 4 uses
  %i.bp = add i32 %i.bo, %i.bg
  %i.bq = add i32 %i.bm, %i.bg
  %i.br = add i32 %i.bo, %i.be
  %i.bs = add i32 %i.bm, %i.be
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep243, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep239, i64 1
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep240, i64 0
  %i.bw = insertelement <2 x ptr> %i.bv, ptr %scevgep242, i64 1
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep241, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep243, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep242, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %scevgep238, i64 1
  %i.cb = getelementptr i8, ptr %i.ap, i64 %i.bb
  %invariant.op = add i64 215, %i.ax
  %i.cc = icmp ult <2 x ptr> %i.bu, %i.bw
  %i.cd = icmp ult <2 x ptr> %i.by, %i.ca
  %i.ce = and <2 x i1> %i.cd, %i.cc
  %i.cf = bitcast <2 x i1> %i.ce to i2
  %.not = icmp eq i2 %i.cf, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next94, %._crit_edge ] ; 9 uses
  %i.cg = mul i64 %i.ac, %indvars.iv93            ; 2 uses
  %i.ch = add i64 %i.bc, %i.cg                    ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.b, i64 %i.ch
  %scevgep193 = getelementptr i8, ptr %i.a, i64 %i.ch
  %scevgep195 = getelementptr i8, ptr %i.cb, i64 %i.cg ; 3 uses
  %i.ci = trunc i64 %indvars.iv93 to i32
  %i.cj = mul i64 %indvars.iv93, %wide.trip.count.i ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %i.bp, %i.ck                    ; 2 uses
  %i.cm = trunc i64 %i.cj to i32
  %i.cn = add i32 %i.bq, %i.cm                    ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fmul double %i.m, %i.cp
  %i.cr = mul nsw i64 %indvars.iv93, %i.v
  %i.cs = add nsw i64 %i.cr, %i.bk                ; 6 uses
  %i.ct = getelementptr [8 x i8], ptr %i.a, i64 %i.cs ; 7 uses
  %i.cu = getelementptr [8 x i8], ptr %i.b, i64 %i.cs ; 6 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cs ; 13 uses
  %i.cw = getelementptr [8 x i8], ptr %i.h, i64 %i.cs ; 11 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.bj, double 1.000000e+00) ; 6 uses
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %min.iters.check267, label %.lr.ph.i.preheader283, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.preheader
  %i.cy = mul i64 %indvars.iv93, %i.af
  %op.rdx281.reass = add i64 %i.cy, %invariant.op
  %diff.check = icmp ult i64 %op.rdx281.reass, 31
  br i1 %diff.check, label %.lr.ph.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck268
  %broadcast.splatinsert271 = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat272 = shufflevector <2 x double> %broadcast.splatinsert271, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next277, %vector.body273 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index274 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load275 = load <2 x double>, ptr %i.cz, align 8, !tbaa !22
  %wide.load276 = load <2 x double>, ptr %i.da, align 8, !tbaa !22
  %i.db = fmul <2 x double> %broadcast.splat272, %wide.load275
  %i.dc = fmul <2 x double> %broadcast.splat272, %wide.load276
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index274 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %i.db, ptr %i.dd, align 8, !tbaa !22
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !22
  %index.next277 = add nuw i64 %index274, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next277, %n.vec270
  br i1 %i.df, label %middle.block278, label %vector.body273, !llvm.loop !103

middle.block278:                                  ; preds = %vector.body273
  br i1 %cmp.n279, label %.preheader60.i.preheader, label %.lr.ph.i.preheader283

.lr.ph.i.preheader283:                            ; preds = %vector.memcheck268, %.lr.ph.i.preheader, %middle.block278
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec270, %middle.block278 ] ; 3 uses
  %i.dg = sub nsw i64 %i.al, %indvars.iv.i.ph
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader283, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader283 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader283 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.prol
  %i.di = load double, ptr %i.dh, align 8, !tbaa !22
  %i.dj = fmul double %i.cx, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.prol
  store double %i.dj, ptr %i.dk, align 8, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader283
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader283 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dl = icmp ult i64 %i.dg, 3
  br i1 %i.dl, label %.preheader60.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !22
  %i.do = fmul double %i.cx, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  store double %i.do, ptr %i.dp, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ds = fmul double %i.cx, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i
  store double %i.ds, ptr %i.dt, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !22
  %i.dw = fmul double %i.cx, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.1
  store double %i.dw, ptr %i.dx, align 8, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !22
  %i.ea = fmul double %i.cx, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.2
  store double %i.ea, ptr %i.eb, align 8, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader60.i.preheader, label %.lr.ph.i, !llvm.loop !105

.preheader60.i.preheader:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block278
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %.preheader60.i.preheader, %._crit_edge.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.i ], [ 0, %.preheader60.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv79.i ; 3 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader60.i.new

.preheader60.i.new:                               ; preds = %.preheader60.i, %.preheader60.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.preheader60.i.new ], [ 0, %.preheader60.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader60.i.new ], [ 0, %.preheader60.i ]
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i
  %i.ed = load double, ptr %gep.i, align 8, !tbaa !22
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv74.i ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !22
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.eg)
  store double %i.eh, ptr %i.ef, align 8, !tbaa !22
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next75.i
  %i.ei = load double, ptr %gep.i.1, align 8, !tbaa !22
  %i.ej = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next75.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !22
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ej, double %i.el)
  store double %i.em, ptr %i.ek, align 8, !tbaa !22
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader60.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader60.i.new
  br i1 %lcmp.mod285.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader60.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.preheader60.i ], [ %indvars.iv.next75.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %gep.i.epil = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv74.i.epil.init
  %i.en = load double, ptr %gep.i.epil, align 8, !tbaa !22
  %i.eo = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv74.i.epil.init ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !22
  %i.er = tail call double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %i.eq)
  store double %i.er, ptr %i.ep, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond83.not.i, label %.lr.ph67.i.preheader, label %.preheader60.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge.i
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check245, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph67.i.preheader282, label %vector.body256

vector.body256:                                   ; preds = %.lr.ph67.i.preheader, %vector.body256
  %index257 = phi i64 [ %index.next261, %vector.body256 ], [ 0, %.lr.ph67.i.preheader ] ; 5 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index257
  %wide.load258 = load <2 x double>, ptr %i.es, align 8, !tbaa !22, !alias.scope !130
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index257 ; 2 uses
  %wide.load259 = load <2 x double>, ptr %i.et, align 8, !tbaa !22, !alias.scope !131, !noalias !132 ; 2 uses
  %i.eu = fmul <2 x double> %wide.load258, %wide.load259
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index257
  store <2 x double> %i.eu, ptr %i.ev, align 8, !tbaa !22, !alias.scope !131, !noalias !132
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index257
  %wide.load260 = load <2 x double>, ptr %i.ew, align 8, !tbaa !22, !alias.scope !133
  %i.ex = fmul <2 x double> %wide.load259, %wide.load260
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !22, !alias.scope !131, !noalias !132
  %index.next261 = add nuw i64 %index257, 2       ; 2 uses
  %i.ey = icmp eq i64 %index.next261, %n.vec255
  br i1 %i.ey, label %middle.block262, label %vector.body256, !llvm.loop !110

middle.block262:                                  ; preds = %vector.body256
  br i1 %cmp.n263, label %.preheader.i.preheader, label %.lr.ph67.i.preheader282

.lr.ph67.i.preheader282:                          ; preds = %.lr.ph67.i.preheader, %middle.block262
  %indvars.iv84.i.ph = phi i64 [ %n.vec255, %middle.block262 ], [ 0, %.lr.ph67.i.preheader ] ; 7 uses
  br i1 %lcmp.mod288.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader282
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv84.i.ph
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !22
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i.ph ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !22 ; 2 uses
  %i.fd = fmul double %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i.ph
  store double %i.fd, ptr %i.fe, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i.ph
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = fmul double %i.fc, %i.fg
  store double %i.fh, ptr %i.fb, align 8, !tbaa !22
  %indvars.iv.next85.i.prol = or disjoint i64 %indvars.iv84.i.ph, 1
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader282
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph67.i.preheader282 ], [ %indvars.iv.next85.i.prol, %.lr.ph67.i.prol ]
  %i.fi = icmp eq i64 %indvars.iv84.i.ph, %i.ar
  br i1 %i.fi, label %.preheader.i.preheader, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.1, %.lr.ph67.i ], [ %indvars.iv84.i.unr, %.lr.ph67.i.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv84.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv84.i ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !22 ; 2 uses
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv84.i
  store double %i.fn, ptr %i.fo, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv84.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !22
  %i.fr = fmul double %i.fm, %i.fq
  store double %i.fr, ptr %i.fl, align 8, !tbaa !22
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next85.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next85.i ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22 ; 2 uses
  %i.fw = fmul double %i.ft, %i.fv
end_hunk_0
