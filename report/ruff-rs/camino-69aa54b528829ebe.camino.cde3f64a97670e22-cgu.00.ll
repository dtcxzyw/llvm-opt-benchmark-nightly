Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/camino-69aa54b528829ebe.camino.cde3f64a97670e22-cgu.00?download=true
inline.NumInlined: 81
inline.NumDeleted: 47
begin_hunk_0
@33 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1472718268104836936 to ptr), ptr inttoptr (i64 -1803091869263354233 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !13, !noundef !13
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !12
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirEECshFWUtO0bu8g_6camino.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirEECshFWUtO0bu8g_6camino.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !3, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !3 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECshFWUtO0bu8g_6camino.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECshFWUtO0bu8g_6camino.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirEECshFWUtO0bu8g_6camino.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !3, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !3 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.j = icmp eq i64 %.val1.i, 0
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshFWUtO0bu8g_6camino.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirEECshFWUtO0bu8g_6camino.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshFWUtO0bu8g_6camino.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscdodAO9FK5_5alloc3ffi5c_str7CStringECshFWUtO0bu8g_6camino.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshFWUtO0bu8g_6camino.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirEECshFWUtO0bu8g_6camino.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECshFWUtO0bu8g_6camino.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECshFWUtO0bu8g_6camino.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECshFWUtO0bu8g_6camino(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECshFWUtO0bu8g_6camino.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECshFWUtO0bu8g_6camino.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECshFWUtO0bu8g_6camino.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_BG_3cmpB3_E0EB5_(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !28
  %i.f = load i8, ptr %i.c, align 8, !range !31, !noalias !32, !noundef !13 ; 2 uses
  %.not.i31.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i31.i.i.i, label %.loopexit16.i, label %.lr.ph.i.i.i

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
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i ], [ %i.bo, %select.unfold.i.i.i ] ; 2 uses
  %.sroa.53.0.copyload.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !32 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !32 ; 2 uses
  %narrow27.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.g, i8 5)
  switch i8 %narrow27.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.h, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %.sroa.8.i.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !noalias !32
  %.sroa.10.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !32
  %.sroa.10.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !32
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
  %.sroa.09.0.i.i.i.i = phi i8 [ %i.g, %bb.c ], [ 6, %bb.b ], [ 7, %bb.d ], [ 8, %bb.e ], [ 9, %bb.f ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !39
  %i.h = load i8, ptr %i.b, align 8, !range !31, !noalias !42, !noundef !13 ; 5 uses
  %.not.i.i.i.i.i.not.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.not.i, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.53.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42 ; 2 uses
  %narrow27.i.i.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.h, i8 5)
  switch i8 %narrow27.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %.thread.i.i.i.i
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread.i.i.i.i

bb.j:                                             ; preds = %bb.h
  br label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i.i.i.i) ]
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.9.0.i.i.ph.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i.i, %bb.k ], [ undef, %bb.j ], [ undef, %bb.i ], [ undef, %bb.h ]
  %.sroa.812.0.i.i.ph.i.i.i.i = phi ptr [ %.sroa.53.0.copyload.i.i.i.i.i.i, %bb.k ], [ undef, %bb.j ], [ undef, %bb.i ], [ undef, %bb.h ]
  %.sroa.09.0.i.i.ph.i.i.i.i = phi i8 [ 9, %bb.k ], [ 8, %bb.j ], [ 7, %bb.i ], [ 6, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  %i.i = icmp samesign ugt i8 %.sroa.09.0.i.i.i.i, 5
  %i.j = zext nneg i8 %.sroa.09.0.i.i.i.i to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0
  %i.m = zext nneg i8 %.sroa.09.0.i.i.ph.i.i.i.i to i64
  %i.n = add nsw i64 %i.m, -5
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %.sroa.8.i.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !42
  %.sroa.10.i.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !42
  %.sroa.10.i.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.i.sroa.4.0..sroa.7.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  %i.o = icmp samesign ugt i8 %.sroa.09.0.i.i.i.i, 5
  %i.p = zext nneg i8 %.sroa.09.0.i.i.i.i to i64
  %i.q = add nsw i64 %i.p, -5
  %i.r = select i1 %i.o, i64 %i.q, i64 0
  %i.s = icmp samesign ugt i8 %i.h, 5
  %i.t = zext nneg i8 %i.h to i64
  %i.u = add nsw i64 %i.t, -5
  %spec.select.i.i.i.i = select i1 %i.s, i64 %i.u, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i.i.i.i
  %i.v = phi i64 [ %i.r, %bb.l ], [ %i.l, %.thread.i.i.i.i ] ; 3 uses
  %.sroa.09.0.i.i19.i.i.i.i = phi i8 [ %i.h, %bb.l ], [ %.sroa.09.0.i.i.ph.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %.sroa.812.0.i.i17.i.i.i.i = phi ptr [ %.sroa.53.0.copyload.i.i.i.i.i.i, %bb.l ], [ %.sroa.812.0.i.i.ph.i.i.i.i, %.thread.i.i.i.i ] ; 10 uses
  %.sroa.9.0.i.i15.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i.i, %bb.l ], [ %.sroa.9.0.i.i.ph.i.i.i.i, %.thread.i.i.i.i ] ; 10 uses
  %.sroa.10.i.sroa.0.0.i13.i.i.i.i = phi ptr [ %.sroa.10.i.sroa.0.0.copyload.i.i.i.i.i, %bb.l ], [ undef, %.thread.i.i.i.i ] ; 4 uses
  %.sroa.10.i.sroa.4.0.i11.i.i.i.i = phi i64 [ %.sroa.10.i.sroa.4.0.copyload.i.i.i.i.i, %bb.l ], [ undef, %.thread.i.i.i.i ] ; 4 uses
  %.sroa.8.i.sroa.0.0.i9.i.i.i.i = phi i8 [ %.sroa.8.i.sroa.0.0.copyload.i.i.i.i.i, %bb.l ], [ undef, %.thread.i.i.i.i ] ; 2 uses
  %i.w = phi i64 [ %spec.select.i.i.i.i, %bb.l ], [ %i.n, %.thread.i.i.i.i ] ; 2 uses
  %i.x = call i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %i.w)
  %i.y = icmp eq i64 %i.v, %i.w
  br i1 %i.y, label %bb.n, label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  switch i64 %i.v, label %select.unfold.i.i.i [
    i64 0, label %bb.o
    i64 4, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.z = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.09.0.i.i.i.i, i8 %.sroa.09.0.i.i19.i.i.i.i)
  %i.aa = icmp eq i8 %.sroa.09.0.i.i.i.i, %.sroa.09.0.i.i19.i.i.i.i
  br i1 %i.aa, label %bb.p, label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  switch i8 %.sroa.09.0.i.i.i.i, label %default.unreachable58.i.i.i.i.i.i.i.i.i [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
    i8 5, label %bb.v
  ]

