Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaein?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Nonunit\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaein_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %8 to i64
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca double, align 8                   ; 16 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca double, align 8                   ; 10 uses
  %i.l = alloca double, align 8                   ; 10 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca double, align 8                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.o = load i32, ptr %4, align 4, !tbaa !75     ; 7 uses
  %narrow = xor i32 %i.o, -1
  %i.p = sext i32 %narrow to i64                  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p ; 6 uses
  %i.r = getelementptr inbounds i8, ptr %7, i64 -8 ; 38 uses
  %i.s = getelementptr inbounds i8, ptr %8, i64 -8 ; 31 uses
  %i.t = load i32, ptr %10, align 4, !tbaa !75    ; 30 uses
  %narrow885 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow885 to i64               ; 9 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %9, i64 %i.u ; 57 uses
  %i.w = getelementptr inbounds i8, ptr %11, i64 -8 ; 4 uses
  store i32 0, ptr %15, align 4, !tbaa !75
  %i.x = load i32, ptr %2, align 4, !tbaa !75
  %i.y = sitofp i32 %i.x to double
  %i.z = tail call double @sqrt(double noundef %i.y) #7 ; 8 uses
  %i.aa = fdiv double 1.000000e-01, %i.z          ; 3 uses
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !77
  %i.ab = load double, ptr %12, align 8, !tbaa !77
  %i.ac = fmul double %i.z, %i.ab                 ; 3 uses
  store double %i.ac, ptr %i.g, align 8, !tbaa !77
  %i.ad = fcmp ole double %i.ac, 1.000000e+00
  %i.ae = select i1 %i.ad, double 1.000000e+00, double %i.ac
  %i.af = load double, ptr %13, align 8, !tbaa !77
  %i.ag = fmul double %i.af, %i.ae                ; 4 uses
  %i.ah = load i32, ptr %2, align 4, !tbaa !75    ; 12 uses
  %.not902 = icmp slt i32 %i.ah, 1                ; 3 uses
  br i1 %.not902, label %bb.c, label %.lr.ph905

