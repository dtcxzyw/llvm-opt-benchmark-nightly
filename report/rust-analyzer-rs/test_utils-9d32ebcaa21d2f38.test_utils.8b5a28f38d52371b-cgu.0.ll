Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.0?download=true
inline.NumInlined: 281
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore11source_code:bb.a
  %i.us = icmp ule i64 %i.um, %i.up
  call void @llvm.assume(i1 %i.us)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not155 = icmp eq i64 %i.um, 0
  br i1 %.not155, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %bb.fk, %bb.ff
  store i64 %i.up, ptr %i.bd, align 8
  store ptr %i.ur, ptr %.sroa.483.0..sroa_idx, align 8
  store i64 %i.um, ptr %.sroa.684.0..sroa_idx, align 8
  %i.ut = load i64, ptr %i.du, align 8, !alias.scope !585, !noalias !588, !noundef !5 ; 3 uses
  %i.uu = load i64, ptr %i.dr, align 8, !range !139, !alias.scope !585, !noalias !588, !noundef !5
  %i.uv = icmp eq i64 %i.ut, %i.uu
  br i1 %i.uv, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.fl unwind label %bb.fi, !noalias !588

bb.fi:                                            ; preds = %bb.fh
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd) #19
          to label %.body229 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.fk:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ur, ptr align 1 %i.ul, i64 %i.um, i1 false)
  br label %bb.fg

bb.fl:                                            ; preds = %bb.fh, %bb.fg
  %i.uy = load ptr, ptr %i.dv, align 8, !alias.scope !585, !noalias !588, !nonnull !5, !noundef !5
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.ut
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.va = add i64 %i.ut, 1
  store i64 %i.va, ptr %i.du, align 8, !alias.scope !585, !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uj, i64 noundef %i.ui, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 2)
          to label %bb.fm unwind label %.loopexit.split-lp445.loopexit.split-lp.loopexit

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  store ptr %i.ul, ptr %i.dw, align 8, !alias.scope !596, !noalias !599
  store i64 %i.um, ptr %i.dx, align 8, !alias.scope !596, !noalias !599
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !602, !noalias !603
  store i64 %i.ui, ptr %.sroa.5391.0..sroa_idx, align 8, !alias.scope !602, !noalias !603
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !602, !noalias !603
  store i8 0, ptr %.sroa.7392.0..sroa_idx, align 1, !alias.scope !602, !noalias !603
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !alias.scope !596, !noalias !599
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTReBH_EE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtB1d_7sources6repeat6RepeatBH_EINtNtB1b_6filter6FilterINtNtB1b_3map3MapINtNtNtB1f_3str4iter5SplitBH_ENvMB3e_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB3Y_8MiniCore11source_codes0_0EEEB40_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.bc)
          to label %bb.fn unwind label %.loopexit.split-lp445.loopexit.split-lp.loopexit

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.pre = load i64, ptr %i.be, align 8
  br label %bb.aa

bb.fo:                                            ; preds = %bb.x
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i385 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.vb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body184 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i385: ; preds = %bb.fo
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body179 unwind label %bb.ez

