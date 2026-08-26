Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.10?download=true
inline.NumInlined: 548
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNvMNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_testsNtB5_6Assist7collect10take_untilQINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtNtB1A_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEEEB9_:bb.a
  br i1 %i.cs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !771, !nonnull !5, !noundef !5
  %i.ct = mul nuw i64 %.val.i, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !775
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit

common.resume:                                    ; preds = %.body, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.t ], [ %i.cp, %bb.u ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.x:                                             ; preds = %.body
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !72, !alias.scope !778, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !778
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !778
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !778
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !778, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !781, !noalias !778, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !778
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !778, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !778
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !778
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !778
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorReE9from_iterNtNtNtBU_3str4iter15SplitWhitespaceECslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCshzWfHUSfYae_4core3str4iter15SplitWhitespaceNtB5_13SpecExtendStr16spec_extend_intoCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcENCNvB4g_14generate_nodess4_0EEB4k_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapRNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2o_8adapters3map3MapIB3p_INtNtNtB2q_5slice4iter4IterNtNtNtNtCslkzCjlEuW1f_5xtask7codegen7grammar7ast_src10AstNodeSrcENCNvB4q_14generate_nodess4_0ENCINvXs8_NtB9_3setINtB61_7HashSetBP_B1t_EIB2i_BP_E6extendB3Q_E0EEB4u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !787 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !787 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !787 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !787 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us.preheader, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !5
  %i.t = load i8, ptr %i.r, align 1, !noundef !5
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCslkzCjlEuW1f_5xtask.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !782, !noalias !785
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !785, !noalias !782
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !782, !noalias !785
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !785, !noalias !782
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNSNvYNCNvMsd_NtCs8yNfvVM1dno_3zip5writeINtBc_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE19prepare_next_writer0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtBc_14MaybeEncryptedB10_EEE9call_once6vtableCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 80)) %0, ptr nofree readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !791, !noalias !788
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !793
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMsd_NtCs8yNfvVM1dno_3zip5writeINtBc_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE19prepare_next_writers_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtBc_14MaybeEncryptedB10_EEE9call_once6vtableCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !noundef !5
  tail call void @_RNvMNtNtCs4kAYYQhXmKb_6flate27deflate5writeINtB2_14DeflateEncoderINtNtCs8yNfvVM1dno_3zip5write14MaybeEncryptedINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEEE3newCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintE14swap_uncheckedB1d_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBz_3vec3VecBv_EEE14swap_uncheckedB1e_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs0_NtCslkzCjlEuW1f_5xtask4distNtB5_5Patch7replace(ptr noalias nofree noundef nonnull returned align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = tail call fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #33
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs3_NtCsbSS6DM8SDEO_5alloc3stre7replaceReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #33
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !794 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i, 0
  br i1 %i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !802
  br label %.body

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !794 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !805
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit

.body:                                            ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  resume { ptr, i32 } %i.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !808 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !814
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !814
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !814
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !814, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCslkzCjlEuW1f_5xtask.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !781, !noalias !814, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  br label %bb.f

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !814, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !814
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !814
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #30
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCslkzCjlEuW1f_5xtask.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
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
end_hunk_0
begin_hunk_1_@_RNvNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests8generate:bb.a
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1404, !nonnull !5, !noundef !5 ; 4 uses
  %i.ce = load i64, ptr %i.z, align 8, !range !72, !noalias !1404, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !1404, !noundef !5 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 384307168202282326
  call void @llvm.assume(i1 %i.ch)
  %.idx.i = mul nuw nsw i64 %i.cg, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1404
  store ptr %i.cd, ptr %i.y, align 8, !noalias !1404
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1404
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1404
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.ci, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.thread.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i: ; preds = %bb.q
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.621.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i

.body23.i.sink.split:                             ; preds = %bb.ds, %bb.dq
  %.val.i.i.i.i131.sink = phi i64 [ %.val.i.i.i.i131, %bb.dq ], [ %.val2.i.i.i.i18.i, %bb.ds ]
  %.pn.i.ph = phi { ptr, i32 } [ %eh.lpad-body7.i, %bb.dq ], [ %i.mf, %bb.ds ]
  %.val1.i.i.i.i132 = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1404, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i132, i64 noundef %.val.i.i.i.i131.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1404
  br label %.body23.i

.body23.i:                                        ; preds = %.body23.i.sink.split, %bb.dq, %bb.ds
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body7.i, %bb.dq ], [ %i.mf, %bb.ds ], [ %.pn.i.ph, %.body23.i.sink.split ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.dv, !noalias !1404

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit25.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i
  %i.dg = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i ], [ %i.fy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit25.i ] ; 3 uses
  %i.dh = phi i64 [ 0, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i ], [ %i.fz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit25.i ] ; 3 uses
  %i.di = phi ptr [ %i.cd, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.lr.ph.i ], [ %i.mj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit25.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr %i.dj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1455, !noalias !1458
  %.sroa.0.0.copyload26.i = load i64, ptr %i.di, align 8, !noalias !1460 ; 2 uses
  %.sroa.7.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx27.i, i64 16, i1 false), !noalias !1460
  %.not.i61 = icmp eq i64 %.sroa.0.0.copyload26.i, -1
  br i1 %.not.i61, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscAsMj0W7j8b_3std4path7PathBufENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1404
  store i64 %.sroa.0.0.copyload26.i, ptr %i.x, align 8, !noalias !1404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !1404
  %i.dk = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1404, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = load i64, ptr %i.ck, align 8, !noalias !1404, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1464
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs14read_to_stringRNtNtB4_4path4PathECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dl)
          to label %.noexc.i unwind label %bb.dn, !noalias !1404