.lr.ph905:                                        ; preds = %bb.a
  %i.ai = add i32 %i.o, 1
  %i.aj = add i32 %i.t, 1
  %i.ak = sext i32 %i.o to i64                    ; 3 uses
  %i.al = sext i32 %i.t to i64                    ; 3 uses
  %i.am = add nuw i32 %i.ah, 1
  %wide.trip.count1060 = zext i32 %i.am to i64
  %i.an = shl nsw i64 %i.ak, 3                    ; 2 uses
  %i.ao = add nsw i64 %i.an, 8
  %i.ap = or i64 %i.ak, %i.p
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, 8                    ; 2 uses
  %i.as = shl nsw i64 %i.al, 3                    ; 2 uses
  %i.at = add nsw i64 %i.as, 8
  %i.au = or i64 %i.al, %i.u
  %i.av = shl nsw i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, 8                    ; 2 uses
  %i.ax = getelementptr i8, ptr %9, i64 %i.aw
  %i.ay = getelementptr i8, ptr %9, i64 %i.aw
  %i.az = getelementptr i8, ptr %3, i64 %i.ar
  %i.ba = getelementptr i8, ptr %3, i64 %i.ar
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph905, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph905 ], [ %indvar.next, %._crit_edge ] ; 13 uses
  %indvars.iv1057 = phi i64 [ 1, %.lr.ph905 ], [ %indvars.iv.next1058, %._crit_edge ] ; 7 uses
  %.not889.not900 = icmp samesign ugt i64 %indvars.iv1057, 1
  br i1 %.not889.not900, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.bb = mul nsw i64 %indvars.iv1057, %i.ak
  %i.bc = mul nsw i64 %indvars.iv1057, %i.al
  %invariant.gep = getelementptr [8 x i8], ptr %i.q, i64 %i.bb ; 11 uses
  %invariant.gep1249 = getelementptr [8 x i8], ptr %i.v, i64 %i.bc ; 11 uses
  %min.iters.check = icmp ult i64 %indvar, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = mul i64 %indvar, %i.as
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd
  %i.bf = mul i64 %indvar, %i.at
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = mul i64 %indvar, %i.an
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.bj = mul i64 %indvar, %i.ao
  %i.bk = getelementptr i8, ptr %i.ba, i64 %i.bj
  %bound0 = icmp ult ptr %i.be, %i.bk
  %bound1 = icmp ult ptr %i.bi, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1327 = icmp ult i64 %indvar, 16
  br i1 %min.iters.check1327, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %indvar, 12
  %n.vec = and i64 %indvar, -16                   ; 4 uses
  %i.bm = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = or disjoint i64 %index, 1               ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bn ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %i.bq = getelementptr i8, ptr %i.bo, i64 64
  %i.br = getelementptr i8, ptr %i.bo, i64 96
  %wide.load = load <4 x double>, ptr %i.bo, align 8, !tbaa !77, !alias.scope !78
  %wide.load1328 = load <4 x double>, ptr %i.bp, align 8, !tbaa !77, !alias.scope !78
  %wide.load1329 = load <4 x double>, ptr %i.bq, align 8, !tbaa !77, !alias.scope !78
  %wide.load1330 = load <4 x double>, ptr %i.br, align 8, !tbaa !77, !alias.scope !78
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %i.bn ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = getelementptr i8, ptr %i.bs, i64 64
  %i.bv = getelementptr i8, ptr %i.bs, i64 96
  store <4 x double> %wide.load, ptr %i.bs, align 8, !tbaa !77, !alias.scope !79, !noalias !78
  store <4 x double> %wide.load1328, ptr %i.bt, align 8, !tbaa !77, !alias.scope !79, !noalias !78
  store <4 x double> %wide.load1329, ptr %i.bu, align 8, !tbaa !77, !alias.scope !79, !noalias !78
  store <4 x double> %wide.load1330, ptr %i.bv, align 8, !tbaa !77, !alias.scope !79, !noalias !78
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1331 = and i64 %indvar, -4                ; 3 uses
  %i.bx = or disjoint i64 %n.vec1331, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1332 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1334, %vec.epilog.vector.body ] ; 2 uses
  %i.by = or disjoint i64 %index1332, 1           ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by
  %wide.load1333 = load <4 x double>, ptr %i.bz, align 8, !tbaa !77, !alias.scope !78
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %i.by
  store <4 x double> %wide.load1333, ptr %i.ca, align 8, !tbaa !77, !alias.scope !79, !noalias !78
  %index.next1334 = add nuw i64 %index1332, 4     ; 2 uses
  %i.cb = icmp eq i64 %index.next1334, %n.vec1331
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1335 = icmp eq i64 %indvar, %n.vec1331
  br i1 %cmp.n1335, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 4 uses
  %i.cc = sub i64 %indvars.iv1057, %indvars.iv.ph
  %i.cd = sub i64 %indvar, %indvars.iv.ph
  %xtraiter = and i64 %i.cc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ce = load double, ptr %gep.prol, align 8, !tbaa !77
  %gep1250.prol = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.prol
  store double %i.ce, ptr %gep1250.prol, align 8, !tbaa !77
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !13

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cf = icmp ult i64 %i.cd, 7
  br i1 %i.cf, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cg = load double, ptr %gep, align 8, !tbaa !77
  %gep1250 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv
  store double %i.cg, ptr %gep1250, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ch = load double, ptr %gep.1, align 8, !tbaa !77
  %gep1250.1 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next
  store double %i.ch, ptr %gep1250.1, align 8, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ci = load double, ptr %gep.2, align 8, !tbaa !77
  %gep1250.2 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.1
  store double %i.ci, ptr %gep1250.2, align 8, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.cj = load double, ptr %gep.3, align 8, !tbaa !77
  %gep1250.3 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.2
  store double %i.cj, ptr %gep1250.3, align 8, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.ck = load double, ptr %gep.4, align 8, !tbaa !77
  %gep1250.4 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.3
  store double %i.ck, ptr %gep1250.4, align 8, !tbaa !77
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.cl = load double, ptr %gep.5, align 8, !tbaa !77
  %gep1250.5 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.4
  store double %i.cl, ptr %gep1250.5, align 8, !tbaa !77
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.cm = load double, ptr %gep.6, align 8, !tbaa !77
  %gep1250.6 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.5
  store double %i.cm, ptr %gep1250.6, align 8, !tbaa !77
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.cn = load double, ptr %gep.7, align 8, !tbaa !77
  %gep1250.7 = getelementptr [8 x i8], ptr %invariant.gep1249, i64 %indvars.iv.next.6
