inline.NumInlined: 191
inline.NumDeleted: 116
begin_hunk_0_@_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a

bb.k:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url19from_directory_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 4                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.15 = alloca [17 x i8], align 8           ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b, !noalias !12

.body.i:                                          ; preds = %bb.i, %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.f, %bb.b ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %common.resume unwind label %bb.p, !noalias !14

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i, %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !5, !noalias !12, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !noalias !12, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.f, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.k, align 8, !noalias !12
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #17
          to label %bb.q unwind label %bb.b, !noalias !12

bb.e:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %.body.i unwind label %bb.p, !noalias !12

bb.f:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !noalias !12, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.j, 6
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @16, i64 7, i1 false), !noalias !12
  store i64 %i.j, ptr %i.c, align 8, !noalias !12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 7, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !9, !noalias !14, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.i = load i64, ptr %i.q, align 8, !alias.scope !9, !noalias !14, !noundef !4
  invoke void @_RNvCseo6ZV82fEK1_3url25path_to_file_url_segments(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val14.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !12

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !range !8, !noalias !12, !noundef !4
  %i.t = icmp eq i8 %i.s, 4
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.i, !noalias !12

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.j, !noalias !12

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !12
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.b, !noalias !12

bb.k:                                             ; preds = %bb.g
  %.sroa.07.0.copyload.i = load i32, ptr %i.b, align 4, !noalias !12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15, ptr noundef nonnull align 4 dereferenceable(17) %i.r, i64 17, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !9 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i, i64 16, i1 false), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.l, !noalias !14

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.m, !noalias !14

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !14
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i, %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.y, %bb.n ], [ %i.w, %bb.l ], [ %i.ac, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit.thread unwind label %bb.n, !noalias !14

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !14
  br label %bb.r

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.o, !noalias !14

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !14
  unreachable

bb.p:                                             ; preds = %bb.e, %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !14
  unreachable

bb.q:                                             ; preds = %bb.d
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !14
  %i.ab = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775808
  br i1 %i.ab, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit.thread, %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.x

bb.s:                                             ; preds = %bb.v, %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(88) %i.e) #18
          to label %common.resume unwind label %bb.y

bb.t:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.1645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.1645.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  store i64 %.sroa.0.0.copyload1, ptr %i.e, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 0, ptr %.sroa.736.0..sroa_idx, align 8
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i16 0, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 4, ptr %.sroa.1140.0..sroa_idx, align 4
  %.sroa.1241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 7, ptr %.sroa.1241.0..sroa_idx, align 8
  %.sroa.1342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 7, ptr %.sroa.1342.0..sroa_idx, align 4
  %.sroa.1443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.1443.0..sroa_idx, align 8
  %.sroa.1544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.1544.0..sroa_idx, align 4
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ah)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit unwind label %bb.s

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.v
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15, !nonnull !4, !noundef !4
  %i.aj = load i64, ptr %i.ae, align 8, !alias.scope !15, !noundef !4 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 47, ptr %i.al, align 1
  %i.am = add nuw i64 %i.af, 1
  store i64 %i.am, ptr %i.ae, align 8, !alias.scope !15
  br label %bb.w

bb.w:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.y:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, i8 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i8 %1, 99                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit: ; preds = %bb.a
  %i.b = udiv i8 %1, 10
  %i.c = or disjoint i8 %i.b, 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18, !noundef !4 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !18, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !18, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 %i.c, ptr %i.k, align 1
  %i.l = add nuw nsw i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !18
  %i.m = urem i8 %1, 10
  %i.n = or disjoint i8 %i.m, 48
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !23, !nonnull !4, !noundef !4
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !23, !noundef !4 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 %i.n, ptr %i.r, align 1
  %i.s = add nuw i64 %i.e, 2
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyINtNtB1V_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEEECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b), !noalias !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.c, align 8, !alias.scope !39, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read9parse_strCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %1), !noalias !38
  %i.d = load i64, ptr %i.a, align 8, !range !41, !noalias !40, !noundef !4
  %i.e = icmp eq i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !40, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !38, !noalias !39
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !38, !noalias !39
  br label %_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1G_5impls13StringVisitorECsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !40
  tail call void @_RINvXs4_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %.sroa.4.0.copyload.i.i)
  br label %_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1G_5impls13StringVisitorECsfY7SmN0bPrO_14deltalake_test.exit

