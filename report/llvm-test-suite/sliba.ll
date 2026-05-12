inline.NumInlined: 128
inline.NumDeleted: 6
begin_hunk_0_@benchmark_funcall1:bb.a
; Function Attrs: nounwind uwtable
define dso_local ptr @benchmark_funcall2(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = tail call ptr @car(ptr noundef %0) #24   ; 4 uses
  %i.c = tail call ptr @cdr(ptr noundef %0) #24
  %i.d = tail call ptr @car(ptr noundef %i.c) #24 ; 5 uses
end_hunk_0
begin_hunk_1_@benchmark_funcall2:bb.a
.thread.i.us:                                     ; preds = %.lr.ph, %.thread.i.us
  %.01112.us = phi i64 [ %i.z, %.thread.i.us ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = tail call ptr @cons(ptr noundef %i.k, ptr noundef null) #24
  %i.x = tail call ptr @cons(ptr noundef %i.g, ptr noundef %i.w) #24
  %i.y = tail call ptr @lapply(ptr noundef null, ptr noundef %i.x) #24
end_hunk_1
begin_hunk_2_@mapcar1:bb.a
; Function Attrs: nounwind uwtable
define dso_local ptr @mapcar2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
end_hunk_2
begin_hunk_3_@mapcar2:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.036.us, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = call ptr @cons(ptr noundef %i.ah, ptr noundef null) #24
  %i.aj = call ptr @cons(ptr noundef %i.af, ptr noundef %i.ai) #24
  %i.ak = call ptr @lapply(ptr noundef null, ptr noundef %i.aj) #24
end_hunk_3
begin_hunk_4_@lsubset:bb.a
; Function Attrs: nounwind uwtable
define dso_local ptr @ass(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.critedge18, label %.lr.ph

end_hunk_4
begin_hunk_5_@ass:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = tail call ptr @cons(ptr noundef %0, ptr noundef null) #24
  %i.q = tail call ptr @cons(ptr noundef %i.o, ptr noundef %i.p) #24
  %i.r = tail call ptr @lapply(ptr noundef null, ptr noundef %i.q) #24
end_hunk_5
