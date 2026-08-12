inline.NumInlined: 127
inline.NumDeleted: 75
begin_hunk_0_@_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs74Z8AuVjqbo_8clap_lex:bb.a
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !8, !alias.scope !26, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !26
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs74Z8AuVjqbo_8clap_lex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !29, !noalias !26, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !30, !noalias !26, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !26, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !26
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.a, align 8, !noundef !4
  %.val5 = load i64, ptr %1, align 8, !noundef !4 ; 2 uses
  %i.b = icmp ult i64 %.val5, %.val4
  br i1 %i.b, label %bb.b, label %_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs7peek_os.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  br label %_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs7peek_os.exit

_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs7peek_os.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs4seek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %default.unreachable7 [
    i64 0, label %bb.d
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call i64 @llvm.sadd.sat.i64(i64 %i.b, i64 %3)
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !noundef !4
  %i.f = tail call i64 @llvm.sadd.sat.i64(i64 %i.e, i64 %3)
  %..i5 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.04.0 = phi i64 [ %..i5, %bb.c ], [ %..i, %bb.b ], [ %3, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %..i6 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.h, i64 %.sroa.04.0)
  store i64 %..i6, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs6is_end(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs7peek_os.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %.val2 = load i64, ptr %1, align 8, !noundef !4
  %i.b = icmp uge i64 %.val2, %.val1
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs9from_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCscAsMj0W7j8b_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %.sroa.017.0.copyload.i = load ptr, ptr %i.c, align 8, !alias.scope !36, !noalias !31 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !36, !noalias !31, !nonnull !4, !noundef !4 ; 6 uses
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !alias.scope !36, !noalias !31 ; 7 uses
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.619.0.copyload.i = load ptr, ptr %.sroa.619.0..sroa_idx.i, align 8, !alias.scope !36, !noalias !31, !nonnull !4, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  %i.d = icmp eq ptr %.sroa.4.0.copyload.i, %.sroa.619.0.copyload.i
  br i1 %i.d, label %bb.b, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i

_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 24 ; 7 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 8, !noalias !47 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %i.e, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  %i.f = ptrtoint ptr %.sroa.619.0.copyload.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.j = icmp eq ptr %.sroa.619.0.copyload.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !55, !noalias !58 ; 2 uses
  %i.m = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !55, !noalias !58, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !69
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.o = icmp eq i64 %i.l, %i.i
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp eq i64 %.sroa.518.0.copyload.i, 0
  br i1 %i.p, label %_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs3newNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload.i) ]
  %i.q = mul nuw i64 %.sroa.518.0.copyload.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.017.0.copyload.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !58
  br label %_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs3newNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

bb.e:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.s, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !40
  br label %bb.p

bb.g:                                             ; preds = %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !70 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !70
  %i.t = ptrtoint ptr %.sroa.619.0.copyload.i to i64 ; 3 uses
  %i.u = ptrtoint ptr %i.e to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %i.w = udiv exact i64 %i.v, 24                  ; 2 uses
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.w, i64 3) ; 2 uses
  %..i.i.i.i = add nuw nsw i64 %i.x, 1            ; 2 uses
  %1 = mul i64 %..i.i.i.i, 24                     ; 3 uses
  %or.cond.not.i.i.i.i.i = icmp ugt i64 %i.v, 9223372036854775776
  br i1 %or.cond.not.i.i.i.i.i, label %bb.h, label %2, !prof !71

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %bb.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !72
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %1, i64 noundef 8) #24, !noalias !72 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %4