end_hunk_0
begin_hunk_1_@dlaein_:bb.a

bb.bb:                                            ; preds = %bb.az, %._crit_edge966
  %i.arq = phi double [ %i.aqy, %bb.az ], [ 0.000000e+00, %._crit_edge966 ] ; 2 uses
  %.3854 = phi double [ %i.arj, %bb.az ], [ 1.000000e+00, %._crit_edge966 ]
  %.1837 = phi double [ %i.arl, %bb.az ], [ %i.arp, %._crit_edge966 ]
  %i.arr = load i32, ptr %i.e, align 4, !tbaa !75 ; 2 uses
  %i.ars = add nsw i32 %i.arr, %.11971            ; 3 uses
  %i.art = icmp slt i32 %i.arr, 0
  %i.aru = load i32, ptr %i.d, align 4            ; 2 uses
  %i.arv = icmp sge i32 %i.ars, %i.aru
  %i.arw = icmp sle i32 %i.ars, %i.aru
  %.in = select i1 %i.art, i1 %i.arv, i1 %i.arw
  br i1 %.in, label %.lr.ph975, label %._crit_edge976.loopexit, !llvm.loop !67

._crit_edge976.loopexit:                          ; preds = %bb.bb
  %i.arx = fmul double %i.aa, %i.arq
  br label %._crit_edge976

._crit_edge976:                                   ; preds = %._crit_edge976.loopexit, %bb.aq
  %.lcssa968 = phi double [ %i.aa, %bb.aq ], [ %i.arx, %._crit_edge976.loopexit ]
  %i.ary = call double @dasum_(ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull @c__1) #7
  %i.arz = call double @dasum_(ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull @c__1) #7
  %i.asa = fadd double %i.ary, %i.arz
  %i.asb = fcmp ult double %i.asa, %.lcssa968
  br i1 %i.asb, label %bb.bc, label %.loopexit897

bb.bc:                                            ; preds = %._crit_edge976
  %i.asc = load double, ptr %12, align 8, !tbaa !77 ; 2 uses
  %i.asd = fdiv double %i.asc, %i.air             ; 11 uses
  store double %i.asc, ptr %7, align 8, !tbaa !77
  store double 0.000000e+00, ptr %8, align 8, !tbaa !77
  %i.ase = load i32, ptr %2, align 4, !tbaa !75   ; 5 uses
  store i32 %i.ase, ptr %i.e, align 4, !tbaa !75
  %.not870977 = icmp slt i32 %i.ase, 2
  br i1 %.not870977, label %._crit_edge981, label %iter.check1423

iter.check1423:                                   ; preds = %bb.bc
  %i.asf = add nuw i32 %i.ase, 1
  %wide.trip.count1132 = zext i32 %i.asf to i64   ; 3 uses
  %i.asg = add nsw i64 %wide.trip.count1132, -2   ; 7 uses
  %min.iters.check1410 = icmp ult i64 %i.asg, 4
  %or.cond1620 = or i1 %min.iters.check1410, %diff.check
  br i1 %or.cond1620, label %.lr.ph980.preheader, label %vector.main.loop.iter.check1412

vector.main.loop.iter.check1412:                  ; preds = %iter.check1423
  %min.iters.check1413 = icmp ult i64 %i.asg, 16
  br i1 %min.iters.check1413, label %vec.epilog.ph1427, label %vector.ph1414

vector.ph1414:                                    ; preds = %vector.main.loop.iter.check1412
  %i.ash = and i64 %i.asg, 12
  %n.vec1415 = and i64 %i.asg, -16                ; 4 uses
  %i.asi = or disjoint i64 %n.vec1415, 2
  %broadcast.splatinsert1416 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1417 = shufflevector <4 x double> %broadcast.splatinsert1416, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.ph1414, %vector.body1418
  %index1419 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1420, %vector.body1418 ] ; 2 uses
  %i.asj = or disjoint i64 %index1419, 2          ; 2 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.asj ; 4 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 32
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ask, i64 96
  store <4 x double> %broadcast.splat1417, ptr %i.ask, align 8, !tbaa !77
  store <4 x double> %broadcast.splat1417, ptr %i.asl, align 8, !tbaa !77
  store <4 x double> %broadcast.splat1417, ptr %i.asm, align 8, !tbaa !77
  store <4 x double> %broadcast.splat1417, ptr %i.asn, align 8, !tbaa !77
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.asj ; 4 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 32
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 96
  store <4 x double> zeroinitializer, ptr %i.aso, align 8, !tbaa !77
  store <4 x double> zeroinitializer, ptr %i.asp, align 8, !tbaa !77
  store <4 x double> zeroinitializer, ptr %i.asq, align 8, !tbaa !77
  store <4 x double> zeroinitializer, ptr %i.asr, align 8, !tbaa !77
  %index.next1420 = add nuw i64 %index1419, 16    ; 2 uses
  %i.ass = icmp eq i64 %index.next1420, %n.vec1415
  br i1 %i.ass, label %middle.block1421, label %vector.body1418, !llvm.loop !68