default.unreachable58.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i17.i.i.i.i) ]
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i15.i.i.i.i)
  %i.ab = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i17.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i15.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i17.i.i.i.i) ]
  %spec.store.select1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i15.i.i.i.i)
  %i.ag = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i17.i.i.i.i, i64 %spec.store.select1.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i15.i.i.i.i
  %spec.select53.i.i.i.i.i.i.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah ; 2 uses
  %i.ak = call i8 @llvm.scmp.i8.i64(i64 %spec.select53.i.i.i.i.i.i.i.i.i, i64 0)
  %i.al = icmp eq i64 %spec.select53.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %bb.w, label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.am = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.8.i.sroa.0.0.i.i.i, i8 %.sroa.8.i.sroa.0.0.i9.i.i.i.i)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i17.i.i.i.i) ]
  %spec.store.select2.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i15.i.i.i.i)
  %i.an = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i17.i.i.i.i, i64 %spec.store.select2.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i15.i.i.i.i
  %spec.select54.i.i.i.i.i.i.i.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.ao
  %i.ar = call i8 @llvm.scmp.i8.i64(i64 %spec.select54.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i17.i.i.i.i) ]
  %spec.store.select3.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i15.i.i.i.i)
  %i.as = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i17.i.i.i.i, i64 %spec.store.select3.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i15.i.i.i.i
  %spec.select55.i.i.i.i.i.i.i.i.i = select i1 %i.au, i64 %i.av, i64 %i.at ; 2 uses
  %i.aw = call i8 @llvm.scmp.i8.i64(i64 %spec.select55.i.i.i.i.i.i.i.i.i, i64 0)
  %i.ax = icmp eq i64 %spec.select55.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %bb.x, label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.p
  %i.ay = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.8.i.sroa.0.0.i.i.i, i8 %.sroa.8.i.sroa.0.0.i9.i.i.i.i)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i13.i.i.i.i) ]
  %spec.store.select4.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.10.i.sroa.4.0.i.i.i, i64 %.sroa.10.i.sroa.4.0.i11.i.i.i.i)
  %i.az = call i32 @memcmp(ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i, ptr nonnull %.sroa.10.i.sroa.0.0.i13.i.i.i.i, i64 %spec.store.select4.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %.sroa.10.i.sroa.4.0.i.i.i, %.sroa.10.i.sroa.4.0.i11.i.i.i.i
  %spec.select56.i.i.i.i.i.i.i.i.i = select i1 %i.bb, i64 %i.bc, i64 %i.ba
  %i.bd = call i8 @llvm.scmp.i8.i64(i64 %spec.select56.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.i.sroa.0.0.i13.i.i.i.i) ]
  %spec.store.select5.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.10.i.sroa.4.0.i.i.i, i64 %.sroa.10.i.sroa.4.0.i11.i.i.i.i)
  %i.be = call i32 @memcmp(ptr nonnull %.sroa.10.i.sroa.0.0.i.i.i, ptr nonnull %.sroa.10.i.sroa.0.0.i13.i.i.i.i, i64 %spec.store.select5.i.i.i.i.i.i.i.i.i), !noalias !44 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %.sroa.10.i.sroa.4.0.i.i.i, %.sroa.10.i.sroa.4.0.i11.i.i.i.i
  %spec.select57.i.i.i.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf
  %i.bi = call i8 @llvm.scmp.i8.i64(i64 %spec.select57.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.i.i17.i.i.i.i) ]
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.9.0.i.i.i.i, i64 %.sroa.9.0.i.i15.i.i.i.i)
  %i.bj = call i32 @memcmp(ptr nonnull %.sroa.812.0.i.i.i.i, ptr nonnull %.sroa.812.0.i.i17.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !noalias !57 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp eq i32 %i.bj, 0
  %i.bm = sub i64 %.sroa.9.0.i.i.i.i, %.sroa.9.0.i.i15.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bk
  %i.bn = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i

_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.x, %bb.m ], [ %i.z, %bb.o ], [ %i.bn, %bb.y ], [ %i.af, %bb.q ], [ %i.bd, %bb.w ], [ %i.ak, %bb.r ], [ %i.am, %bb.s ], [ %i.ar, %bb.t ], [ %i.bi, %bb.x ], [ %i.aw, %bb.u ], [ %i.ay, %bb.v ]
  %.sroa.0.0.i.i.fr.i.i.i.i.i.i = freeze i8 %.sroa.0.0.i.i.i.i.i.i.i.i ; 2 uses
  switch i8 %.sroa.0.0.i.i.fr.i.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareNtCshFWUtO0bu8g_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit [
    i8 0, label %select.unfold.i.i.i
    i8 -2, label %select.unfold.i.i.i
  ]

