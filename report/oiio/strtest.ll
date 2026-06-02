begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ERROR in line %d: Return value is %d, should be %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TESTENV\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ERROR in line %d: env[0] is %d, should be %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"ERROR in line %d: env[1] is %d, should be %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"ERROR in line %d: env[2] is %d, should be %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"TESTENV2\00", align 1
@str = private unnamed_addr constant [12 x i8] c"PUTENV_S():\00", align 1
@str.2 = private unnamed_addr constant [12 x i8] c"GETENV_S():\00", align 1
@str.3 = private unnamed_addr constant [10 x i8] c"SUCCESS!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @main(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.b = tail call ptr @__errno_location() #10    ; 6 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.c = tail call i32 @setenv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1) #9 ; 0 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not64 = icmp eq i32 %i.d, 0
  br i1 %.not64, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 85, i32 noundef %i.d, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %puts66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 6 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i8 1, ptr %i.a, align 1, !tbaa !8
  store i8 2, ptr %i.f, align 1, !tbaa !8
  store i8 3, ptr %i.g, align 1, !tbaa !8
  %i.h = tail call ptr @getenv(ptr noundef nonnull @.str.10) #9 ; 3 uses
  %.not19.i110 = icmp eq ptr %i.h, null
  br i1 %.not19.i110, label %.thread140, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #11
  %i.j = add i64 %i.i, -3
  %i.k = icmp ult i64 %i.j, -4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 112, i32 noundef 34, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.f:                                             ; preds = %bb.d
  %i.m = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 3) #9 ; 0 uses
  %.pr = load i8, ptr %i.a, align 1, !tbaa !8     ; 2 uses
  %.not75 = icmp eq i8 %.pr, 0
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sext i8 %.pr to i32
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 113, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %.pre = load i8, ptr %i.f, align 1, !tbaa !8    ; 2 uses
  %.not76 = icmp eq i8 %.pre, 2
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = sext i8 %.pre to i32
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 114, i32 noundef %i.p, i32 noundef 2) ; 0 uses
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %.pr139 = load i8, ptr %i.g, align 1, !tbaa !8  ; 2 uses
  %.not77 = icmp eq i8 %.pr139, 3
  br i1 %.not77, label %.thread140, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = sext i8 %.pr139 to i32
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 115, i32 noundef %i.r, i32 noundef 3) ; 0 uses
  br label %bb.ad

.thread140:                                       ; preds = %bb.c, %bb.j
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i8 1, ptr %i.a, align 1, !tbaa !8
  store i8 2, ptr %i.f, align 1, !tbaa !8
  store i8 3, ptr %i.g, align 1, !tbaa !8
  %i.t = call ptr @getenv(ptr noundef nonnull @.str.4) #9 ; 3 uses
  %.not19.i104 = icmp eq ptr %i.t, null
  br i1 %.not19.i104, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread140
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #11
  %i.v = add i64 %i.u, -1
  %i.w = icmp ult i64 %i.v, -2
  br i1 %i.w, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %stxncpy.char0 = load i8, ptr %i.t, align 1
  br label %bb.n

bb.n:                                             ; preds = %.thread140, %bb.m
  %storemerge = phi i8 [ %stxncpy.char0, %bb.m ], [ 0, %.thread140 ]
  store i8 %storemerge, ptr %i.a, align 1
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 136, i32 noundef 0, i32 noundef 34) ; 0 uses
  br label %bb.ad

bb.o:                                             ; preds = %bb.l
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i8 1, ptr %i.a, align 1, !tbaa !8
  store i8 2, ptr %i.f, align 1, !tbaa !8
  store i8 3, ptr %i.g, align 1, !tbaa !8
  %i.y = call ptr @getenv(ptr noundef nonnull @.str.4) #9 ; 3 uses
  %.not19.i101 = icmp eq ptr %i.y, null
  br i1 %.not19.i101, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 1, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #11
  %i.aa = add i64 %i.z, -2
  %i.ab = icmp ult i64 %i.aa, -3
  br i1 %i.ab, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.y, i64 noundef 2) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 147, i32 noundef 0, i32 noundef 34) ; 0 uses
  br label %bb.ad

bb.t:                                             ; preds = %bb.q
  store i32 0, ptr %i.b, align 4, !tbaa !4
  store i8 1, ptr %i.a, align 1, !tbaa !8
  store i8 2, ptr %i.f, align 1, !tbaa !8
  store i8 3, ptr %i.g, align 1, !tbaa !8
  %i.ae = call ptr @getenv(ptr noundef nonnull @.str.4) #9 ; 3 uses
  %.not19.i = icmp eq ptr %i.ae, null
  br i1 %.not19.i, label %.thread126, label %bb.u

.thread126:                                       ; preds = %bb.t
  store i8 0, ptr %i.a, align 1, !tbaa !8
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #11
  %i.ag = add i64 %i.af, -3
  %i.ah = icmp ult i64 %i.ag, -4
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.a, align 1, !tbaa !8
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 158, i32 noundef 34, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.aj = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 3) #9 ; 0 uses
  %.pr125 = load i8, ptr %i.a, align 1, !tbaa !8  ; 2 uses
  %.not97 = icmp eq i8 %.pr125, 49
  br i1 %.not97, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread126, %bb.w
  %i.ak = phi i8 [ 0, %.thread126 ], [ %.pr125, %bb.w ]
  %i.al = sext i8 %i.ak to i32
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 159, i32 noundef %i.al, i32 noundef 49) ; 0 uses
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.an = load i8, ptr %i.f, align 1, !tbaa !8    ; 2 uses
  %.not98 = icmp eq i8 %i.an, 50
  br i1 %.not98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = sext i8 %i.an to i32
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 160, i32 noundef %i.ao, i32 noundef 50) ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.aq = load i8, ptr %i.g, align 1, !tbaa !8    ; 2 uses
  %.not99 = icmp eq i8 %i.aq, 0
  br i1 %.not99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = sext i8 %i.aq to i32
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 161, i32 noundef %i.ar, i32 noundef 0) ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %puts100 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.s, %bb.n, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.z ], [ -1, %bb.x ], [ -1, %bb.b ], [ -1, %bb.k ], [ -1, %bb.v ], [ -1, %bb.i ], [ -1, %bb.s ], [ -1, %bb.g ], [ -1, %bb.n ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
end_hunk_0