middle.block1421:                                 ; preds = %vector.body1418
  %cmp.n1422 = icmp eq i64 %i.asg, %n.vec1415
  br i1 %cmp.n1422, label %._crit_edge981, label %vec.epilog.iter.check1424

vec.epilog.iter.check1424:                        ; preds = %middle.block1421
  %min.epilog.iters.check1426 = icmp eq i64 %i.ash, 0
  br i1 %min.epilog.iters.check1426, label %.lr.ph980.preheader, label %vec.epilog.ph1427, !prof !83

vec.epilog.ph1427:                                ; preds = %vector.main.loop.iter.check1412, %vec.epilog.iter.check1424
  %vec.epilog.resume.val1428 = phi i64 [ %n.vec1415, %vec.epilog.iter.check1424 ], [ 0, %vector.main.loop.iter.check1412 ]
  %n.vec1429 = and i64 %i.asg, -4                 ; 3 uses
  %i.ast = or disjoint i64 %n.vec1429, 2
  %broadcast.splatinsert1430 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1431 = shufflevector <4 x double> %broadcast.splatinsert1430, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1432

vec.epilog.vector.body1432:                       ; preds = %vec.epilog.vector.body1432, %vec.epilog.ph1427
  %index1433 = phi i64 [ %vec.epilog.resume.val1428, %vec.epilog.ph1427 ], [ %index.next1434, %vec.epilog.vector.body1432 ] ; 2 uses
  %i.asu = or disjoint i64 %index1433, 2          ; 2 uses
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.asu
  store <4 x double> %broadcast.splat1431, ptr %i.asv, align 8, !tbaa !77
  %i.asw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.asu
  store <4 x double> zeroinitializer, ptr %i.asw, align 8, !tbaa !77
  %index.next1434 = add nuw i64 %index1433, 4     ; 2 uses
  %i.asx = icmp eq i64 %index.next1434, %n.vec1429
  br i1 %i.asx, label %vec.epilog.middle.block1435, label %vec.epilog.vector.body1432, !llvm.loop !69

vec.epilog.middle.block1435:                      ; preds = %vec.epilog.vector.body1432
  %cmp.n1436 = icmp eq i64 %i.asg, %n.vec1429
  br i1 %cmp.n1436, label %._crit_edge981, label %.lr.ph980.preheader

.lr.ph980.preheader:                              ; preds = %iter.check1423, %vec.epilog.iter.check1424, %vec.epilog.middle.block1435
  %indvars.iv1128.ph = phi i64 [ 2, %iter.check1423 ], [ %i.asi, %vec.epilog.iter.check1424 ], [ %i.ast, %vec.epilog.middle.block1435 ] ; 4 uses
  %i.asy = sub nsw i64 %wide.trip.count1132, %indvars.iv1128.ph
  %i.asz = zext nneg i32 %i.ase to i64
  %i.ata = sub nsw i64 %i.asz, %indvars.iv1128.ph
  %xtraiter1689 = and i64 %i.asy, 7               ; 2 uses
  %lcmp.mod1690.not = icmp eq i64 %xtraiter1689, 0
  br i1 %lcmp.mod1690.not, label %.lr.ph980.prol.loopexit, label %.lr.ph980.prol