bb.z:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareNtCshFWUtO0bu8g_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit

select.unfold.i.i.i:                              ; preds = %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !58
  %i.bo = load i8, ptr %i.c, align 8, !range !31, !noalias !32, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not.i.i.i.i, label %.loopexit16.i, label %bb.b

.loopexit16.i:                                    ; preds = %select.unfold.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  call void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !60
  %i.bp = load i8, ptr %i.a, align 8, !range !31, !noalias !63, !noundef !13
  %cond = icmp ne i8 %i.bp, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  %. = sext i1 %cond to i8
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareNtCshFWUtO0bu8g_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareNtCshFWUtO0bu8g_6camino14Utf8ComponentsB10_NCINvNvNtB2_8Iterator6cmp_by7compareNtB12_13Utf8ComponentB2h_NCINvYB10_B1O_3cmpB10_E0E0NtNtB8_3cmp8OrderingEB12_.exit: ; preds = %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i, %.loopexit16.i, %bb.z
  %.sroa.3.0.i = phi i8 [ 1, %bb.z ], [ %., %.loopexit16.i ], [ %.sroa.0.0.i.i.fr.i.i.i.i.i.i, %_RNCINvYNtCshFWUtO0bu8g_6camino14Utf8ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i8 %.sroa.3.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshFWUtO0bu8g_6caminoNtB2_11Utf8PathBuf11into_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !68, !noalias !65, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !68, !noalias !65, !noundef !13 ; 4 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 3 uses
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b, !noalias !70

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFWUtO0bu8g_6camino(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %common.resume unwind label %bb.d, !noalias !65

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !range !71, !noalias !70, !noundef !13
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.c
  %.sroa.7.sroa.0.0.copyload13 = load i64, ptr %i.c, align 8, !alias.scope !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE6unwrapCshFWUtO0bu8g_6camino.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !65
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.643.24.copyload = load i64, ptr %i.m, align 8, !noalias !70
  %.sroa.040.0.copyload = load i64, ptr %i.c, align 8, !noalias !65 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  %.not = icmp eq i64 %.sroa.040.0.copyload, -1
  br i1 %.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE6unwrapCshFWUtO0bu8g_6camino.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
end_hunk_0