.noexc.i:                                         ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.dm = load i64, ptr %i.v, align 8, !range !161, !alias.scope !1469, !noalias !1471, !noundef !5
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %bb.s, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i, !prof !90

bb.s:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1472
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !1469, !noalias !1471, !nonnull !5, !noundef !5
  store ptr %i.dp, ptr %i.c, align 8, !noalias !1472
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #30
          to label %bb.u unwind label %bb.t, !noalias !1473

bb.t:                                             ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %.body6.i unwind label %bb.v, !noalias !1473

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1473
  unreachable

common.resume.sink.split.i.i:                     ; preds = %bb.ag, %bb.y
  %.val.i.i.sink.i.i = phi i64 [ %.val.i.i.i.i, %bb.y ], [ %.val2.i.i57.i.i, %bb.ag ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %.pn50.pn.pn.pn.i.i, %bb.y ], [ %i.ga, %bb.ag ]
  %.val1.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1474
  br label %.body6.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !alias.scope !1475, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1464
  %i.ds = load ptr, ptr %i.cl, align 8, !noalias !1464, !nonnull !5, !noundef !5
  %i.dt = load i64, ptr %i.cm, align 8, !noalias !1464, !noundef !5
  invoke void @_RNvMs_NtCslkzCjlEuW1f_5xtask7codegenNtB4_12CommentBlock7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dt)
          to label %bb.aa unwind label %bb.z, !noalias !1474

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i: ; preds = %.body65.i.i, %bb.z
  %.pn50.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.dx, %bb.z ], [ %.pn50.pn.pn.i.i, %.body65.i.i ] ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.y unwind label %bb.w, !noalias !1474

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1476, !noalias !1464 ; 2 uses
  %i.dv = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dv, label %.body.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val3.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !1483, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1484
  br label %.body.i.i

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1476, !noalias !1464 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.dw, label %.body6.i, label %common.resume.sink.split.i.i

bb.z:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i

bb.aa:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit.i.i
  %i.dy = load ptr, ptr %i.cn, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 4 uses
  %i.dz = load i64, ptr %i.u, align 8, !range !72, !noalias !1464, !noundef !5
  %i.ea = load i64, ptr %i.co, align 8, !noalias !1464, !noundef !5 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 144115188075855872
  call void @llvm.assume(i1 %i.eb)
  %.idx.i.i = shl nuw nsw i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1464
  store ptr %i.dy, ptr %i.t, align 8, !noalias !1464
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1464
  store i64 %i.dz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1464
  store ptr %i.ec, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.ed = icmp eq i64 %i.ea, 0
  br i1 %i.ed, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i

.body65.sink.split.i.i:                           ; preds = %bb.cz, %bb.aw
  %.val.i104.sink.i.i = phi i64 [ %.val2.i.i.i, %bb.aw ], [ %.val.i104.i.i, %bb.cz ]
  %.pn50.pn.pn.ph.i.i = phi { ptr, i32 } [ %i.gw, %bb.aw ], [ %.pn50.pn129.i.i, %bb.cz ]
  %.val1.i105.i.i = load ptr, ptr %i.cs, align 8, !noalias !1464, !nonnull !5, !noundef !5
  %i.ee = mul nuw i64 %.val.i104.sink.i.i, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i105.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1474
  br label %.body65.i.i