_RINvXsh_NtCseqDwI8vvjGQ_10serde_json2deINtB6_6MapKeyINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1G_5impls13StringVisitorECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB1W_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEEECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1O_5impls13StringVisitorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [12 x i8], align 4                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.l, align 8, !range !5, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !6, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #17
  unreachable

bb.c:                                             ; preds = %bb.o, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit58.i, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit54.i, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit50.i, %bb.k, %.noexc22, %.noexc21, %.noexc20, %.noexc19, %.noexc18, %.noexc17, %.noexc16, %bb.j, %bb.i, %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %bb.h, %.noexc7, %.noexc6, %.noexc5, %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit34.i, %bb.g, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #18
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.w = icmp samesign ugt i64 %i.r, 31
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.r, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 20 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 41 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i32, ptr %i.y, align 4, !noundef !4 ; 2 uses
  invoke void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.k, i32 noundef %.val3)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.z = load i32, ptr %i.m, align 4, !range !47, !alias.scope !45, !noalias !42, !noundef !4 ; 2 uses
  %i.aa = ashr i32 %i.z, 13                       ; 3 uses
  store i32 %i.aa, ptr %i.j, align 4, !noalias !48
  %i.ab = icmp ult i32 %i.aa, 10000
  br i1 %i.ab, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit34.i, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !48
  store ptr %i.j, ptr %i.i, align 8, !noalias !48
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !48
  %i.ac = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34, ptr noundef nonnull @21, ptr noundef nonnull %i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !48
  br i1 %i.ac, label %.thread, label %bb.f

bb.f:                                             ; preds = %.noexc
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !49, !noalias !45
  br label %bb.g

bb.g:                                             ; preds = %.noexc8, %bb.f
  %i.ad = phi i64 [ %i.bv, %.noexc8 ], [ %.pre.i, %bb.f ] ; 16 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc4 unwind label %bb.c

.noexc4:                                          ; preds = %bb.g
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !49, !noalias !45, !nonnull !4, !noundef !4
  %i.ag = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !49, !noalias !45, !noundef !4 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 45, ptr %i.ai, align 1, !noalias !45
  %i.aj = add nuw i64 %i.ad, 1                    ; 2 uses
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !49, !noalias !45
  %i.ak = lshr i32 %i.z, 3                        ; 2 uses
  %i.al = and i32 %i.ak, 1023                     ; 3 uses
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = icmp samesign ult i32 %i.al, 733
  br i1 %i.an, label %bb.h, label %bb.i

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit34.i: ; preds = %bb.e
  %.lhs.trunc.i = trunc nuw nsw i32 %i.aa to i16  ; 2 uses
  %i.ao = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !54, !noalias !45, !noundef !4 ; 5 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit34.i
  %i.aq = udiv i16 %.lhs.trunc.i, 100
  %i.ar = urem i16 %.lhs.trunc.i, 100
  %i.as = trunc nuw nsw i16 %i.aq to i8           ; 2 uses
  %i.at = udiv i8 %i.as, 10
  %i.au = urem i8 %i.as, 10
  %i.av = or disjoint i8 %i.at, 48
  %i.aw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !54, !noalias !45, !nonnull !4, !noundef !4
  %i.ax = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !54, !noalias !45, !noundef !4 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 %i.av, ptr %i.az, align 1, !noalias !45
  %i.ba = add nuw nsw i64 %i.ao, 1
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !54, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %.noexc5
  %i.bb = or disjoint i8 %i.au, 48
  %i.bc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !61, !noalias !45, !nonnull !4, !noundef !4
  %i.bd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !61, !noalias !45, !noundef !4 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  store i8 %i.bb, ptr %i.bf, align 1, !noalias !45
  %i.bg = add nuw nsw i64 %i.ao, 2
  store i64 %i.bg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !61, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc7 unwind label %bb.c

