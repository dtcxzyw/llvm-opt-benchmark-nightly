inline.NumInlined: 658
inline.NumDeleted: 103
begin_hunk_0_@key_symbol_p:bb.a
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread3, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread3

RB_SYMBOL_P.exit.thread3:                         ; preds = %bb.b, %RB_SYMBOL_P.exit
  %i.k = inttoptr i64 %2 to ptr
  store i32 0, ptr %i.k, align 4, !tbaa !7
  br label %RB_SYMBOL_P.exit.thread

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit, %RB_SYMBOL_P.exit.thread3
  %.0 = phi i32 [ 1, %RB_SYMBOL_P.exit.thread3 ], [ 0, %RB_SYMBOL_P.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @kwd_append(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread4, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread4

RB_SYMBOL_P.exit.thread4:                         ; preds = %bb.b, %RB_SYMBOL_P.exit
  %i.k = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.121) #17
  unreachable

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit
  %i.l = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.122, i64 noundef %0, i64 noundef %1) #16 ; 0 uses
  ret i32 0
}

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_funcall_kw(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @new_enum_chain(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cEnumChain, align 8, !tbaa !11
  %i.b = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.a, i64 noundef 16, ptr noundef nonnull @enum_chain_data_type) #16 ; 5 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = trunc i64 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  br i1 %i.f, label %enum_chain_allocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %enum_chain_allocate.exit

enum_chain_allocate.exit:                         ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  store i64 36, ptr %i.i, align 8, !tbaa !84
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store i64 -1, ptr %i.j, align 8, !tbaa !86
  %i.k = tail call i64 @enum_chain_initialize(i64 noundef %i.b, i64 noundef %0) ; 0 uses
  %i.l = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 32
  br label %bb.c

bb.c:                                             ; preds = %RARRAY_AREF.exit, %enum_chain_allocate.exit
  %.09 = phi i64 [ 0, %enum_chain_allocate.exit ], [ %i.ab, %RARRAY_AREF.exit ] ; 4 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.c
  %i.q = load i64, ptr %i.m, align 8, !tbaa !64
  %i.r = icmp slt i64 %.09, %i.q
  br i1 %i.r, label %bb.d, label %.loopexit

rb_array_len.exit.thread:                         ; preds = %bb.c
  %i.s = lshr i64 %i.o, 15
  %i.t = and i64 %i.s, 127
  %i.u = icmp samesign ult i64 %.09, %i.t
  br i1 %i.u, label %RARRAY_AREF.exit, label %.loopexit

bb.d:                                             ; preds = %rb_array_len.exit
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !64
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.m, %rb_array_len.exit.thread ]
  %i.w = getelementptr [8 x i8], ptr %.0.i.i, i64 %.09
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = load i64, ptr @rb_cLazy, align 8, !tbaa !11
  %i.z = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.x, i64 noundef %i.y) #16
  %i.aa = and i64 %i.z, -5
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = add nuw nsw i64 %.09, 1
  br i1 %.not, label %bb.c, label %bb.e, !llvm.loop !119

bb.e:                                             ; preds = %RARRAY_AREF.exit
  %i.ac = load i64, ptr @sym_each, align 8, !tbaa !11
  %i.ad = tail call i32 @rb_keyword_given_p() #16
  %i.ae = load i64, ptr @rb_cLazy, align 8, !tbaa !11
  %i.af = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ae, i64 noundef 96, ptr noundef nonnull @enumerator_data_type) #16 ; 4 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = trunc i64 %i.ai to i1
  %i.ak = getelementptr i8, ptr %i.ag, i64 32     ; 2 uses
  br i1 %i.aj, label %enumerable_lazy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  br label %enumerable_lazy.exit

enumerable_lazy.exit:                             ; preds = %bb.e, %bb.f
  %i.am = phi ptr [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  store i64 36, ptr %i.am, align 8, !tbaa !18
  %i.an = tail call fastcc i64 @enumerator_init(i64 noundef %i.af, i64 noundef %i.b, i64 noundef %i.ac, i32 noundef 0, ptr noundef null, ptr noundef nonnull @lazyenum_size, i64 noundef 4, i32 noundef %i.ad) ; 0 uses
  %i.ao = load i64, ptr @id_method, align 8, !tbaa !11
  %i.ap = tail call i64 @rb_ivar_set(i64 noundef %i.af, i64 noundef %i.ao, i64 noundef 0) #16 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %enumerable_lazy.exit
  %.0 = phi i64 [ %i.af, %enumerable_lazy.exit ], [ %i.b, %rb_array_len.exit ], [ %i.b, %rb_array_len.exit.thread ]
  ret i64 %.0
}

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @lazyenum_size(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3041, i32 noundef 0, ptr noundef null) #16 ; 2 uses
  %i.b = icmp eq i64 %i.a, 36
  %i.c = select i1 %i.b, i64 4, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @lazy_init_block_i(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = tail call i64 @rb_block_call(i64 noundef %1, i64 noundef 3089, i32 noundef %i.a, ptr noundef %i.b, ptr noundef nonnull @lazy_init_iterator, i64 noundef %0) #16 ; 0 uses
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @lazy_init_iterator(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 %4) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %1, ptr %i.a, align 16, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.d, align 8, !tbaa !11
  %i.e = call i64 @rb_yield_values2(i32 noundef 2, ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = add nsw i64 %i.f, 1                      ; 8 uses
  %.not.i.not = icmp eq i32 %2, 2147483647
  br i1 %.not.i.not, label %bb.d, label %rb_long2int_inline.exit

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.g) #18
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.c
  %i.h = trunc nsw i64 %i.g to i32
  %i.i = icmp ult i64 %i.g, 128
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_long2int_inline.exit
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %5 = shl nuw nsw i64 %i.g, 3
  %i.j = alloca i8, i64 %5, align 16
  br label %bb.h

bb.f:                                             ; preds = %rb_long2int_inline.exit
  %i.k = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.k, label %bb.g, label %rb_alloc_tmp_buffer2.exit, !prof !120

bb.g:                                             ; preds = %bb.f
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.g, i64 noundef 8) #17
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.f
  %6 = shl nuw nsw i64 %i.g, 3
  %i.l = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %6, i64 noundef %i.g) #22
  br label %bb.h

