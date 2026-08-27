Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/camino-08ba2d8a1b4f217a.camino.6d89e44ef76b0e41-cgu.0?download=true
inline.NumInlined: 192
inline.NumDeleted: 111
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std2fs8DirEntryECs9p4rgIae0RV_6camino
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std2fs8DirEntryECs9p4rgIae0RV_6camino(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !62, !nonnull !25, !noundef !25
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !62
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirEECs9p4rgIae0RV_6camino.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirEECs9p4rgIae0RV_6camino.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !53, !nonnull !25, !noundef !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !53 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsbSS6DM8SDEO_5alloc3ffi5c_str7CStringECs9p4rgIae0RV_6camino.exit.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i.i: ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val3.i, i64 noundef 1) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsbSS6DM8SDEO_5alloc3ffi5c_str7CStringECs9p4rgIae0RV_6camino.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirEECs9p4rgIae0RV_6camino.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !53, !nonnull !25, !noundef !25 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !53 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.j = icmp eq i64 %.val1.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix8DirEntryECs9p4rgIae0RV_6camino.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirEECs9p4rgIae0RV_6camino.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix8DirEntryECs9p4rgIae0RV_6camino.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsbSS6DM8SDEO_5alloc3ffi5c_str7CStringECs9p4rgIae0RV_6camino.exit.i: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i.i, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix8DirEntryECs9p4rgIae0RV_6camino.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtNtCscAsMj0W7j8b_3std3sys2fs4unix12InnerReadDirEECs9p4rgIae0RV_6camino.exit.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs9p4rgIae0RV_6camino(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !63 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs9p4rgIae0RV_6camino.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !63, !nonnull !25, !noundef !25
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !63
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs9p4rgIae0RV_6camino.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs9p4rgIae0RV_6camino.exit: ; preds = %bb.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs9p4rgIae0RV_6camino(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs9p4rgIae0RV_6camino.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs9p4rgIae0RV_6camino.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs9p4rgIae0RV_6camino.exit: ; preds = %bb.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9p4rgIae0RV_6camino(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !69, !alias.scope !66, !noundef !25 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !66
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9p4rgIae0RV_6camino(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !70, !noalias !66, !noundef !25
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !71, !noalias !66, !noundef !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !66, !nonnull !25, !noundef !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !66
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !66
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_BG_3cmpB3_E0EB5_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !86
  %i.f = load i8, ptr %i.c, align 8, !range !89, !noalias !90, !noundef !25 ; 2 uses
  %.not.i29.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i29.i.i.i, label %.loopexit15.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i.i, %.lr.ph.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i ], [ %i.bh, %select.unfold.i.i.i ] ; 2 uses
  %.sroa.53.0.copyload.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !90 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !90 ; 2 uses
  %narrow27.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.g, i8 5)
  switch i8 %narrow27.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.q, %bb.h, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %.sroa.8.i.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !noalias !90
  %.sroa.10.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !90
  %.sroa.10.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !90
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i.i) ]
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.10.i.sroa.4.0.i.i.i = phi i64 [ %.sroa.10.i.sroa.4.0.copyload.i.i.i, %bb.c ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ] ; 4 uses
  %.sroa.10.i.sroa.0.0.i.i.i = phi ptr [ %.sroa.10.i.sroa.0.0.copyload.i.i.i, %bb.c ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ] ; 4 uses
  %.sroa.8.i.sroa.0.0.i.i.i = phi i8 [ %.sroa.8.i.sroa.0.0.copyload.i.i.i, %bb.c ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i, %bb.c ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ] ; 10 uses
  %.sroa.812.0.i.i.i.i = phi ptr [ %.sroa.53.0.copyload.i.i.i.i, %bb.c ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.e ], [ %.sroa.53.0.copyload.i.i.i.i, %bb.f ] ; 10 uses
  %.sroa.09.0.i.i.i.i = phi i8 [ %i.g, %bb.c ], [ 6, %bb.b ], [ 7, %bb.d ], [ 8, %bb.e ], [ 9, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !97
  %i.h = load i8, ptr %i.b, align 8, !range !89, !noalias !100, !noundef !25 ; 3 uses
  %.not.i.i.i.i.i.not.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.not.i, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.53.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100 ; 2 uses
  %narrow27.i.i.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.h, i8 5)
  switch i8 %narrow27.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.m
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %.sroa.8.i.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !100
  %.sroa.10.i.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !100
  %.sroa.10.i.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !100
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i.i.i.i) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.8.i.sroa.0.0.i.i.i.i.i = phi i8 [ %.sroa.8.i.sroa.0.0.copyload.i.i.i.i.i, %bb.i ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ] ; 2 uses
  %.sroa.10.i.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.10.i.sroa.4.0.copyload.i.i.i.i.i, %bb.i ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ] ; 4 uses
  %.sroa.10.i.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.10.i.sroa.0.0.copyload.i.i.i.i.i, %bb.i ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ] ; 4 uses
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i.i, %bb.i ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.k ], [ %.sroa.6.0.copyload.i.i.i.i.i.i, %bb.l ] ; 10 uses
  %.sroa.812.0.i.i.i.i.i.i = phi ptr [ %.sroa.53.0.copyload.i.i.i.i.i.i, %bb.i ], [ undef, %bb.h ], [ undef, %bb.j ], [ undef, %bb.k ], [ %.sroa.53.0.copyload.i.i.i.i.i.i, %bb.l ] ; 10 uses
  %.sroa.09.0.i.i.i.i.i.i = phi i8 [ %i.h, %bb.i ], [ 6, %bb.h ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  %i.i = icmp samesign ugt i8 %.sroa.09.0.i.i.i.i, 5
  %i.j = zext nneg i8 %.sroa.09.0.i.i.i.i to i64  ; 2 uses
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 3 uses
  %i.m = icmp samesign ult i8 %.sroa.09.0.i.i.i.i.i.i, 6 ; 2 uses
  %i.n = zext nneg i8 %.sroa.09.0.i.i.i.i.i.i to i64 ; 2 uses
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 0, i64 %i.o          ; 2 uses
  %i.q = call i8 @llvm.scmp.i8.i64(i64 %i.l, i64 %i.p)
  %i.r = icmp eq i64 %i.l, %i.p
  br i1 %i.r, label %bb.n, label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  switch i64 %i.l, label %select.unfold.i.i.i [
    i64 0, label %bb.o
    i64 4, label %bb.z
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %i.m, label %bb.p, label %select.unfold.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.s = call i8 @llvm.scmp.i8.i64(i64 %i.j, i64 %i.n)
  %i.t = icmp eq i8 %.sroa.09.0.i.i.i.i, %.sroa.09.0.i.i.i.i.i.i
  br i1 %i.t, label %bb.q, label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  switch i8 %.sroa.09.0.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 5, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i.i.i) ]
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i.i.i.i.i)
  %i.u = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i.i.i) ]
  %spec.store.select1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i.i.i.i.i)
  %i.z = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i.i.i.i.i, i64 %spec.store.select1.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i
  %spec.select47.i.i.i.i.i.i.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa ; 2 uses
  %i.ad = call i8 @llvm.scmp.i8.i64(i64 %spec.select47.i.i.i.i.i.i.i.i.i, i64 0)
  %i.ae = icmp eq i64 %spec.select47.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.x, label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.af = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.8.i.sroa.0.0.i.i.i, i8 %.sroa.8.i.sroa.0.0.i.i.i.i.i)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i.i.i) ]
  %spec.store.select2.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i.i.i.i.i)
  %i.ag = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i.i.i.i.i, i64 %spec.store.select2.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i
  %spec.select48.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = call i8 @llvm.scmp.i8.i64(i64 %spec.select48.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i.i.i) ]
  %spec.store.select3.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i.i.i.i.i)
  %i.al = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i.i.i.i.i, i64 %spec.store.select3.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i
  %spec.select49.i.i.i.i.i.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am ; 2 uses
  %i.ap = call i8 @llvm.scmp.i8.i64(i64 %spec.select49.i.i.i.i.i.i.i.i.i, i64 0)
  %i.aq = icmp eq i64 %spec.select49.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.y, label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.q
  %i.ar = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.8.i.sroa.0.0.i.i.i, i8 %.sroa.8.i.sroa.0.0.i.i.i.i.i)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i.i.i) ]
  %spec.store.select4.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.10.i.sroa.4.0.i.i.i, i64 %.sroa.10.i.sroa.4.0.i.i.i.i.i)
  %i.as = call i32 @memcmp(ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i, ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i.i.i, i64 %spec.store.select4.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %.sroa.10.i.sroa.4.0.i.i.i, %.sroa.10.i.sroa.4.0.i.i.i.i.i
  %spec.select50.i.i.i.i.i.i.i.i.i = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = call i8 @llvm.scmp.i8.i64(i64 %spec.select50.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i.i.i) ]
  %spec.store.select5.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.10.i.sroa.4.0.i.i.i, i64 %.sroa.10.i.sroa.4.0.i.i.i.i.i)
  %i.ax = call i32 @memcmp(ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i, ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i.i.i, i64 %spec.store.select5.i.i.i.i.i.i.i.i.i), !noalias !102 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %.sroa.10.i.sroa.4.0.i.i.i, %.sroa.10.i.sroa.4.0.i.i.i.i.i
  %spec.select51.i.i.i.i.i.i.i.i.i = select i1 %i.az, i64 %i.ba, i64 %i.ay
  %i.bb = call i8 @llvm.scmp.i8.i64(i64 %spec.select51.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i.i.i) ]
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i.i.i.i.i)
  %i.bc = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !noalias !115 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %i.bd
  %i.bg = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.q, %bb.m ], [ %i.ap, %bb.v ], [ %i.bg, %bb.z ], [ %i.s, %bb.p ], [ %i.ar, %bb.w ], [ %i.y, %bb.r ], [ %i.aw, %bb.x ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ak, %bb.u ], [ %i.bb, %bb.y ]
  %.sroa.0.0.i.i.fr.i.i.i.i.i.i = freeze i8 %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  switch i8 %.sroa.0.0.i.i.fr.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compareNtCs9p4rgIae0RV_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit [
    i8 0, label %select.unfold.i.i.i
    i8 -2, label %select.unfold.i.i.i
  ]