.body65.i.i:                                      ; preds = %bb.cz, %bb.aw, %.body65.sink.split.i.i
  %.pn50.pn.pn.i.i = phi { ptr, i32 } [ %i.gw, %bb.aw ], [ %.pn50.pn129.i.i, %bb.cz ], [ %.pn50.pn.pn.ph.i.i, %.body65.sink.split.i.i ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit.i.i unwind label %bb.cr, !noalias !1474

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i: ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i
  %i.ef = phi ptr [ %i.gt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.eg = phi i64 [ %i.gv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ], [ %i.dh, %bb.aa ] ; 4 uses
  %i.eh = phi ptr [ %i.hb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ], [ %i.dy, %bb.aa ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1487, !noalias !1490
  %.sroa.0.0.copyload117.i.i = load i64, ptr %i.eh, align 8, !noalias !1492 ; 2 uses
  %.sroa.7.0..sroa_idx118.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx118.i.i, i64 56, i1 false), !noalias !1492
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload117.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1464
  store i64 %.sroa.0.0.copyload117.i.i, ptr %i.s, align 8, !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, i64 56, i1 false), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1464
  %i.ej = load ptr, ptr %i.cp, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 2 uses
  %i.ek = load i64, ptr %i.cq, align 8, !noalias !1464, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ab
  %i.em = phi ptr [ %i.fv, %bb.af ], [ %i.ej, %bb.ab ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i = icmp eq ptr %i.em, %i.el
  br i1 %.not.i.not.not.not.i.not.i.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.eo = load i8, ptr %i.em, align 1, !noalias !1493, !noundef !5 ; 5 uses
  %i.ep = icmp sgt i8 %i.eo, -1
  br i1 %i.ep, label %bb.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i: ; preds = %bb.ad
  %i.eq = and i8 %i.eo, 31
  %i.er = zext nneg i8 %i.eq to i32               ; 3 uses
  %i.es = icmp ne ptr %i.en, %i.el
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 2 ; 3 uses
  %i.eu = load i8, ptr %i.en, align 1, !noalias !1493, !noundef !5
  %i.ev = shl nuw nsw i32 %i.er, 6
  %i.ew = and i8 %i.eu, 63
  %i.ex = zext nneg i8 %i.ew to i32               ; 2 uses
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = icmp samesign ugt i8 %i.eo, -33
  br i1 %i.ez, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fa = zext nneg i8 %i.eo to i32
  br label %bb.af

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i
  %i.fb = icmp ne ptr %i.et, %i.el
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 3 ; 3 uses
  %i.fd = load i8, ptr %i.et, align 1, !noalias !1493, !noundef !5
  %i.fe = shl nuw nsw i32 %i.ex, 6
  %i.ff = and i8 %i.fd, 63
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fe, %i.fg            ; 2 uses
  %i.fi = shl nuw nsw i32 %i.er, 12
  %i.fj = or disjoint i32 %i.fh, %i.fi
  %i.fk = icmp samesign ugt i8 %i.eo, -17
  br i1 %i.fk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i, label %bb.af

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i
  %i.fl = icmp ne ptr %i.fc, %i.el
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fn = load i8, ptr %i.fc, align 1, !noalias !1493, !noundef !5
  %i.fo = shl nuw nsw i32 %i.er, 18
  %i.fp = and i32 %i.fo, 1835008
  %i.fq = shl nuw nsw i32 %i.fh, 6
  %i.fr = and i8 %i.fn, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = or disjoint i32 %i.ft, %i.fp
  br label %bb.af

bb.af:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i, %bb.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i
  %i.fv = phi ptr [ %i.fc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i ], [ %i.fm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i ], [ %i.et, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i ], [ %i.en, %bb.ae ]
  %spec.select.i.ph.i.i.i = phi i32 [ %i.fj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i ], [ %i.fu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i ], [ %i.ey, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i ], [ %i.fa, %bb.ae ] ; 2 uses
  %i.fw = add nsw i32 %spec.select.i.ph.i.i.i, -123
  %or.cond.i.i.i.i.i = icmp ult i32 %i.fw, -26
  %i.fx = icmp ne i32 %spec.select.i.ph.i.i.i, 95
  %.sroa.0.0.i.not.i.i.i.i = and i1 %i.fx, %or.cond.i.i.i.i.i
  br i1 %.sroa.0.0.i.not.i.i.i.i, label %bb.aj, label %bb.ac

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i, %bb.aa
  %i.fy = phi ptr [ %i.dg, %bb.aa ], [ %i.ef, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i ], [ %i.gt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ] ; 2 uses
  %i.fz = phi i64 [ %i.dh, %bb.aa ], [ %i.eg, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i ], [ %i.gv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit56.i.i unwind label %bb.z, !noalias !1474

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit56.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1464
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ah unwind label %bb.ag, !noalias !1474

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit56.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i57.i.i = load i64, ptr %i.w, align 8, !alias.scope !1500, !noalias !1464 ; 2 uses
  %i.gb = icmp eq i64 %.val2.i.i57.i.i, 0
  br i1 %i.gb, label %.body6.i, label %common.resume.sink.split.i.i

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockEEB1t_.exit56.i.i
  %.val.i.i60.i.i = load i64, ptr %i.w, align 8, !alias.scope !1500, !noalias !1464 ; 2 uses
  %i.gc = icmp eq i64 %.val.i.i60.i.i, 0
  br i1 %i.gc, label %bb.dr, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i61.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !1507, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i61.i.i, i64 noundef %.val.i.i60.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1508
  br label %bb.dr

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1464
  store ptr %i.r, ptr %i.q, align 8, !noalias !1464
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !noalias !1464
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #30
          to label %bb.al unwind label %.loopexit.split-lp175.i.i, !noalias !1474

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1464
  %i.gd = load ptr, ptr %i.cs, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 2 uses
  %i.ge = load i64, ptr %i.ct, align 8, !noalias !1464, !noundef !5
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.ge
  store ptr %i.gd, ptr %i.cu, align 8, !noalias !1464
  store ptr %i.gf, ptr %i.cv, align 8, !noalias !1464
  store i64 0, ptr %i.p, align 8, !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1464
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dl)
          to label %bb.am unwind label %.loopexit174.i.i, !noalias !1474

bb.al:                                            ; preds = %bb.bw, %bb.br, %bb.bi, %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gg = load i64, ptr %i.cx, align 8, !noalias !1464, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1464
  store i64 %i.gg, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1464
  store i64 0, ptr %i.cz, align 8, !noalias !1464
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1464
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1464
  br label %bb.an

bb.an:                                            ; preds = %bb.cl, %bb.am
  %i.gh = phi i64 [ %.pre.i.i, %bb.cl ], [ 0, %bb.am ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.gi = trunc nuw i64 %i.gh to i1
  br i1 %i.gi, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exitthread-pre-split.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = load ptr, ptr %i.cu, align 8, !alias.scope !1516, !noalias !1521, !nonnull !5, !noundef !5 ; 3 uses
  %i.gk = load ptr, ptr %i.cv, align 8, !alias.scope !1516, !noalias !1521, !nonnull !5, !noundef !5
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEE4peek0CslkzCjlEuW1f_5xtask.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store ptr %i.gm, ptr %i.cu, align 8, !alias.scope !1516, !noalias !1521
  br label %_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEE4peek0CslkzCjlEuW1f_5xtask.exit.i.i.i

_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEE4peek0CslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.gj, %bb.ap ], [ null, %bb.ao ] ; 2 uses
  store i64 1, ptr %i.p, align 8, !alias.scope !1511, !noalias !1522
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.cw, align 8, !alias.scope !1511, !noalias !1522
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i

.thread137.i.i:                                   ; preds = %bb.aq
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.thread132.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exitthread-pre-split.i.i: ; preds = %bb.an
  %.pr.i.i = load ptr, ptr %i.cw, align 8, !noalias !1464
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exitthread-pre-split.i.i, %_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEE4peek0CslkzCjlEuW1f_5xtask.exit.i.i.i
  %i.go = phi ptr [ %.pr.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exitthread-pre-split.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEE4peek0CslkzCjlEuW1f_5xtask.exit.i.i.i ]
  %.not44.i.i = icmp eq ptr %i.go, null
  br i1 %.not44.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1464
  invoke fastcc void @_RINvNvMNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_testsNtB5_6Assist7collect10take_untilQINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtNtB1A_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEEEB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %bb.az unwind label %.thread137.i.i

bb.ar:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_RNtNtCsbSS6DM8SDEO_5alloc6string6StringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false), !noalias !1464
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %i.gp = load i64, ptr %i.aa, align 8, !range !72, !alias.scope !1526, !noalias !1527, !noundef !5
  %i.gq = icmp eq i64 %i.eg, %i.gp
  br i1 %i.gq, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %._crit_edge.i unwind label %bb.at, !noalias !1529

._crit_edge.i:                                    ; preds = %bb.as
  %.pre.i = load ptr, ptr %i.bq, align 8, !alias.scope !1526, !noalias !1527
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_tests6AssistEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit116.i.i unwind label %bb.au, !noalias !1530

bb.au:                                            ; preds = %bb.at
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !1530
  unreachable

bb.av:                                            ; preds = %._crit_edge.i, %bb.ar
  %i.gt = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ef, %bb.ar ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [80 x i8], ptr %i.gt, i64 %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gu, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !1530
  %i.gv = add i64 %i.eg, 1                        ; 3 uses
  store i64 %i.gv, ptr %i.br, align 8, !alias.scope !1526, !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1464
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.ax unwind label %bb.aw, !noalias !1474

bb.aw:                                            ; preds = %bb.av
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1531, !noalias !1464 ; 2 uses
  %i.gx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.gx, label %.body65.i.i, label %.body65.sink.split.i.i

bb.ax:                                            ; preds = %bb.av
  %.val.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1531, !noalias !1464 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val1.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !1536, !noalias !1464, !nonnull !5, !noundef !5
  %i.gz = mul nuw i64 %.val.i.i.i, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1537
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.ha = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1540, !noalias !1490, !nonnull !5, !noundef !5
  %i.hb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1540, !noalias !1490, !nonnull !5, !noundef !5 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ha
  br i1 %i.hc, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslkzCjlEuW1f_5xtask7codegen12CommentBlockENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i

bb.az:                                            ; preds = %bb.aq
  %i.hd = load ptr, ptr %i.da, align 8, !noalias !1464, !nonnull !5, !noundef !5
  %i.he = load i64, ptr %i.db, align 8, !noalias !1464, !noundef !5
  %i.hf = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.he)
          to label %bb.bf unwind label %.loopexit.i.i, !noalias !1474 ; 2 uses

