Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/cont?download=true
inline.NumInlined: 247
inline.NumDeleted: 111
begin_hunk_0_@rb_fiber_s_yield:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_keyword_given_p() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !59 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !57
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i.i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i.i.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !162
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %fiber_current.exit.i.i

fiber_current.exit.i.i:                           ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr i8, ptr %i.v, i64 536      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.c, label %rb_fiber_yield_kw.exit

bb.c:                                             ; preds = %fiber_current.exit.i.i
  %i.y = load i64, ptr @rb_eFiberError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.56) #26
  unreachable

rb_fiber_yield_kw.exit:                           ; preds = %fiber_current.exit.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !113
  %i.z = getelementptr i8, ptr %i.x, i64 544
  store ptr null, ptr %i.z, align 8, !tbaa !163
  %i.aa = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %i.x, i32 noundef %0, ptr noundef %1, i32 noundef %i.b, ptr noundef null, i1 noundef zeroext true)
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_s_current(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %rb_fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !57
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !161
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !61
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !162
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !160
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %rb_fiber_current.exit

rb_fiber_current.exit:                            ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %.pre.i, %bb.b ], [ %i.g, %bb.a ]
  ret i64 %i.u
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_storage_aref(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_to_symbol(i64 noundef %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !59 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !57
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !162
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr i8, ptr %i.v, i64 176
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %fiber_current.exit
  %i.z = tail call i64 @rb_hash_aref(i64 noundef %i.x, i64 noundef %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %fiber_current.exit, %bb.c
  %.0 = phi i64 [ %i.z, %bb.c ], [ 4, %fiber_current.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_storage_aset(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_to_symbol(i64 noundef %1) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !58
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !59 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !57
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !162
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = icmp ne i64 %2, 4                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 176      ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56   ; 4 uses
  %i.z = icmp eq i64 %i.y, 4
  %or.cond.i = and i1 %i.w, %i.z
  br i1 %or.cond.i, label %fiber_storage_get.exit, label %bb.c

bb.c:                                             ; preds = %fiber_current.exit
  %3 = icmp eq i64 %i.y, 4
  br i1 %3, label %bb.g, label %bb.d

fiber_storage_get.exit:                           ; preds = %fiber_current.exit
  %4 = tail call i64 @rb_hash_new() #10           ; 3 uses
  store i64 %4, ptr %i.x, align 8, !tbaa !56
  %i.aa = icmp eq i64 %4, 4
  br i1 %i.aa, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i64 @rb_hash_delete(i64 noundef %i.y, i64 noundef %i.b) #10
  br label %bb.g

bb.f:                                             ; preds = %fiber_storage_get.exit, %bb.d
  %.0.i1315 = phi i64 [ %i.y, %bb.d ], [ %4, %fiber_storage_get.exit ]
  %i.ac = tail call i64 @rb_hash_aset(i64 noundef %.0.i1315, i64 noundef %i.b, i64 noundef %2) #10
  br label %bb.g

bb.g:                                             ; preds = %fiber_storage_get.exit, %bb.c, %bb.f, %bb.e
  %.0 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.e ], [ 4, %bb.c ], [ 4, %fiber_storage_get.exit ]
  ret i64 %.0
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_fiber_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call i32 @rb_keyword_given_p() #10  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rb_fiber_initialize_kw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.rb_fiber_initialize_kw.arguments, i64 24, i1 false)
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57   ; 4 uses
  switch i32 %i.b, label %.thread23.i [
    i32 3, label %bb.d
    i32 1, label %rb_scan_args_keyword_p.exit.thread12.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %.thread23.i, label %rb_scan_args_keyword_p.exit.i

rb_scan_args_keyword_p.exit.i:                    ; preds = %bb.d
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 8
  br i1 %i.o, label %rb_scan_args_keyword_p.exit.thread12.i, label %.thread23.i

bb.e:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %0, 0
  br i1 %i.p, label %.thread23.i, label %rb_scan_args_set.exit.i

rb_scan_args_keyword_p.exit.thread12.i:           ; preds = %rb_scan_args_keyword_p.exit.i, %bb.c
  %i.q = tail call i64 @rb_hash_dup(i64 noundef %i.g) #10
  %i.r = add nsw i32 %0, -1                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %rb_scan_args_set.exit.i, label %.thread23.i

.thread23.i:                                      ; preds = %rb_scan_args_keyword_p.exit.thread12.i, %bb.e, %rb_scan_args_keyword_p.exit.i, %bb.d, %bb.c
  %.193.i17.i = phi i32 [ %i.r, %rb_scan_args_keyword_p.exit.thread12.i ], [ %0, %bb.e ], [ %0, %rb_scan_args_keyword_p.exit.i ], [ %0, %bb.d ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.193.i17.i, i32 noundef 0, i32 noundef 0) #26
  unreachable

rb_scan_args_set.exit.i:                          ; preds = %rb_scan_args_keyword_p.exit.thread12.i, %bb.e
  %.026.i = phi i64 [ %i.q, %rb_scan_args_keyword_p.exit.thread12.i ], [ 4, %bb.e ]
  %i.t = call i32 @rb_get_kwargs(i64 noundef %.026.i, ptr noundef nonnull @fiber_initialize_keywords, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.u = load i64, ptr %i.a, align 16, !tbaa !57  ; 2 uses
  %i.v = icmp ne i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 16, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.y = and i64 %i.u, -5
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = and i1 %i.v, %i.z
  %i.ab = zext i1 %i.aa to i32
  br label %rb_fiber_initialize_kw.exit

rb_fiber_initialize_kw.exit:                      ; preds = %bb.a, %rb_scan_args_set.exit.i
  %.1.i = phi i32 [ %i.ab, %rb_scan_args_set.exit.i ], [ 0, %bb.a ]
  %.0.i = phi i64 [ %i.x, %rb_scan_args_set.exit.i ], [ 36, %bb.a ]
  %i.ac = call i64 @rb_block_proc() #10
  %i.ad = call fastcc i64 @fiber_initialize(i64 noundef %2, i64 noundef %i.ac, i32 noundef %.1.i, i64 noundef %.0.i) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_storage_get(i64 noundef %0) #0 {
bb.a:
  tail call fastcc void @storage_access_must_be_from_same_fiber(i64 noundef %0)
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !166

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !167

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !140

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !175  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56   ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.y = tail call i64 @rb_obj_dup(i64 noundef %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %fiber_ptr.exit, %bb.f
  %.0 = phi i64 [ %i.y, %bb.f ], [ 4, %fiber_ptr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_fiber_storage_set(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 2) #10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 2, ptr noundef nonnull @.str.61) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @storage_access_must_be_from_same_fiber(i64 noundef %0)
  %i.b = icmp eq i64 %1, 4
  br i1 %i.b, label %fiber_storage_validate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %RB_OBJ_FROZEN.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %i.k = load i64, ptr @rb_eTypeError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.37) #26
  unreachable

RB_OBJ_FROZEN.exit.i:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.l = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %RB_OBJ_FROZEN.exit.thread.i

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i
  %i.m = load i64, ptr @rb_eFrozenError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.38) #26
  unreachable

bb.e:                                             ; preds = %RB_OBJ_FROZEN.exit.i
end_hunk_0