bb.h:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.e
  %i.m = phi ptr [ %i.j, %bb.e ], [ %i.l, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  store i64 %1, ptr %i.m, align 8, !tbaa !11
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %rbimpl_size_mul_or_raise.exit, label %ruby_nonempty_memcpy.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.h
  %i.o = shl nuw nsw i64 %i.f, 3
  %i.p = getelementptr i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.p, ptr noundef nonnull readonly align 1 %3, i64 noundef %i.o, i1 noundef false) #16
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.h
  %i.q = call i64 @rb_yield_values2(i32 noundef %i.h, ptr noundef nonnull %i.m) #16
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.i

bb.i:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.q, %ruby_nonempty_memcpy.exit ]
  %i.r = icmp eq i64 %.0, 36
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @rb_iter_break() #17
  unreachable

bb.k:                                             ; preds = %bb.i
  ret i64 4
}

declare i64 @rb_yield_values2(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_iter_break() local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @lazy_eager_size(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3041, i32 noundef 0, ptr noundef null) #16 ; 2 uses
  %i.b = icmp eq i64 %i.a, 36
  %i.c = select i1 %i.b, i64 4, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @lazy_add_method(i64 noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c                         ; 2 uses
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @enumerator_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !25

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp eq ptr %i.r, @enumerator_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !31

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @enumerator_data_type) #16
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !18
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %enumerator_ptr.exit

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.102) #17
  unreachable

enumerator_ptr.exit:                              ; preds = %bb.e
  %i.x = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.y = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.x, i64 noundef 24, ptr noundef nonnull @proc_entry_data_type) #16 ; 6 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = trunc i64 %i.ab to i1
  %i.ad = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  br i1 %i.ac, label %RTYPEDDATA_GET_DATA.exit, label %bb.g

bb.g:                                             ; preds = %enumerator_ptr.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %enumerator_ptr.exit, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.ad, %enumerator_ptr.exit ] ; 3 uses
  %i.ag = tail call i32 @rb_block_given_p() #16
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.ah = tail call i64 @rb_block_proc() #16      ; 4 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !11
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = and i64 %i.ah, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %rb_obj_write.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.ah) #16
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.i, %bb.h, %RTYPEDDATA_GET_DATA.exit
  %i.am = getelementptr i8, ptr %i.af, i64 16
  store ptr %5, ptr %i.am, align 8, !tbaa !66
  %i.an = getelementptr i8, ptr %i.af, i64 8
  store i64 %3, ptr %i.an, align 8, !tbaa !11
  %i.ao = icmp eq i64 %3, 0
  %i.ap = and i64 %3, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rb_obj_write.exit39, label %bb.j

bb.j:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %3) #16
  br label %rb_obj_write.exit39

rb_obj_write.exit39:                              ; preds = %rb_obj_write.exit, %bb.j
  %i.as = tail call i64 @rb_frame_this_func() #16
  %i.at = load i64, ptr @id_method, align 8, !tbaa !11
  %i.au = tail call i64 @rb_id2sym(i64 noundef %i.as) #16
  %i.av = tail call i64 @rb_ivar_set(i64 noundef %i.y, i64 noundef %i.at, i64 noundef %i.au) #16 ; 0 uses
  %i.aw = icmp eq i64 %4, 4
  %i.ax = load i64, ptr @id_arguments, align 8, !tbaa !11
  %..i = select i1 %i.aw, i64 0, i64 %4
  %i.ay = tail call i64 @rb_ivar_set(i64 noundef %i.y, i64 noundef %i.ax, i64 noundef %..i) #16 ; 0 uses
  %i.az = getelementptr i8, ptr %.1.i.i, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !65 ; 2 uses
  %i.bb = and i64 %i.ba, -5
  %.not45 = icmp eq i64 %i.bb, 0
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_write.exit39
  %i.bc = tail call i64 @rb_ary_dup(i64 noundef %i.ba) #16
  br label %bb.m