.loopexit.i.i:                                    ; preds = %bb.az
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i.i:                           ; preds = %bb.bi
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bd unwind label %bb.bb, !noalias !1474

bb.bb:                                            ; preds = %bb.ba
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i67.i.i = load i64, ptr %i.l, align 8, !alias.scope !1542, !noalias !1464 ; 2 uses
  %i.hh = icmp eq i64 %.val2.i.i67.i.i, 0
  br i1 %i.hh, label %.body.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val3.i.i68.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1549, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i68.i.i, i64 noundef %.val2.i.i67.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1550
  br label %.body.i.i

bb.bd:                                            ; preds = %bb.ba
  %.val.i.i70.i.i = load i64, ptr %i.l, align 8, !alias.scope !1542, !noalias !1464 ; 2 uses
  %i.hi = icmp eq i64 %.val.i.i70.i.i, 0
  br i1 %i.hi, label %.thread132.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val1.i.i71.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1549, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71.i.i, i64 noundef %.val.i.i70.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1553
  br label %.thread132.i.i

bb.bf:                                            ; preds = %bb.az
  %i.hj = extractvalue { ptr, i64 } %i.hf, 0
  %i.hk = extractvalue { ptr, i64 } %i.hf, 1      ; 7 uses
  %.not.i.i.i = icmp slt i64 %i.hk, 0
  br i1 %.not.i.i.i, label %bb.bi, label %bb.bg, !prof !876