.lr.ph980.prol:                                   ; preds = %.lr.ph980.preheader, %.lr.ph980.prol
  %indvars.iv1128.prol = phi i64 [ %indvars.iv.next1129.prol, %.lr.ph980.prol ], [ %indvars.iv1128.ph, %.lr.ph980.preheader ] ; 3 uses
  %prol.iter1691 = phi i64 [ %prol.iter1691.next, %.lr.ph980.prol ], [ 0, %.lr.ph980.preheader ]
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1128.prol
  store double %i.asd, ptr %i.atb, align 8, !tbaa !77
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1128.prol
  store double 0.000000e+00, ptr %i.atc, align 8, !tbaa !77
  %indvars.iv.next1129.prol = add nuw nsw i64 %indvars.iv1128.prol, 1 ; 2 uses
  %prol.iter1691.next = add i64 %prol.iter1691, 1 ; 2 uses
  %prol.iter1691.cmp.not = icmp eq i64 %prol.iter1691.next, %xtraiter1689
  br i1 %prol.iter1691.cmp.not, label %.lr.ph980.prol.loopexit, label %.lr.ph980.prol, !llvm.loop !70

.lr.ph980.prol.loopexit:                          ; preds = %.lr.ph980.prol, %.lr.ph980.preheader
  %indvars.iv1128.unr = phi i64 [ %indvars.iv1128.ph, %.lr.ph980.preheader ], [ %indvars.iv.next1129.prol, %.lr.ph980.prol ]
  %i.atd = icmp ult i64 %i.ata, 7
  br i1 %i.atd, label %._crit_edge981, label %.lr.ph980

.lr.ph980:                                        ; preds = %.lr.ph980.prol.loopexit, %.lr.ph980
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129.7, %.lr.ph980 ], [ %indvars.iv1128.unr, %.lr.ph980.prol.loopexit ] ; 11 uses
  %i.ate = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1128
  store double %i.asd, ptr %i.ate, align 8, !tbaa !77
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1128
  store double 0.000000e+00, ptr %i.atf, align 8, !tbaa !77
  %i.atg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1128
  store double %i.asd, ptr %i.atg, align 8, !tbaa !77
  %i.ath = getelementptr [8 x i8], ptr %8, i64 %indvars.iv1128
  store double 0.000000e+00, ptr %i.ath, align 8, !tbaa !77
  %indvars.iv.next1129.1 = add nuw nsw i64 %indvars.iv1128, 2 ; 2 uses
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.1
  store double %i.asd, ptr %i.ati, align 8, !tbaa !77
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.1
  store double 0.000000e+00, ptr %i.atj, align 8, !tbaa !77
  %indvars.iv.next1129.2 = add nuw nsw i64 %indvars.iv1128, 3 ; 2 uses
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.2
  store double %i.asd, ptr %i.atk, align 8, !tbaa !77
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.2
  store double 0.000000e+00, ptr %i.atl, align 8, !tbaa !77
  %indvars.iv.next1129.3 = add nuw nsw i64 %indvars.iv1128, 4 ; 2 uses
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.3
  store double %i.asd, ptr %i.atm, align 8, !tbaa !77
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.3
  store double 0.000000e+00, ptr %i.atn, align 8, !tbaa !77
  %indvars.iv.next1129.4 = add nuw nsw i64 %indvars.iv1128, 5 ; 2 uses
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.4
  store double %i.asd, ptr %i.ato, align 8, !tbaa !77
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.4
  store double 0.000000e+00, ptr %i.atp, align 8, !tbaa !77
  %indvars.iv.next1129.5 = add nuw nsw i64 %indvars.iv1128, 6 ; 2 uses
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.5
  store double %i.asd, ptr %i.atq, align 8, !tbaa !77
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.5
  store double 0.000000e+00, ptr %i.atr, align 8, !tbaa !77
  %indvars.iv.next1129.6 = add nuw nsw i64 %indvars.iv1128, 7 ; 2 uses
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1129.6
  store double %i.asd, ptr %i.ats, align 8, !tbaa !77
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1129.6
  store double 0.000000e+00, ptr %i.att, align 8, !tbaa !77
  %indvars.iv.next1129.7 = add nuw nsw i64 %indvars.iv1128, 8 ; 2 uses
  %exitcond1133.not.7 = icmp eq i64 %indvars.iv.next1129.7, %wide.trip.count1132
  br i1 %exitcond1133.not.7, label %._crit_edge981, label %.lr.ph980, !llvm.loop !71

