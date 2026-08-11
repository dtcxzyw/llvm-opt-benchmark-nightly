inline.NumInlined: 6814
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowckNtB2_14BorrowckResult8mir_body:bb.a
bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower13MirLowerErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #49
          to label %common.resume unwind label %bb.k, !noalias !7411

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !7411
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultRNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirBodyNtNtBK_5lower13MirLowerErrorE6unwrapBM_.exit: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !7411, !noalias !7414, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.l:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultRNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirBodyNtNtBK_5lower13MirLowerErrorE6unwrapBM_.exit, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultRNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirBodyNtNtBK_5lower13MirLowerErrorE6unwrapBM_.exit2
  %.sroa.0.0 = phi ptr [ %i.s, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultRNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirBodyNtNtBK_5lower13MirLowerErrorE6unwrapBM_.exit2 ], [ %i.z, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultRNtNtCs8K4cjrcxBsw_6hir_ty3mir7MirBodyNtNtBK_5lower13MirLowerErrorE6unwrapBM_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB2_10ValueConst11try_to_bits(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.344.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 8 ; 2 uses
  %i.j = icmp ne i32 %.sroa.0.0.copyload, 27
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i32 %.sroa.0.0.copyload, -2
  %switch = icmp ult i32 %i.k, 5
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i128 0, ptr %0, align 16
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.l = load i8, ptr %2, align 8, !range !784, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i128 0, ptr %0, align 16
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.06.0.copyload = load i8, ptr %i.n, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.47.0.copyload = load i128, ptr %.sroa.47.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %1)
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p ; 4 uses
  store ptr %i.q, ptr %i.e, align 8
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit, !prof !64

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #51
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.al, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x i32>, ptr %i.w, align 8
  %i.y = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit, !prof !64

bb.j:                                             ; preds = %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #51
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit: ; preds = %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit
  store ptr %i.v, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x i32> %i.x, ptr %i.aa, align 8
  call void %.344.val(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %3, ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = load i64, ptr %i.h, align 8, !range !7417, !noundef !5
  %.not.not = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit
  store ptr %i.ad, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  %i.af = load i64, ptr %i.ae, align 16, !noundef !5 ; 4 uses
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7418
  store i64 %i.af, ptr %i.a, align 8, !noalias !7418
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !64

bb.l:                                             ; preds = %bb.k
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedyyEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @109, ptr noundef nonnull @561, ptr nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #47, !noalias !7418
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7418
  %i.ah = zext i8 %.sroa.06.0.copyload to i64     ; 2 uses
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt7to_bits.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.af, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ah, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.aj, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @563, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #47
  unreachable

_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt7to_bits.exit: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.47.0.copyload, ptr %i.ak, align 16
  store i128 1, ptr %0, align 16
  br label %bb.p

bb.o:                                             ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o, %_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt7to_bits.exit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 1, 4) i8 @_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer(i64 %.56.val) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %0 = shl i64 %.56.val, 3                        ; 2 uses
  %i.c = icmp ugt i64 %.56.val, 2305843009213693951
  br i1 %i.c, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.d [
    i64 16, label %bb.g
    i64 32, label %bb.e
    i64 64, label %bb.f
  ], !prof !4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.56.val) #51
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @545, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @547) #47
  unreachable

bb.e:                                             ; preds = %bb.b
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.sroa.0.0 = phi i8 [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7421)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !7421 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7424)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7427
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !7427
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !7427
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !7427, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !6028, !noalias !7427, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !7427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7427
  br label %bb.f

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !7427, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7427
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !7427
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !7427
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #51
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #52
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #52 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7428)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7428
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !7428
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !7428
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !7428, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !6028, !noalias !7428, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !7428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7428
  br label %bb.f

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !7428, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7428
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !7428
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !7428
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ -1, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs8K4cjrcxBsw_6hir_ty.exit ], [ -1, %bb.a ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa19lookup_page_type_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i32 %2, -1
  %i.c = lshr i32 %i.b, 10
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.f = tail call noundef i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs8K4cjrcxBsw_6hir_ty(i64 noundef range(i64 0, 4194304) %i.d)
  %i.g = tail call noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %i.e, i64 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load atomic i8, ptr %i.h acquire, align 8
  %.not6.i = icmp eq i8 %i.i, 0
  br i1 %.not6.i, label %select.unfold, label %_RNvMNtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB2_3VecNtNtCsd9Lm8bEdjjY_5salsa5table4PageE3getCs8K4cjrcxBsw_6hir_ty.exit

end_hunk_0
begin_hunk_1_@_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval:bb.a
  %i.qh = load i64, ptr %i.qg, align 8, !noalias !8762, !noundef !5
  store ptr %i.ap, ptr %i.h, align 8, !noalias !8765
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.qh, ptr %i.qi, align 8, !noalias !8765
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtectedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB1v_6ClauseEE10drop_innerB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc27.i.i.i.i.i.i unwind label %bb.ef, !noalias !8762

.noexc27.i.i.i.i.i.i:                             ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8765
  br label %.body.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvMNtNtCsd9Lm8bEdjjY_5salsa8function5fetchINtB4_14IngredientImplNtNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval1__31const_eval_query_Configuration_E9fetch_hotB19_.exit.thread.i.i.i.i.i.i.i, %_RNvMs0_NtNtCsd9Lm8bEdjjY_5salsa8function19maybe_changed_afterNtNtB7_4memo10MemoHeader19shallow_verify_memo.exit.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.dz, %bb.dy, %bb.dw, %.noexc18.i.i.i.i.i, %.noexc19.i.i.i.i.i.i, %bb.dq, %bb.dp, %.noexc13.i.i.i.i.i.i, %bb.do, %.noexc11.i.i.i.i.i.i, %bb.dn, %.noexc6.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i, %bb.ah, %bb.ac
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %.noexc27.i.i.i.i.i.i, %bb.eg, %bb.ed, %.noexc29.i.i.i.i.i.i, %bb.dk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval1__31const_eval_query_Configuration_EEEB36_.exit.i.i.i.i.i.i.i, %.noexc.i160.i.i.i.i.i.i.i, %bb.dd
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %.pn61248.i.i.i.i.i.i.i, %bb.dk ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %.noexc27.i.i.i.i.i.i ], [ %.pn61248.i.i.i.i.i.i.i, %.noexc29.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.eg ], [ %i.pz, %bb.ed ], [ %i.ne, %bb.dd ], [ %i.ne, %.noexc.i160.i.i.i.i.i.i.i ], [ %.pn59.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api5mutex10MutexGuardNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval1__31const_eval_query_Configuration_EEEB36_.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %.body.thread, label %bb.ei

bb.ei:                                            ; preds = %.body.i.i.i.i.i
  %i.qj = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8755, !noundef !5 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !noalias !8755 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8755
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not3.i.i.i.i.i.i, label %.body.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ], !noalias !8884
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 56
  %i.qn = load ptr, ptr %i.qm, align 8, !invariant.load !5, !noalias !8761, !nonnull !5
  %i.qo = invoke noundef nonnull align 8 ptr %i.qn(ptr noundef nonnull %i.qj) #50
          to label %.noexc.i.i.i.i unwind label %bb.em, !noalias !8747, !inline_history !2060

.noexc.i.i.i.i:                                   ; preds = %bb.ej
  invoke void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qo)
          to label %.body.thread unwind label %bb.em, !noalias !8747

bb.ek:                                            ; preds = %.noexc15.i.i.i.i.i.i.i, %bb.eb
  %i.qp = phi i64 [ %i.py, %.noexc15.i.i.i.i.i.i.i ], [ 0, %bb.eb ]
  store i64 %i.qp, ptr %i.pp, align 8, !noalias !8857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8765
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qq = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8755, !noundef !5 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !8755 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !8755
  %.not3.i.i.i.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not3.i.i.i.i.i.i.i, label %_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit, label %.noexc24.i.i.i.i.i