bb.bg:                                            ; preds = %bb.bf
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread145.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1556
  %i.hm = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hk, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1556 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bh ], [ 0, %bb.bf ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.hk) #30
          to label %bb.al unwind label %.loopexit.split-lp.i.i, !noalias !1474

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread145.i.i: ; preds = %bb.bn, %bb.bg
  %i.ho = phi ptr [ %i.hm, %bb.bn ], [ inttoptr (i64 1 to ptr), %bb.bg ]
  store i64 %i.hk, ptr %i.m, align 8, !noalias !1464
  store ptr %i.ho, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1464
  store i64 %i.hk, ptr %.sroa.621.0..sroa_idx.i.i, align 8, !noalias !1464
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bl unwind label %bb.bj, !noalias !1474

bb.bj:                                            ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread145.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i75.i.i = load i64, ptr %i.l, align 8, !alias.scope !1559, !noalias !1464 ; 2 uses
  %i.hq = icmp eq i64 %.val2.i.i75.i.i, 0
  br i1 %i.hq, label %bb.cs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val3.i.i76.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1566, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i76.i.i, i64 noundef %.val2.i.i75.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1567
  br label %bb.cs

bb.bl:                                            ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread145.i.i
  %.val.i.i78.i.i = load i64, ptr %i.l, align 8, !alias.scope !1559, !noalias !1464 ; 2 uses
  %i.hr = icmp eq i64 %.val.i.i78.i.i, 0
  br i1 %i.hr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit82.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val1.i.i79.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1566, !noalias !1464, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i79.i.i, i64 noundef %.val.i.i78.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1570
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit82.i.i

bb.bn:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr align 1 %i.hj, i64 %i.hk, i1 false), !noalias !1474
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread145.i.i

.loopexit164.i.i:                                 ; preds = %bb.bv, %bb.bt
  %lpad.loopexit166.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp165.i.i:                        ; preds = %bb.bw, %bb.br
  %lpad.loopexit.split-lp167.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit82.i.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1464
  %i.hs = load ptr, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 5 uses
  %i.ht = load i64, ptr %.sroa.621.0..sroa_idx.i.i, align 8, !noalias !1464, !noundef !5 ; 5 uses
  %i.hu = icmp samesign eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit82.i.i
  %i.hv = load i8, ptr %i.hs, align 1, !noalias !1573, !noundef !5 ; 5 uses
  %i.hw = icmp sgt i8 %i.hv, -1
  br i1 %i.hw, label %bb.bp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i: ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hy = and i8 %i.hv, 31
  %i.hz = zext nneg i8 %i.hy to i32               ; 3 uses
  %i.ia = icmp samesign ne i64 %i.ht, 1
  call void @llvm.assume(i1 %i.ia)
  %i.ib = load i8, ptr %i.hx, align 1, !noalias !1573, !noundef !5
  %i.ic = shl nuw nsw i32 %i.hz, 6
  %i.id = and i8 %i.ib, 63
  %i.ie = zext nneg i8 %i.id to i32               ; 2 uses
  %i.if = or disjoint i32 %i.ic, %i.ie
  %i.ig = icmp samesign ugt i8 %i.hv, -33
  br i1 %i.ig, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ih = zext nneg i8 %i.hv to i32
  br label %bb.bq

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.ij = icmp samesign ne i64 %i.ht, 2
  call void @llvm.assume(i1 %i.ij)
  %i.ik = load i8, ptr %i.ii, align 1, !noalias !1573, !noundef !5
  %i.il = shl nuw nsw i32 %i.ie, 6
  %i.im = and i8 %i.ik, 63
  %i.in = zext nneg i8 %i.im to i32
  %i.io = or disjoint i32 %i.il, %i.in            ; 2 uses
  %i.ip = shl nuw nsw i32 %i.hz, 12
  %i.iq = or disjoint i32 %i.io, %i.ip
  %i.ir = icmp samesign ugt i8 %i.hv, -17
  br i1 %i.ir, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i, label %bb.bq

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  %i.it = icmp samesign ne i64 %i.ht, 3
  call void @llvm.assume(i1 %i.it)
  %i.iu = load i8, ptr %i.is, align 1, !noalias !1573, !noundef !5
  %i.iv = shl nuw nsw i32 %i.hz, 18
  %i.iw = and i32 %i.iv, 1835008
  %i.ix = shl nuw nsw i32 %i.io, 6
  %i.iy = and i8 %i.iu, 63
  %i.iz = zext nneg i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.ix, %i.iz
  %i.jb = or disjoint i32 %i.ja, %i.iw
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i, %bb.bp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.iq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i ], [ %i.jb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i ], [ %i.if, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i ], [ %i.ih, %bb.bp ] ; 2 uses
  %i.jc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add nsw i32 %.sroa.4.0.i.ph.i.i, -65
  %or.cond.i.i = icmp ult i32 %i.jd, 26
  br i1 %or.cond.i.i, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit82.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #30
          to label %bb.al unwind label %.loopexit.split-lp165.i.i, !noalias !1474