._crit_edge981:                                   ; preds = %.lr.ph980.prol.loopexit, %.lr.ph980, %middle.block1421, %vec.epilog.middle.block1435, %bb.bc
  %i.atu = load double, ptr %12, align 8, !tbaa !77
  %i.atv = sub nsw i32 %i.ase, %.1985
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr [8 x i8], ptr %i.r, i64 %i.atw
  %i.aty = getelementptr i8, ptr %i.atx, i64 8    ; 2 uses
  %i.atz = load double, ptr %i.aty, align 8, !tbaa !77
  %i.aua = fneg double %i.atu
  %i.aub = call double @llvm.fmuladd.f64(double %i.aua, double %i.z, double %i.atz)
  store double %i.aub, ptr %i.aty, align 8, !tbaa !77
  %i.auc = add nuw nsw i32 %.1985, 1
  %i.aud = load i32, ptr %i.c, align 4, !tbaa !75
  %.not869.not = icmp slt i32 %.1985, %i.aud
  br i1 %.not869.not, label %bb.aq, label %._crit_edge988, !llvm.loop !72

._crit_edge988:                                   ; preds = %._crit_edge981, %bb.ap
  store i32 1, ptr %15, align 4, !tbaa !75
  br label %.loopexit897

.loopexit897:                                     ; preds = %._crit_edge976, %._crit_edge988
  %i.aue = load i32, ptr %2, align 4, !tbaa !75   ; 4 uses
  store i32 %i.aue, ptr %i.c, align 4, !tbaa !75
  %.not871990 = icmp slt i32 %i.aue, 1
  br i1 %.not871990, label %bb.bd, label %.lr.ph994.preheader

.lr.ph994.preheader:                              ; preds = %.loopexit897
  %i.auf = zext nneg i32 %i.aue to i64            ; 2 uses
  %xtraiter1692 = and i64 %i.auf, 3               ; 3 uses
  %i.aug = icmp ult i32 %i.aue, 4
  br i1 %i.aug, label %.lr.ph994.epil.preheader, label %.lr.ph994.preheader.new

.lr.ph994.preheader.new:                          ; preds = %.lr.ph994.preheader
  %unroll_iter1698 = and i64 %i.auf, 2147483644
  br label %.lr.ph994.a

.lr.ph994.a:                                      ; preds = %.lr.ph994.a, %.lr.ph994.preheader.new
  %indvars.iv1134.a = phi i64 [ 1, %.lr.ph994.preheader.new ], [ %indvars.iv.next1135.3, %.lr.ph994.a ] ; 7 uses
  %.0832992 = phi double [ 0.000000e+00, %.lr.ph994.preheader.new ], [ %65, %.lr.ph994.a ] ; 2 uses
  %niter1699 = phi i64 [ 0, %.lr.ph994.preheader.new ], [ %niter1699.next.3, %.lr.ph994.a ]
  %i.auh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1134.a
  %16 = load double, ptr %i.auh, align 8, !tbaa !77 ; 3 uses
  %17 = fcmp oge double %16, 0.000000e+00
  %18 = fneg double %16
  %19 = select i1 %17, double %16, double %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1134.a
  %21 = load double, ptr %20, align 8, !tbaa !77  ; 3 uses
  %22 = fcmp oge double %21, 0.000000e+00
  %23 = fneg double %21
  %24 = select i1 %22, double %21, double %23
  %25 = fadd double %19, %24                      ; 2 uses
  %26 = fcmp oge double %.0832992, %25
  %27 = select i1 %26, double %.0832992, double %25 ; 2 uses
  %28 = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1134.a
  %29 = load double, ptr %28, align 8, !tbaa !77  ; 3 uses
  %30 = fcmp oge double %29, 0.000000e+00
  %31 = fneg double %29
  %32 = select i1 %30, double %29, double %31
  %i.aui = getelementptr [8 x i8], ptr %8, i64 %indvars.iv1134.a
  %33 = load double, ptr %i.aui, align 8, !tbaa !77 ; 3 uses
  %34 = fcmp oge double %33, 0.000000e+00
  %35 = fneg double %33
  %36 = select i1 %34, double %33, double %35
  %37 = fadd double %32, %36                      ; 2 uses
  %38 = fcmp oge double %27, %37
  %39 = select i1 %38, double %27, double %37     ; 2 uses
  %indvars.iv.next1135.1 = add nuw nsw i64 %indvars.iv1134.a, 2 ; 2 uses
  %40 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1135.1
  %41 = load double, ptr %40, align 8, !tbaa !77  ; 3 uses
  %42 = fcmp oge double %41, 0.000000e+00
  %43 = fneg double %41
  %44 = select i1 %42, double %41, double %43
  %45 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1135.1
  %46 = load double, ptr %45, align 8, !tbaa !77  ; 3 uses
  %47 = fcmp oge double %46, 0.000000e+00
  %48 = fneg double %46
  %49 = select i1 %47, double %46, double %48
  %50 = fadd double %44, %49                      ; 2 uses
  %51 = fcmp oge double %39, %50
  %52 = select i1 %51, double %39, double %50     ; 2 uses
  %indvars.iv.next1135.2 = add nuw nsw i64 %indvars.iv1134.a, 3 ; 2 uses
  %53 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1135.2
  %54 = load double, ptr %53, align 8, !tbaa !77  ; 3 uses
  %55 = fcmp oge double %54, 0.000000e+00
  %56 = fneg double %54
  %57 = select i1 %55, double %54, double %56
  %58 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1135.2
  %59 = load double, ptr %58, align 8, !tbaa !77  ; 4 uses
  %60 = fcmp oge double %59, 0.000000e+00
  %61 = fneg double %59
  %62 = select i1 %60, double %59, double %61
  %63 = fadd double %57, %62                      ; 2 uses
  %64 = fcmp oge double %52, %63
  %65 = select i1 %64, double %52, double %63     ; 3 uses
  %indvars.iv.next1135.3 = add nuw nsw i64 %indvars.iv1134.a, 4 ; 2 uses
  %niter1699.next.3 = add i64 %niter1699, 4       ; 2 uses
  %niter1699.ncmp.3 = icmp eq i64 %niter1699.next.3, %unroll_iter1698
  br i1 %niter1699.ncmp.3, label %._crit_edge995.unr-lcssa, label %.lr.ph994.a, !llvm.loop !73

