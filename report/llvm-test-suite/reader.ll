begin_hunk_0

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @finput, align 8, !tbaa !19
  %i.y = tail call i32 @getc(ptr noundef %i.x)    ; 4 uses
  switch i32 %i.y, label %bb.h [
    i32 -1, label %bb.i
    i32 10, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %0 = load ptr, ptr @fattrs, align 8, !tbaa !19
  %1 = tail call i32 @putc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.g
  %2 = icmp eq i32 %i.y, 10
  tail call void @fatal(ptr noundef nonnull @.str.8) #12
  %i.z = load ptr, ptr @fattrs, align 8, !tbaa !19
  %i.aa = tail call i32 @putc(i32 noundef %i.y, ptr noundef %i.z) ; 0 uses
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr @lineno, align 4, !tbaa !4
end_hunk_0
begin_hunk_1
  store i32 %i.ac, ptr @lineno, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread, %bb.i, %bb.j, %bb.f
  %i.ad = load ptr, ptr @finput, align 8, !tbaa !19
  %i.ae = tail call i32 @getc(ptr noundef %i.ad)  ; 2 uses
  %.not41 = icmp eq i32 %i.ae, %.036
end_hunk_1
begin_hunk_2

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr @finput, align 8, !tbaa !19
  %i.an = tail call i32 @getc(ptr noundef %i.am)  ; 4 uses
  switch i32 %i.an, label %bb.n [
    i32 -1, label %bb.o
    i32 10, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %2 = load ptr, ptr @fguard, align 8, !tbaa !19
  %3 = tail call i32 @putc(i32 noundef %i.an, ptr noundef %2) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.m
  %4 = icmp eq i32 %i.an, 10
  tail call void @fatal(ptr noundef nonnull @.str.8) #12
  %i.ao = load ptr, ptr @fguard, align 8, !tbaa !19
  %i.ap = tail call i32 @putc(i32 noundef %i.an, ptr noundef %i.ao) ; 0 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = load i32, ptr @lineno, align 4, !tbaa !4
end_hunk_2
begin_hunk_3
  store i32 %i.ar, ptr @lineno, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %.thread, %bb.o, %bb.p, %bb.l
  %i.as = load ptr, ptr @finput, align 8, !tbaa !19
  %i.at = tail call i32 @getc(ptr noundef %i.as)  ; 2 uses
  %.not122 = icmp eq i32 %i.at, %.0104
end_hunk_3
