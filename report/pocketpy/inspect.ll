Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/inspect?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.py_TValue = type { i16, i8, i32, %union.anon }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"isgeneratorfunction\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"is_user_defined_type\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"_signature_data\00", align 1
@kPythonLibs_inspect = external constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"inspect.py\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to execute inspect.py\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"expected %d arguments, got %d\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"no signature found for '%t' object\00", align 1

; Function Attrs: nounwind uwtable
define void @pk__add_module_inspect() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str) #6 ; 4 uses
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @inspect_isgeneratorfunction) #6
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @inspect_is_user_defined_type) #6
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull @inspect__signature_data) #6
  %i.b = tail call zeroext i1 @py_exec(ptr noundef nonnull @kPythonLibs_inspect, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %i.a) #6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (...) @py_printexc() #6
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 28, i64 1, ptr %i.c) #7 ; 0 uses
  %i.d = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @py_newmodule(ptr noundef) local_unnamed_addr #2

declare void @py_bindfunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @inspect_isgeneratorfunction(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %0) #6
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 18) #6
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = tail call ptr @PyObject__slots(ptr noundef %i.d) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.09 = phi ptr [ %i.f, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.g = tail call zeroext i1 @py_istype(ptr noundef %.09, i16 noundef signext 16) #6
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @py_touserdata(ptr noundef %.09) #6
  %i.i = tail call ptr (...) @py_retval() #6
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %i.m = icmp eq i32 %i.l, 3
  tail call void @py_newbool(ptr noundef %i.i, i1 noundef zeroext %i.m) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr (...) @py_retval() #6
  tail call void @py_newbool(ptr noundef %i.n, i1 noundef zeroext false) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.g ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @inspect_is_user_defined_type(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %0) #6
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 2) #6
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @py_touserdata(ptr noundef %1) #6
  %i.d = tail call ptr (...) @py_retval() #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32, !range !33, !noundef !34
  %i.g = trunc nuw i8 %i.f to i1
  tail call void @py_newbool(ptr noundef %i.d, i1 noundef zeroext %i.g) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @inspect__signature_data(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %.sroa.4 = alloca %struct.py_TValue, align 8    ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %0) #6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 16) #6
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i16, ptr %1, align 8, !tbaa !37
  %i.d = sext i16 %i.c to i32
  %i.e = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.7, i32 noundef %i.d) #6
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @py_touserdata(ptr noundef %1) #6
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.j = icmp ne i32 %i.i, -1                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 316 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = icmp ne i32 %i.l, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 296 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41
  %i.t = zext i1 %i.j to i32
  %i.u = zext i1 %i.m to i32
  %i.v = add i32 %i.p, %i.t
  %i.w = add i32 %i.v, %i.s
  %i.x = add nsw i32 %i.w, %i.u
  %i.y = tail call ptr (...) @py_retval() #6
  %i.z = tail call ptr @py_newtuple(ptr noundef %i.y, i32 noundef %i.x) #6 ; 4 uses
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !40
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %2 = add nuw nsw i32 %i.ad, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.054.lcssa = phi i32 [ 1, %bb.e ], [ %2, %._crit_edge.loopexit ]
  %3 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %._crit_edge.loopexit ]
  %.054.lcssa.a = phi i32 [ 0, %bb.e ], [ %i.ad, %._crit_edge.loopexit ]
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv
  %i.am = tail call ptr @py_newtuple(ptr noundef %i.al, i32 noundef 2) #6 ; 2 uses
  %i.an = tail call ptr @py_name2str(ptr noundef %i.ak) #6
  tail call void @py_newstr(ptr noundef %i.am, ptr noundef %i.an) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  tail call void @py_newint(ptr noundef nonnull %i.ao, i64 noundef 1) #6
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !40
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !35

bb.g:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = load i32, ptr %i.h, align 8, !tbaa !38
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %3
  %i.az = tail call ptr @py_newtuple(ptr noundef %i.ay, i32 noundef 2) #6 ; 2 uses
  %i.ba = tail call ptr @py_name2str(ptr noundef %i.ax) #6
  tail call void @py_newstr(ptr noundef %i.az, ptr noundef %i.ba) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  tail call void @py_newint(ptr noundef nonnull %i.bb, i64 noundef 2) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1 = phi i32 [ %.054.lcssa, %bb.g ], [ %.054.lcssa.a, %._crit_edge ] ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !41
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %bb.h
  %i.be = select i1 %i.j, i64 3, i64 1
  %i.bf = zext nneg i32 %.1 to i64
  br label %bb.i