4:                                                ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %5 = ptrtoint ptr %i.y to i64
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.g
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %1) #26
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !40

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %4, %2
  %.sroa.4.0.i.i.i.i = phi i64 [ %..i.i.i.i, %4 ], [ 0, %2 ] ; 2 uses
  %.sroa.10.0.i.i.i.i = phi i64 [ %5, %4 ], [ 8, %2 ]
  %6 = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr    ; 5 uses
  %7 = icmp samesign ult i64 %i.x, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %7)
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %6, align 8, !noalias !40
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !40
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !40
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.b, align 8, !noalias !40
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %6, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !40
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  store ptr %.sroa.017.0.copyload.i, ptr %i.a, align 8, !noalias !75
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.518.0.copyload.i, ptr %.sroa.8.0..sroa_idx12.i, align 8, !noalias !75
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.619.0.copyload.i, ptr %.sroa.10.0..sroa_idx15.i, align 8, !noalias !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.aa = icmp eq ptr %i.e, %.sroa.619.0.copyload.i
  br i1 %i.aa, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %bb.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i
  %i.ab = phi ptr [ %i.ap, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i ], [ %6, %bb.i ]
  %i.ac = phi i64 [ %i.ar, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i ], [ 1, %bb.i ] ; 6 uses
  %.val1920.i.i.i.i.i = phi ptr [ %i.ad, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i ], [ %i.e, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1920.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.val1920.i.i.i.i.i, align 8, !noalias !95 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i, label %bb.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCscAsMj0W7j8b_3std3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #27, !noalias !97
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs74Z8AuVjqbo_8clap_lex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27, !noalias !40
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCscAsMj0W7j8b_3std3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_.exit.i.i

bb.j:                                             ; preds = %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1920.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !98 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1920.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !98
  %i.ae = icmp samesign ult i64 %i.ac, 384307168202282326
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.b, align 8, !range !8, !alias.scope !99, !noalias !100, !noundef !4
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.o, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i

_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload524.i = phi i64 [ %i.ac, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %i.ar, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i ]
  %.pre.i = ptrtoint ptr %i.ad to i64
  %.pre26.i = sub nuw i64 %i.t, %.pre.i
  %.pre28.i = udiv exact i64 %.pre26.i, 24
  br label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i

_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i, %bb.i
  %.pre-phi29.i = phi i64 [ %.pre28.i, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i ], [ 0, %bb.i ]
  %.sroa.6.0.copyload5.i = phi i64 [ %.sroa.6.0.copyload524.i, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i ], [ 1, %bb.i ]
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i ], [ %i.e, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ah = icmp eq ptr %.sroa.619.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !101, !noalias !104 ; 2 uses
  %i.ak = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !101, !noalias !104, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !115
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.am = icmp eq i64 %i.aj, %.pre-phi29.i
  br i1 %i.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i
  %i.an = icmp eq i64 %.sroa.518.0.copyload.i, 0
  br i1 %i.an, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  %i.ao = mul nuw i64 %.sroa.518.0.copyload.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.017.0.copyload.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !104
  br label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i_crit_edge.i.i.i, %bb.j
  %i.ap = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i_crit_edge.i.i.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ac ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.aq, align 8, !noalias !116
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116
  %i.ar = add nuw nsw i64 %i.ac, 1                ; 3 uses
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !99, !noalias !100
  %i.as = icmp eq ptr %i.ad, %.sroa.619.0.copyload.i
  br i1 %i.as, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i, label %_RNvXsi_NtCscAsMj0W7j8b_3std3envNtB5_6ArgsOsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !117, !noalias !118
  %i.au = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !116
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.j
  %i.av = ptrtoint ptr %i.ad to i64
  %i.aw = sub nuw i64 %i.t, %i.av
  %i.ax = udiv exact i64 %i.aw, 24
  %i.ay = add nuw nsw i64 %i.ax, 1
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs74Z8AuVjqbo_8clap_lex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ac, i64 noundef range(i64 1, 0) %i.ay)
          to label %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i_crit_edge.i.i.i unwind label %bb.m

._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i_crit_edge.i.i.i: ; preds = %bb.o
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !99, !noalias !100
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE7reserveCs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i: ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %.sroa.0.0.copyload1.i = load i64, ptr %i.b, align 8, !noalias !121
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  br label %_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs3newNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCscAsMj0W7j8b_3std3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_.exit.i.i: ; preds = %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i
  %.pn16.i.i.i = phi { ptr, i32 } [ %i.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i ], [ %i.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i ], [ %i.r, %bb.r ]
  resume { ptr, i32 } %.pn16.i.i.i

bb.p:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122), !noalias !125
  %i.az = icmp eq ptr %.sroa.619.0.copyload.i, %i.e
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !122, !noalias !126 ; 2 uses
  %i.bc = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !122, !noalias !126, !nonnull !4, !noundef !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !137
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i
  %i.be = icmp eq i64 %i.bb, %i.w
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.p
  %i.bf = icmp eq i64 %.sroa.518.0.copyload.i, 0
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCscAsMj0W7j8b_3std3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload.i) ]
  %i.bg = mul nuw i64 %.sroa.518.0.copyload.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.017.0.copyload.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !126
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCscAsMj0W7j8b_3std3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB1N_7RawArgsINtNtB4_7convert4FromB19_E4from0EEB1N_.exit.i.i

_RINvMCs74Z8AuVjqbo_8clap_lexNtB3_7RawArgs3newNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsEB3_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i, %bb.d, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i
  %.sroa.6.0.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.d ], [ %.sroa.6.0.copyload5.i, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.5.0.copyload3.i, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs74Z8AuVjqbo_8clap_lex.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.d ], [ %.sroa.0.0.copyload1.i, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs74Z8AuVjqbo_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendB38_.exit.i.i.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !31, !noalias !34
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !31, !noalias !34
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !31, !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !4   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.c
  %i.i = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  store i64 %i.c, ptr %1, align 8
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !139, !noalias !142, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !139, !noalias !142, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  call void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d), !noalias !144
  %i.e = load i64, ptr %i.a, align 8, !range !29, !noalias !144, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
end_hunk_0
