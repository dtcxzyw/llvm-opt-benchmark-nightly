Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newbh?download=true
inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }

@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@nbody = common dso_local local_unnamed_addr global i32 0, align 4
@NumNodes = common dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@bp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"%2d BODY@%x %f, %f, %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%2d CELL@%x %f, %f, %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%2d NULL TREE\0A\00", align 1
@root = common dso_local local_unnamed_addr global ptr null, align 8
@rmin = common dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@xxxrsize = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@arg1 = common dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [16 x i8] c"bodies created \00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @dealwithargs(i32 noundef %0, ptr noundef %1) #20 ; 0 uses
  %i.b = load i32, ptr @nbody, align 4, !tbaa !4
  %i.c = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.b, i32 noundef %i.c) ; 0 uses
  %i.e = tail call ptr @old_main()                ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dealwithargs(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @old_main() local_unnamed_addr #0 {
.preheader118.preheader:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x ptr], align 16              ; 5 uses
  %0 = alloca %struct.datapoints, align 16        ; 9 uses
  %i.c = load i32, ptr @NumNodes, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  tail call void @srand(i32 noundef 123) #20
  %i.d = tail call noalias dereferenceable_or_null(1064) ptr @malloc(i64 noundef 1064) #21 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !8
  store <2 x double> splat (double -2.000000e+00), ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x double> <double -2.000000e+00, double 4.000000e+00>, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.a

bb.a:                                             ; preds = %.preheader118.preheader, %.preheader116.preheader
  %indvars.iv = phi i64 [ 0, %.preheader118.preheader ], [ %indvars.iv.next, %.preheader116.preheader ] ; 3 uses
  %.098123 = phi ptr [ null, %.preheader118.preheader ], [ %.sroa.10.0.copyload, %.preheader116.preheader ] ; 2 uses
  %i.h = phi <2 x double> [ zeroinitializer, %.preheader118.preheader ], [ %i.x, %.preheader116.preheader ]
  %i.i = phi <2 x double> [ zeroinitializer, %.preheader118.preheader ], [ %i.y, %.preheader116.preheader ]
  %i.j = phi <2 x double> [ zeroinitializer, %.preheader118.preheader ], [ %i.v, %.preheader116.preheader ]
  %i.k = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.l = sdiv i32 32, %i.k
  %.lhs.trunc = trunc i64 %indvars.iv to i8
  %.rhs.trunc = trunc nsw i32 %i.l to i8
  %i.m = sdiv i8 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i8 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.n = load i32, ptr @nbody, align 4, !tbaa !4
  %i.o = sdiv i32 %i.n, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @uniform_testdata(ptr dead_on_unwind nonnull writable sret(%struct.datapoints) align 8 %0, i32 noundef %.sext, i32 noundef %i.o, i32 noundef %i.p)
  %i.q = load <2 x double>, ptr %0, align 16
  %i.r = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 16
  %i.s = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !15 ; 2 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %.sroa.9.0.copyload, ptr %i.t, align 8, !tbaa !15
  %.not100 = icmp eq ptr %.098123, null
  br i1 %.not100, label %.preheader116.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.098123, i64 128
  store ptr %.sroa.9.0.copyload, ptr %i.u, align 8, !tbaa !17
  br label %.preheader116.preheader

.preheader116.preheader:                          ; preds = %bb.b, %bb.a
  %i.v = fadd <2 x double> %i.j, %i.q             ; 2 uses
  %i.w = insertelement <2 x double> %i.r, double %.sroa.8.0.copyload, i64 1
  %i.x = fadd <2 x double> %i.h, %i.w             ; 2 uses
  %i.y = fadd <2 x double> %i.i, %i.s             ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.preheader115, label %bb.a, !llvm.loop !20

.preheader115:                                    ; preds = %.preheader116.preheader
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.z = load i32, ptr @nbody, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ad = fdiv <2 x double> %i.v, %i.ac
  %i.ae = fdiv <2 x double> %i.y, %i.ac
  %i.af = fdiv <2 x double> %i.x, %i.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false), !tbaa !15
  %i.ag = sdiv i32 64, %i.c
  %.099130 = load ptr, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %.not131 = icmp eq ptr %.099130, null
  br i1 %.not131, label %.preheader111, label %.preheader113