bb.aa:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compareNtCs9p4rgIae0RV_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit

select.unfold.i.i.i:                              ; preds = %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !116
  %i.bh = load i8, ptr %i.c, align 8, !range !89, !noalias !90, !noundef !25 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bh, -1
  br i1 %.not.i.i.i.i, label %.loopexit15.i, label %bb.b

.loopexit15.i:                                    ; preds = %select.unfold.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !118
  %i.bi = load i8, ptr %i.a, align 8, !range !89, !noalias !121, !noundef !25
  %cond = icmp ne i8 %i.bi, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117
  %. = sext i1 %cond to i8
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compareNtCs9p4rgIae0RV_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit

_RINvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compareNtCs9p4rgIae0RV_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit: ; preds = %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %.loopexit15.i, %bb.aa
  %.sroa.3.0.i = phi i8 [ 1, %bb.aa ], [ %., %.loopexit15.i ], [ %.sroa.0.0.i.i.fr.i.i.i.i.i.i, %_RNCINvYNtCs9p4rgIae0RV_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i8 %.sroa.3.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs9p4rgIae0RV_6caminoNtB2_11Utf8PathBuf11into_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.041.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.443.0.copyload = load i64, ptr %.sroa.443.0..sroa_idx, align 8 ; 4 uses
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.646.0.copyload = load i64, ptr %.sroa.646.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  %i.c = inttoptr i64 %.sroa.443.0.copyload to ptr ; 2 uses
  invoke void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.646.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !123

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %.sroa.041.0.copyload, 0
  br i1 %i.e, label %common.resume, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.sroa.041.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !123
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !70, !noalias !123, !noundef !25
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE6unwrapCs9p4rgIae0RV_6camino.exit

common.resume:                                    ; preds = %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.b, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.24.copyload = load i64, ptr %i.h, align 8, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  %.not = icmp eq i64 %.sroa.041.0.copyload, -1
  br i1 %.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringE6unwrapCs9p4rgIae0RV_6camino.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String9from_utf8.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !132
  store i64 %.sroa.041.0.copyload, ptr %i.b, align 8, !noalias !127
  %.sroa.5.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %.sroa.443.0.copyload, ptr %.sroa.5.sroa.6.0..sroa_idx31, align 8, !noalias !127
  %.sroa.5.sroa.7.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.646.0.copyload, ptr %.sroa.5.sroa.7.0..sroa_idx35, align 8, !noalias !127
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
          to label %bb.f unwind label %bb.e, !noalias !132

end_hunk_0
