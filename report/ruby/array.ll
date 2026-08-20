inline.NumInlined: 1460
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_ary_hash_values:bb.a
  %i.h = tail call i64 @rb_num2long(i64 noundef %i.f) #24, !inline_history !75
  br label %rb_num2long_inline.exit.us.i

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.i = ashr i64 %i.f, 1
  br label %rb_num2long_inline.exit.us.i

rb_num2long_inline.exit.us.i:                     ; preds = %bb.c, %bb.b
  %.0.i.us.i = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.j = tail call i64 @rb_st_hash_uint(i64 noundef %.028.us.i, i64 noundef %.0.i.us.i) #29, !inline_history !75 ; 2 uses
  %i.k = add nuw nsw i64 %.01327.us.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %0
  br i1 %exitcond.not.i, label %ary_hash_values.exit, label %.lr.ph.split.us.i, !llvm.loop !76

ary_hash_values.exit:                             ; preds = %rb_num2long_inline.exit.us.i, %bb.a
  %.0.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.j, %rb_num2long_inline.exit.us.i ]
  %i.l = tail call i64 @rb_st_hash_end(i64 noundef %.0.lcssa.i) #29, !inline_history !75 ; 2 uses
  %i.m = and i64 %i.l, 4611686018427387903
  %i.n = icmp slt i64 %i.l, 0
  %masksel.i.i = select i1 %i.n, i64 -4611686018427387904, i64 0
  %.0.i21.i = or disjoint i64 %masksel.i.i, %i.m
  %i.o = shl nsw i64 %.0.i21.i, 1
  %i.p = or disjoint i64 %i.o, 1
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_ary_includes(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %RARRAY_AREF.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.o, %RARRAY_AREF.exit ] ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !14
  %i.g = icmp slt i64 %.0, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

rb_array_len.exit.thread:                         ; preds = %bb.b
  %i.h = lshr i64 %i.d, 15
  %i.i = and i64 %i.h, 127
  %i.j = icmp samesign ult i64 %.0, %i.i
  br i1 %i.j, label %RARRAY_AREF.exit, label %bb.d

bb.c:                                             ; preds = %rb_array_len.exit
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.b, %rb_array_len.exit.thread ]
  %i.l = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = tail call i64 @rb_equal(i64 noundef %i.m, i64 noundef %1) #24
  %.not = icmp eq i64 %i.n, 0
  %i.o = add nuw nsw i64 %.0, 1
  br i1 %.not, label %bb.b, label %bb.d, !llvm.loop !77

bb.d:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit, %RARRAY_AREF.exit
  %.08 = phi i64 [ 20, %RARRAY_AREF.exit ], [ 0, %rb_array_len.exit ], [ 0, %rb_array_len.exit.thread ]
  ret i64 %.08
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_ary_cmp(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = tail call i64 @rb_check_convert_type_with_id(i64 noundef %1, i32 noundef 7, ptr noundef nonnull @.str, i64 noundef 3265) #24 ; 5 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, %i.a
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_exec_recursive_paired(ptr noundef nonnull @recursive_cmp, i64 noundef %0, i64 noundef %i.a, i64 noundef %i.a) #24 ; 2 uses
  %i.e = icmp eq i64 %i.d, 36
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_array_len.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.m = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 8192
  %.not.i17 = icmp eq i64 %i.o, 0
  br i1 %.not.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_array_len.exit
  %i.p = lshr i64 %i.n, 15
  %i.q = and i64 %i.p, 127
  br label %rb_array_len.exit19

bb.h:                                             ; preds = %rb_array_len.exit
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  br label %rb_array_len.exit19

rb_array_len.exit19:                              ; preds = %bb.g, %bb.h
  %.0.i18 = phi i64 [ %i.q, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.t = icmp eq i64 %.0.i, %.0.i18
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit19
  %i.u = sub i64 %.0.i, %.0.i18
  %i.v = icmp sgt i64 %i.u, 0
  %. = select i1 %i.v, i64 3, i64 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_array_len.exit19, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.b ], [ 4, %bb.a ], [ %i.d, %bb.c ], [ %., %bb.i ], [ 1, %rb_array_len.exit19 ]
  ret i64 %.0
}

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 2, 1) i64 @recursive_cmp(i64 noundef %0, i64 noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  %i.i = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = and i64 %i.j, 8192
  %.not.i24 = icmp eq i64 %i.k, 0
  br i1 %.not.i24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit
  %i.l = lshr i64 %i.j, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit26

bb.f:                                             ; preds = %rb_array_len.exit
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  br label %rb_array_len.exit26

rb_array_len.exit26:                              ; preds = %bb.e, %bb.f
  %.0.i25 = phi i64 [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %.0.i25) ; 2 uses
  %i.p = icmp sgt i64 %spec.select, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_array_len.exit26
  %i.q = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.r = getelementptr i8, ptr %i.b, i64 32
  %i.s = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.t = getelementptr i8, ptr %i.i, i64 32
  br label %bb.h

bb.g:                                             ; preds = %rb_ary_elt.exit37
  %i.u = add nuw nsw i64 %.01838, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %spec.select
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !78

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.01838 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.g ] ; 5 uses
  %i.v = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0                 ; 2 uses
  br i1 %.not.i.i, label %5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = lshr i64 %i.v, 15
  %4 = and i64 %3, 127
  br label %rb_array_len.exit.i