._crit_edge995.unr-lcssa:                         ; preds = %.lr.ph994.a
  %lcmp.mod1694.not = icmp eq i64 %xtraiter1692, 0
  br i1 %lcmp.mod1694.not, label %._crit_edge995, label %.lr.ph994.epil.preheader

.lr.ph994.epil.preheader:                         ; preds = %._crit_edge995.unr-lcssa, %.lr.ph994.preheader
  %indvars.iv1134.epil.init = phi i64 [ 1, %.lr.ph994.preheader ], [ %indvars.iv.next1135.3, %._crit_edge995.unr-lcssa ]
  %.0832992.epil.init = phi double [ 0.000000e+00, %.lr.ph994.preheader ], [ %65, %._crit_edge995.unr-lcssa ]
  %lcmp.mod1697 = icmp ne i64 %xtraiter1692, 0
  call void @llvm.assume(i1 %lcmp.mod1697)
  br label %.lr.ph994.epil

.lr.ph994.epil:                                   ; preds = %.lr.ph994.epil, %.lr.ph994.epil.preheader
  %indvars.iv1134.epil = phi i64 [ %indvars.iv1134.epil.init, %.lr.ph994.epil.preheader ], [ %indvars.iv.next1135.epil, %.lr.ph994.epil ] ; 3 uses
  %.0832992.epil = phi double [ %.0832992.epil.init, %.lr.ph994.epil.preheader ], [ %i.auv, %.lr.ph994.epil ] ; 2 uses
  %epil.iter1693 = phi i64 [ 0, %.lr.ph994.epil.preheader ], [ %epil.iter1693.next, %.lr.ph994.epil ]
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1134.epil
  %i.auk = load double, ptr %i.auj, align 8, !tbaa !77 ; 3 uses
  %i.aul = fcmp oge double %i.auk, 0.000000e+00
  %i.aum = fneg double %i.auk
  %i.aun = select i1 %i.aul, double %i.auk, double %i.aum
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1134.epil
  %i.aup = load double, ptr %i.auo, align 8, !tbaa !77 ; 4 uses
  %i.auq = fcmp oge double %i.aup, 0.000000e+00
  %i.aur = fneg double %i.aup
  %i.aus = select i1 %i.auq, double %i.aup, double %i.aur
  %i.aut = fadd double %i.aun, %i.aus             ; 2 uses
  %i.auu = fcmp oge double %.0832992.epil, %i.aut
  %i.auv = select i1 %i.auu, double %.0832992.epil, double %i.aut ; 2 uses
  %indvars.iv.next1135.epil = add nuw nsw i64 %indvars.iv1134.epil, 1
  %epil.iter1693.next = add i64 %epil.iter1693, 1 ; 2 uses
  %epil.iter1693.cmp.not = icmp eq i64 %epil.iter1693.next, %xtraiter1692
  br i1 %epil.iter1693.cmp.not, label %._crit_edge995, label %.lr.ph994.epil, !llvm.loop !74