.noexc7:                                          ; preds = %.noexc6
  %i.bh = trunc nuw nsw i16 %i.ar to i8           ; 2 uses
  %i.bi = udiv i8 %i.bh, 10
  %i.bj = urem i8 %i.bh, 10
  %i.bk = or disjoint i8 %i.bi, 48
  %i.bl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !66, !noalias !45, !nonnull !4, !noundef !4
  %i.bm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !66, !noalias !45, !noundef !4 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 %i.bk, ptr %i.bo, align 1, !noalias !45
  %i.bp = add nuw i64 %i.ao, 3
  store i64 %i.bp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !66, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %.noexc7
  %i.bq = or disjoint i8 %i.bj, 48
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !73, !noalias !45, !nonnull !4, !noundef !4
  %i.bs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !73, !noalias !45, !noundef !4 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 %i.bq, ptr %i.bu, align 1, !noalias !45
  %i.bv = add nuw i64 %i.ao, 4                    ; 2 uses
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !73, !noalias !45
  br label %bb.g

bb.h:                                             ; preds = %.noexc4
  %i.bw = getelementptr inbounds nuw i8, ptr @22, i64 %i.am
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !48, !noundef !4 ; 2 uses
  %i.by = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.by)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc9 unwind label %bb.c

.noexc9:                                          ; preds = %bb.h
  %i.bz = zext i8 %i.bx to i32
  %i.ca = add nuw nsw i32 %i.al, %i.bz            ; 3 uses
  %.cmp.i = icmp samesign ugt i32 %i.ca, 639
  %i.cb = zext i1 %.cmp.i to i8
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !78, !noalias !45, !nonnull !4, !noundef !4
  %i.ce = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78, !noalias !45, !noundef !4 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  store i8 %i.cc, ptr %i.cg, align 1, !noalias !45
  %i.ch = add nuw i64 %i.ad, 2
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc10 unwind label %bb.c

.noexc10:                                         ; preds = %.noexc9
  %.cmp63.i = icmp samesign ult i32 %i.ca, 640
  %i.ci = lshr i32 %i.ca, 6
  %i.cj = trunc nuw nsw i32 %i.ci to i8           ; 2 uses
  %.urem.i = add nsw i8 %i.cj, -10
  %i.ck = select i1 %.cmp63.i, i8 %i.cj, i8 %.urem.i
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !85, !noalias !45, !nonnull !4, !noundef !4
  %i.cn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85, !noalias !45, !noundef !4 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !45
  %i.cq = add nuw nsw i64 %i.ad, 3
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %.noexc10
  %i.cr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !90, !noalias !45, !nonnull !4, !noundef !4
  %i.cs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !90, !noalias !45, !noundef !4 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  store i8 45, ptr %i.cu, align 1, !noalias !45
  %i.cv = add nuw nsw i64 %i.ad, 4
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !90, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %.noexc11
  %i.cw = trunc i32 %i.ak to i8
  %i.cx = add i8 %i.bx, %i.cw
  %i.cy = lshr i8 %i.cx, 1
  %i.cz = and i8 %i.cy, 31                        ; 2 uses
  %i.da = udiv i8 %i.cz, 10
  %i.db = urem i8 %i.cz, 10
  %i.dc = or disjoint i8 %i.da, 48
  %i.dd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !95, !noalias !45, !nonnull !4, !noundef !4
  %i.de = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !95, !noalias !45, !noundef !4 ; 2 uses
  %i.df = icmp sgt i64 %i.de, -1
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  store i8 %i.dc, ptr %i.dg, align 1, !noalias !45
  %i.dh = add nuw i64 %i.ad, 5
  store i64 %i.dh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !95, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %.noexc12
  %i.di = or disjoint i8 %i.db, 48
  %i.dj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !102, !noalias !45, !nonnull !4, !noundef !4
  %i.dk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !102, !noalias !45, !noundef !4 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, -1
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 %i.di, ptr %i.dm, align 1, !noalias !45
  %i.dn = add nuw nsw i64 %i.ad, 6
  store i64 %i.dn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !102, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %.noexc13
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !107, !noalias !45, !nonnull !4, !noundef !4
  %i.dp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !107, !noalias !45, !noundef !4 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store i8 84, ptr %i.dr, align 1, !noalias !45
  %i.ds = add nuw i64 %i.ad, 7                    ; 2 uses
  store i64 %i.ds, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !107, !noalias !45
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !45, !noalias !42, !noundef !4 ; 3 uses
  %i.dv = udiv i32 %i.du, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !45, !noalias !42, !noundef !4 ; 3 uses
  %i.dy = icmp ugt i32 %i.dx, 999999999           ; 2 uses
  %i.dz = add i32 %i.dx, -1000000000
  %storemerge.i = select i1 %i.dy, i32 %i.dz, i32 %i.dx ; 6 uses
  store i32 %storemerge.i, ptr %i.h, align 4, !noalias !48
  %i.ea = trunc i32 %i.dv to i8                   ; 3 uses
  %i.eb = icmp ugt i8 %i.ea, 99
  br i1 %i.eb, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, label %bb.j

