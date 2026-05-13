inline.NumInlined: 142
inline.NumDeleted: 53
begin_hunk_0_@conmode_raw_new:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = and i32 %i.d, -49                        ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !15
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %set_rawmode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4, !tbaa !17   ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i32 %i.f to i8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 %i.h, ptr %i.i, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20   ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i32 %i.k to i8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 %i.m, ptr %i.n, align 2, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %.not16.i = icmp eq i32 %i.p, 0
  br i1 %.not16.i, label %set_rawmode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or i32 %i.e, 1
  store i32 %i.q, ptr %i.c, align 4, !tbaa !15
  %i.r = load <2 x i32>, ptr %3, align 8, !tbaa !6
  %i.s = or <2 x i32> %i.r, <i32 2, i32 1>
  store <2 x i32> %i.s, ptr %3, align 8, !tbaa !6
  br label %set_rawmode.exit

set_rawmode.exit:                                 ; preds = %bb.a, %bb.f, %bb.g
  %i.t = call i64 @rb_obj_class(i64 noundef %2) #12
  %i.u = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.t, i64 noundef 60, ptr noundef nonnull @conmode_type) #12 ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(60) %3, i64 60, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rawmode_opt(i32 %.0.val, ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr noundef nonnull writeonly captures(ret: address, provenance) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = icmp sgt i32 %.0.val, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %.0.val to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @rb_keyword_given_p() #12
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %rb_scan_args_set.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %.0.val, 0
  br i1 %i.i, label %bb.e, label %rb_check_arity.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i64 @rb_hash_dup(i64 noundef %i.g) #12
  %i.k = add nsw i32 %.0.val, -1
  br label %rb_scan_args_set.exit