5:                                                ; preds = %bb.h
  %6 = load i64, ptr %i.q, align 8, !tbaa !14
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %5, %bb.i
  %.0.i.i = phi i64 [ %4, %bb.i ], [ %6, %5 ]
  %.not.i27 = icmp sgt i64 %.0.i.i, %.01838
  br i1 %.not.i27, label %7, label %rb_ary_elt.exit

7:                                                ; preds = %rb_array_len.exit.i
  br i1 %.not.i.i, label %bb.j, label %RARRAY_AREF.exit.i

bb.j:                                             ; preds = %7
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %7, %bb.j
  %.0.i.i.i = phi ptr [ %i.x, %bb.j ], [ %i.q, %7 ]
  %i.y = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.01838
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  br label %rb_ary_elt.exit

rb_ary_elt.exit:                                  ; preds = %rb_array_len.exit.i, %RARRAY_AREF.exit.i
  %.0.i28 = phi i64 [ %i.z, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i29 = icmp eq i64 %i.ab, 0              ; 2 uses
  br i1 %.not.i.i29, label %10, label %bb.k

bb.k:                                             ; preds = %rb_ary_elt.exit
  %8 = lshr i64 %i.aa, 15
  %9 = and i64 %8, 127
  br label %rb_array_len.exit.i30

10:                                               ; preds = %rb_ary_elt.exit
  %11 = load i64, ptr %i.s, align 8, !tbaa !14
  br label %rb_array_len.exit.i30

rb_array_len.exit.i30:                            ; preds = %10, %bb.k
  %.0.i.i31 = phi i64 [ %9, %bb.k ], [ %11, %10 ]
  %.not.i32 = icmp sgt i64 %.0.i.i31, %.01838
  br i1 %.not.i32, label %12, label %rb_ary_elt.exit37

12:                                               ; preds = %rb_array_len.exit.i30
  br i1 %.not.i.i29, label %bb.l, label %RARRAY_AREF.exit.i35

bb.l:                                             ; preds = %12
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i35

RARRAY_AREF.exit.i35:                             ; preds = %12, %bb.l
  %.0.i.i.i36 = phi ptr [ %i.ac, %bb.l ], [ %i.s, %12 ]
  %i.ad = getelementptr [8 x i8], ptr %.0.i.i.i36, i64 %.01838
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  br label %rb_ary_elt.exit37

rb_ary_elt.exit37:                                ; preds = %rb_array_len.exit.i30, %RARRAY_AREF.exit.i35
  %.0.i34 = phi i64 [ %i.ae, %RARRAY_AREF.exit.i35 ], [ 4, %rb_array_len.exit.i30 ]
  store i64 %.0.i34, ptr %i.a, align 8, !tbaa !15
  %i.af = call i64 @rb_funcallv(i64 noundef %.0.i28, i64 noundef 135, i32 noundef 1, ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not23 = icmp eq i64 %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %.not23, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %rb_ary_elt.exit37, %bb.g, %rb_array_len.exit26, %bb.a
  %.2 = phi i64 [ 36, %bb.a ], [ 36, %rb_array_len.exit26 ], [ %i.af, %rb_ary_elt.exit37 ], [ 36, %bb.g ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ary_diff(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call i64 @rb_convert_type_with_id(i64 noundef %1, i32 noundef 7, ptr noundef nonnull @.str, i64 noundef 3265) #24
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i64 %.0.i, 0
  %i.l = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %rb_array_len.exit
  %i.m = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i64 %i.n, 15
  %i.q = and i64 %i.p, 127
  br label %ary_make_shared_copy.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  br label %ary_make_shared_copy.exit

ary_make_shared_copy.exit:                        ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %i.t = tail call fastcc noundef i64 @ary_make_partial(i64 noundef %0, i64 noundef %i.l, i64 noundef 0, i64 noundef %.0.i.i)
  br label %.loopexit

bb.g:                                             ; preds = %rb_array_len.exit
  %i.u = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  store volatile ptr %i.w, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.l, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %rb_ary_new.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !25
  store volatile ptr %i.y, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i, i64 noundef %i.l, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.ad = getelementptr i8, ptr %i.aa, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !14
  store i64 0, ptr %i.ab, align 8, !tbaa !14
  br label %rb_ary_new.exit

rb_ary_new.exit:                                  ; preds = %bb.h, %bb.i
  %.0.i.i29 = phi i64 [ %i.x, %bb.h ], [ %i.z, %bb.i ] ; 8 uses
  %i.ae = inttoptr i64 %0 to ptr                  ; 9 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  %i.ag = and i64 %i.af, 8192
  %.not.i30 = icmp eq i64 %i.ag, 0
  br i1 %.not.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_ary_new.exit
  %i.ah = lshr i64 %i.af, 15
  %i.ai = and i64 %i.ah, 127
  br label %rb_array_len.exit32

bb.k:                                             ; preds = %rb_ary_new.exit
  %i.aj = getelementptr i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  br label %rb_array_len.exit32

rb_array_len.exit32:                              ; preds = %bb.j, %bb.k
  %.0.i31 = phi i64 [ %i.ai, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = icmp slt i64 %.0.i31, 17
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rb_array_len.exit32
  %i.am = load i64, ptr %i.d, align 8, !tbaa !11  ; 3 uses
  %i.an = and i64 %i.am, 8192
  %.not.i33 = icmp eq i64 %i.an, 0
  br i1 %.not.i33, label %rb_array_len.exit35, label %rb_array_len.exit35.thread

rb_array_len.exit35:                              ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.d, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 17
  br i1 %i.aq, label %bb.m, label %ary_tmp_hash_new.exit.i

rb_array_len.exit35.thread:                       ; preds = %bb.l
  %i.ar = and i64 %i.am, 4161536
  %i.as = icmp samesign ult i64 %i.ar, 557056
  br i1 %i.as, label %bb.m, label %.thread84

bb.m:                                             ; preds = %rb_array_len.exit35.thread, %rb_array_len.exit35, %rb_array_len.exit32
  %i.at = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ae, i64 32
  %i.av = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.d, i64 32
  %i.ax = inttoptr i64 %.0.i.i29 to ptr           ; 6 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16     ; 3 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 32
  br label %bb.n

bb.n:                                             ; preds = %rb_ary_includes_by_eql.exit, %bb.m
  %i.ba = phi i64 [ %i.af, %bb.m ], [ %.pre, %rb_ary_includes_by_eql.exit ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.m ], [ %i.ct, %rb_ary_includes_by_eql.exit ] ; 5 uses
  %i.bb = and i64 %i.ba, 8192
  %.not.i36 = icmp eq i64 %i.bb, 0                ; 2 uses
  br i1 %.not.i36, label %rb_array_len.exit38, label %rb_array_len.exit38.thread

rb_array_len.exit38:                              ; preds = %bb.n
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.bd = icmp slt i64 %.0, %i.bc
  br i1 %i.bd, label %rb_array_len.exit.i, label %.loopexit

rb_array_len.exit38.thread:                       ; preds = %bb.n
  %i.be = lshr i64 %i.ba, 15
  %i.bf = and i64 %i.be, 127                      ; 2 uses
  %i.bg = icmp slt i64 %.0, %i.bf
  br i1 %i.bg, label %rb_array_len.exit.i, label %.loopexit

rb_array_len.exit.i:                              ; preds = %rb_array_len.exit38, %rb_array_len.exit38.thread
  %.0.i.i40 = phi i64 [ %i.bf, %rb_array_len.exit38.thread ], [ %i.bc, %rb_array_len.exit38 ]
  %i.bh = icmp ne i64 %.0.i.i40, 0
  %i.bi = icmp sgt i64 %.0, -1
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.o, label %rb_ary_elt.exit

bb.o:                                             ; preds = %rb_array_len.exit.i
  br i1 %.not.i36, label %bb.p, label %RARRAY_AREF.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.at, %bb.o ]
  %i.bk = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !15
  br label %rb_ary_elt.exit

rb_ary_elt.exit:                                  ; preds = %rb_array_len.exit.i, %RARRAY_AREF.exit.i
  %.0.i42 = phi i64 [ %i.bl, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ] ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %RARRAY_AREF.exit.i45, %rb_ary_elt.exit
  %.0.i43 = phi i64 [ 0, %rb_ary_elt.exit ], [ %i.bx, %RARRAY_AREF.exit.i45 ] ; 4 uses
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.bn = and i64 %i.bm, 8192
  %.not.i.i44 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i44, label %rb_array_len.exit.i48, label %rb_array_len.exit.thread.i

rb_array_len.exit.i48:                            ; preds = %bb.q
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !14
  %i.bp = icmp slt i64 %.0.i43, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.s

rb_array_len.exit.thread.i:                       ; preds = %bb.q
  %i.bq = lshr i64 %i.bm, 15
  %i.br = and i64 %i.bq, 127
  %i.bs = icmp samesign ult i64 %.0.i43, %i.br
  br i1 %i.bs, label %RARRAY_AREF.exit.i45, label %bb.s
end_hunk_0