.preheader113:                                    ; preds = %.preheader115, %intcoord.exit
  %.099132 = phi ptr [ %.099, %intcoord.exit ], [ %.099130, %.preheader115 ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.099132, i64 16 ; 2 uses
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !13
  %i.aj = fsub <2 x double> %i.ai, %i.ad          ; 3 uses
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.099132, i64 32 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.099132, i64 48 ; 2 uses
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !13
  %i.ao = fsub <2 x double> %i.an, %i.ae
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.099132, i64 64 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13
  %i.ar = insertelement <2 x double> poison, double %i.al, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fsub <2 x double> %i.as, %i.af          ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  store double %i.au, ptr %i.ak, align 8, !tbaa !13
  %i.av = extractelement <2 x double> %i.at, i64 1
  store double %i.av, ptr %i.ap, align 8, !tbaa !13
  %i.aw = extractelement <2 x double> %i.aj, i64 0
  %i.ax = fadd double %i.aw, 2.000000e+00
  %i.ay = fmul double %i.ax, 2.500000e-01         ; 3 uses
  %i.az = fcmp oge double %i.ay, 0.000000e+00
  %i.ba = fcmp olt double %i.ay, 1.000000e+00
  %or.cond.i = and i1 %i.az, %i.ba
  br i1 %or.cond.i, label %bb.c, label %bb.d

.preheader111:                                    ; preds = %intcoord.exit, %.preheader115
  %i.bb = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader111
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  br label %bb.h

bb.c:                                             ; preds = %.preheader113
  %i.be = fmul nnan double %i.ay, f0x41D0000000000000
  %i.bf = tail call double @llvm.floor.f64(double %i.be)
  %i.bg = fptosi double %i.bf to i32
  %i.bh = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader113
  %.sroa.024.0.i = phi i64 [ %i.bh, %bb.c ], [ 0, %.preheader113 ] ; 2 uses
  %i.bi = extractelement <2 x double> %i.aj, i64 1
  %i.bj = fadd double %i.bi, 2.000000e+00
  %i.bk = fmul double %i.bj, 2.500000e-01         ; 3 uses
  %i.bl = fcmp oge double %i.bk, 0.000000e+00
  %i.bm = fcmp olt double %i.bk, 1.000000e+00
  %or.cond3.i = and i1 %i.bl, %i.bm
  br i1 %or.cond3.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = fmul nnan double %i.bk, f0x41D0000000000000
  %i.bo = tail call double @llvm.floor.f64(double %i.bn)
  %i.bp = fptosi double %i.bo to i32
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bq, 32
  %i.bs = or disjoint i64 %.sroa.024.0.i, %i.br
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.bs, %bb.e ], [ %.sroa.024.0.i, %bb.d ] ; 2 uses
  %i.bt = fadd double %i.au, 2.000000e+00
  %i.bu = fmul double %i.bt, 2.500000e-01         ; 3 uses
  %i.bv = fcmp oge double %i.bu, 0.000000e+00
  %i.bw = fcmp olt double %i.bu, 1.000000e+00
  %or.cond5.i = and i1 %i.bv, %i.bw
  br i1 %or.cond5.i, label %bb.g, label %intcoord.exit

bb.g:                                             ; preds = %bb.f
  %i.bx = fmul nnan double %i.bu, f0x41D0000000000000
  %i.by = tail call double @llvm.floor.f64(double %i.bx)
  %i.bz = fptosi double %i.by to i32
  br label %intcoord.exit

intcoord.exit:                                    ; preds = %bb.f, %bb.g
  %.sroa.5.8.insert.insert.i = phi i32 [ %i.bz, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.3.0.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.3.0.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %i.ca = lshr i32 %.sroa.0.0.extract.trunc.i, 27
  %i.cb = and i32 %i.ca, 4
  %i.cc = lshr i32 %.sroa.2.0.extract.trunc.i, 28
  %i.cd = and i32 %i.cc, 2
  %.1.1.i = or disjoint i32 %i.cb, %i.cd
  %i.ce = lshr i32 %.sroa.5.8.insert.insert.i, 29
  %.lobit = and i32 %i.ce, 1
  %.1.2.i = or disjoint i32 %.lobit, %.1.1.i
  %i.cf = shl nuw nsw i32 %.1.2.i, 3
  %i.cg = lshr i32 %.sroa.0.0.extract.trunc.i, 26
  %i.ch = and i32 %i.cg, 4
  %i.ci = lshr i32 %.sroa.2.0.extract.trunc.i, 27
  %i.cj = and i32 %i.ci, 2
  %.1.1.i107 = or disjoint i32 %i.cj, %i.ch
  %i.ck = lshr i32 %.sroa.5.8.insert.insert.i, 28
  %.lobit110 = and i32 %i.ck, 1
  %.1.2.i109 = or disjoint i32 %.1.1.i107, %.lobit110
  %i.cl = or disjoint i32 %.1.2.i109, %i.cf
  %i.cm = sdiv i32 %i.cl, %i.ag                   ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !4
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cn ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.099132, i64 136
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !22
  store ptr %.099132, ptr %i.cr, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %.099132, i64 40
  store i32 %i.cm, ptr %i.cu, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %.099132, i64 128
  %.099 = load ptr, ptr %i.cv, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %.099, null
  br i1 %.not, label %.preheader111, label %.preheader113, !llvm.loop !24

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv160 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next161, %bb.h ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv160
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cy, i32 noundef %i.cx) ; 0 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv160
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv160
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !15
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.dd = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next161, %i.de
  br i1 %i.df, label %bb.h, label %.preheader.preheader, !llvm.loop !25

.preheader.preheader:                             ; preds = %bb.h, %.preheader111
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0135 = phi double [ %i.dg, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.1134 = phi i32 [ %i.dh, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  tail call void @stepsystem(ptr noundef nonnull %i.d, i32 noundef %.1134)
  %i.dg = fadd double %.0135, 1.250000e-02        ; 2 uses
  %i.dh = add nuw nsw i32 %.1134, 1
  %i.di = fcmp olt double %i.dg, 2.001250e+00
  %i.dj = icmp samesign ult i32 %.1134, 9
  %i.dk = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %i.dk, label %.preheader, label %bb.i, !llvm.loop !26

bb.i:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.d
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @uniform_testdata(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.datapoints) align 8 captures(none) initializes((0, 48)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
.preheader100:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.b = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 7 uses
  store i16 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
end_hunk_0