bb.e:                                             ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %.0.val, i32 noundef 0, i32 noundef -1) #13
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d, %bb.b
  %.188.i311 = phi i64 [ 4, %bb.b ], [ %i.j, %bb.d ]
  %.1.i49 = phi i32 [ %.0.val, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %.1.i49, %1
  br i1 %or.cond.i, label %bb.f, label %rb_check_arity.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_error_arity(i32 noundef %.1.i49, i32 noundef 0, i32 noundef range(i32 0, 2) %1) #13
  unreachable

rb_check_arity.exit:                              ; preds = %bb.c, %rb_scan_args_set.exit
  %.188.i31124 = phi i64 [ %.188.i311, %rb_scan_args_set.exit ], [ 4, %bb.c ]
  %i.l = call i32 @rb_get_kwargs(i64 noundef %.188.i31124, ptr noundef nonnull @rawmode_opt_ids, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.a) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %rb_check_arity.exit
  %i.m = load i64, ptr %i.a, align 16, !tbaa !13  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 16, !tbaa !13  ; 3 uses
  store i32 1, ptr %2, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !21
  switch i64 %i.m, label %bb.h [
    i64 36, label %bb.k
    i64 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = trunc i64 %i.m to i1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call i64 @rb_fix2int(i64 noundef %i.m) #12
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.v = call i64 @rb_num2int(i64 noundef %i.m) #12
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  %i.w = trunc i64 %.0.i to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.g, %rb_num2int_inline.exit
  %.0 = phi ptr [ null, %bb.g ], [ %2, %rb_num2int_inline.exit ], [ null, %bb.g ] ; 2 uses
  switch i64 %i.o, label %bb.l [
    i64 36, label %bb.o
    i64 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 21, ptr %i.b, align 8, !tbaa !13
  %i.x = call i64 @rb_funcallv_public(i64 noundef %i.o, i64 noundef 42, i32 noundef 1, ptr noundef nonnull %i.b) #12 ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = call i64 @rb_fix2int(i64 noundef %i.x) #12
  br label %rb_num2int_inline.exit32

bb.n:                                             ; preds = %bb.l
  %i.aa = call i64 @rb_num2int(i64 noundef %i.x) #12
  br label %rb_num2int_inline.exit32

rb_num2int_inline.exit32:                         ; preds = %bb.m, %bb.n
  %.0.i31 = phi i64 [ %i.z, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = trunc i64 %.0.i31 to i32
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.k, %rb_num2int_inline.exit32
  %.1 = phi ptr [ %.0, %bb.k ], [ %2, %rb_num2int_inline.exit32 ], [ %.0, %bb.k ] ; 2 uses
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 62)
  switch i64 %i.ac, label %bb.q [
    i64 5, label %.sink.split
    i64 0, label %bb.p
    i64 9, label %bb.r
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.50, i64 noundef %i.q) #13
  unreachable

.sink.split:                                      ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ 0, %bb.p ], [ 1, %bb.o ]
  store i32 %.sink, ptr %i.s, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.o, %bb.o, %rb_check_arity.exit
  %.3 = phi ptr [ null, %rb_check_arity.exit ], [ %.1, %bb.o ], [ %.1, %bb.o ], [ %2, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ttymode(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.termios, align 4            ; 6 uses
  %6 = alloca %struct.termios, align 4            ; 6 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %7 = alloca [2 x %struct.termios], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 -1, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.b = tail call i32 @rb_io_descriptor(i64 noundef %0) #12 ; 4 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.c = call i32 @tcgetattr(i32 noundef range(i32 0, -1) %i.b, ptr noundef nonnull %7) #12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit66

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %6, ptr noundef nonnull align 16 dereferenceable(60) %7, i64 60, i1 false), !tbaa.struct !27
  call void %3(ptr noundef nonnull %6, ptr noundef %4) #12, !callees !54, !inline_history !55
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = call i32 @tcsetattr(i32 noundef range(i32 0, -1) %i.b, i32 noundef 0, ptr noundef nonnull %6) #12
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = call ptr @rb_errno_ptr() #12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  %.not2.i.i = icmp eq i32 %i.g, 4
  br i1 %.not2.i.i, label %bb.d, label %.loopexit66, !llvm.loop !22

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  store i32 0, ptr %i.a, align 4, !tbaa !6
  br label %bb.g

.loopexit66:                                      ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.h = call ptr @rb_errno_ptr() #12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit66, %bb.a
  %.023 = phi i32 [ 0, %bb.f ], [ %i.i, %.loopexit66 ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.b, %bb.f ], [ -1, %.loopexit66 ], [ -1, %bb.a ] ; 6 uses
  %i.j = call i64 @rb_io_get_write_io(i64 noundef %0) #12
  %i.k = call i32 @rb_io_descriptor(i64 noundef %i.j) #12 ; 5 uses
  %.not30 = icmp eq i32 %i.k, -1
  br i1 %.not30, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31 = icmp eq i32 %i.k, %.sroa.0.0
  br i1 %.not31, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.m = call i32 @tcgetattr(i32 noundef range(i32 0, -1) %i.k, ptr noundef nonnull %i.l) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %5, ptr noundef nonnull align 4 dereferenceable(60) %i.l, i64 60, i1 false), !tbaa.struct !27
  call void %3(ptr noundef nonnull %5, ptr noundef %4) #12, !callees !54, !inline_history !55
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.o = call i32 @tcsetattr(i32 noundef range(i32 0, -1) %i.k, i32 noundef 0, ptr noundef nonnull %5) #12
  %.not.i.i40 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i40, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = call ptr @rb_errno_ptr() #12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  %.not2.i.i41 = icmp eq i32 %i.q, 4
  br i1 %.not2.i.i41, label %bb.k, label %.loopexit, !llvm.loop !22

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  store i32 0, ptr %i.a, align 4, !tbaa !6
  br label %bb.n

.loopexit:                                        ; preds = %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.r = call ptr @rb_errno_ptr() #12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %.1.ph = phi i32 [ %.023, %bb.g ], [ %.023, %bb.h ], [ %i.s, %.loopexit ] ; 2 uses
  %.sroa.11.0.ph = phi i32 [ -1, %bb.g ], [ %.sroa.0.0, %bb.h ], [ -1, %.loopexit ] ; 2 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !6
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  %.sroa.11.057 = phi i32 [ %i.k, %.thread ], [ %.sroa.11.0.ph, %bb.m ]
  %.155 = phi i32 [ %.023, %.thread ], [ %.1.ph, %bb.m ]
  %i.t = call i64 @rb_protect(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.11.056 = phi i32 [ %.sroa.11.057, %bb.n ], [ %.sroa.11.0.ph, %bb.m ] ; 4 uses
  %.154 = phi i32 [ %.155, %bb.n ], [ %.1.ph, %bb.m ] ; 3 uses
  %.0 = phi i64 [ %i.t, %bb.n ], [ 4, %bb.m ]
  %.not33 = icmp eq i32 %.sroa.0.0, -1
  br i1 %.not33, label %setattr.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = call i32 @rb_io_descriptor(i64 noundef %0) #12
  %i.v = icmp eq i32 %.sroa.0.0, %i.u
  br i1 %i.v, label %.preheader, label %setattr.exit

.preheader:                                       ; preds = %bb.p, %bb.q
  %i.w = call i32 @tcsetattr(i32 noundef %.sroa.0.0, i32 noundef 0, ptr noundef nonnull %7) #12
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %setattr.exit, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.x = call ptr @rb_errno_ptr() #12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6
  %.not2.i = icmp eq i32 %i.y, 4
  br i1 %.not2.i, label %.preheader, label %bb.r, !llvm.loop !22

bb.r:                                             ; preds = %bb.q
  %i.z = call ptr @rb_errno_ptr() #12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !6
  store i32 -1, ptr %i.a, align 4, !tbaa !6
  br label %setattr.exit

setattr.exit:                                     ; preds = %.preheader, %bb.r, %bb.p, %bb.o
  %.2 = phi i32 [ %.154, %bb.o ], [ %i.aa, %bb.r ], [ %.154, %bb.p ], [ %.154, %.preheader ]
  %.not35 = icmp eq i32 %.sroa.11.056, -1
  %.not36 = icmp eq i32 %.sroa.11.056, %.sroa.0.0
  %or.cond = or i1 %.not35, %.not36
  br i1 %or.cond, label %setattr.exit47, label %bb.s

bb.s:                                             ; preds = %setattr.exit
  %i.ab = call i64 @rb_io_get_write_io(i64 noundef %0) #12
  %i.ac = call i32 @rb_io_descriptor(i64 noundef %i.ab) #12
  %i.ad = icmp eq i32 %.sroa.11.056, %i.ac
  br i1 %i.ad, label %bb.t, label %setattr.exit47

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 60
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.af = call i32 @tcsetattr(i32 noundef %.sroa.11.056, i32 noundef 0, ptr noundef nonnull %i.ae) #12
  %.not.i44 = icmp eq i32 %i.af, 0
  br i1 %.not.i44, label %setattr.exit47, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = call ptr @rb_errno_ptr() #12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6
  %.not2.i45 = icmp eq i32 %i.ah, 4
  br i1 %.not2.i45, label %bb.u, label %setattr.exit47.thread63, !llvm.loop !22

setattr.exit47.thread63:                          ; preds = %bb.v
  %i.ai = call ptr @rb_errno_ptr() #12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !6
  store i32 -1, ptr %i.a, align 4, !tbaa !6
  br label %bb.w

setattr.exit47:                                   ; preds = %bb.u, %bb.s, %setattr.exit
  %.pr62 = load i32, ptr %i.a, align 4, !tbaa !6  ; 2 uses
  switch i32 %.pr62, label %bb.x [
    i32 0, label %bb.y
    i32 -1, label %bb.w
  ]

bb.w:                                             ; preds = %setattr.exit47.thread63, %setattr.exit47
  %.365 = phi i32 [ %i.aj, %setattr.exit47.thread63 ], [ %.2, %setattr.exit47 ]
  call void @rb_syserr_fail(i32 noundef %.365, ptr noundef null) #13
  unreachable

bb.x:                                             ; preds = %setattr.exit47
  call void @rb_jump_tag(i32 noundef %.pr62) #13
  unreachable

bb.y:                                             ; preds = %setattr.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.0
}

declare i64 @rb_yield(i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @set_rawmode(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  tail call void @cfmakeraw(ptr noundef %0) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = and i32 %i.b, -49                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !15
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !17     ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %i.d to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.f, ptr %i.g, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20   ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = trunc i32 %i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.k, ptr %i.l, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = or i32 %i.c, 1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !15
  %i.p = load <2 x i32>, ptr %0, align 4, !tbaa !6
  %i.q = or <2 x i32> %i.p, <i32 2, i32 1>
  store <2 x i32> %i.q, ptr %0, align 4, !tbaa !6
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_funcallv_public(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare i32 @rb_io_descriptor(i64 noundef) local_unnamed_addr #1

declare ptr @rb_errno_ptr() local_unnamed_addr #1

declare i64 @rb_io_get_write_io(i64 noundef) local_unnamed_addr #1

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @cfmakeraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #2

declare i64 @rb_syserr_new_str(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_io_path(i64 noundef) local_unnamed_addr #1

end_hunk_0