.noexc24.i.i.i.i.i:                               ; preds = %bb.el
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qs) ]
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8, !invariant.load !5, !noalias !8761, !nonnull !5
  %i.qv = call noundef nonnull align 8 ptr %i.qu(ptr noundef nonnull %i.qq) #50, !inline_history !8885
  call void @_RNvMNtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qv)
  br label %_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit

bb.em:                                            ; preds = %bb.en, %.noexc.i.i.i.i, %bb.ej
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !8761
  unreachable

bb.en:                                            ; preds = %bb.i, %bb.e
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query0EBJ_(ptr nonnull %5, ptr %i.ap) #49
          to label %.body.thread unwind label %bb.em, !noalias !8761

_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit: ; preds = %.noexc24.i.i.i.i.i, %bb.el, %bb.ek
  %i.qx = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, align 8, !range !3444, !noundef !5 ; 2 uses
  %.not2 = icmp eq i32 %i.qx, -2
  br i1 %.not2, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.not.i = icmp eq i32 %i.qx, -1
  br i1 %.not.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call fastcc void @_RNvXsF_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_12MirEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.i.i.i.i.i.i.i.i) #50, !inline_history !8886
  br label %_RNvXs2_NtCs8K4cjrcxBsw_6hir_ty9constevalNtB5_14ConstEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.eq:                                            ; preds = %bb.eo
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call fastcc void @_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB5_13MirLowerErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.qz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.qy) #50, !inline_history !8886
  store i32 -1, ptr %i.am, align 8, !alias.scope !8887, !noalias !8890
  br label %_RNvXs2_NtCs8K4cjrcxBsw_6hir_ty9constevalNtB5_14ConstEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

_RNvXs2_NtCs8K4cjrcxBsw_6hir_ty9constevalNtB5_14ConstEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.ep, %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.es

bb.er:                                            ; preds = %_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval16const_eval_query.exit
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 8
  %.val3 = load ptr, ptr %i.ra, align 8, !nonnull !5, !noundef !5
  %i.rb = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rb, ptr %i.rc, align 8
  store i32 -2, ptr %0, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %_RNvXs2_NtCs8K4cjrcxBsw_6hir_ty9constevalNtB5_14ConstEvalErrorNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  ret void

.body.thread:                                     ; preds = %.body.i.i.i.i.i, %bb.ei, %.noexc.i.i.i.i, %bb.en, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit
  %eh.lpad-body14 = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %bb.ei ], [ %lpad.thr_comm.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.noexc.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i, %bb.en ]
  resume { ptr, i32 } %eh.lpad-body14

bb.et:                                            ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !noundef !5
  store ptr %5, ptr %i.a, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.re, ptr %i.rf, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit unwind label %bb.eu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEBH_.exit: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body.thread

bb.eu:                                            ; preds = %bb.et
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval11usize_const(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %1, i128 noundef range(i128 0, 2) %2, i128 %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr null, ptr %i.h, align 8
  %i.i = trunc nuw i128 %2 to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  call void %i.k(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5) #50
  %i.l = load ptr, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit3, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit

bb.c:                                             ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit
  %i.m = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
  br label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit3: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.p = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !8892
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit3
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit3, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = load ptr, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 4 uses
  %6 = shl i64 %i.t, 3                            ; 2 uses
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.e, label %7, !prof !64

7:                                                ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit, label %9

bb.e:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.t) #51, !noalias !8895
  unreachable

9:                                                ; preds = %7
  %10 = sub i64 0, %6
  %11 = and i64 %10, 120
  %12 = zext nneg i64 %11 to i128
  %13 = lshr i128 -1, %12
  %14 = and i128 %13, %3
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit

_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit: ; preds = %7, %9
  %.sroa.0.0.i = phi i128 [ %14, %9 ], [ 0, %7 ]
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.a, i128 noundef %.sroa.0.0.i, i64 noundef %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i128, ptr %i.v, align 1, !noundef !5
  %.not4 = icmp eq i128 %i.w, %3
  br i1 %.not4, label %bb.f, label %bb.c