bb.bs:                                            ; preds = %bb.bu, %bb.bq
  %i.je = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1464, !noundef !5 ; 2 uses
  %i.jf = icmp ult i64 %i.je, 128102389400760776
  call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp eq i64 %i.je, 0
  br i1 %i.jg, label %bb.bw, label %bb.bv, !prof !90

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1464
  store i32 46, ptr %i.d, align 4, !noalias !1464
  %i.jh = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.ht, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %bb.bu unwind label %.loopexit164.i.i, !noalias !1474

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1464
  br i1 %i.jh, label %bb.bv, label %bb.bs

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1464
  invoke fastcc void @_RINvNvMNtNtCslkzCjlEuW1f_5xtask7codegen17assists_doc_testsNtB5_6Assist7collect10take_untilQINtNtNtNtCshzWfHUSfYae_4core4iter8adapters8peekable8PeekableINtNtNtB1A_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEEEB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bx unwind label %.loopexit164.i.i

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1464
  store ptr %i.n, ptr %i.k, align 8, !noalias !1464
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !1464
  %i.ji = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.ji, align 8, !noalias !1464
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !1464
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @124, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #30
          to label %bb.al unwind label %.loopexit.split-lp165.i.i, !noalias !1474

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1464
  %i.jj = load i64, ptr %i.p, align 8, !range !11, !noalias !1464, !noundef !5
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jl = load ptr, ptr %i.cw, align 8, !noalias !1464 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.jl, null
  br i1 %.not46.i.i, label %.invoke280.i.i, label %bb.cb, !prof !90

bb.bz:                                            ; preds = %bb.bx
  %i.jm = load ptr, ptr %i.cu, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 3 uses
  %i.jn = load ptr, ptr %i.cv, align 8, !noalias !1464, !nonnull !5, !noundef !5
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %.invoke280.i.i, label %bb.ca, !prof !90

