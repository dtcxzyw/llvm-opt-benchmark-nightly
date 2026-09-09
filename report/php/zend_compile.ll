Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_compile?download=true
inline.NumInlined: 808
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@zend_stop_lexing:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 56), align 8, !tbaa !300
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !301
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4097) i32 @zend_modifier_token_to_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.k [
    i32 326, label %bb.b
    i32 325, label %bb.c
    i32 324, label %bb.d
    i32 330, label %bb.e
    i32 322, label %bb.f
    i32 323, label %bb.p
    i32 321, label %bb.g
    i32 329, label %bb.h
    i32 328, label %bb.i
    i32 327, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %0, 4
  br i1 %cond, label %bb.o, label %bb.p

bb.c:                                             ; preds = %bb.a
  %cond38 = icmp eq i32 %0, 4
  br i1 %cond38, label %bb.o, label %bb.p

bb.d:                                             ; preds = %bb.a
  %cond39 = icmp eq i32 %0, 4
  br i1 %cond39, label %bb.o, label %bb.p

bb.e:                                             ; preds = %bb.a
  switch i32 %0, label %.unreachabledefault [
    i32 3, label %bb.p
    i32 0, label %bb.p
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.o
  ]

bb.f:                                             ; preds = %bb.a
  %or.cond3 = icmp ult i32 %0, 2
  br i1 %or.cond3, label %bb.p, label %bb.k

bb.g:                                             ; preds = %bb.a
  %or.cond5 = icmp ult i32 %0, 2
  br i1 %or.cond5, label %bb.p, label %bb.k

bb.h:                                             ; preds = %bb.a
  switch i32 %0, label %.unreachabledefault40 [
    i32 3, label %bb.p
    i32 0, label %bb.p
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.o
  ]

bb.i:                                             ; preds = %bb.a
  switch i32 %0, label %.unreachabledefault41 [
    i32 3, label %bb.p
    i32 0, label %bb.p
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.o
  ]

bb.j:                                             ; preds = %bb.a
  switch i32 %0, label %.unreachabledefault42 [
    i32 3, label %bb.p
    i32 0, label %bb.p
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.a
  switch i32 %0, label %.unreachabledefault43 [
    i32 0, label %switch.lookup
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e
  br label %switch.lookup

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e
  br label %switch.lookup

bb.n:                                             ; preds = %bb.k
  br label %switch.lookup

.unreachabledefault:                              ; preds = %bb.e
  unreachable

.unreachabledefault40:                            ; preds = %bb.h
  unreachable

.unreachabledefault41:                            ; preds = %bb.i
  unreachable

.unreachabledefault42:                            ; preds = %bb.j
  unreachable

.unreachabledefault43:                            ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %i.a = icmp eq i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.m
  %.0 = phi ptr [ @.str.7, %bb.o ], [ @.str.4, %bb.l ], [ @.str.5, %bb.m ], [ @.str.6, %bb.n ], [ @.str.3, %bb.k ]
  %i.b = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table.zend_modifier_list_to_flags, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -2568
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = tail call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %switch.load, ptr noundef nonnull %.0) #30 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.j, %bb.i, %bb.i, %bb.h, %bb.h, %bb.e, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g, %bb.a, %bb.f, %switch.lookup
  %.034 = phi i32 [ 0, %switch.lookup ], [ 2048, %bb.i ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.d ], [ 128, %bb.e ], [ 64, %bb.f ], [ 32, %bb.a ], [ 16, %bb.g ], [ 1024, %bb.h ], [ 128, %bb.e ], [ 1024, %bb.h ], [ 2048, %bb.i ], [ 4096, %bb.j ], [ 4096, %bb.j ]
  ret i32 %.034
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @zend_throw_exception_ex(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 8192) i32 @zend_modifier_list_to_flags(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116
  %.not3143.not = icmp eq i32 %i.b, 0
  br i1 %.not3143.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  switch i32 %0, label %.lr.ph.split [
    i32 3, label %.lr.ph.split.us.preheader
    i32 0, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.02244.us = phi i32 [ %i.l, %bb.b ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 @zend_modifier_token_to_flag(i32 noundef %0, i32 noundef %i.h) ; 5 uses
  %.not.us = icmp eq i32 %i.i, 0
  br i1 %.not.us, label %.thread, label %bb.c

bb.b:                                             ; preds = %zend_add_member_modifier.exit.thread35.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !116
  %i.k = zext i32 %i.j to i64
  %.not31.us = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %.not31.us, label %.lr.ph.split.us, label %.thread, !llvm.loop !302

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.l = or i32 %i.i, %.02244.us                  ; 3 uses
  %i.m = and i32 %.02244.us, 7
  %.not.i.us = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.i, 7
  %.not16.i.us = icmp eq i32 %i.n, 0
  %or.cond21.i.us = or i1 %.not.i.us, %.not16.i.us
  br i1 %or.cond21.i.us, label %bb.d, label %zend_add_member_modifier.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 96
  %or.cond22.not.i.us = icmp eq i32 %i.o, 96
  br i1 %or.cond22.not.i.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  switch i32 %0, label %zend_add_member_modifier.exit.thread35.us [
    i32 1, label %zend_add_member_modifier.exit.thread.loopexit99
    i32 0, label %zend_add_member_modifier.exit.thread
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not19.i.us = icmp samesign ult i32 %.02244.us, 1024
  %.not20.i.us = icmp samesign ult i32 %i.i, 1024
  %or.cond.i.us = or i1 %.not19.i.us, %.not20.i.us
  br i1 %or.cond.i.us, label %zend_add_member_modifier.exit.thread35.us, label %zend_add_member_modifier.exit.thread

zend_add_member_modifier.exit.thread35.us:        ; preds = %bb.f, %bb.e
  %i.p = and i32 %i.i, %.02244.us
  %.not29.us = icmp eq i32 %i.p, 0
  br i1 %.not29.us, label %bb.b, label %.split51.us

bb.g:                                             ; preds = %zend_add_member_modifier.exit.thread35
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !116
  %i.r = zext i32 %i.q to i64
  %.not31 = icmp samesign ult i64 %indvars.iv.next68, %i.r
  br i1 %.not31, label %.lr.ph.split, label %.thread, !llvm.loop !302

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.02244 = phi i32 [ %i.y, %bb.g ], [ 0, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv67
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 @zend_modifier_token_to_flag(i32 noundef %0, i32 noundef %i.w) ; 5 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.y = or i32 %i.x, %.02244                     ; 3 uses
  %i.z = and i32 %.02244, 7
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = and i32 %i.x, 7
  %.not16.i = icmp eq i32 %i.aa, 0
  %or.cond21.i = or i1 %.not.i, %.not16.i
  br i1 %or.cond21.i, label %bb.i, label %zend_add_member_modifier.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %i.y, 96
  %or.cond22.not.i = icmp eq i32 %i.ab, 96
  br i1 %or.cond22.not.i, label %bb.j, label %zend_add_member_modifier.exit.thread35

bb.j:                                             ; preds = %bb.i
  switch i32 %0, label %zend_add_member_modifier.exit.thread35 [
    i32 1, label %zend_add_member_modifier.exit.thread.loopexit
    i32 0, label %zend_add_member_modifier.exit.thread
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %.not19.i = icmp samesign ult i32 %.02244, 1024
  %.not20.i = icmp samesign ult i32 %i.x, 1024
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %zend_add_member_modifier.exit.thread35, label %zend_add_member_modifier.exit.thread

zend_add_member_modifier.exit.thread.loopexit:    ; preds = %bb.j
  br label %zend_add_member_modifier.exit.thread

zend_add_member_modifier.exit.thread.loopexit99:  ; preds = %bb.e
  br label %zend_add_member_modifier.exit.thread

zend_add_member_modifier.exit.thread:             ; preds = %bb.f, %bb.c, %bb.k, %bb.h, %bb.j, %bb.e, %zend_add_member_modifier.exit.thread.loopexit99, %zend_add_member_modifier.exit.thread.loopexit
  %.str.16.sink.i = phi ptr [ @.str.18, %bb.j ], [ @.str.17, %zend_add_member_modifier.exit.thread.loopexit ], [ @.str.18, %bb.e ], [ @.str.16, %bb.h ], [ @.str.16, %bb.k ], [ @.str.16, %bb.f ], [ @.str.16, %bb.c ], [ @.str.17, %zend_add_member_modifier.exit.thread.loopexit99 ]
  %i.ac = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %i.ad = tail call ptr @zend_throw_exception(ptr noundef %i.ac, ptr noundef nonnull %.str.16.sink.i, i64 noundef 0) #30 ; 0 uses
  br label %.thread

zend_add_member_modifier.exit.thread35:           ; preds = %bb.i, %bb.k, %bb.j
  %i.ae = and i32 %i.x, %.02244
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %bb.g, label %.split51.us

.split51.us:                                      ; preds = %zend_add_member_modifier.exit.thread35.us, %zend_add_member_modifier.exit.thread35
  %.us-phi52 = phi i64 [ %i.v, %zend_add_member_modifier.exit.thread35 ], [ %i.g, %zend_add_member_modifier.exit.thread35.us ]
  %i.af = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %switch.tableidx = add i64 %.us-phi52, 4294966975
  %i.ag = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_modifier_list_to_flags, i64 %i.ag
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ah = tail call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.af, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %switch.load) #30 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %.lr.ph.split.us, %bb.g, %.lr.ph.split, %bb.a, %zend_add_member_modifier.exit.thread, %.split51.us
  %spec.select = phi i32 [ 0, %.split51.us ], [ 0, %zend_add_member_modifier.exit.thread ], [ %i.y, %bb.g ], [ 0, %bb.a ], [ 0, %.lr.ph.split ], [ 0, %.lr.ph.split.us ], [ %i.l, %bb.b ]
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zend_add_member_modifier(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0                            ; 4 uses
  %i.b = and i32 %0, 7
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %1, 7
  %.not16 = icmp eq i32 %i.c, 0
  %or.cond21 = or i1 %.not, %.not16
  br i1 %or.cond21, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, 96
  %or.cond22.not = icmp eq i32 %i.d, 96
  br i1 %or.cond22.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.g [
    i32 1, label %.sink.split
    i32 0, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  switch i32 %2, label %bb.g [
    i32 3, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.e
  %i.e = and i32 %0, 7168
  %.not19 = icmp eq i32 %i.e, 0
  %i.f = and i32 %1, 7168
  %.not20 = icmp eq i32 %i.f, 0
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c, %bb.a, %bb.d
  %.str.16.sink = phi ptr [ @.str.17, %bb.c ], [ @.str.18, %bb.d ], [ @.str.16, %bb.a ], [ @.str.16, %bb.f ]
  %i.g = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %i.h = tail call ptr @zend_throw_exception(ptr noundef %i.g, ptr noundef nonnull %.str.16.sink, i64 noundef 0) #30 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ %i.a, %bb.c ], [ %i.a, %bb.e ], [ %i.a, %bb.f ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -32) i32 @zend_add_class_modifier(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0                            ; 2 uses
  %i.b = and i32 %1, %0                           ; 3 uses
  %i.c = and i32 %i.b, 64
  %or.cond.not.not = icmp eq i32 %i.c, 0
  br i1 %or.cond.not.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 32
  %or.cond19.not.not = icmp eq i32 %i.d, 0
  br i1 %or.cond19.not.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 65536
  %or.cond20.not.not = icmp eq i32 %i.e, 0
  br i1 %or.cond20.not.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.a, 96
  %or.cond21.not = icmp eq i32 %i.f, 96
  br i1 %or.cond21.not, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.str.13.sink = phi ptr [ @.str.12, %bb.c ], [ @.str.11, %bb.b ], [ @.str.10, %bb.a ], [ @.str.13, %bb.d ]
  %i.g = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %i.h = tail call ptr @zend_throw_exception(ptr noundef %i.g, ptr noundef nonnull %.str.13.sink, i64 noundef 0) #30 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ %i.a, %bb.d ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare ptr @zend_throw_exception(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zend_add_anonymous_class_modifier(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %i.b = and i32 %1, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 32
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %0, 65536
  %i.e = and i32 %i.d, %1
  %or.cond.not.not = icmp eq i32 %i.e, 0
  br i1 %or.cond.not.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.str.12.sink = phi ptr [ @.str.15, %bb.b ], [ @.str.14, %bb.a ], [ @.str.12, %bb.c ]
  %i.f = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !113
  %i.g = tail call ptr @zend_throw_exception(ptr noundef %i.f, ptr noundef nonnull %.str.12.sink, i64 noundef 0) #30 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ %i.a, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_create_member_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = tail call ptr @zend_string_concat3(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef nonnull @.str.19, i64 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.f) #30
  ret ptr %i.g
}

declare ptr @zend_string_concat3(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @function_add_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !87
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !303  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.g, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.h, align 8, !tbaa !305
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 4 uses
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %zend_string_addref.exit, label %bb.f
end_hunk_0