bb.f:                                             ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) %i.a, i64 17, i1 false)
  store i8 0, ptr %i.c, align 8
  %i.y = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const11new_valtree(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.02.1 = phi ptr [ %i.m, %bb.c ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.02.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5, i32 noundef range(i32 0, 2) %6, i32 %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [20 x i8], align 4                ; 7 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver30resolve_path_in_value_ns_fully(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8, i32 noundef -253)
  %i.l = load i32, ptr %i.g, align 4, !range !3255, !noundef !5 ; 5 uses
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.437.0.copyload = load i64, ptr %.sroa.437.0..sroa_idx, align 4 ; 4 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.538.0.copyload = load i32, ptr %.sroa.538.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = add nsw i32 %i.l, -9
  %i.n = icmp samesign ugt i32 %i.l, 8
  %narrow = select i1 %i.n, i32 %i.m, i32 7
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit
    i32 4, label %bb.f
    i32 5, label %bb.h
    i32 6, label %bb.h
    i32 7, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  unreachable

_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 3, ptr %i.f, align 4
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i64 %.sroa.437.0.copyload, ptr %.sroa.525.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8898
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty8generics8generics(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f)
  %i.o = call noundef zeroext i1 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics13has_no_params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a), !noalias !8898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %4) #50
  store i32 %i.l, ptr %i.b, align 4
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i64 %.sroa.437.0.copyload, ptr %.sroa.528.0..sroa_idx, align 4
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sroa.538.0.copyload, ptr %.sroa.631.0..sroa_idx, align 4
  %i.s = call noundef i32 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics23type_or_const_param_idx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.b) ; 2 uses
  %i.t = trunc nuw i32 %6 to i1
  %i.u = icmp uge i32 %i.s, %7
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit, %bb.b
  %.sroa.021.0 = phi i32 [ 1, %bb.b ], [ 0, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !8901
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2304), align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.021.0, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i64 %.sroa.437.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  store ptr %i.x, ptr %i.d, align 8
  %i.z = call noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB5_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent5ConstNtNtB7_8interner10DbInternerE15new_unevaluated(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit, %bb.e, %bb.i, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit
  %.sink43 = phi i64 [ -1, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit ], [ 2, %bb.c ], [ 1, %bb.b ], [ 3, %_RNCNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const0B5_.exit ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ -1, %bb.i ], [ 0, %bb.e ]
  store i64 %.sink43, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.l, ptr %i.e, align 4
  %.sroa.528.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i64 %.sroa.437.0.copyload, ptr %.sroa.528.0..sroa_idx29, align 4
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.538.0.copyload, ptr %.sroa.631.0..sroa_idx32, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.s, ptr %i.ab, align 4
  %i.ac = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const9new_param(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval15anon_const_eval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 4                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [12 x i8], align 4                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [12 x i8], align 4               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [12 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 11 uses
  %i.ai = alloca [32 x i8], align 8               ; 12 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %i.an = atomicrmw add ptr %5, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.b, label %_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #51
  unreachable

_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit: ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval17create_anon_const:bb.a
  %i.ah = load i32, ptr %i.ag, align 16, !range !9128, !noundef !5 ; 3 uses
  %i.ai = icmp ne i32 %i.ah, 29
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i32 %i.ah, -2
  %i.ak = icmp samesign ugt i32 %i.ah, 1
  %narrow = select i1 %i.ak, i32 %i.aj, i32 27
  switch i32 %narrow, label %bb.e [
    i32 1, label %bb.f
    i32 30, label %bb.g
    i32 31, label %bb.by
  ]

bb.e:                                             ; preds = %bb.f, %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  br i1 %11, label %bb.cc, label %bb.cd

bb.f:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval13path_to_const(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noundef nonnull %7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %8, i32 noundef %12, i32 %13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
  %i.ap = load i64, ptr %0, align 8, !range !9129, !noundef !5
  %i.aq = and i64 %i.ap, -2
  %switch = icmp eq i64 %i.aq, 2
  br i1 %switch, label %bb.e, label %bb.bz

bb.g:                                             ; preds = %_RNvXs5_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtB7_3hir4ExprEE5index.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9137
  %i.as = load ptr, ptr %1, align 8, !alias.scope !9133, !noalias !9138, !nonnull !5, !noundef !5 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !9133, !noalias !9138, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !9133, !noalias !9138, !noundef !5 ; 2 uses
  %.not.i6 = icmp eq i32 %i.aw, 0
  br i1 %.not.i6, label %bb.i, label %bb.h, !prof !64

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !9133, !noalias !9138
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !5, !noalias !9137, !nonnull !5
  call void %i.ba(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef nonnull %i.as, i32 noundef %i.aw, i32 noundef %i.ay) #50, !noalias !9137, !inline_history !9139
  %i.bb = load ptr, ptr %i.t, align 8, !noalias !9137, !noundef !5
  %.not48.i = icmp eq ptr %i.bb, null
  br i1 %.not48.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @601, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @602) #47, !noalias !9137
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.h
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t), !noalias !9137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9137
  %i.bc = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !9138
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !9137, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9137
  %.sroa.0.0.copyload.i = load i32, ptr %6, align 8, !noalias !9137 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !9137 ; 4 uses
  %i.bg = icmp ne i32 %.sroa.0.0.copyload.i, 27
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add i32 %.sroa.0.0.copyload.i, -2
  %i.bi = icmp ugt i32 %.sroa.0.0.copyload.i, 1
  %narrow.i = select i1 %i.bi, i32 %i.bh, i32 25
  %.pr.i = load i8, ptr %i.ar, align 16, !alias.scope !9135, !noalias !9141 ; 7 uses
  switch i32 %narrow.i, label %thread-pre-split.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

thread-pre-split.i:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 4, label %bb.o
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 3, label %bb.q
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 5, label %bb.r
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit49.i
  switch i8 %.pr.i, label %bb.bq [
    i8 7, label %bb.bc
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bp
  ]

bb.o:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.bk = load i8, ptr %i.bj, align 1, !range !784, !alias.scope !9135, !noalias !9141, !noundef !5
  %i.bl = zext nneg i8 %i.bk to i128
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 1, ptr %i.bm, align 1, !noalias !9137
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i128 %i.bl, ptr %.sroa.418.0..sroa_idx.i, align 2, !noalias !9137
  br label %bb.p

bb.p:                                             ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit54.i, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i, %bb.bj, %bb.ba, %bb.aq, %bb.ae, %bb.q, %bb.o
  %.sink = phi i8 [ 1, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit54.i ], [ 1, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i ], [ 0, %bb.bj ], [ 0, %bb.ba ], [ 0, %bb.aq ], [ 0, %bb.ae ], [ 0, %bb.q ], [ 0, %bb.o ]
  store i8 %.sink, ptr %i.s, align 8, !noalias !9137
  %i.bn = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const11new_valtree(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s), !noalias !9130
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.q:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !range !9142, !alias.scope !9135, !noalias !9141, !noundef !5
  %i.br = zext nneg i32 %i.bq to i128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 4, ptr %i.bs, align 1, !noalias !9137
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i128 %i.br, ptr %.sroa.420.0..sroa_idx.i, align 2, !noalias !9137
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  switch i8 %.sroa.2.0.copyload.i, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.ad
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
  ]

bb.s:                                             ; preds = %bb.bc, %bb.ah, %bb.ag, %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !9137, !noundef !5
  br label %bb.y

bb.u:                                             ; preds = %bb.r
  br label %bb.ad

bb.v:                                             ; preds = %bb.r
  br label %bb.ad

bb.w:                                             ; preds = %bb.r
  br label %bb.ad

bb.x:                                             ; preds = %bb.r
  br label %bb.ad

bb.y:                                             ; preds = %bb.ad, %bb.t
  %.sroa.016.0.i = phi i64 [ %i.bu, %bb.t ], [ %i.ch, %bb.ad ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bw = load i128, ptr %i.bv, align 16, !alias.scope !9135, !noalias !9141, !noundef !5 ; 2 uses
  %14 = shl i64 %.sroa.016.0.i, 3                 ; 2 uses
  %i.bx = icmp ugt i64 %.sroa.016.0.i, 2305843009213693951
  br i1 %i.bx, label %bb.aa, label %bb.z, !prof !64

bb.z:                                             ; preds = %bb.y
  %i.by = icmp eq i64 %14, 0
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.016.0.i) #51, !noalias !9143
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.g, i128 noundef 0, i64 noundef %.sroa.016.0.i), !noalias !9137
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_.exit.i

bb.ac:                                            ; preds = %bb.z
  %15 = sub i64 0, %14
  %i.bz = and i64 %15, 120
  %i.ca = zext nneg i64 %i.bz to i128             ; 3 uses
  %i.cb = lshr i128 -1, %i.ca
  %i.cc = and i128 %i.cb, %i.bw
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.g, i128 noundef %i.cc, i64 noundef %.sroa.016.0.i), !noalias !9137
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ce = load i128, ptr %i.cd, align 1, !noalias !9137, !noundef !5
  %i.cf = shl i128 %i.ce, %i.ca
  %i.cg = ashr exact i128 %i.cf, %i.ca
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_.exit.i

_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_.exit.i: ; preds = %bb.ac, %bb.ab
  %.sroa.02.0.i.i = phi i128 [ 0, %bb.ab ], [ %i.cg, %bb.ac ]
  %.not67.i.a = icmp eq i128 %.sroa.02.0.i.i, %i.bw
  br i1 %.not67.i.a, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.sroa.040.0.i = phi i64 [ 128, %bb.x ], [ 16, %bb.u ], [ 32, %bb.v ], [ 64, %bb.w ], [ 8, %bb.r ]
  %i.ch = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef %.sroa.040.0.i), !noalias !9137
  br label %bb.y

bb.ae:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ci, ptr noundef nonnull align 1 dereferenceable(17) %i.g, i64 17, i1 false), !noalias !9137
  br label %bb.p

bb.af:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_.exit.i
  %i.cj = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !9138
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.ag:                                            ; preds = %bb.m
  switch i8 %.sroa.2.0.copyload.i, label %bb.s [
    i8 0, label %bb.ai
    i8 1, label %bb.ap
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.m
  switch i8 %.sroa.2.0.copyload.i, label %bb.s [
    i8 0, label %bb.as
    i8 1, label %bb.az
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
    i8 5, label %bb.aw
  ]

bb.ai:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !9137, !noundef !5
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ag
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag
  br label %bb.ap

bb.am:                                            ; preds = %bb.ag
  br label %bb.ap

bb.an:                                            ; preds = %bb.ap, %bb.ai
  %.sroa.011.0.i = phi i64 [ %i.cm, %bb.ai ], [ %i.cq, %bb.ap ] ; 4 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %17 = load i128, ptr %16, align 16, !alias.scope !9135, !noalias !9141, !noundef !5 ; 2 uses
  %18 = shl i64 %.sroa.011.0.i, 3                 ; 2 uses
  %i.cn = icmp ugt i64 %.sroa.011.0.i, 2305843009213693951
  br i1 %i.cn, label %bb.ao, label %19, !prof !64

19:                                               ; preds = %bb.an
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit.i, label %21

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.011.0.i) #51, !noalias !9146
  unreachable

21:                                               ; preds = %19
  %22 = sub i64 0, %18
  %23 = and i64 %22, 120
  %24 = zext nneg i64 %23 to i128
  %25 = lshr i128 -1, %24
  %26 = and i128 %25, %17
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit.i

_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit.i: ; preds = %21, %19
  %.sroa.0.0.i.i = phi i128 [ %26, %21 ], [ 0, %19 ]
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.f, i128 noundef %.sroa.0.0.i.i, i64 noundef %.sroa.011.0.i), !noalias !9137
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.cp = load i128, ptr %i.co, align 1, !noalias !9137, !noundef !5
  %.not66.i = icmp eq i128 %i.cp, %17
  br i1 %.not66.i, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ag
  %.sroa.041.0.i = phi i64 [ 128, %bb.am ], [ 16, %bb.aj ], [ 32, %bb.ak ], [ 64, %bb.al ], [ 8, %bb.ag ]
  %i.cq = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef %.sroa.041.0.i), !noalias !9137
  br label %bb.an