bb.ca:                                            ; preds = %bb.bz
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr %i.jp, ptr %i.cu, align 8, !noalias !1464
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %.sroa.07.0.i.i = phi ptr [ %i.jl, %bb.by ], [ %i.jm, %bb.ca ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !1474, !nonnull !5, !noundef !5 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !noalias !1474, !noundef !5 ; 2 uses
  store ptr %i.jr, ptr %i.i, align 8, !noalias !1464
  store i64 %i.jt, ptr %i.dc, align 8, !noalias !1464
  %i.ju = icmp eq i64 %i.jt, 2
  br i1 %i.ju, label %bb.cc, label %.invoke.i.i, !prof !6

bb.cc:                                            ; preds = %bb.cb
  %i.jv = load i16, ptr %i.jr, align 1
  %i.jw = icmp ne i16 %i.jv, 15917
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.cd, label %.invoke.i.i, !prof !6

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1464
  store i64 0, ptr %i.p, align 8, !noalias !1464
  %i.jz = load ptr, ptr %i.cu, align 8, !noalias !1464, !nonnull !5, !noundef !5 ; 4 uses
  %i.ka = load ptr, ptr %i.cv, align 8, !noalias !1464, !nonnull !5, !noundef !5
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %.invoke280.i.i, label %bb.ce, !prof !90

bb.ce:                                            ; preds = %bb.cd
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store ptr %i.kc, ptr %i.cu, align 8, !noalias !1464
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !1474, !nonnull !5, !noundef !5 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !1474, !noundef !5 ; 2 uses
  store ptr %i.ke, ptr %i.h, align 8, !noalias !1464
  store i64 %i.kg, ptr %i.dd, align 8, !noalias !1464
  %i.kh = icmp eq i64 %i.kg, 3
  br i1 %i.kh, label %bb.cf, label %.invoke.i.i, !prof !6

.invoke280.i.i:                                   ; preds = %bb.cd, %bb.bz, %bb.by
  %i.ki = phi ptr [ @126, %bb.by ], [ @126, %bb.bz ], [ @130, %bb.cd ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ki) #30
          to label %.cont281.i.i unwind label %.loopexit.split-lp170.i.i, !noalias !1474

.cont281.i.i:                                     ; preds = %.invoke280.i.i
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.kj = load i16, ptr %i.ke, align 1
  %i.kk = xor i16 %i.kj, 24672
  %i.kl = getelementptr i8, ptr %i.ke, i64 2
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = zext i8 %i.km to i16
  %i.ko = xor i16 %i.kn, 96
  %i.kp = or i16 %i.kk, %i.ko
  %i.kq = icmp ne i16 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.cg, label %.invoke.i.i, !prof !6

.invoke.i.i:                                      ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.cb
end_hunk_1
begin_hunk_2_@_RNvXsd_NtCsjsYc2335iSi_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCshzWfHUSfYae_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub:bb.a
  %i.en = sub nsw i32 1, %i.ek
  %.sroa.04.0.i = select i1 %i.em, i32 %i.en, i32 %i.el
  %i.eo = mul i32 %.sroa.04.0.i, 33555415
  %i.ep = and i32 %i.eo, 100695055
  %i.eq = icmp samesign ult i32 %i.ep, 31745      ; 2 uses
  %i.er = select i1 %i.eq, i32 512, i32 0
  %.sroa.01.0.i = select i1 %i.eq, i32 366, i32 365
  %i.es = shl nsw i32 %i.el, 10
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = or disjoint i32 %i.et, %.sroa.01.0.i
  br label %_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date12previous_day.exit.thread

bb.p:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #27
  unreachable

_RNvMNtCsjsYc2335iSi_4time4dateNtB2_4Date12previous_day.exit: ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
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
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.d

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i, %bb.w, %bb.d, %bb.a, %bb.y, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %i.o, %bb.g ], [ 1, %bb.a ], [ %i.u, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit ], [ %i.eb, %bb.y ], [ %.sroa.014.5.i, %bb.w ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, %3
  br i1 %i.h, label %bb.y, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %1, 33
  br i1 %i.i, label %bb.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %i.j = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  %i.k = icmp samesign ult i64 %3, 16
  br i1 %i.k, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = icmp eq i64 %i.m, 1
  %i.o = zext i1 %i.n to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1964, !noundef !5
  %i.r = icmp eq i8 %i.q, %i.j
  br i1 %i.r, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #33
  %i.t = load i64, ptr %i.c, align 8, !range !11, !noundef !5
  %i.u = trunc nuw nsw i64 %i.t to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %i.v = load i8, ptr %0, align 1, !alias.scope !1967, !noalias !1970, !noundef !5 ; 3 uses
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %1, 2
  br i1 %i.x, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %i.z = icmp ult i64 %i.y, %1
  br i1 %i.z, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i
  %i.aa = icmp ult i64 %i.y, %i.ac
  br i1 %i.aa, label %.lr.ph, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ab = phi i64 [ %i.ac, %bb.k ], [ %1, %bb.j ]
  %i.ac = add nsw i64 %i.ab, -1                   ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %1
  br i1 %i.ad, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27, !noalias !1972
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !1967, !noalias !1980, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.af, %i.v
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CslkzCjlEuW1f_5xtask.exit.i.i
  %i.ag = add nuw nsw i64 %1, 15
  %i.ah = icmp ult i64 %3, %i.ag
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.i
  %i.ai = icmp ult i64 %3, 17
  br i1 %i.ai, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.aj = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !1967, !noalias !1970
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1981, !noalias !1982
  %i.an = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.an, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ao, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !1981, !noalias !1982
  %i.ap = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ap, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CslkzCjlEuW1f_5xtask.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.ao, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.aq, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.aq = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.aq
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread92.i
  %i.ar = phi i8 [ %.pre.i, %.thread92.i ], [ %i.af, %bb.n ]
  %i.as = phi <16 x i8> [ %i.ak, %.thread92.i ], [ %i.am, %bb.n ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %i.ac, %bb.n ] ; 6 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1981
  store ptr %2, ptr %i.a, align 8, !noalias !1981
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.aw, align 8, !noalias !1981
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !noalias !1981
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.w, ptr %i.ay, align 8, !noalias !1981
  %i.az = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i4 = icmp ult i64 %i.az, %3
  br i1 %.not.i4, label %.lr.ph.i7, label %.preheader.i5

.preheader.i5:                                    ; preds = %bb.s, %bb.o
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i, %bb.s ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.cv, %bb.s ] ; 2 uses
  %i.ba = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.bb = add i64 %.sroa.06.0.lcssa.i, %i.ba
  %i.bc = icmp uge i64 %i.bb, %3
  %i.bd = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond3104.i, label %._crit_edge.i6, label %.lr.ph106.i

