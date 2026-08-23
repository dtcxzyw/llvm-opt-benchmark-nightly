Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvloadimage_pango?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gvloadimage_engine_s = type { ptr }
%struct.boxf = type { %struct.pointf_s, %struct.pointf_s }
%struct.pointf_s = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"png:cairo\00", align 1
@engine_cairo = internal global %struct.gvloadimage_engine_s { ptr @pango_loadimage_cairo }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"png:lasi\00", align 1
@engine_ps = internal global %struct.gvloadimage_engine_s { ptr @pango_loadimage_ps }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"png:ps\00", align 1
@gvloadimage_pango_types = local_unnamed_addr global [4 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str, i32 1, [4 x i8] zeroinitializer, ptr @engine_cairo, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1, i32 2, [4 x i8] zeroinitializer, ptr @engine_ps, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2, i32 2, [4 x i8] zeroinitializer, ptr @engine_ps, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"save\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/myctr 0 def\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/myarray [\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ffffff\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"/myproc { myarray myctr get /myctr myctr 1 add def } def\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%g %g translate\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%g %g scale\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%d %d 8 [%d 0 0 %d 0 %d]\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"{myproc} false 3 colorimage\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"restore\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @pango_loadimage_cairo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, i1 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp eq ptr %i.f, @cairo_freeimage
  br i1 %i.g, label %cairo_loadimage.exit.thread14, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull %1) #4, !inline_history !37
  store ptr null, ptr %i.e, align 8, !tbaa !36
  store ptr null, ptr %i.c, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = tail call zeroext i1 @gvusershape_file_access(ptr noundef nonnull %1) #4
  br i1 %i.h, label %bb.e, label %cairo_loadimage.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %cond.i = icmp eq i32 %i.j, 3
  br i1 %cond.i, label %bb.f, label %cairo_loadimage.exit.thread18

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = tail call ptr @cairo_image_surface_create_from_png_stream(ptr noundef nonnull @reader, ptr noundef %i.l) #4 ; 4 uses
  %i.n = tail call ptr @cairo_surface_reference(ptr noundef %i.m) #4 ; 0 uses
  %.not23.i = icmp eq ptr %i.m, null
  br i1 %.not23.i, label %cairo_loadimage.exit.thread18, label %cairo_loadimage.exit

cairo_loadimage.exit.thread18:                    ; preds = %bb.f, %bb.e
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %cairo_loadimage.exit.thread

cairo_loadimage.exit:                             ; preds = %bb.f
  store ptr %i.m, ptr %i.c, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @cairo_freeimage, ptr %i.o, align 8, !tbaa !36
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %cairo_loadimage.exit.thread14

cairo_loadimage.exit.thread14:                    ; preds = %bb.b, %cairo_loadimage.exit
  %.019.i17 = phi ptr [ %i.m, %cairo_loadimage.exit ], [ %i.d, %bb.b ]
  tail call void @cairo_save(ptr noundef %i.b) #4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load double, ptr %2, align 8, !tbaa !40  ; 2 uses
  %i.u = load double, ptr %i.q, align 8, !tbaa !41 ; 2 uses
  %i.v = fneg double %i.u
  tail call void @cairo_translate(ptr noundef %i.b, double noundef %i.t, double noundef %i.v) #4
  %i.w = load <2 x double>, ptr %i.p, align 8
  %i.x = load double, ptr %i.s, align 8, !tbaa !42
  %i.y = insertelement <2 x double> %i.w, double %i.u, i64 1
  %i.z = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1
  %i.ab = fsub <2 x double> %i.y, %i.aa
  %i.ac = load <2 x double>, ptr %i.r, align 8, !tbaa !43
  %i.ad = fdiv <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  tail call void @cairo_scale(ptr noundef %i.b, double noundef %i.ae, double noundef %i.af) #4
  tail call void @cairo_set_source_surface(ptr noundef %i.b, ptr noundef nonnull %.019.i17, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
  tail call void @cairo_paint(ptr noundef %i.b) #4
  tail call void @cairo_restore(ptr noundef %i.b) #4
  br label %cairo_loadimage.exit.thread

cairo_loadimage.exit.thread:                      ; preds = %bb.d, %cairo_loadimage.exit.thread18, %cairo_loadimage.exit.thread14
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_paint(ptr noundef) local_unnamed_addr #1

declare void @cairo_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @cairo_freeimage(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @cairo_surface_destroy(ptr noundef %i.b) #4
  ret void
}

declare zeroext i1 @gvusershape_file_access(ptr noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_create_from_png_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 11) i32 @reader(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = icmp eq i64 %i.b, %i.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @feof(ptr noundef %0) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %3, label %bb.c

3:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %3
  %.0 = phi i32 [ 10, %3 ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @cairo_surface_reference(ptr noundef) local_unnamed_addr #1

declare void @gvusershape_file_release(ptr noundef) local_unnamed_addr #1

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @pango_loadimage_ps(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, i1 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = icmp eq ptr %i.d, @cairo_freeimage
  br i1 %i.e, label %cairo_loadimage.exit.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %1) #4, !inline_history !37
  store ptr null, ptr %i.c, align 8, !tbaa !36
  store ptr null, ptr %i.a, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call zeroext i1 @gvusershape_file_access(ptr noundef nonnull %1) #4
  br i1 %i.f, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %cond.i = icmp eq i32 %i.h, 3
  br i1 %cond.i, label %bb.f, label %cairo_loadimage.exit.thread61

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = tail call ptr @cairo_image_surface_create_from_png_stream(ptr noundef nonnull @reader, ptr noundef %i.j) #4 ; 4 uses
  %i.l = tail call ptr @cairo_surface_reference(ptr noundef %i.k) #4 ; 0 uses
  %.not23.i = icmp eq ptr %i.k, null
  br i1 %.not23.i, label %cairo_loadimage.exit.thread61, label %cairo_loadimage.exit

cairo_loadimage.exit.thread61:                    ; preds = %bb.f, %bb.e
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %.critedge

cairo_loadimage.exit:                             ; preds = %bb.f
  store ptr %i.k, ptr %i.a, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @cairo_freeimage, ptr %i.m, align 8, !tbaa !36
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %cairo_loadimage.exit.thread57

cairo_loadimage.exit.thread57:                    ; preds = %bb.b, %cairo_loadimage.exit
  %.019.i60 = phi ptr [ %i.k, %cairo_loadimage.exit ], [ %i.b, %bb.b ] ; 5 uses
  %i.n = tail call i32 @cairo_image_surface_get_format(ptr noundef nonnull %.019.i60) #4
  %or.cond = icmp ult i32 %i.n, 2
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %cairo_loadimage.exit.thread57
  %i.o = tail call i32 @cairo_image_surface_get_width(ptr noundef nonnull %.019.i60) #4
  %.fr70 = freeze i32 %i.o                        ; 4 uses
  %i.p = tail call i32 @cairo_image_surface_get_height(ptr noundef nonnull %.019.i60) #4 ; 6 uses
  %i.q = tail call i32 @cairo_image_surface_get_stride(ptr noundef nonnull %.019.i60) #4
  %i.r = tail call ptr @cairo_image_surface_get_data(ptr noundef nonnull %.019.i60) #4
  %i.s = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.3) #4 ; 0 uses
  %i.t = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.u = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.5) #4 ; 0 uses
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %bb.g
  %i.w = icmp sgt i32 %.fr70, 0
  br i1 %i.w, label %.lr.ph.us.preheader, label %.lr.ph68.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph68
  %i.x = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %i.y = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.6) #4 ; 0 uses
  %i.z = mul nsw i64 %indvars.iv, %i.x
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.k
  %.065.us = phi i32 [ 0, %.lr.ph.us ], [ %i.aj, %bb.k ]
  %.05064.us = phi ptr [ %i.aa, %.lr.ph.us ], [ %i.ab, %bb.k ] ; 2 uses
  %.0.copyload.us = load i32, ptr %.05064.us, align 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05064.us, i64 4
  %i.ac = icmp ult i32 %.0.copyload.us, 2130706432
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %.0.copyload.us, 16
  %i.ae = and i32 %i.ad, 255
  %i.af = lshr i32 %.0.copyload.us, 8
  %i.ag = and i32 %i.af, 255
  %i.ah = and i32 %.0.copyload.us, 255
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ah) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = add nuw nsw i32 %.065.us, 1             ; 2 uses
  %exitcond72.not = icmp eq i32 %i.aj, %.fr70
  br i1 %exitcond72.not, label %._crit_edge.us, label %bb.h, !llvm.loop !44