bb.aq:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cr, ptr noundef nonnull align 1 dereferenceable(17) %i.f, i64 17, i1 false), !noalias !9137
  br label %bb.p

bb.ar:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit.i
  %i.cs = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !9138
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.as:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !9137, !noundef !5
  br label %bb.ax

bb.at:                                            ; preds = %bb.ah
  br label %bb.az

bb.au:                                            ; preds = %bb.ah
  br label %bb.az

bb.av:                                            ; preds = %bb.ah
  br label %bb.az

bb.aw:                                            ; preds = %bb.ah
  br label %bb.az

bb.ax:                                            ; preds = %bb.az, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.cv, %bb.as ], [ %i.cz, %bb.az ] ; 4 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %28 = load i128, ptr %27, align 16, !alias.scope !9135, !noalias !9141, !noundef !5 ; 2 uses
  %29 = shl i64 %.sroa.06.0.i, 3                  ; 2 uses
  %i.cw = icmp ugt i64 %.sroa.06.0.i, 2305843009213693951
  br i1 %i.cw, label %bb.ay, label %30, !prof !64

30:                                               ; preds = %bb.ax
  %31 = icmp eq i64 %29, 0
  br i1 %31, label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit51.i, label %32

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.06.0.i) #51, !noalias !9149
  unreachable

32:                                               ; preds = %30
  %33 = sub i64 0, %29
  %34 = and i64 %33, 120
  %35 = zext nneg i64 %34 to i128
  %36 = lshr i128 -1, %35
  %37 = and i128 %36, %28
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit51.i

_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit51.i: ; preds = %32, %30
  %.sroa.0.0.i50.i = phi i128 [ %37, %32 ], [ 0, %30 ]
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.e, i128 noundef %.sroa.0.0.i50.i, i64 noundef %.sroa.06.0.i), !noalias !9137
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cy = load i128, ptr %i.cx, align 1, !noalias !9137, !noundef !5
  %.not65.i = icmp eq i128 %i.cy, %28
  br i1 %.not65.i, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ah
  %.sroa.042.0.i = phi i64 [ 128, %bb.aw ], [ 16, %bb.at ], [ 32, %bb.au ], [ 64, %bb.av ], [ 8, %bb.ah ]
  %i.cz = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef %.sroa.042.0.i), !noalias !9137
  br label %bb.ax

bb.ba:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit51.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.da, ptr noundef nonnull align 1 dereferenceable(17) %i.e, i64 17, i1 false), !noalias !9137
  br label %bb.p

bb.bb:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit51.i
  %i.db = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !9138
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.bc:                                            ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 4 uses
  switch i8 %.sroa.2.0.copyload.i, label %bb.s [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.de = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef 16), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9137
  call void @_RNvMs5_NtCsileJQcQObtj_7hir_def3hirNtB5_16FloatTypeWrapper6to_f16(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd), !noalias !9141
  %i.df = call noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5HalfSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.r), !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9137
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.dg = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef 32), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9137
  call void @_RNvMs5_NtCsileJQcQObtj_7hir_def3hirNtB5_16FloatTypeWrapper6to_f32(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd), !noalias !9141
  %i.dh = call noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee7SingleSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.q), !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9137
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  %i.di = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef 64), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9137
  call void @_RNvMs5_NtCsileJQcQObtj_7hir_def3hirNtB5_16FloatTypeWrapper6to_f64(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd), !noalias !9141
  %i.dj = call noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee7DoubleSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.p), !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9137
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.dk = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef 128), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9137
  call void @_RNvMs5_NtCsileJQcQObtj_7hir_def3hirNtB5_16FloatTypeWrapper7to_f128(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd), !noalias !9141
  %i.dl = call noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5QuadSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(32) %i.o), !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9137
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.sroa.021.0.i = phi i64 [ %i.de, %bb.bd ], [ %i.dg, %bb.be ], [ %i.di, %bb.bf ], [ %i.dk, %bb.bg ] ; 4 uses
  %.sroa.026.0.i = phi i128 [ %i.df, %bb.bd ], [ %i.dh, %bb.be ], [ %i.dj, %bb.bf ], [ %i.dl, %bb.bg ] ; 2 uses
  %38 = shl i64 %.sroa.021.0.i, 3                 ; 2 uses
  %i.dm = icmp ugt i64 %.sroa.021.0.i, 2305843009213693951
  br i1 %i.dm, label %bb.bi, label %39, !prof !64

39:                                               ; preds = %bb.bh
  %40 = icmp eq i64 %38, 0
  br i1 %40, label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit53.i, label %41

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.sroa.021.0.i) #51, !noalias !9152
  unreachable

41:                                               ; preds = %39
  %42 = sub i64 0, %38
  %43 = and i64 %42, 120
  %44 = zext nneg i64 %43 to i128
  %45 = lshr i128 -1, %44
  %46 = and i128 %45, %.sroa.026.0.i
  br label %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit53.i

_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit53.i: ; preds = %41, %39
  %.sroa.0.0.i52.i = phi i128 [ %46, %41 ], [ 0, %39 ]
  call void @_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.d, i128 noundef %.sroa.0.0.i52.i, i64 noundef %.sroa.021.0.i), !noalias !9141
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.do = load i128, ptr %i.dn, align 1, !noalias !9137, !noundef !5
  %.not64.i = icmp eq i128 %i.do, %.sroa.026.0.i
  br i1 %.not64.i, label %bb.bj, label %bb.bk, !prof !8

bb.bj:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit53.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dp, ptr noundef nonnull align 1 dereferenceable(17) %i.d, i64 17, i1 false), !noalias !9137
  br label %bb.p

bb.bk:                                            ; preds = %_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_.exit53.i
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603) #47, !noalias !9141
  unreachable

bb.bl:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %thread-pre-split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9137
  store ptr %i.as, ptr %i.i, align 8, !noalias !9137
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.au, ptr %i.dq, align 8, !noalias !9137
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.dr, align 8, !noalias !9137
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.ds, align 8, !noalias !9137
  %i.dt = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !9155
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i, label %bb.bm, !prof !8

bb.bm:                                            ; preds = %bb.bl
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !9137
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9137
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !9135, !noalias !9141, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr i8, ptr %i.dw, i64 %i.dz  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !9137, !nonnull !5, !noundef !5 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !9137, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  store ptr %i.eb, ptr %i.n, align 8, !noalias !9137
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !noalias !9137
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 224), ptr %i.eg, align 8, !noalias !9137
  %i.eh = call noundef nonnull ptr @_RINvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB3_15CollectAndApplyBN_NtBP_6ConstsE17collect_and_applyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterhENCNvNtBT_9consteval16intern_const_ref0ENCINvMsP_BP_B24_13new_from_iterB2A_BN_E0EBT_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !9137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9137
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.eh, ptr %i.ei, align 8, !noalias !9137
  br label %bb.p

bb.bn:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %thread-pre-split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9137
  store ptr %i.as, ptr %i.j, align 8, !noalias !9137
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.au, ptr %i.ej, align 8, !noalias !9137
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.ek, align 8, !noalias !9137
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %i.el, align 8, !noalias !9137
  %i.em = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !9158
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit54.i, label %bb.bo, !prof !8

bb.bo:                                            ; preds = %bb.bn
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j), !noalias !9137
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit54.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit54.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9137
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !9135, !noalias !9141, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.er = load i64, ptr %i.eq, align 16, !alias.scope !9135, !noalias !9141, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er
  store ptr %i.ep, ptr %i.m, align 8, !noalias !9137
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.es, ptr %i.et, align 8, !noalias !9137
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 224), ptr %i.eu, align 8, !noalias !9137
  %i.ev = call noundef nonnull ptr @_RINvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB3_15CollectAndApplyBN_NtBP_6ConstsE17collect_and_applyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterhENCNvNtBT_9consteval16intern_const_refs_0ENCINvMsP_BP_B24_13new_from_iterB2A_BN_E0EBT_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !9137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ev, ptr %i.ew, align 8, !noalias !9137
  br label %bb.p