.lr.ph.i7:                                        ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i = phi i64 [ %i.cv, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !1970, !noalias !1986
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !1970, !noalias !1986
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.as
  %i.bh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.au
  %i.bi = and <16 x i1> %i.bg, %i.bh
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !1970, !noalias !1986
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !1970, !noalias !1986
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.as
  %i.bn = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.au
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !1970, !noalias !1986
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !1970, !noalias !1986
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.as
  %i.bt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.au
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !1970, !noalias !1986
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !1970, !noalias !1986
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.as
  %i.bz = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.au
  %i.ca = and <16 x i1> %i.by, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = icmp eq i16 %i.bj, 0
  br i1 %i.cc, label %.preheader95.1.i, label %bb.t

.preheader95.1.i:                                 ; preds = %bb.t, %.lr.ph.i7
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.da, %bb.t ] ; 3 uses
  %i.cd = icmp eq i16 %i.bp, 0
  br i1 %i.cd, label %.preheader95.2.i, label %bb.p

bb.p:                                             ; preds = %.preheader95.1.i
  %i.ce = or disjoint i64 %.sroa.06.0102.i, 16
  %i.cf = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cg = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.bp, i1 noundef zeroext %i.cf) #33
  %i.ch = zext i1 %i.cg to i8
  %i.ci = or i8 %.sroa.014.2.i, %i.ch
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.p, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.ci, %bb.p ] ; 3 uses
  %i.cj = icmp eq i16 %i.bv, 0
  br i1 %i.cj, label %.preheader95.3.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.2.i
  %i.ck = or disjoint i64 %.sroa.06.0102.i, 32
  %i.cl = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cm = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ck, i16 noundef %i.bv, i1 noundef zeroext %i.cl) #33
  %i.cn = zext i1 %i.cm to i8
  %i.co = or i8 %.sroa.014.2.1.i, %i.cn
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.q, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.co, %bb.q ] ; 3 uses
  %i.cp = icmp eq i16 %i.cb, 0
  br i1 %i.cp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader95.3.i
  %i.cq = or disjoint i64 %.sroa.06.0102.i, 48
  %i.cr = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cq, i16 noundef %i.cb, i1 noundef zeroext %i.cr) #33
  %i.ct = zext i1 %i.cs to i8
  %i.cu = or i8 %.sroa.014.2.2.i, %i.ct
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.cu, %bb.r ] ; 2 uses
  %i.cv = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.cw = add i64 %i.cv, %i.az
  %i.cx = icmp uge i64 %i.cw, %3
  %i.cy = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i, label %.preheader.i5, label %.lr.ph.i7

bb.t:                                             ; preds = %.lr.ph.i7
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.bj, i1 noundef zeroext false) #33
  %i.da = zext i1 %i.cz to i8
  br label %.preheader95.1.i

._crit_edge.i6:                                   ; preds = %bb.u, %.preheader.i5
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i5 ], [ %.sroa.014.4.i, %bb.u ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bd, %.preheader.i5 ], [ %i.du, %bb.u ]
  %i.db = sub i64 %3, %i.w
  %i.dc = add i64 %i.db, -16                      ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.dd, align 1, !alias.scope !1970, !noalias !1989
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.de, align 1, !alias.scope !1970, !noalias !1989
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.as
  %i.dg = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.au
  %i.dh = and <16 x i1> %i.df, %i.dg
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.w, label %bb.x

.lr.ph106.i:                                      ; preds = %.preheader.i5, %bb.u
  %.sroa.06.1105.i = phi i64 [ %i.dr, %bb.u ], [ %.sroa.06.0.lcssa.i, %.preheader.i5 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !1970, !noalias !1992
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !1970, !noalias !1992
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.as
  %i.dn = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.au
  %i.do = and <16 x i1> %i.dm, %i.dn
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.dw, %bb.v ] ; 2 uses
  %i.dr = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.ds = add i64 %i.dr, %i.ba
  %i.dt = icmp uge i64 %i.ds, %3
  %i.du = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dt, %i.du
  br i1 %or.cond3.i, label %._crit_edge.i6, label %.lr.ph106.i

bb.v:                                             ; preds = %.lr.ph106.i
  %i.dv = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.dp, i1 noundef zeroext false) #33
  %i.dw = zext i1 %i.dv to i8
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %._crit_edge.i6
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i6 ], [ %i.dz, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1981
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.x:                                             ; preds = %._crit_edge.i6
  %i.dx = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dc, i16 noundef %i.di, i1 noundef zeroext %.lcssa.i) #33
  %i.dy = zext i1 %i.dx to i8
  %i.dz = or i8 %.sroa.014.3.lcssa.i, %i.dy
  br label %bb.w

bb.y:                                             ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %2, i64 %1)
  %i.ea = icmp eq i32 %bcmp, 0
  %i.eb = zext i1 %i.ea to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !103, !alias.scope !1995, !noalias !1998, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslkzCjlEuW1f_5xtask.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1995, !noalias !1998, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1995, !noalias !1998, !noundef !5 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !1995, !noalias !1998 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2002, !noalias !2005, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
end_hunk_2