._crit_edge63.loopexit:                           ; preds = %bb.i
  %i.bg = trunc nsw i64 %indvars.iv.next72 to i32
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %bb.h
  %.2.lcssa = phi i32 [ %.1, %bb.h ], [ %i.bg, %._crit_edge63.loopexit ]
  br i1 %i.m, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph62, %bb.i
  %indvars.iv71 = phi i64 [ %i.bf, %.lr.ph62 ], [ %indvars.iv.next72, %bb.i ] ; 2 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next70, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %indvars.iv69 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false), !tbaa.struct !50
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv71
  %i.bk = tail call ptr @py_newtuple(ptr noundef %i.bj, i32 noundef 3) #6 ; 3 uses
  %i.bl = tail call ptr @py_name2str(ptr noundef %.sroa.3.0.copyload) #6
  tail call void @py_newstr(ptr noundef %i.bk, ptr noundef %i.bl) #6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  tail call void @py_newint(ptr noundef nonnull %i.bm, i64 noundef %i.be) #6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !41
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next70, %i.bp
  br i1 %i.bq, label %bb.i, label %._crit_edge63.loopexit, !llvm.loop !36

bb.j:                                             ; preds = %._crit_edge63
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.bt = load i32, ptr %i.k, align 4, !tbaa !39
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45
  %i.bx = sext i32 %.2.lcssa to i64
  %i.by = getelementptr inbounds [24 x i8], ptr %i.z, i64 %i.bx
  %i.bz = tail call ptr @py_newtuple(ptr noundef %i.by, i32 noundef 2) #6 ; 2 uses
  %i.ca = tail call ptr @py_name2str(ptr noundef %i.bw) #6
  tail call void @py_newstr(ptr noundef %i.bz, ptr noundef %i.ca) #6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  tail call void @py_newint(ptr noundef nonnull %i.cb, i64 noundef 4) #6
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge63, %bb.j, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.e, %bb.d ], [ true, %bb.j ], [ true, %._crit_edge63 ]
  ret i1 %.0
}

declare zeroext i1 @py_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @py_printexc(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @PyObject__slots(ptr noundef) local_unnamed_addr #2

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #2

declare void @py_newbool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @py_retval(...) local_unnamed_addr #2

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @py_newtuple(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @py_newstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_name2str(ptr noundef) local_unnamed_addr #2

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"p1 _ZTS8FuncDecl", !8, i64 0}
!11 = !{!"p1 _ZTS9py_TValue", !8, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"_Bool", !4, i64 0}
!14 = !{!"py_TValue", !12, i64 0, !13, i64 2, !5, i64 4, !4, i64 8}
!15 = !{!"p1 _ZTS8NameDict", !8, i64 0}
!16 = !{!"p1 _ZTS8PyObject", !8, i64 0}
!17 = !{!"Function", !10, i64 0, !11, i64 8, !14, i64 16, !15, i64 40, !16, i64 48, !8, i64 56}
!18 = !{!17, !10, i64 0}
!19 = !{!"RefCounted", !5, i64 0, !8, i64 8}
!20 = !{!"p1 _ZTS10SourceData", !8, i64 0}
!21 = !{!"p1 _ZTS10c11_string", !8, i64 0}
!22 = !{!"c11_vector", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!23 = !{!"CodeObject", !20, i64 0, !21, i64 8, !22, i64 16, !22, i64 40, !22, i64 64, !22, i64 88, !22, i64 112, !5, i64 136, !22, i64 144, !22, i64 168, !22, i64 192, !22, i64 216, !5, i64 240, !5, i64 244}
!24 = !{!"p1 omnipotent char", !8, i64 0}
!25 = !{!"FuncDecl", !19, i64 0, !23, i64 16, !22, i64 264, !22, i64 288, !5, i64 312, !5, i64 316, !13, i64 320, !24, i64 328, !5, i64 336, !22, i64 344}
!26 = !{!"p1 _ZTS13py_OpaqueName", !8, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!25, !5, i64 336}
!30 = !{!"p1 _ZTS11py_TypeInfo", !8, i64 0}
!31 = !{!"py_TypeInfo", !26, i64 0, !12, i64 8, !12, i64 10, !30, i64 16, !14, i64 24, !11, i64 48, !13, i64 56, !13, i64 57, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !14, i64 96, !8, i64 120, !8, i64 128}
!32 = !{!31, !13, i64 56}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = distinct !{!35, !46}
!36 = distinct !{!36, !46}
!37 = !{!14, !12, i64 0}
!38 = !{!25, !5, i64 312}
!39 = !{!25, !5, i64 316}
!40 = !{!25, !5, i64 272}
!41 = !{!25, !5, i64 296}
!42 = !{!25, !8, i64 264}
!43 = !{!5, !5, i64 0}
!44 = !{!23, !8, i64 88}
!45 = !{!26, !26, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!25, !8, i64 288}
!48 = !{!12, !12, i64 0}
!49 = !{!13, !13, i64 0}
!50 = !{i64 0, i64 2, !48, i64 2, i64 1, !49, i64 4, i64 4, !43, i64 8, i64 16, !9}
end_hunk_0