bb.fr:                                            ; preds = %.body
  resume { ptr, i32 } %.pn163.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore15available_flags(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 65), (72, 74), (80, 81)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.sroa.4.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4.sroa.0.sroa.5.sroa.4.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.sroa.5.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.4.sroa.0.sroa.5.sroa.5.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.sroa.6.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %.sroa.4.sroa.0.sroa.5.sroa.6.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.sroa.7.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 10, ptr %.sroa.4.sroa.0.sroa.5.sroa.7.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.sroa.8.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 10, ptr %.sroa.4.sroa.0.sroa.5.sroa.8.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.0.sroa.5.sroa.9.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %.sroa.4.sroa.0.sroa.5.sroa.9.0..sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %.sroa.4.sroa.0.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %.sroa.4.sroa.0.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtBV_8MiniCore11source_codes0_0INtB7_5FnMutTRReEE8call_mutBX_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBP_6string6StringEENtNtB7_3fmt5Debug3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 6) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.r, %bb.b, %bb.t, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dt, %bb.t ], [ %i.dr, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.r ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.t, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.g = load i8, ptr %0, align 1, !alias.scope !604, !noalias !607, !noundef !5 ; 6 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 6) %1, i64 4) ; 5 uses
  %4 = icmp samesign ult i64 %i.i, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp ult i64 %i.i, %7
  br i1 %i.j, label %.lr.ph.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !604, !noalias !609, !noundef !5 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.1
  %i.n = icmp ult i64 %i.i, %i.k
  br i1 %i.n, label %.lr.ph.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.o = add nsw i64 %1, -3                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !604, !noalias !609, !noundef !5 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.2
  %i.r = icmp ult i64 %i.i, %i.o
  br i1 %i.r, label %.lr.ph.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.s = add nsw i64 %1, -4                       ; 4 uses
  %i.t = icmp samesign ugt i64 %1, 3
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3, label %bb.h

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3: ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !604, !noalias !609, !noundef !5 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.v, %i.g
  br i1 %.not.i.not.i.i.3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3
  %i.w = icmp ult i64 %i.i, %i.s
  br i1 %i.w, label %.lr.ph.4, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.g
  %i.x = add nsw i64 %1, -5                       ; 3 uses
  %.not = icmp eq i64 %1, 4
  br i1 %.not, label %bb.h, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4: ; preds = %.lr.ph.4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %6 = load i8, ptr %5, align 1, !alias.scope !604, !noalias !609, !noundef !5 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %6, %i.g
  br i1 %.not.i.not.i.i.4, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit, label %bb.i

.lr.ph:                                           ; preds = %bb.c
  %7 = add nsw i64 %1, -1                         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !604, !noalias !609, !noundef !5 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.z, %i.g
  br i1 %.not.i.not.i.i.a, label %bb.d, label %bb.i

bb.h:                                             ; preds = %.lr.ph.4, %.lr.ph.3
  %.lcssa39 = phi i64 [ %i.x, %.lr.ph.4 ], [ %i.s, %.lr.ph.3 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef range(i64 3, 6) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !617
  unreachable

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa42 = phi i8 [ %i.z, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3 ], [ %6, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4 ]
  %.lcssa40 = phi i64 [ %7, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3 ], [ %i.x, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4 ] ; 6 uses
  %i.aa = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.ab = icmp ult i64 %3, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %bb.j

.lr.ph.split.us.i.i:                              ; preds = %bb.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 6) %1), !alias.scope !618, !noalias !619
  %i.ac = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ac, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ad = add nsw i64 %3, -1                      ; 2 uses
  %.not27.i.i35 = icmp ugt i64 %1, %i.ad
  br i1 %.not27.i.i35, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i
  %i.ae = phi i64 [ %i.ah, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader ]
  %.pn.i36 = phi ptr [ %i.af, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 6) %1), !alias.scope !618, !noalias !619
  %i.ag = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ag, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ah = add nsw i64 %i.ae, -1                   ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ah
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ak = insertelement <16 x i8> poison, i8 %.lcssa42, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !618
  store ptr %2, ptr %i.a, align 8, !noalias !618
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.an, align 8, !noalias !618
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !noalias !618
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ap, align 8, !noalias !618
  %i.aq = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aq, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %bb.j
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.j ], [ %.sroa.014.2.3.i, %bb.n ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.j ], [ %i.cl, %bb.n ] ; 2 uses
  %i.ar = add i64 %.sroa.06.0.lcssa.i, %i.aa
  %i.as = icmp uge i64 %i.ar, %3
  %i.at = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.n
  %.sroa.06.097.i = phi i64 [ %i.cl, %bb.n ], [ 0, %bb.j ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !607, !noalias !623
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.lcssa40
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !607, !noalias !623
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.aj
  %i.ax = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.al
  %i.ay = and <16 x i1> %i.aw, %i.ax
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !607, !noalias !623
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.lcssa40
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !607, !noalias !623
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.aj
  %i.bd = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.al
  %i.be = and <16 x i1> %i.bc, %i.bd
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !607, !noalias !623
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.lcssa40
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !607, !noalias !623
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.aj
  %i.bj = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.al
  %i.bk = and <16 x i1> %i.bi, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !607, !noalias !623
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.lcssa40
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !607, !noalias !623
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.aj
  %i.bp = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.al
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %i.bs = icmp eq i16 %i.az, 0
  br i1 %i.bs, label %.preheader90.1.i, label %bb.o

.preheader90.1.i:                                 ; preds = %bb.o, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cq, %bb.o ] ; 3 uses
  %i.bt = icmp eq i16 %i.bf, 0
  br i1 %i.bt, label %.preheader90.2.i, label %bb.k