._crit_edge.us:                                   ; preds = %bb.k
  %i.ak = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.9) #4 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond74.not, label %._crit_edge69, label %.lr.ph.us, !llvm.loop !46

._crit_edge69:                                    ; preds = %.lr.ph68.split, %._crit_edge.us, %bb.g
  %i.al = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.10) #4 ; 0 uses
  %i.am = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.11) #4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !43
  %i.aq = fdiv <2 x double> %i.ap, splat (double 9.600000e+01)
  %i.ar = fsub <2 x double> splat (double 1.000000e+00), %i.aq
  %i.as = load <2 x double>, ptr %2, align 8, !tbaa !43 ; 2 uses
  %i.at = load <2 x double>, ptr %i.an, align 8, !tbaa !43
  %i.au = fsub <2 x double> %i.at, %i.as          ; 2 uses
  %i.av = fmul <2 x double> %i.au, %i.ar
  %i.aw = fmul <2 x double> %i.av, splat (double 5.000000e-01)
  %i.ax = fadd <2 x double> %i.as, %i.aw          ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = extractelement <2 x double> %i.ax, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.12, double noundef %i.ay, double noundef %i.az) #4
  %i.ba = fmul <2 x double> %i.au, splat (double 7.200000e+01)
  %i.bb = fdiv <2 x double> %i.ba, splat (double 9.600000e+01) ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = extractelement <2 x double> %i.bb, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.13, double noundef %i.bc, double noundef %i.bd) #4
  %i.be = sub nsw i32 0, %i.p
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %.fr70, i32 noundef %i.p, i32 noundef %.fr70, i32 noundef %i.be, i32 noundef %i.p) #4
  %i.bf = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.15) #4 ; 0 uses
  %i.bg = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %.critedge

.lr.ph68.split:                                   ; preds = %.lr.ph68, %.lr.ph68.split
  %.05166 = phi i32 [ %i.bj, %.lr.ph68.split ], [ 0, %.lr.ph68 ]
  %i.bh = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.6) #4 ; 0 uses
  %i.bi = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.9) #4 ; 0 uses
  %i.bj = add nuw nsw i32 %.05166, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, %i.p
  br i1 %exitcond.not, label %._crit_edge69, label %.lr.ph68.split, !llvm.loop !46

.critedge:                                        ; preds = %bb.d, %cairo_loadimage.exit.thread61, %._crit_edge69, %cairo_loadimage.exit.thread57
  ret void
}

declare i32 @cairo_image_surface_get_format(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_width(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_height(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_stride(ptr noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_get_data(ptr noundef) local_unnamed_addr #1

declare i32 @gvputs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gvprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
end_hunk_0