._crit_edge995:                                   ; preds = %.lr.ph994.epil, %._crit_edge995.unr-lcssa
  %.lcssa1627 = phi double [ %59, %._crit_edge995.unr-lcssa ], [ %i.aup, %.lr.ph994.epil ]
  %.lcssa1626 = phi double [ %65, %._crit_edge995.unr-lcssa ], [ %i.auv, %.lr.ph994.epil ]
  store double %.lcssa1627, ptr %i.g, align 8, !tbaa !77
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge995, %.loopexit897
  %.0832.lcssa = phi double [ %.lcssa1626, %._crit_edge995 ], [ 0.000000e+00, %.loopexit897 ]
  %i.auw = fdiv double 1.000000e+00, %.0832.lcssa ; 2 uses
  store double %i.auw, ptr %i.f, align 8, !tbaa !77
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %7, ptr noundef nonnull @c__1) #7
  store double %i.auw, ptr %i.f, align 8, !tbaa !77
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %8, ptr noundef nonnull @c__1) #7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @dlatrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @dasum_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @dlapy2_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dladiv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !80, !81, !82}
!12 = distinct !{!12, !80, !81, !82}
!13 = distinct !{!13, !84}
!14 = distinct !{!14, !80, !81}
!15 = distinct !{!15, !80}
!16 = distinct !{!16, !80, !81, !82}
!17 = distinct !{!17, !80, !81, !82}
!18 = distinct !{!18, !80, !82, !81}
!19 = distinct !{!19, !84}
!20 = distinct !{!20, !80}
!21 = distinct !{!21, !84}
!22 = distinct !{!22, !84}
!23 = distinct !{!23, !80}
!24 = distinct !{!24, !84}
!25 = distinct !{!25, !80}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !80, !81, !82}
!30 = distinct !{!30, !84}
!31 = distinct !{!31, !80, !81}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !80, !81, !82}
!36 = distinct !{!36, !80, !81, !82}
!37 = distinct !{!37, !84}
!38 = distinct !{!38, !80, !81}
!39 = distinct !{!39, !80}
!40 = distinct !{!40, !80, !81, !82}
!41 = distinct !{!41, !80, !81, !82}
!42 = distinct !{!42, !80, !82, !81}
!43 = distinct !{!43, !80}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !80, !81, !82}
!49 = distinct !{!49, !80, !81, !82}
!50 = distinct !{!50, !84}
!51 = distinct !{!51, !80, !81}
!52 = distinct !{!52, !80}
!53 = distinct !{!53, !80}
!54 = distinct !{!54, !80}
!55 = distinct !{!55, !80, !81, !82}
!56 = distinct !{!56, !80, !81, !82}
!57 = distinct !{!57, !84}
!58 = distinct !{!58, !80, !81}
!59 = distinct !{!59, !80}
!60 = distinct !{!60, !80, !94}
!61 = distinct !{!61, !80}
!62 = distinct !{!62, !80}
!63 = distinct !{!63, !84}
!64 = distinct !{!64, !80}
!65 = distinct !{!65, !80}
!66 = distinct !{!66, !84}
!67 = distinct !{!67, !80}
!68 = distinct !{!68, !80, !81, !82}
!69 = distinct !{!69, !80, !81, !82}
!70 = distinct !{!70, !84}
!71 = distinct !{!71, !80, !81}
!72 = distinct !{!72, !80}
!73 = distinct !{!73, !80}
!74 = distinct !{!74, !84}
!75 = !{!5, !5, i64 0}
!76 = !{!"double", !4, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!9}
!79 = !{!10}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"branch_weights", i32 4, i32 12}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!27}
!86 = !{!28}
!87 = !{!33}
!88 = !{!34}
!89 = !{!4, !4, i64 0}
!90 = !{!45}
!91 = !{!46}
!92 = !{!47, !45}
!93 = !{!47}
!94 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