bb.bp:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %thread-pre-split.i
  %i.ex = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !9138
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ex, ptr %i.ey, align 8, !alias.scope !9130, !noalias !9140
  store i64 -1, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.bq:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %thread-pre-split.i
  %i.ez = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9137
  %i.fa = icmp ult i64 %i.ez, 5
  br i1 %i.fa, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.fb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref10___CALLSITE, i64 16) monotonic, align 8, !noalias !9137 ; 3 uses
  switch i8 %i.fb, label %bb.bs [
    i8 0, label %bb.bu
    i8 1, label %bb.bt
    i8 2, label %bb.bt
  ], !prof !4

bb.bs:                                            ; preds = %bb.br
  %i.fc = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref10___CALLSITE) #46, !noalias !9137 ; 2 uses
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.br
  %.sroa.033.0.i = phi i8 [ %i.fc, %bb.bs ], [ %i.fb, %bb.br ], [ %i.fb, %bb.br ]
  %i.fe = load ptr, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref10___CALLSITE, align 8, !noalias !9137, !nonnull !5, !align !6, !noundef !5
  %i.ff = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fe, i8 noundef %.sroa.033.0.i), !noalias !9137
  br i1 %i.ff, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %bb.bt, %bb.bs, %bb.br, %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !9161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9164
  store ptr %i.as, ptr %i.c, align 8, !noalias !9164
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.au, ptr %i.fg, align 8, !noalias !9164
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.fh, align 8, !noalias !9164
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.fi, align 8, !noalias !9164
  %i.fj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !9166
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i, label %bb.bv, !prof !8

bb.bv:                                            ; preds = %bb.bu
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !9164
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9164
  switch i8 %.pr.i, label %default.unreachable10.i.i [
    i8 7, label %switch.lookup26
    i8 6, label %switch.lookup22.a
    i8 5, label %switch.lookup
    i8 3, label %_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i
    i8 4, label %bb.bw
  ]

default.unreachable10.i.i:                        ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  unreachable

bb.bw:                                            ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  br label %_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i

switch.lookup:                                    ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.fm = load i8, ptr %i.fl, align 1, !range !350, !alias.scope !9169, !noalias !9170, !noundef !5
  %i.fn = sext i8 %i.fm to i64
  %i.fo = getelementptr [8 x i8], ptr @switch.table._RNvNtCs8K4cjrcxBsw_6hir_ty9consteval17create_anon_const, i64 %i.fn
  %switch.gep = getelementptr i8, ptr %i.fo, i64 8
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i

switch.lookup22.a:                                ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.fq = load i8, ptr %i.fp, align 1, !range !350, !alias.scope !9169, !noalias !9170, !noundef !5
  %i.fr = sext i8 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr @switch.table._RNvNtCs8K4cjrcxBsw_6hir_ty9consteval17create_anon_const.1159, i64 %i.fr
  %switch.gep23.a = getelementptr i8, ptr %i.fs, i64 8
  %switch.load24.a = load ptr, ptr %switch.gep23.a, align 8
  br label %_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i

switch.lookup26:                                  ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.fu = load i8, ptr %i.ft, align 1, !range !1963, !alias.scope !9169, !noalias !9170, !noundef !5
  %i.fv = sext i8 %i.fu to i64
  %i.fw = getelementptr [8 x i8], ptr @switch.table._RNvNtCs8K4cjrcxBsw_6hir_ty9consteval17create_anon_const.1160, i64 %i.fv
  %switch.gep27 = getelementptr i8, ptr %i.fw, i64 8
  %switch.load28 = load ptr, ptr %switch.gep27, align 8
  br label %_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i

_RINvNtCs8K4cjrcxBsw_6hir_ty9consteval10literal_tyNCNvB2_16intern_const_refs0_0NCBN_s1_0NCBN_s2_0EB4_.exit.i: ; preds = %switch.lookup26, %switch.lookup22.a, %switch.lookup, %bb.bw, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i
  %.sroa.0.0.i57.in.i = phi ptr [ %switch.load24.a, %switch.lookup22.a ], [ %switch.load, %switch.lookup ], [ %switch.load28, %switch.lookup26 ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 144), %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE15get_or_try_initNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 136), %bb.bw ]
  %.sroa.0.0.i57.i = load ptr, ptr %.sroa.0.0.i57.in.i, align 8, !noalias !9164, !nonnull !5, !noundef !5
  store i64 6, ptr %0, align 8, !alias.scope !9130, !noalias !9140
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i57.i, ptr %i.fx, align 8, !alias.scope !9130, !noalias !9140
  br label %_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref.exit

bb.bx:                                            ; preds = %bb.bt
  %i.fy = load ptr, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty9consteval16intern_const_ref10___CALLSITE, align 8, !noalias !9137, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9137
  store ptr @604, ptr %i.k, align 8, !noalias !9137
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 57 to ptr), ptr %i.ga, align 8, !noalias !9137
end_hunk_2
begin_hunk_3_@_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty6layout1__NtB5_33layout_of_ty_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute:bb.a
  %.sroa.7475.0.copyload.i = load ptr, ptr %.sroa.7475.0..sroa.15.16.463.sroa_idx.i, align 8, !noalias !9927 ; 5 uses
  switch i64 %.sroa.0472.0.copyload.i, label %default.unreachable.i [
    i64 0, label %bb.cy
    i64 1, label %bb.ed
    i64 2, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7475.0.copyload.i) ]
  %i.hk = load i32, ptr %i.ag, align 16, !range !9992, !noalias !9934, !noundef !5 ; 2 uses
  %i.hl = icmp ne i32 %i.hk, 3
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp eq i32 %i.hk, 2
  br i1 %i.hm, label %bb.da, label %bb.dd, !prof !8

bb.cz:                                            ; preds = %bb.cx
  %i.hn = load i32, ptr %i.ag, align 16, !range !9992, !noalias !9934, !noundef !5 ; 4 uses
  %i.ho = icmp ne i32 %i.hn, 3
  call void @llvm.assume(i1 %i.ho)
  %i.hp = add nsw i32 %i.hn, -2
  %i.hq = icmp samesign ugt i32 %i.hn, 1
  %narrow370.i = select i1 %i.hq, i32 %i.hp, i32 1
  switch i32 %narrow370.i, label %bb.fb [
    i32 0, label %bb.fc
    i32 1, label %bb.fd
  ], !prof !2336

bb.da:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5473.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9934
  store ptr %.sroa.5473.0.copyload.i, ptr %i.f, align 8, !noalias !9993
  %.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.5473.0.copyload.i, align 8, !noalias !9996
  switch i32 %.sroa.0.0.copyload.i.i, label %bb.db [
    i32 0, label %bb.dc
    i32 1, label %bb.dc
    i32 2, label %bb.dc
    i32 3, label %bb.dc
    i32 4, label %bb.dc
    i32 5, label %bb.df
    i32 6, label %bb.de
    i32 7, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %i.hr = invoke noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i32 noundef 7)
          to label %.noexc426.i unwind label %bb.cw, !noalias !9927

.noexc426.i:                                      ; preds = %bb.dc
  %spec.select.i = select i1 %i.hr, i64 9, i64 14
  br label %bb.de

bb.dd:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9934
  store ptr %i.ah, ptr %i.x, align 8, !noalias !9934
  %.sroa.4252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4252.0..sroa_idx.i, align 8, !noalias !9934
  %i.hs = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ag, ptr %i.hs, align 8, !noalias !9934
  %.sroa.4256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXsx_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtBT_19RustcEnumVariantIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBV_, ptr %.sroa.4256.0..sroa_idx.i, align 8, !noalias !9934
  br label %.invoke547.i