bb.l:                                             ; preds = %rb_obj_write.exit39
  %i.bd = tail call i64 @rb_ary_new() #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = phi i64 [ %i.bc, %bb.k ], [ %i.bd, %bb.l ] ; 7 uses
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@inspect_enum_chain:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @enum_chain_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = icmp eq ptr %i.s, @enum_chain_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !31

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @enum_chain_data_type) #16
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr %.1.i, align 8, !tbaa !84
  %i.w = icmp eq i64 %i.v, 36
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit
  %i.x = tail call i64 @rb_class_path(i64 noundef %i.a) #16
  %i.y = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.110, i64 noundef %i.x) #16
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not10 = icmp eq i32 %2, 0
  %i.z = tail call i64 @rb_class_path(i64 noundef %i.a) #16 ; 2 uses
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.111, i64 noundef %i.z) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %.1.i, align 8, !tbaa !84
  %i.ac = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.112, i64 noundef %i.z, i64 noundef %i.ab) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0 = phi i64 [ %i.y, %bb.f ], [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @enum_product_mark_and_move(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @enum_product_memsize(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret i64 8
}

declare i64 @rb_keyword_error_new(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_product_enum_size(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @enum_product_size(i64 noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @enum_product_run(i64 noundef returned %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.product_state, align 8      ; 10 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @enum_product_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !25

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp eq ptr %i.r, @enum_product_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !31

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @enum_product_data_type) #16
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !90 ; 2 uses
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %enum_product_ptr.exit

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.151) #17
  unreachable

enum_product_ptr.exit:                            ; preds = %bb.e
  %i.x = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = and i64 %i.y, 8192
  %.not.i.i6 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %enum_product_ptr.exit
  %i.aa = lshr i64 %i.y, 15
  %i.ab = and i64 %i.aa, 127
  br label %rb_array_len.exit.i

bb.h:                                             ; preds = %enum_product_ptr.exit
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !64
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.h, %bb.g
  %.0.i.i = phi i64 [ %i.ab, %bb.g ], [ %i.ad, %bb.h ] ; 6 uses
  %i.ae = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.ae, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #18
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.af = trunc nsw i64 %.0.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i64 %0, ptr %2, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.ag, align 8, !tbaa !136
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.ai, align 4
  %i.aj = icmp ugt i64 %.0.i.i, 2305843009213693951
  br i1 %i.aj, label %bb.j, label %rbimpl_size_mul_or_raise.exit, !prof !120

bb.j:                                             ; preds = %RARRAY_LENINT.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %.0.i.i) #17
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %RARRAY_LENINT.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = shl nuw nsw i64 %.0.i.i, 3
  %i.am = alloca i8, i64 %i.al, align 16
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.ao, align 4
  %i.ap = call fastcc i64 @product_each(i64 noundef %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @product_each(i64 noundef returned %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @enum_product_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !25

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp eq ptr %i.r, @enum_product_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !31

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @enum_product_data_type) #16
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !90 ; 2 uses
  %i.v = icmp eq i64 %i.u, 36
  br i1 %i.v, label %bb.f, label %enum_product_ptr.exit

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.151) #17
  unreachable

enum_product_ptr.exit:                            ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !139  ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !137 ; 2 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %enum_product_ptr.exit
  %i.ac = sext i32 %i.y to i64
  %i.ad = inttoptr i64 %i.u to ptr                ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = and i64 %i.ae, 8192
  %.not.i.i12 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  br label %RARRAY_AREF.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.ad, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ac
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = load i64, ptr @id_each_entry, align 8, !tbaa !11
  %i.am = ptrtoint ptr %1 to i64
  %i.an = tail call i64 @rb_block_call(i64 noundef %i.ak, i64 noundef %i.al, i32 noundef 0, ptr noundef null, ptr noundef nonnull @product_each_i, i64 noundef %i.am) #16 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %enum_product_ptr.exit
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !136
  %i.aq = sext i32 %i.aa to i64
  %i.ar = getelementptr i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138
  %i.at = tail call i64 @rb_ary_new_from_values(i64 noundef %i.aq, ptr noundef %i.as) #16
  %i.au = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ap, i64 noundef 3473, i32 noundef 1, i64 noundef %i.at) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %RARRAY_AREF.exit
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @product_each_i(i64 noundef %0, i64 noundef %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr i8, ptr %i.a, i64 32       ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !139
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %i.g
  store i64 %0, ptr %i.h, align 8, !tbaa !11
  %i.i = load i64, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.j = tail call fastcc i64 @product_each(i64 noundef %i.i, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = load i32, ptr %i.d, align 8, !tbaa !139
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr %i.d, align 8, !tbaa !139
  ret i64 %i.i
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @inspect_enum_product(i64 noundef %0, i64 %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %0) #16 ; 2 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !45

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @enum_product_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = icmp eq ptr %i.s, @enum_product_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !31

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @enum_product_data_type) #16
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
end_hunk_1