bb.k:                                             ; preds = %.preheader90.1.i
  %i.bu = or disjoint i64 %.sroa.06.097.i, 16
  %i.bv = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bu, i16 noundef %i.bf, i1 noundef zeroext %i.bv) #21
  %i.bx = zext i1 %i.bw to i8
  %i.by = or i8 %.sroa.014.2.i, %i.bx
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.k, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.by, %bb.k ] ; 3 uses
  %i.bz = icmp eq i16 %i.bl, 0
  br i1 %i.bz, label %.preheader90.3.i, label %bb.l

bb.l:                                             ; preds = %.preheader90.2.i
  %i.ca = or disjoint i64 %.sroa.06.097.i, 32
  %i.cb = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ca, i16 noundef %i.bl, i1 noundef zeroext %i.cb) #21
  %i.cd = zext i1 %i.cc to i8
  %i.ce = or i8 %.sroa.014.2.1.i, %i.cd
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.l, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.ce, %bb.l ] ; 3 uses
  %i.cf = icmp eq i16 %i.br, 0
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader90.3.i
  %i.cg = or disjoint i64 %.sroa.06.097.i, 48
  %i.ch = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cg, i16 noundef %i.br, i1 noundef zeroext %i.ch) #21
  %i.cj = zext i1 %i.ci to i8
  %i.ck = or i8 %.sroa.014.2.2.i, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.ck, %bb.m ] ; 2 uses
  %i.cl = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.cm = add i64 %i.cl, %i.aq
  %i.cn = icmp uge i64 %i.cm, %3
  %i.co = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.cp = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.az, i1 noundef zeroext false) #21
  %i.cq = zext i1 %i.cp to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.p, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.p ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.at, %.preheader.i ], [ %i.dk, %bb.p ]
  %i.cr = sub nuw i64 %3, %i.h
  %i.cs = add i64 %i.cr, -16                      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !607, !noalias !626
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.lcssa40
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !607, !noalias !626
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.aj
  %i.cw = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.al
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.r, label %bb.s

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.p
  %.sroa.06.1100.i = phi i64 [ %i.dh, %bb.p ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !607, !noalias !629
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.lcssa40
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.db, align 1, !alias.scope !607, !noalias !629
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.aj
  %i.dd = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.al
  %i.de = and <16 x i1> %i.dc, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.dm, %bb.q ] ; 2 uses
  %i.dh = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.di = add i64 %i.dh, %i.aa
  %i.dj = icmp uge i64 %i.di, %3
  %i.dk = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dj, %i.dk
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.q:                                             ; preds = %.lr.ph101.i
  %i.dl = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.df, i1 noundef zeroext false) #21
  %i.dm = zext i1 %i.dl to i8
  br label %bb.p

bb.r:                                             ; preds = %bb.s, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dp, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !618
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.s:                                             ; preds = %._crit_edge.i
  %i.dn = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cs, i16 noundef %i.cy, i1 noundef zeroext %.lcssa.i) #21
  %i.do = zext i1 %i.dn to i8
  %i.dp = or i8 %.sroa.014.3.lcssa.i, %i.do
  br label %bb.r

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.4, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #21
  %i.dq = load i64, ptr %i.c, align 8, !range !32, !noundef !5
  %i.dr = trunc nuw nsw i64 %i.dq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.t:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ds = icmp eq i32 %bcmp, 0
  %i.dt = zext i1 %i.ds to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !32, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !21, !alias.scope !632, !noalias !635, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !632, !noalias !635, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !632, !noalias !635, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !632, !noalias !635 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !639, !noalias !642, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !643, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !643, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !643, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !643, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !637, !noalias !635
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !639, !noalias !646, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !647, !noundef !5 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !647, !noundef !5
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
end_hunk_0