bb.de:                                            ; preds = %.noexc426.i, %bb.da
  %.sroa.5477.0.ph.i = phi i64 [ %spec.select.i, %.noexc426.i ], [ 7, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9934
  store i64 %.sroa.5477.0.ph.i, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9934
  br label %bb.ec

bb.df:                                            ; preds = %bb.da
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5473.0.copyload.i, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9996, !nonnull !5, !noundef !5
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5473.0.copyload.i, i64 8
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !9996, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9934
  call void @llvm.experimental.noalias.scope.decl(metadata !9997)
  call void @llvm.experimental.noalias.scope.decl(metadata !10000)
  %i.ht = load ptr, ptr %i.ce, align 8, !alias.scope !10002, !noalias !10003, !nonnull !5, !noundef !5
  store ptr %i.ht, ptr %i.aa, align 8, !alias.scope !9997, !noalias !10004
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hv = load <2 x i32>, ptr %i.ch, align 8, !alias.scope !10002, !noalias !10003
  store <2 x i32> %i.hv, ptr %i.hu, align 8, !alias.scope !9997, !noalias !10004
  invoke fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB2_10ValueConst11try_to_bits(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.ab, ptr noundef nonnull %.sroa.41.0.copyload.i.i, ptr noundef nonnull %.sroa.5.0.copyload.i.i, ptr noundef nonnull %1, ptr %i.hb, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.aa)
          to label %bb.dg unwind label %bb.cw, !noalias !9927

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9934
  %i.hw = load i128, ptr %i.ab, align 16, !range !8489, !noalias !9934, !noundef !5
  %i.hx = trunc nuw i128 %i.hw to i1
  br i1 %i.hx, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.hz = load i128, ptr %i.hy, align 16, !noalias !9934, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9934
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 16, !range !272, !noalias !9934, !noundef !5
  %i.ic = trunc nuw i32 %i.ib to i1
  br i1 %i.ic, label %.invoke547.i, label %bb.dj, !prof !64

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9934
  store i64 14, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.id, align 8, !alias.scope !9927, !noalias !9960
  br label %bb.ec

bb.dj:                                            ; preds = %bb.dh
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store i128 %i.hz, ptr %i.ie, align 16, !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9934
  store ptr %.sroa.7475.0.copyload.i, ptr %i.e, align 8, !noalias !10005
  %.sroa.0.0.copyload.i427.i = load i32, ptr %.sroa.7475.0.copyload.i, align 8, !noalias !10008
  switch i32 %.sroa.0.0.copyload.i427.i, label %bb.dk [
    i32 0, label %bb.dl
    i32 1, label %bb.dl
    i32 2, label %bb.dl
    i32 3, label %bb.dl
    i32 4, label %bb.dl
    i32 5, label %bb.dn
    i32 6, label %bb.dm
    i32 7, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  unreachable

bb.dl:                                            ; preds = %bb.dj, %bb.dj, %bb.dj, %bb.dj, %bb.dj, %bb.dj
  %i.if = invoke noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef 7)
          to label %.noexc433.i unwind label %bb.cw, !noalias !9927

.noexc433.i:                                      ; preds = %bb.dl
  %spec.select530.i = select i1 %i.if, i64 9, i64 14
  br label %bb.dm

bb.dm:                                            ; preds = %.noexc433.i, %bb.dj
  %.sroa.5479.0.ph.i = phi i64 [ %spec.select530.i, %.noexc433.i ], [ 7, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9934
  store i64 %.sroa.5479.0.ph.i, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9934
  br label %bb.ec

bb.dn:                                            ; preds = %bb.dj
  %.sroa.5.0..sroa_idx.i429.i = getelementptr inbounds nuw i8, ptr %.sroa.7475.0.copyload.i, i64 16
  %.sroa.5.0.copyload.i430.i = load ptr, ptr %.sroa.5.0..sroa_idx.i429.i, align 8, !noalias !10008, !nonnull !5, !noundef !5
  %.sroa.41.0..sroa_idx.i431.i = getelementptr inbounds nuw i8, ptr %.sroa.7475.0.copyload.i, i64 8
  %.sroa.41.0.copyload.i432.i = load ptr, ptr %.sroa.41.0..sroa_idx.i431.i, align 8, !noalias !10008, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9934
  call void @llvm.experimental.noalias.scope.decl(metadata !10009)
  call void @llvm.experimental.noalias.scope.decl(metadata !10012)
  %i.ig = load ptr, ptr %i.ce, align 8, !alias.scope !10014, !noalias !10015, !nonnull !5, !noundef !5
  store ptr %i.ig, ptr %i.y, align 8, !alias.scope !10009, !noalias !10016
  %i.ih = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ii = load <2 x i32>, ptr %i.ch, align 8, !alias.scope !10014, !noalias !10015
  store <2 x i32> %i.ii, ptr %i.ih, align 8, !alias.scope !10009, !noalias !10016
  invoke fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB2_10ValueConst11try_to_bits(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.z, ptr noundef nonnull %.sroa.41.0.copyload.i432.i, ptr noundef nonnull %.sroa.5.0.copyload.i430.i, ptr noundef nonnull %1, ptr %i.hb, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.y)
          to label %bb.do unwind label %bb.cw, !noalias !9927

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9934
  %i.ij = load i128, ptr %i.z, align 16, !range !8489, !noalias !9934, !noundef !5
  %i.ik = trunc nuw i128 %i.ij to i1
  br i1 %i.ik, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.il = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.im = load i128, ptr %i.il, align 16, !noalias !9934, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9934
  %i.in = load i32, ptr %i.ia, align 16, !range !272, !noalias !9934, !noundef !5
  %i.io = trunc nuw i32 %i.in to i1
  br i1 %i.io, label %.invoke547.i, label %bb.dr, !prof !64

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9934
  store i64 14, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ip, align 8, !alias.scope !9927, !noalias !9960
  br label %bb.ec

bb.dr:                                            ; preds = %bb.dp
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i128 %i.im, ptr %i.iq, align 16, !noalias !9934
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  %.sroa.0237.0.copyload.i = load i8, ptr %i.ir, align 4, !noalias !9934
  %.sroa.6242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 22
  %.sroa.6242.0.copyload.i = load i8, ptr %.sroa.6242.0..sroa_idx.i, align 2, !noalias !9934
  %i.is = icmp eq i8 %.sroa.0237.0.copyload.i, 0
  %i.it = trunc nuw i8 %.sroa.6242.0.copyload.i to i1
  %or.cond.i = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond.i, label %bb.ds, label %bb.dy

bb.ds:                                            ; preds = %bb.dr
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ag, i64 320
  %i.iv = load i64, ptr %i.iu, align 16, !noalias !9934, !noundef !5 ; 3 uses
  %i.iw = load i128, ptr %i.ie, align 16, !noalias !9934, !noundef !5 ; 3 uses
  %4 = shl i64 %i.iv, 3                           ; 2 uses
  %i.ix = icmp ugt i64 %i.iv, 2305843009213693951
  br i1 %i.ix, label %bb.du, label %bb.dt, !prof !64

bb.dt:                                            ; preds = %bb.ds
  %i.iy = icmp eq i64 %4, 0
  br i1 %i.iy, label %bb.ea, label %bb.dv

bb.du:                                            ; preds = %bb.ds
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.iv) #51
          to label %bb.dx unwind label %bb.cw, !noalias !9927

bb.dv:                                            ; preds = %bb.dt
  %5 = sub i64 0, %4
  %i.iz = and i64 %5, 120
  %i.ja = zext nneg i64 %i.iz to i128             ; 2 uses
  %i.jb = shl i128 %i.iw, %i.ja
  %i.jc = shl i128 %i.im, %i.ja
  %i.jd = icmp slt i128 %i.jc, %i.jb
  br i1 %i.jd, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  store i64 8, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  br label %bb.ec

bb.dx:                                            ; preds = %bb.ew, %bb.es, %bb.ee, %bb.du
  unreachable

bb.dy:                                            ; preds = %bb.dr
  %i.je = load i128, ptr %i.ie, align 16, !noalias !9934, !noundef !5 ; 2 uses
  %i.jf = icmp ult i128 %i.im, %i.je
  br i1 %i.jf, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i64 8, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy, %bb.dv, %bb.dt
  %i.jg = phi i128 [ %i.je, %bb.dy ], [ %i.iw, %bb.dv ], [ %i.iw, %bb.dt ]
  %.sroa.0139.0.copyload.i = load i64, ptr %i.ir, align 4, !noalias !9934
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i128 %i.jg, ptr %i.jh, align 16, !noalias !9934
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i128 %i.im, ptr %.sroa.4142.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store i64 0, ptr %.sroa.5143.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.6144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store i64 %.sroa.0139.0.copyload.i, ptr %.sroa.6144.0..sroa_idx.i, align 8, !noalias !9934
  br label %bb.eb

bb.eb:                                            ; preds = %bb.fe, %bb.ey, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9934
  store i64 0, ptr %i.p, align 8, !noalias !9934
  %.sroa.4298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %.sroa.4298.0..sroa_idx.i, align 8, !noalias !9934
  %.sroa.5299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5299.0..sroa_idx.i, align 8, !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9934
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEINtB4_18SpecFromIterNestedB13_INtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.fg unwind label %bb.cw, !noalias !9927

bb.ec:                                            ; preds = %bb.ez, %bb.dz, %bb.dw, %bb.dq, %bb.dm, %bb.di, %bb.de
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_(ptr noalias nofree noundef align 16 dereferenceable(352) %i.ag)
          to label %bb.fa unwind label %bb.h, !noalias !9927

bb.ed:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5473.0.copyload.i) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.5473.0.copyload.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !9927, !noundef !5 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.5473.0.copyload.i, i64 16 ; 3 uses
  %.not371.i = icmp eq i64 %i.jj, 0
  br i1 %.not371.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #51
          to label %bb.dx unwind label %bb.cw, !noalias !9927

