Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgetsqrhrt?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dgetsqrhrt_:bb.a
bb.a:
  %i.a = ptrtoaddr ptr %9 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.l = load i32, ptr %6, align 4, !tbaa !14     ; 5 uses
  %narrow = xor i32 %i.l, -1
  %i.m = sext i32 %narrow to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %9, i64 -8 ; 13 uses
  store i32 0, ptr %11, align 4, !tbaa !14
  %i.p = load i32, ptr %10, align 4, !tbaa !14    ; 3 uses
  %i.q = icmp eq i32 %i.p, -1                     ; 3 uses
  %i.r = load i32, ptr %0, align 4, !tbaa !14     ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 4, !tbaa !14     ; 13 uses
  %or.cond191 = icmp ugt i32 %i.t, %i.r
  br i1 %or.cond191, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %.not = icmp sgt i32 %i.u, %i.t
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %3, align 4, !tbaa !14     ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %6, align 4, !tbaa !14
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.r, i32 1)
  %i.aa = icmp slt i32 %i.z, %spec.select
  br i1 %i.aa, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %. = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.t)
  %i.ab = load i32, ptr %8, align 4, !tbaa !14
  %i.ac = tail call i32 @llvm.umax.i32(i32 %., i32 1)
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = mul nuw nsw i32 %i.t, %i.t              ; 2 uses
  %i.af = icmp sgt i32 %i.p, %i.ae
  %or.cond = or i1 %i.q, %i.af
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.192 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.t) ; 6 uses
  store i32 %.192, ptr %i.j, align 4, !tbaa !14
  %i.ag = sub nuw nsw i32 %i.r, %i.t
  %i.ah = uitofp nneg i32 %i.ag to double
  %i.ai = sub nuw nsw i32 %i.u, %i.t
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fdiv double %i.ah, %i.aj
  %i.al = fadd double %i.ak, 5.000000e-01         ; 3 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %i.an = tail call double @llvm.floor.f64(double %i.al)
  %i.ao = fneg double %i.al
  %i.ap = tail call double @llvm.floor.f64(double %i.ao)
  %i.aq = fneg double %i.ap
  %i.ar = select i1 %i.am, double %i.an, double %i.aq ; 2 uses
  %i.as = fcmp ole double %i.ar, 1.000000e+00
  %i.at = select i1 %i.as, double 1.000000e+00, double %i.ar
  %i.au = fptosi double %i.at to i32
  %i.av = mul i32 %.192, %i.t                     ; 3 uses
  %i.aw = mul i32 %i.av, %i.au                    ; 8 uses
  store i32 %.192, ptr %i.e, align 4, !tbaa !14
  store i32 %i.av, ptr %i.h, align 4, !tbaa !14
  %i.ax = sub nuw nsw i32 %i.t, %.192
  %i.ay = tail call i32 @llvm.umax.i32(i32 %.192, i32 %i.ax)
  %i.az = mul nuw nsw i32 %i.ay, %.192            ; 2 uses
  store i32 %i.az, ptr %i.i, align 4, !tbaa !14
  %i.ba = add nsw i32 %i.aw, %i.ae
  %i.bb = add nsw i32 %i.av, %i.aw
  %i.bc = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.t)
  %i.bd = add nsw i32 %i.ba, %i.bc
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 %i.bd) ; 4 uses
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %i.bg = icmp sge i32 %i.p, %i.bf
  %or.cond3 = or i1 %i.q, %i.bg
  br i1 %or.cond3, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.d ], [ -7, %bb.f ], [ -11, %bb.h ], [ -9, %bb.g ], [ -5, %bb.e ], [ -3, %bb.c ], [ -11, %bb.i ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.d ], [ 7, %bb.f ], [ 11, %bb.h ], [ 9, %bb.g ], [ 5, %bb.e ], [ 3, %bb.c ], [ 11, %bb.i ]
  store i32 %.sink, ptr %11, align 4, !tbaa !14
  store i32 %.neg, ptr %i.c, align 4, !tbaa !14
  %i.bh = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 10) #4 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.i
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = sitofp i32 %i.be to double
  store double %i.bi, ptr %9, align 8, !tbaa !16
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t)
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = sitofp i32 %i.be to double
  store double %i.bl, ptr %9, align 8, !tbaa !16
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.t)
  store i32 %i.bm, ptr %i.k, align 4, !tbaa !14
  %i.bn = sext i32 %i.aw to i64
  %i.bo = getelementptr [8 x i8], ptr %i.o, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  call void @dlatsqr_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %i.e, ptr noundef %i.bp, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #4
  %i.bq = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !14
  %.not187198 = icmp slt i32 %i.bq, 1
  br i1 %.not187198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %storemerge199 = phi i32 [ %i.cd, %.lr.ph ], [ 1, %bb.n ] ; 2 uses
  %i.br = mul nsw i32 %storemerge199, %i.l
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.n, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %1, align 4, !tbaa !14
  %i.bw = add nsw i32 %storemerge199, -1
  %i.bx = mul nsw i32 %i.bv, %i.bw
  %i.by = add nsw i32 %i.bx, %i.aw
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.o, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  call void @dcopy_(ptr noundef nonnull %i.f, ptr noundef %i.bu, ptr noundef nonnull @c__1, ptr noundef %i.cb, ptr noundef nonnull @c__1) #4
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !14  ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1                    ; 2 uses
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !14
  %.not187.not = icmp slt i32 %i.cc, %i.bq
  br i1 %.not187.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %1, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.ce = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bq, %bb.n ] ; 2 uses
  %i.cf = mul nsw i32 %i.ce, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.aw
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %i.o, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  call void @dorgtsqr_row_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %i.e, ptr noundef %i.cj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g) #4
  %i.ck = load i32, ptr %1, align 4, !tbaa !14    ; 2 uses
  %i.cl = mul nsw i32 %i.ck, %i.ck
  %i.cm = add nsw i32 %i.cl, %i.aw
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %i.o, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  call void @dorhr_col_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.k, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.cp, ptr noundef nonnull %i.g) #4
  %i.cq = load i32, ptr %1, align 4, !tbaa !14    ; 2 uses
  %.not188204 = icmp slt i32 %i.cq, 1
  br i1 %.not188204, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %._crit_edge
  %i.cr = add i32 %i.l, 1
  %i.cs = sext i32 %i.l to i64                    ; 5 uses
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = add i32 %i.aw, 1                        ; 2 uses
  %i.cv = add i64 %i.b, 8
  %ident.check = icmp ne i32 %i.l, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph208, %bb.r
  %indvar = phi i64 [ 0, %.lr.ph208 ], [ %indvar.next, %bb.r ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next, %bb.r ] ; 12 uses
  %12 = sub i64 1, %indvar                        ; 7 uses
  %13 = shl nuw nsw i64 %indvar, 4
  %indvar.tr.a = trunc i64 %indvar to i32
  %14 = shl i32 %indvar.tr.a, 1
  %15 = add i32 %14, %i.cu
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = add i64 %i.cv, %13
  %19 = add i64 %17, %i.a
  %indvar.tr231 = trunc i64 %indvar to i32
  %i.cw = shl i32 %indvar.tr231, 1
  %i.cx = add i32 %i.cw, %i.cu                    ; 2 uses
  %i.cy = load i32, ptr %1, align 4, !tbaa !14    ; 13 uses
  %i.cz = mul nsw i32 %i.cy, %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.db = add i32 %i.aw, %i.da                    ; 9 uses
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !16
  %i.dg = fcmp oeq double %i.df, -1.000000e+00
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cy, ptr %i.d, align 4, !tbaa !14
  %i.dh = sext i32 %i.cy to i64
  %.not190200 = icmp sgt i64 %indvars.iv, %i.dh
  br i1 %.not190200, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.di = add i32 %i.cy, 1                        ; 5 uses
  %wide.trip.count = zext i32 %i.di to i64        ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv ; 7 uses
  %min.iters.check = icmp ult i64 %12, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %ident.check221 = icmp ne i32 %i.cy, 1
  %reass.sub232 = sub i64 %wide.trip.count, %indvar
  %i.dj = add i64 %reass.sub232, -2               ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = add i32 %i.cx, %i.dk
  %i.dm = icmp slt i32 %i.dl, %i.cx
  %i.dn = icmp ugt i64 %i.dj, 4294967295
  %i.do = or i1 %i.dm, %i.dn
  %i.dp = or i1 %ident.check, %ident.check221
  %i.dq = or i1 %i.dp, %i.do
  %20 = sub i64 %19, %18
  %diff.check = icmp ugt i64 %20, -128
  %or.cond233 = select i1 %i.dq, i1 true, i1 %diff.check
  br i1 %or.cond233, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check222 = icmp ult i64 %12, 16
  br i1 %min.iters.check222, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dr = and i64 %12, 12
  %n.vec = and i64 %12, -16                       ; 4 uses
  %i.ds = add i64 %indvars.iv, %n.vec
  %invariant.op = add i32 -1, %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %.reass = add i32 %i.du, %invariant.op
  %i.dv = sext i32 %.reass to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dv ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %wide.load = load <4 x double>, ptr %i.dw, align 8, !tbaa !16
  %wide.load223 = load <4 x double>, ptr %i.dx, align 8, !tbaa !16
  %wide.load224 = load <4 x double>, ptr %i.dy, align 8, !tbaa !16
  %wide.load225 = load <4 x double>, ptr %i.dz, align 8, !tbaa !16
  %i.ea = fneg <4 x double> %wide.load
  %i.eb = fneg <4 x double> %wide.load223
  %i.ec = fneg <4 x double> %wide.load224
  %i.ed = fneg <4 x double> %wide.load225
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dt ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 32
  %i.eg = getelementptr i8, ptr %i.ee, i64 64
  %i.eh = getelementptr i8, ptr %i.ee, i64 96
  store <4 x double> %i.ea, ptr %i.ee, align 8, !tbaa !16
  store <4 x double> %i.eb, ptr %i.ef, align 8, !tbaa !16
  store <4 x double> %i.ec, ptr %i.eg, align 8, !tbaa !16
  store <4 x double> %i.ed, ptr %i.eh, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec226 = and i64 %12, -4                     ; 3 uses
  %i.ej = add i64 %indvars.iv, %n.vec226
  %invariant.op234 = add i32 -1, %i.db
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = add nuw i64 %indvars.iv, %index227      ; 2 uses
  %i.el = trunc i64 %i.ek to i32
  %.reass235 = add i32 %i.el, %invariant.op234
  %i.em = sext i32 %.reass235 to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.em
  %wide.load228 = load <4 x double>, ptr %i.en, align 8, !tbaa !16
  %i.eo = fneg <4 x double> %wide.load228
  %i.ep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ek
  store <4 x double> %i.eo, ptr %i.ep, align 8, !tbaa !16
  %index.next229 = add nuw i64 %index227, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next229, %n.vec226
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n230 = icmp eq i64 %12, %n.vec226
  br i1 %cmp.n230, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv210.ph = phi i64 [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ] ; 4 uses
  %i.er = sub i64 %wide.trip.count, %indvars.iv210.ph
  %xtraiter = and i64 %i.er, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv210.prol = phi i64 [ %indvars.iv.next211.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv210.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.es = trunc i64 %indvars.iv210.prol to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.et, %i.cy
  %i.ev = add i32 %i.db, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !16
  %i.ez = fneg double %i.ey
  %i.fa = mul nsw i64 %indvars.iv210.prol, %i.cs
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fa
  store double %i.ez, ptr %gep.prol, align 8, !tbaa !16
  %indvars.iv.next211.prol = add nuw nsw i64 %indvars.iv210.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv210.unr = phi i64 [ %indvars.iv210.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next211.prol, %vec.epilog.scalar.ph.prol ]
  %i.fb = sub i64 %indvars.iv210.ph, %wide.trip.count
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.3, %vec.epilog.scalar.ph ], [ %indvars.iv210.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fd = trunc i64 %indvars.iv210 to i32
  %i.fe = add i32 %i.fd, -1
  %i.ff = mul i32 %i.fe, %i.cy
  %i.fg = add i32 %i.db, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !16
  %i.fk = fneg double %i.fj
  %i.fl = mul nsw i64 %indvars.iv210, %i.cs
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fl
  store double %i.fk, ptr %gep, align 8, !tbaa !16
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.fm = trunc i64 %indvars.iv.next211 to i32
  %i.fn = add i32 %i.fm, -1
  %i.fo = mul i32 %i.fn, %i.cy
  %i.fp = add i32 %i.db, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !16
  %i.ft = fneg double %i.fs
  %i.fu = mul nsw i64 %indvars.iv.next211, %i.cs
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fu
  store double %i.ft, ptr %gep.1, align 8, !tbaa !16
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %i.fv = trunc i64 %indvars.iv.next211.1 to i32
  %i.fw = add i32 %i.fv, -1
  %i.fx = mul i32 %i.fw, %i.cy
  %i.fy = add i32 %i.db, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !16
  %i.gc = fneg double %i.gb
  %i.gd = mul nsw i64 %indvars.iv.next211.1, %i.cs
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gd
  store double %i.gc, ptr %gep.2, align 8, !tbaa !16
  %indvars.iv.next211.2 = add nuw nsw i64 %indvars.iv210, 3 ; 2 uses
  %i.ge = trunc i64 %indvars.iv.next211.2 to i32
  %i.gf = add i32 %i.ge, -1
  %i.gg = mul i32 %i.gf, %i.cy
  %i.gh = add i32 %i.db, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !16
  %i.gl = fneg double %i.gk
  %i.gm = mul nsw i64 %indvars.iv.next211.2, %i.cs
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gm
  store double %i.gl, ptr %gep.3, align 8, !tbaa !16
  %indvars.iv.next211.3 = add nuw nsw i64 %indvars.iv210, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next211.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !12

bb.q:                                             ; preds = %bb.o
  %reass.sub = sub i32 %i.cy, %i.da
  %i.gn = add i32 %reass.sub, 1
  store i32 %i.gn, ptr %i.d, align 4, !tbaa !14
  %i.go = trunc nuw i64 %indvars.iv to i32
  %i.gp = add i32 %i.go, -1
  %i.gq = mul nsw i32 %i.cy, %i.gp
  %i.gr = add i32 %i.db, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gs
  %i.gu = mul i32 %i.cr, %i.da
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gv
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.gt, ptr noundef nonnull %1, ptr noundef %i.gw, ptr noundef nonnull %6) #4
  br label %bb.r

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.p
  %storemerge189.lcssa = phi i32 [ %i.da, %bb.p ], [ %i.di, %middle.block ], [ %i.di, %vec.epilog.middle.block ], [ %i.di, %vec.epilog.scalar.ph ], [ %i.di, %vec.epilog.scalar.ph.prol.loopexit ]
  store i32 %storemerge189.lcssa, ptr %i.f, align 4, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not188.not = icmp samesign ult i64 %indvars.iv, %i.ct
  %indvar.next = add i64 %indvar, 1
  br i1 %.not188.not, label %bb.o, label %._crit_edge209, !llvm.loop !13

._crit_edge209:                                   ; preds = %bb.r, %._crit_edge
  %i.gx = sitofp i32 %i.be to double
  store double %i.gx, ptr %9, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge209, %bb.m, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dlatsqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dorgtsqr_row_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dorhr_col_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17, !18, !19}
!10 = distinct !{!10, !17, !18, !19}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !17, !18}
!13 = distinct !{!13, !17}
!14 = !{!5, !5, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
