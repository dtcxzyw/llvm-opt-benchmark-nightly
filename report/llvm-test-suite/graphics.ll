begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"graphics_output\00", align 1
@graphics_directory = dso_local local_unnamed_addr global ptr @.str, align 8
@graphics_ymax = internal unnamed_addr global float 0.000000e+00, align 4
@graphics_ymin = internal unnamed_addr global float 0.000000e+00, align 4
@graphics_xmax = internal unnamed_addr global float 0.000000e+00, align 4
@graphics_xmin = internal unnamed_addr global float 0.000000e+00, align 4
@xconversion = internal unnamed_addr global double 0.000000e+00, align 8
@yconversion = internal unnamed_addr global double 0.000000e+00, align 8
@graphics_type = dso_local local_unnamed_addr global i32 0, align 4
@data_type = internal unnamed_addr global i1 false, align 4
@data_double = internal unnamed_addr global ptr null, align 8
@data_float = internal unnamed_addr global ptr null, align 8
@graphics_proc = internal unnamed_addr global ptr null, align 8
@x_double = internal unnamed_addr global ptr null, align 8
@dx_double = internal unnamed_addr global ptr null, align 8
@y_double = internal unnamed_addr global ptr null, align 8
@dy_double = internal unnamed_addr global ptr null, align 8
@x_float = internal unnamed_addr global ptr null, align 8
@dx_float = internal unnamed_addr global ptr null, align 8
@y_float = internal unnamed_addr global ptr null, align 8
@dy_float = internal unnamed_addr global ptr null, align 8
@graphics_view_mode = internal unnamed_addr global i32 0, align 4
@graphics_mysize = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s/graph%dcp%05d.data\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s/outline%dcp%05d.lin\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s/graph%05d.data\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/outline%05d.lin\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d,%lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%d,%d,%d,%d,%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%d,%d,%d,%d\0A\00", align 1
@iteration = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Could not create %s in DrawSqaures\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Could not open %s in DisplayStateToFile\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @init_graphics_output() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.stat, align 8               ; 3 uses
  %i.a = load float, ptr @graphics_xmax, align 4, !tbaa !8
  %i.b = load float, ptr @graphics_xmin, align 4, !tbaa !8
  %1 = load float, ptr @graphics_ymax, align 4, !tbaa !8
  %2 = load float, ptr @graphics_ymin, align 4, !tbaa !8
  %3 = insertelement <2 x float> poison, float %i.a, i64 0
  %4 = insertelement <2 x float> %3, float %1, i64 1
  %5 = insertelement <2 x float> poison, float %i.b, i64 0
  %6 = insertelement <2 x float> %5, float %2, i64 1
  %7 = fsub <2 x float> %4, %6
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = fdiv <2 x double> splat (double 8.000000e+02), %8 ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  store double %10, ptr @xconversion, align 8, !tbaa !10
  %11 = extractelement <2 x double> %9, i64 1
  store double %11, ptr @yconversion, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #6
  %i.c = load ptr, ptr @graphics_directory, align 8, !tbaa !12
  %i.d = call i32 @stat(ptr noundef %i.c, ptr noundef nonnull %0) #6
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @graphics_directory, align 8, !tbaa !12
  %i.g = tail call i32 @mkdir(ptr noundef %i.f, i32 noundef 511) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @terminate_graphics_output() local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_window(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  store float %0, ptr @graphics_xmin, align 4, !tbaa !8
  store float %1, ptr @graphics_xmax, align 4, !tbaa !8
  store float %2, ptr @graphics_ymin, align 4, !tbaa !8
  store float %3, ptr @graphics_ymax, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_cell_data_double(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  store i1 true, ptr @data_type, align 4
  store ptr %0, ptr @data_double, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_cell_data_float(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  store i1 false, ptr @data_type, align 4
  store ptr %0, ptr @data_float, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_cell_proc(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  store ptr %0, ptr @graphics_proc, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_cell_coordinates_double(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  store ptr %0, ptr @x_double, align 8, !tbaa !15
  store ptr %1, ptr @dx_double, align 8, !tbaa !15
  store ptr %2, ptr @y_double, align 8, !tbaa !15
  store ptr %3, ptr @dy_double, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_cell_coordinates_float(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  store ptr %0, ptr @x_float, align 8, !tbaa !17
  store ptr %1, ptr @dx_float, align 8, !tbaa !17
  store ptr %2, ptr @y_float, align 8, !tbaa !17
  store ptr %3, ptr @dy_float, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_viewmode(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 %0, ptr @graphics_view_mode, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_graphics_mysize(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 %0, ptr @graphics_mysize, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @set_graphics_outline(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @DrawSquaresToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  %i.b = alloca [50 x i8], align 16               ; 6 uses
  %i.c = load i32, ptr @graphics_type, align 4, !tbaa !4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @graphics_proc, align 8, !tbaa !19
  %i.f = load i32, ptr @graphics_mysize, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, 1
  %i.l = sdiv i32 256, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq i32 %3, 0
  %i.m = load ptr, ptr @graphics_directory, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.m, i32 noundef %0, i32 noundef %4) #6 ; 0 uses
  %i.o = load ptr, ptr @graphics_directory, align 8, !tbaa !12
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %i.o, i32 noundef %0, i32 noundef %4) #6 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.m, i32 noundef %0) #6 ; 0 uses
  %i.r = load ptr, ptr @graphics_directory, align 8, !tbaa !12
  %i.s = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %i.r, i32 noundef %0) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5) ; 6 uses
  %i.u = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5) ; 10 uses
  %i.v = icmp ne ptr %i.t, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.6, i32 noundef %1, double noundef %2) #6 ; 0 uses
  %.b = load i1, ptr @data_type, align 4
  %i.y = load i32, ptr @graphics_mysize, align 4, !tbaa !4
  %i.z = icmp sgt i32 %i.y, 0                     ; 2 uses
  br i1 %.b, label %.preheader, label %.preheader107

.preheader107:                                    ; preds = %bb.f
  br i1 %i.z, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.f
  br i1 %i.z, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %.preheader, %.lr.ph111
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.lr.ph111 ], [ 0, %.preheader ] ; 10 uses
  %i.aa = load ptr, ptr @x_double, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv114
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ad = load float, ptr @graphics_xmin, align 4, !tbaa !8
  %i.ae = fpext float %i.ad to double             ; 2 uses
  %i.af = fsub double %i.ac, %i.ae
  %i.ag = load double, ptr @xconversion, align 8, !tbaa !10 ; 2 uses
  %i.ah = fmul double %i.ag, %i.af
  %i.ai = fptosi double %i.ah to i32              ; 2 uses
  %i.aj = load ptr, ptr @dx_double, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv114
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = fadd double %i.ac, %i.al
  %i.an = fsub double %i.am, %i.ae
  %i.ao = fmul double %i.ag, %i.an
  %i.ap = sitofp i32 %i.ai to double
  %i.aq = fsub double %i.ao, %i.ap
  %i.ar = fptosi double %i.aq to i32
  %i.as = load float, ptr @graphics_ymax, align 4, !tbaa !8
  %i.at = fpext float %i.as to double             ; 2 uses
  %i.au = load ptr, ptr @y_double, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv114
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = load ptr, ptr @dy_double, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv114
  %i.az = load double, ptr %i.ay, align 8, !tbaa !10
  %i.ba = fadd double %i.aw, %i.az
  %i.bb = fsub double %i.at, %i.ba
  %i.bc = load double, ptr @yconversion, align 8, !tbaa !10 ; 2 uses
  %i.bd = fmul double %i.bc, %i.bb
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = fsub double %i.at, %i.aw
  %i.bg = fmul double %i.bf, %i.bc
  %i.bh = fptosi double %i.bg to i32
end_hunk_0