bb.ef:                                            ; preds = %bb.ed
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !9927, !nonnull !5, !noundef !5
  %.sroa.0482.0.copyload.i = load i64, ptr %i.jl, align 8, !noalias !9927
  switch i64 %.sroa.0482.0.copyload.i, label %default.unreachable.i [
    i64 0, label %bb.eg
    i64 1, label %.invoke547.i
    i64 2, label %bb.eh
  ], !prof !10017

bb.eg:                                            ; preds = %bb.ef
  %i.jm = load i32, ptr %i.ag, align 16, !range !9992, !noalias !9934, !noundef !5 ; 2 uses
  %i.jn = icmp ne i32 %i.jm, 3
  call void @llvm.assume(i1 %i.jn)
  %i.jo = icmp eq i32 %i.jm, 2
  br i1 %i.jo, label %bb.ej, label %bb.ei, !prof !8

bb.eh:                                            ; preds = %bb.ef
  br label %.invoke547.i

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9934
  store ptr %i.ah, ptr %i.s, align 8, !noalias !9934
  %.sroa.4285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4285.0..sroa_idx.i, align 8, !noalias !9934
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ag, ptr %i.jp, align 8, !noalias !9934
  %.sroa.4289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXsx_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtBT_19RustcEnumVariantIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBV_, ptr %.sroa.4289.0..sroa_idx.i, align 8, !noalias !9934
  br label %.invoke547.i

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9934
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jj
  store ptr %i.jk, ptr %i.u, align 8, !noalias !9934
  %i.jr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.jq, ptr %i.jr, align 8, !noalias !9934
  %i.js = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %1, ptr %i.js, align 8, !noalias !9934
  %.sroa.4159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %2, ptr %.sroa.4159.0..sroa_idx.i, align 8, !noalias !9934
  %.sroa.5160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ce, ptr %.sroa.5160.0..sroa_idx.i, align 8, !noalias !9934
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6copied6CopiedINtNtNtB6_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENCNvNvXs0_NvNtB1Y_6layout1__NtB2Z_33layout_of_ty_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0ETooEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB31_11LayoutErrorENCINvXso_B59_IB57_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB52_EB5T_EINtNtNtB4_6traits7collect12FromIteratorIB57_B52_B5T_EE9from_iterBQ_E0B6v_EB1Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.u)
          to label %bb.ek unwind label %bb.cw, !noalias !9927

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9934
  %i.jt = load i64, ptr %i.v, align 8, !range !624, !noalias !9934, !noundef !5 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, -1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !9934 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !noalias !9934 ; 3 uses
  br i1 %i.ju, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i64 %i.jw, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jy, ptr %i.jz, align 8, !alias.scope !9927, !noalias !9960
  br label %bb.ez

bb.em:                                            ; preds = %bb.ek
  store i64 %i.jt, ptr %i.t, align 8, !noalias !9934
  %.sroa.4170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 %i.jw, ptr %.sroa.4170.0..sroa_idx.i, align 8, !noalias !9934
  %.sroa.5171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %i.jy, ptr %.sroa.5171.0..sroa_idx.i, align 8, !noalias !9934
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  %.sroa.0270.0.copyload.i = load i8, ptr %i.kb, align 4, !noalias !9934
  %.sroa.6275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 22
  %.sroa.6275.0.copyload.i = load i8, ptr %.sroa.6275.0..sroa_idx.i, align 2, !noalias !9934
  %i.kc = icmp eq i8 %.sroa.0270.0.copyload.i, 0
  %i.kd = trunc nuw i8 %.sroa.6275.0.copyload.i to i1
  %or.cond390.i = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %or.cond390.i, label %bb.en, label %.thread523.i

bb.en:                                            ; preds = %bb.em
  %i.ke = inttoptr i64 %i.jw to ptr
  invoke fastcc void @_RINvNtCsbSS6DM8SDEO_5alloc5slice11stable_sortTooENvYBH_NtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.ke, i64 noundef %i.jy)
          to label %bb.ep unwind label %bb.eo, !noalias !9927

bb.eo:                                            ; preds = %bb.ew, %bb.es, %bb.en
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTooEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #49
          to label %bb.cv unwind label %bb.ca, !noalias !9927

bb.ep:                                            ; preds = %bb.en
  %i.kg = load i64, ptr %.sroa.5171.0..sroa_idx.i, align 8, !noalias !9934, !noundef !5 ; 2 uses
  %i.kh = icmp ult i64 %i.kg, 288230376151711744
  call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp eq i64 %i.kg, 2
  br i1 %i.ki, label %bb.eq, label %.thread523.i

bb.eq:                                            ; preds = %bb.ep
  %i.kj = load ptr, ptr %.sroa.4170.0..sroa_idx.i, align 8, !noalias !9934, !nonnull !5, !noundef !5 ; 4 uses
  %i.kk = load i128, ptr %i.kj, align 16, !noalias !9927, !noundef !5
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.km = load i128, ptr %i.kl, align 16, !noalias !9927, !noundef !5 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.ko = load i128, ptr %i.kn, align 16, !noalias !9927, !noundef !5 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 48
  %i.kq = load i128, ptr %i.kp, align 16, !noalias !9927, !noundef !5 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ag, i64 320
  %i.ks = load i64, ptr %i.kr, align 16, !noalias !9934, !noundef !5 ; 4 uses
  %i.kt = shl i64 %i.ks, 3                        ; 3 uses
  %i.ku = icmp ugt i64 %i.ks, 2305843009213693951
  br i1 %i.ku, label %bb.es, label %bb.er, !prof !64

bb.er:                                            ; preds = %bb.eq
  %i.kv = icmp eq i64 %i.kt, 0
  br i1 %i.kv, label %.thread523.i, label %bb.et

bb.es:                                            ; preds = %bb.eq
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.ks) #51
          to label %bb.dx unwind label %bb.eo, !noalias !9927