bb.i:                                             ; preds = %.noexc4
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc14
  %i.ec = urem i32 %i.du, 60
  %i.ed = zext i1 %i.dy to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.ec, %i.ed
  %i.ee = udiv i32 %i.du, 60
  %i.ef = urem i32 %i.ee, 60
  %i.eg = icmp sgt i64 %i.ds, -1
  call void @llvm.assume(i1 %i.eg)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc16 unwind label %bb.c

.noexc16:                                         ; preds = %bb.j
  %i.eh = udiv i8 %i.ea, 10
  %i.ei = urem i8 %i.ea, 10
  %i.ej = or disjoint i8 %i.eh, 48
  %i.ek = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !112, !noalias !45, !nonnull !4, !noundef !4
  %i.el = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !112, !noalias !45, !noundef !4 ; 2 uses
  %i.em = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  store i8 %i.ej, ptr %i.en, align 1, !noalias !45
  %i.eo = add nuw i64 %i.ad, 8
  store i64 %i.eo, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !112, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %.noexc16
  %i.ep = or disjoint i8 %i.ei, 48
  %i.eq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !119, !noalias !45, !nonnull !4, !noundef !4
  %i.er = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !119, !noalias !45, !noundef !4 ; 2 uses
  %i.es = icmp sgt i64 %i.er, -1
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  store i8 %i.ep, ptr %i.et, align 1, !noalias !45
  %i.eu = add nuw nsw i64 %i.ad, 9
  store i64 %i.eu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !119, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %.noexc17
  %i.ev = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !124, !noalias !45, !nonnull !4, !noundef !4
  %i.ew = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !124, !noalias !45, !noundef !4 ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  store i8 58, ptr %i.ey, align 1, !noalias !45
  %i.ez = add nuw nsw i64 %i.ad, 10
  store i64 %i.ez, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !124, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc19 unwind label %bb.c

.noexc19:                                         ; preds = %.noexc18
  %i.fa = trunc nuw nsw i32 %i.ef to i8           ; 2 uses
  %i.fb = udiv i8 %i.fa, 10
  %i.fc = urem i8 %i.fa, 10
  %i.fd = or disjoint i8 %i.fb, 48
  %i.fe = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !129, !noalias !45, !nonnull !4, !noundef !4
  %i.ff = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !129, !noalias !45, !noundef !4 ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, -1
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff
  store i8 %i.fd, ptr %i.fh, align 1, !noalias !45
  %i.fi = add nuw i64 %i.ad, 11
  store i64 %i.fi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !129, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %.noexc19
  %i.fj = or disjoint i8 %i.fc, 48
  %i.fk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !136, !noalias !45, !nonnull !4, !noundef !4
  %i.fl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !136, !noalias !45, !noundef !4 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  store i8 %i.fj, ptr %i.fn, align 1, !noalias !45
  %i.fo = add nuw nsw i64 %i.ad, 12
  store i64 %i.fo, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !136, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc21 unwind label %bb.c

.noexc21:                                         ; preds = %.noexc20
  %i.fp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !141, !noalias !45, !nonnull !4, !noundef !4
  %i.fq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !141, !noalias !45, !noundef !4 ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, -1
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  store i8 58, ptr %i.fs, align 1, !noalias !45
  %i.ft = add nuw nsw i64 %i.ad, 13
  store i64 %i.ft, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !141, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc22 unwind label %bb.c

.noexc22:                                         ; preds = %.noexc21
  %i.fu = trunc nuw nsw i32 %.sroa.04.0.i to i8   ; 2 uses
  %i.fv = udiv i8 %i.fu, 10
  %i.fw = urem i8 %i.fu, 10
  %i.fx = or disjoint i8 %i.fv, 48
  %i.fy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !146, !noalias !45, !nonnull !4, !noundef !4
  %i.fz = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !146, !noalias !45, !noundef !4 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, -1
  call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fz
  store i8 %i.fx, ptr %i.gb, align 1, !noalias !45
  %i.gc = add nuw i64 %i.ad, 14
  store i64 %i.gc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !146, !noalias !45
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc23 unwind label %bb.c