bb.et:                                            ; preds = %bb.er
  %i.kw = add i64 %i.kt, 127
  %i.kx = and i64 %i.kw, 127
  %i.ky = zext nneg i64 %i.kx to i128
  %i.kz = shl nuw i128 1, %i.ky
  %i.la = sub i64 0, %i.kt
  %i.lb = and i64 %i.la, 120
  %i.lc = zext nneg i64 %i.lb to i128             ; 5 uses
  %i.ld = shl i128 %i.kz, %i.lc
  %i.le = ashr exact i128 %i.ld, %i.lc
  %i.lf = lshr i128 -1, %i.lc
  %i.lg = and i128 %i.le, %i.lf
  %i.lh = icmp eq i128 %i.ko, %i.lg               ; 3 uses
  %..i = select i1 %i.lh, i128 %i.kq, i128 %i.km  ; 3 uses
  %.387.i = select i1 %i.lh, i128 %i.kk, i128 %i.ko ; 3 uses
  %i.li = shl i128 %..i, %i.lc
  %i.lj = shl i128 %.387.i, %i.lc
  %.not373.i = icmp slt i128 %i.li, %i.lj
  br i1 %.not373.i, label %bb.eu, label %.thread523.i

bb.eu:                                            ; preds = %bb.et
  %.388.i = select i1 %i.lh, i128 %i.km, i128 %i.kq
  %.neg.i = mul i64 %i.ks, 120
  %i.lk = and i64 %.neg.i, 120
  %i.ll = zext nneg i64 %i.lk to i128
  %i.lm = lshr i128 170141183460469231731687303715884105727, %i.ll
  %.not374.i = icmp eq i128 %i.lm, %.388.i
  br i1 %.not374.i, label %bb.ev, label %.thread523.i

bb.ev:                                            ; preds = %bb.eu
  %i.ln = load i32, ptr %i.ka, align 16, !range !272, !noalias !9934, !noundef !5
  %i.lo = trunc nuw i32 %i.ln to i1
  br i1 %i.lo, label %bb.ew, label %bb.ex, !prof !64

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @672, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @673) #51
          to label %bb.dx unwind label %bb.eo, !noalias !9927

bb.ex:                                            ; preds = %bb.ev
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i128 %.387.i, ptr %i.lp, align 16, !noalias !9934
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i128 %..i, ptr %i.lq, align 16, !noalias !9934
  %.sroa.0189.0.copyload.i = load i64, ptr %i.kb, align 4, !noalias !9934
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i128 %.387.i, ptr %i.lr, align 16, !noalias !9934
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i128 %..i, ptr %.sroa.4192.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store i64 0, ptr %.sroa.5193.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.6194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store i64 %.sroa.0189.0.copyload.i, ptr %.sroa.6194.0..sroa_idx.i, align 8, !noalias !9934
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTooEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.ey unwind label %bb.cw, !noalias !9927

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9934
  br label %bb.eb

.thread523.i:                                     ; preds = %bb.eu, %bb.et, %bb.er, %bb.ep, %bb.em
  store i64 8, ptr %0, align 8, !alias.scope !9927, !noalias !9960
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTooEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t)
          to label %bb.ez unwind label %bb.cw, !noalias !9927

bb.ez:                                            ; preds = %.thread523.i, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9934
  br label %bb.ec

bb.fa:                                            ; preds = %bb.ec, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9934
  br label %bb.bn

bb.fb:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9934
  store ptr %i.ah, ptr %i.w, align 8, !noalias !9934
  %.sroa.4262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4262.0..sroa_idx.i, align 8, !noalias !9934
  %i.ls = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ag, ptr %i.ls, align 8, !noalias !9934
  %.sroa.4266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXsx_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtBT_19RustcEnumVariantIdxENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBV_, ptr %.sroa.4266.0..sroa_idx.i, align 8, !noalias !9934
  br label %.invoke547.i

bb.fc:                                            ; preds = %bb.cz
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.pre.i = load i32, ptr %i.lt, align 16, !range !272, !noalias !9934
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.cz
  %i.lu = phi i32 [ %.pre.i, %bb.fc ], [ %i.hn, %bb.cz ]
  %.sroa.0145.0.i = phi ptr [ %i.lt, %bb.fc ], [ %i.ag, %bb.cz ] ; 3 uses
  %i.lv = trunc nuw i32 %i.lu to i1
  br i1 %i.lv, label %.invoke547.i, label %bb.fe, !prof !64

.invoke547.i:                                     ; preds = %bb.fd, %bb.fb, %bb.ei, %bb.eh, %bb.ef, %bb.dp, %bb.dh, %bb.dd
  %i.lw = phi ptr [ @678, %bb.ef ], [ @682, %bb.fb ], [ @674, %bb.ei ], [ @680, %bb.eh ], [ @672, %bb.dp ], [ @672, %bb.dh ], [ @674, %bb.dd ], [ @672, %bb.fd ]
  %i.lx = phi ptr [ inttoptr (i64 79 to ptr), %bb.ef ], [ %i.w, %bb.fb ], [ %i.s, %bb.ei ], [ inttoptr (i64 85 to ptr), %bb.eh ], [ inttoptr (i64 81 to ptr), %bb.dp ], [ inttoptr (i64 81 to ptr), %bb.dh ], [ %i.x, %bb.dd ], [ inttoptr (i64 81 to ptr), %bb.fd ]
  %i.ly = phi ptr [ @679, %bb.ef ], [ @683, %bb.fb ], [ @677, %bb.ei ], [ @681, %bb.eh ], [ @673, %bb.dp ], [ @673, %bb.dh ], [ @675, %bb.dd ], [ @673, %bb.fd ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.lx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ly) #51
          to label %.cont548.i unwind label %bb.cw, !noalias !9927

.cont548.i:                                       ; preds = %.invoke547.i
  unreachable

bb.fe:                                            ; preds = %bb.fd
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 16
  store i128 1, ptr %i.lz, align 16, !noalias !9934
  %.sroa.0152.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 4
  %.sroa.0152.0.i = load i64, ptr %.sroa.0152.0.in.i, align 4, !noalias !9934
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.i, i64 32
  %i.mb = load i128, ptr %i.ma, align 16, !noalias !9934, !noundef !5
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i128 1, ptr %i.mc, align 16, !noalias !9934
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i128 %i.mb, ptr %.sroa.4155.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store i64 0, ptr %.sroa.5156.0..sroa_idx.i, align 16, !noalias !9934
  %.sroa.6157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store i64 %.sroa.0152.0.i, ptr %.sroa.6157.0..sroa_idx.i, align 8, !noalias !9934
  br label %bb.eb

bb.ff:                                            ; preds = %bb.fg
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #49
          to label %bb.cv unwind label %bb.ca, !noalias !9927

bb.fg:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9934
  store i64 0, ptr %i.o, align 8, !noalias !9934
  %.sroa.4310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %.sroa.4310.0..sroa_idx.i, align 8, !noalias !9934
  %.sroa.5311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 0, ptr %.sroa.5311.0..sroa_idx.i, align 8, !noalias !9934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9934
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEINtB4_18SpecFromIterNestedB13_INtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterB13_Kj1_EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.fh unwind label %bb.ff, !noalias !9927

bb.fh:                                            ; preds = %bb.fg
  %i.me = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9934
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEEB1p_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.mf)
          to label %bb.fj unwind label %bb.fi, !noalias !9927

bb.fi:                                            ; preds = %bb.fh
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.mf, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !9934
  br label %bb.cv

bb.fj:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.mf, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.ap, ptr noundef nonnull align 16 dereferenceable(352) %i.ag, i64 352, i1 false), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9934
  br label %bb.aj

bb.fk:                                            ; preds = %bb.cn
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.body.i unwind label %bb.ca, !noalias !9927

bb.fl:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !9934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !9935
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.mj = load ptr, ptr %i.mi, align 8, !invariant.load !5, !alias.scope !9930, !noalias !9936, !nonnull !5
  invoke void %i.mj(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.av, ptr noundef nonnull %1, ptr noundef nonnull %i.dp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.au)
          to label %bb.fm unwind label %bb.h, !noalias !9927

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !9934
  %i.mk = load i64, ptr %i.av, align 8, !range !7417, !noalias !9934, !noundef !5 ; 2 uses
  %.not368.i = icmp eq i64 %i.mk, -1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  br i1 %.not368.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.mm = load i64, ptr %i.ml, align 8, !noalias !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !9934
  store i64 %i.mk, ptr %0, align 8, !alias.scope !9927, !noalias !9960
end_hunk_3