.noexc23:                                         ; preds = %.noexc22
  %i.gd = or disjoint i8 %i.fw, 48
  %i.ge = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !153, !noalias !45, !nonnull !4, !noundef !4
  %i.gf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !153, !noalias !45, !noundef !4 ; 2 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  store i8 %i.gd, ptr %i.gh, align 1, !noalias !45
  %i.gi = add nuw i64 %i.ad, 15
  store i64 %i.gi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !153, !noalias !45
  %i.gj = icmp eq i32 %storemerge.i, 0
  br i1 %i.gj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc27, %.noexc26, %.noexc25, %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.b, align 4, !noalias !48
  %i.gk = invoke noundef zeroext i1 @_RINvMs0_NtNtCshmPyUV8PP35_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %.val3)
          to label %bb.n unwind label %bb.c

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i: ; preds = %.noexc27, %.noexc26, %.noexc25, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !48
  br label %.thread

bb.l:                                             ; preds = %.noexc23
  %i.gl = urem i32 %storemerge.i, 1000000
  %i.gm = udiv i32 %storemerge.i, 1000000
  %i.gn = icmp eq i32 %i.gl, 0
  br i1 %i.gn, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit50.i, label %bb.m

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit50.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !48
  store i32 %i.gm, ptr %i.g, align 4, !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !48
  store ptr %i.g, ptr %i.f, align 8, !noalias !48
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !48
  %i.go = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34, ptr noundef nonnull @25, ptr noundef nonnull %i.f)
          to label %.noexc25 unwind label %bb.c

.noexc25:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48
  br i1 %i.go, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.gp = urem i32 %storemerge.i, 1000
  %i.gq = udiv i32 %storemerge.i, 1000
  %i.gr = icmp eq i32 %i.gp, 0
  br i1 %i.gr, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit54.i, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit58.i

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit54.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48
  store i32 %i.gq, ptr %i.e, align 4, !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48
  store ptr %i.e, ptr %i.d, align 8, !noalias !48
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !48
  %i.gs = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34, ptr noundef nonnull @26, ptr noundef nonnull %i.d)
          to label %.noexc26 unwind label %bb.c

.noexc26:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48
  br i1 %i.gs, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, label %bb.k

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit58.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !48
  store ptr %i.h, ptr %i.c, align 8, !noalias !48
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !48
  %i.gt = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34, ptr noundef nonnull @27, ptr noundef nonnull %i.c)
          to label %.noexc27 unwind label %bb.c

.noexc27:                                         ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48
  br i1 %i.gt, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, label %bb.k

.thread:                                          ; preds = %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.gk, label %bb.o, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsfY7SmN0bPrO_14deltalake_test.exit, !prof !158

bb.o:                                             ; preds = %.thread, %bb.n
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #17
          to label %.noexc28 unwind label %bb.c

.noexc28:                                         ; preds = %bb.o
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.p:                                             ; preds = %bb.c
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_5local15LocalFileSystemNtB3s_11ObjectStore13delete_stream0EB2b_9poll_nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 3 uses
  %.sroa.55 = alloca [128 x i8], align 8          ; 4 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !159, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775788
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  %.not = icmp eq i64 %i.d, -9223372036854775789
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %.sroa.55, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.55, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1a_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3s_5ErrorENtNtB1a_6marker4SendEL_EENCNvYNtNtB3s_5local15LocalFileSystemNtB3s_11ObjectStore13delete_stream0EB2b_9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCshmPyUV8PP35_6chrono8datetime8DateTimeNtNtNtBB_6offset3utc3UtcENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !160, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !165
  call void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef 0), !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161
  %i.d = call noundef zeroext i1 @_RNvXsh_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !166
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161
  br label %_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161
  %i.f = call noundef zeroext i1 @_RNvXs1_NtNtCshmPyUV8PP35_6chrono6offset3utcNtB5_3UtcNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit

_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtB8_3ops5range5RangeyENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !167, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !168, !noalias !173, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.e

_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i: ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.j, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i, %bb.d, %bb.c
  %i.k = load ptr, ptr %1, align 8, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !176, !noalias !177, !nonnull !4, !align !167, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
end_hunk_0
