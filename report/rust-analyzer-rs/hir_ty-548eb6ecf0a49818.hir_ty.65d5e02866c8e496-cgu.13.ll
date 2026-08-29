Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.13?download=true
inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNCNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextNtB7_18ProbeForNameChoiceE16xform_method_sig0Bb_:bb.a
  switch i32 %.0.val, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !242, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !242, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !242, !noundef !5
  %i.l = load i32, ptr %i.i, align 8, !range !1554, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt11next_ty_var(ptr noundef nonnull align 8 %i.k, i32 noundef %i.l, i32 %i.n) ; 2 uses
  %i.p = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %i.o)
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !242, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !242, !noundef !5 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !242, !noundef !5
  %i.z = load i32, ptr %i.w, align 8, !range !1554, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt14next_const_var(ptr noundef nonnull align 8 %i.y, i32 noundef %i.z, i32 %i.ab) ; 2 uses
  %i.ad = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE14offset_of_dataBT_(ptr noundef nonnull %i.ac)
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %.not2 = and i64 %i.ah, 1
  %i.ai = xor i64 %.not2, 1
  %i.aj = getelementptr i8, ptr %i.ag, i64 %i.ai  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !242, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !align !242, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !242, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  %i.ar = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region10new_erased(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE14offset_of_dataBT_(ptr noundef nonnull %i.ar)
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %.not = and i64 %i.aw, 2
  %i.ax = xor i64 %.not, 2
  %i.ay = getelementptr i8, ptr %i.av, i64 %i.ax  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %i.bb, %bb.g ], [ %i.s, %bb.c ], [ %i.aj, %bb.d ], [ %i.ay, %bb.e ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %bb.a
  %i.az = load ptr, ptr %0, align 8, !nonnull !5, !align !242, !noundef !5
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.b
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNvNtNtCs8K4cjrcxBsw_6hir_ty3mir8borrowck20ever_initialized_map3dfs0B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !242, !noundef !5 ; 3 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEIBy_IBN_NtBY_5LocalEbEEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !1553, !noundef !5 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = zext i32 %i.e to i64                     ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.m = load i8, ptr %i.l, align 1, !range !546, !noundef !5
  %.not1 = icmp eq i8 %i.m, 2
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 ptr @_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEIBy_IBN_NtBY_5LocalEbEEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55)
  %i.o = load i32, ptr %i.d, align 4, !noundef !5
  %i.p = tail call noundef nonnull ptr @_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalEbEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, i32 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56)
  %i.q = load i8, ptr %i.p, align 1, !range !2517, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  %.not = xor i1 %2, true
  %brmerge = or i1 %.not, %i.r
  br i1 %brmerge, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = tail call noundef nonnull align 8 ptr @_RNvXs0_NtCsbq3eHDLgq0Z_8la_arena3mapINtB5_8ArenaMapINtB7_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEIBz_IBO_NtBZ_5LocalEbEEINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutBN_E9index_mutB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  %i.t = load i32, ptr %i.d, align 4, !noundef !5
  %i.u = tail call noundef i8 @_RNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB2_8ArenaMapINtB4_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalEbE6insertBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.t, i1 noundef zeroext %2) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !242, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !9832, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !243, !alias.scope !9832, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEE8push_mutB1d_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEE8grow_oneB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #36
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEE8push_mutB1d_.exit

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEE8push_mutB1d_.exit: ; preds = %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !9832, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.y
  store i32 %1, ptr %i.ad, align 4
  %i.ae = add i64 %i.y, 1
  store i64 %i.ae, ptr %i.x, align 8, !alias.scope !9832
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEE8push_mutB1d_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !9835, !noundef !5 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41201 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread139, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75, %bb.af, %bb.ak, %bb.ai, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41204 = phi i1 [ %.not41201, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i203 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !5 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i203 to i32
  %i.l = add nsw i32 %i.k, -11
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 15
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -14) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !2517, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.ao, label %bb.ap

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41204, label %bb.am, label %bb.al, !prof !6

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9841)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !9843, !noalias !9846, !noundef !5
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !9841, !noalias !9838
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select205 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select205, ptr %1, align 16, !alias.scope !9838, !noalias !9841
  br i1 %.not41204, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !9849
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i203, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select205, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i203, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9850)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !9850 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !9853

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #31, !noalias !9850
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable197 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
    i8 4, label %bb.v
  ]

default.unreachable197:                           ; preds = %bb.ao, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread139, label %bb.ak

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %bb.ab

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 11
  br i1 %i.bf, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread
  store i32 -14, ptr %i.i, align 16
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread ], [ -14, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !9854
  %i.bi = icmp eq i128 %i.bh, 0                   ; 2 uses
  %spec.select.i49 = zext i1 %i.bi to i128
  store i128 %spec.select.i49, ptr %i.a, align 16
  br i1 %i.bi, label %bb.ac, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 116
  br i1 %i.bm, label %bb.ad, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137

bb.ac:                                            ; preds = %bb.ab
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @64, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #31
  unreachable

bb.ad:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 15
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
  %i.bo = icmp ult i64 %.sroa.016.1, 11
  br i1 %i.bo, label %bb.ah, label %bb.ag, !prof !9857

bb.af:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.ag:                                            ; preds = %bb.ae
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #31
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread148, label %bb.ai

.thread148:                                       ; preds = %bb.ah
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select176 = and i8 %.sroa.4.0.copyload.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @67, i64 21, i1 false)
  store i8 %spec.select176, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @67, i64 22), i64 10, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9861)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.aj, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !9861, !noalias !9858
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !9858, !noalias !9861
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.aj:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !9863
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75: ; preds = %bb.ad
  %spec.select177 = and i8 %.sroa.4.0.copyload.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @68, i64 21, i1 false)
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select177, ptr %.sroa.4121.0..sroa_idx, align 1
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5122.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @68, i64 22), i64 10, i1 false)
  br label %bb.c

.thread139:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select178 = and i8 %.sroa.3.0.copyload, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @67, i64 21, i1 false)
  store i8 %spec.select178, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @67, i64 22), i64 10, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.z, %.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.al:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @62, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31
  unreachable

bb.am:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9867)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.an, label %.split.i, !prof !65

.split.i:                                         ; preds = %bb.am
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !9867, !noalias !9864
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not186 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink208 = shl i128 %i.c, %i.cf
  %spec.select207 = select i1 %.not186, i128 %.sink208, i128 0
  store i128 %spec.select207, ptr %1, align 16, !alias.scope !9864, !noalias !9867
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31, !noalias !9869
  unreachable

bb.ao:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable197 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
  ]

bb.ap:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split: ; preds = %bb.ap, %bb.ao, %bb.ao, %bb.ao
  %.sroa.5101.1.ph = phi i8 [ 1, %bb.ao ], [ 1, %bb.ao ], [ 1, %bb.ao ], [ 0, %bb.ap ]
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86: ; preds = %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split, %bb.ao, %bb.ao, %bb.ap
  %.sroa.034.0165 = phi i8 [ 16, %bb.ao ], [ 16, %bb.ao ], [ 16, %bb.ap ], [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.095.0163 = phi i128 [ 2047, %bb.ao ], [ 2047, %bb.ao ], [ 2047, %bb.ap ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.397.0161 = phi i32 [ 15, %bb.ao ], [ 15, %bb.ao ], [ 15, %bb.ap ], [ 16, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.499.0159 = phi i8 [ 2, %bb.ao ], [ 2, %bb.ao ], [ 2, %bb.ap ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.5101.1 = phi i8 [ 1, %bb.ao ], [ 1, %bb.ao ], [ 0, %bb.ap ], [ %.sroa.5101.1.ph, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.034.0165, ptr %i.ci, align 16
  store i128 %.sroa.095.0163, ptr %0, align 16
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.397.0161, ptr %.sroa.4104.0..sroa_idx, align 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.499.0159, ptr %.sroa.5105.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.5101.1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @68, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !9870, !noundef !5 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41201 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread139, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75, %bb.af, %bb.ak, %bb.ai, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41204 = phi i1 [ %.not41201, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i203 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !5 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i203 to i32
  %i.l = add nsw i32 %i.k, -113
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 16383
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -16382) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !2517, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.ao, label %bb.ap

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41204, label %bb.am, label %bb.al, !prof !6

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9876)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !9878, !noalias !9881, !noundef !5
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !9876, !noalias !9873
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select205 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select205, ptr %1, align 16, !alias.scope !9873, !noalias !9876
  br i1 %.not41204, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !9884
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i203, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select205, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i203, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9885)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !9885 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !9853

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #31, !noalias !9885
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable197 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
    i8 4, label %bb.v
  ]

default.unreachable197:                           ; preds = %bb.ao, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread139, label %bb.ak

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %bb.ab

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 113
  br i1 %i.bf, label %bb.af, label %bb.ae

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread
  store i32 -16382, ptr %i.i, align 16
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread ], [ -16382, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !9888
  %i.bi = icmp eq i128 %i.bh, 0                   ; 2 uses
  %spec.select.i49 = zext i1 %i.bi to i128
  store i128 %spec.select.i49, ptr %i.a, align 16
  br i1 %i.bi, label %bb.ac, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 14
  br i1 %i.bm, label %bb.ad, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137

bb.ac:                                            ; preds = %bb.ab
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @64, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #31
  unreachable

bb.ad:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 16383
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
  %i.bo = icmp ult i64 %.sroa.016.1, 113
  br i1 %i.bo, label %bb.ah, label %bb.ag, !prof !9857

bb.af:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCs8K4cjrcxBsw_6hir_ty.exit.thread137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.ag:                                            ; preds = %bb.ae
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #31
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread148, label %bb.ai

.thread148:                                       ; preds = %bb.ah
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select176 = and i8 %.sroa.4.0.copyload.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @72, i64 21, i1 false)
  store i8 %spec.select176, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @72, i64 22), i64 10, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9894)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.aj, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72, !prof !65

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit72: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !9894, !noalias !9891
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !9891, !noalias !9894
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.aj:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #31, !noalias !9896
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit75: ; preds = %bb.ad
  %spec.select177 = and i8 %.sroa.4.0.copyload.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @73, i64 21, i1 false)
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select177, ptr %.sroa.4121.0..sroa_idx, align 1
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5122.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @73, i64 22), i64 10, i1 false)
  br label %bb.c

.thread139:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select178 = and i8 %.sroa.3.0.copyload, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @72, i64 21, i1 false)
  store i8 %spec.select178, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @72, i64 22), i64 10, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.z, %.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.al:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @62, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31
  unreachable

bb.am:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9900)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.an, label %.split.i, !prof !65

.split.i:                                         ; preds = %bb.am
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !9900, !noalias !9897
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not186 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink208 = shl i128 %i.c, %i.cf
  %spec.select207 = select i1 %.not186, i128 %.sink208, i128 0
  store i128 %spec.select207, ptr %1, align 16, !alias.scope !9897, !noalias !9900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31, !noalias !9902
  unreachable

bb.ao:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable197 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split
  ]

bb.ap:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split: ; preds = %bb.ap, %bb.ao, %bb.ao, %bb.ao
  %.sroa.5101.1.ph = phi i8 [ 1, %bb.ao ], [ 1, %bb.ao ], [ 1, %bb.ao ], [ 0, %bb.ap ]
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86: ; preds = %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split, %bb.ao, %bb.ao, %bb.ap
  %.sroa.034.0165 = phi i8 [ 16, %bb.ao ], [ 16, %bb.ao ], [ 16, %bb.ap ], [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.095.0163 = phi i128 [ 10384593717069655257060992658440191, %bb.ao ], [ 10384593717069655257060992658440191, %bb.ao ], [ 10384593717069655257060992658440191, %bb.ap ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.397.0161 = phi i32 [ 16383, %bb.ao ], [ 16383, %bb.ao ], [ 16383, %bb.ap ], [ 16384, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.499.0159 = phi i8 [ 2, %bb.ao ], [ 2, %bb.ao ], [ 2, %bb.ap ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %.sroa.5101.1 = phi i8 [ 1, %bb.ao ], [ 1, %bb.ao ], [ 0, %bb.ap ], [ %.sroa.5101.1.ph, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit86.sink.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.034.0165, ptr %i.ci, align 16
  store i128 %.sroa.095.0163, ptr %0, align 16
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.397.0161, ptr %.sroa.4104.0..sroa_idx, align 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.499.0159, ptr %.sroa.5105.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.5101.1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @73, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_RNvMsb_NtCsaH4Z5sDJ4bD_9hashbrown5tableINtB5_13OccupiedEntryjE12bucket_indexCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !242, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEj2_E21reserve_one_uncheckedB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9903, !noalias !9906, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9903, !noalias !9906
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEj2_E8try_growB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEj2_E8try_growB1g_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !9908, !noalias !9911, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 2                    ; 4 uses
  %or.cond = icmp ult i64 %1, 2305843009213693952
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit, label %bb.m, !prof !9913

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit
  %i.k = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50, label %bb.m, !prof !9913

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.l = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #35 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 2
  %i.o = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #35 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB19_.exit, label %bb.l, !prof !9913

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9914
  store i64 0, ptr %i.a, align 8, !noalias !9914
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #31, !noalias !9914
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB19_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB19_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB19_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB19_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir10BasicBlockEEB1b_.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_E21reserve_one_uncheckedCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9917, !noalias !9920, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !9917, !noalias !9920, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9917, !noalias !9920 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9922)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #31, !noalias !9922
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs8K4cjrcxBsw_6hir_ty.exit, label %bb.h

end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float5add_rCs8K4cjrcxBsw_6hir_ty:bb.a
  %i.an = load i8, ptr %i.e, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.ao = icmp ne i8 %i.an, 3
  %i.ap = icmp eq i8 %i.ah, 0
  %or.cond = or i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.o, label %bb.p, !prof !9853

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 80, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #31
  unreachable

.thread45:                                        ; preds = %bb.g, %bb.i, %bb.k, %bb.q, %bb.r, %bb.l, %bb.h
  %.sroa.06.1 = phi i8 [ %.sroa.06.2, %bb.q ], [ %.sroa.06.0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.h ], [ %i.f, %bb.g ], [ 0, %bb.i ], [ 1, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.06.1, ptr %i.aq, align 16
  br label %bb.m

bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.210.0.copyload = phi i8 [ %.sroa.210.0.copyload.pre, %._crit_edge ], [ %i.ax, %bb.r ] ; 3 uses
  %.sroa.06.2 = phi i8 [ %.sroa.06.0, %._crit_edge ], [ 0, %bb.r ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ar = icmp eq i8 %3, 2
  %i.as = trunc nuw i8 %.sroa.210.0.copyload to i1
  %i.at = xor i1 %i.ar, %i.as
  %i.au = and i8 %.sroa.210.0.copyload, 1
  %i.av = xor i8 %i.au, 1
  %.sroa.210.0 = select i1 %i.at, i8 %i.av, i8 %.sroa.210.0.copyload
  store i8 %.sroa.210.0, ptr %.sroa.210.0..sroa_idx, align 1
  br label %.thread45

bb.r:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ax = load i8, ptr %i.aw, align 1, !range !2517, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.az = load i8, ptr %i.ay, align 1, !range !2517, !noundef !5
  %.not = icmp eq i8 %i.ax, %i.az
  br i1 %.not, label %.thread45, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float5div_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.9 = alloca [11 x i8], align 1            ; 5 uses
  %.sroa.017 = alloca [21 x i8], align 16         ; 2 uses
  %.sroa.523 = alloca [10 x i8], align 2          ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 4 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !2517, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = and i8 %.sroa.3.0.copyload, 1            ; 3 uses
  %i.l = xor i8 %i.k, 1                           ; 3 uses
  store i8 %i.l, ptr %.sroa.3.0..sroa_idx, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.i to i64                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load i8, ptr %i.q, align 4, !range !4582, !noundef !5
  switch i8 %i.r, label %default.unreachable75 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

default.unreachable75:                            ; preds = %bb.n, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.d
  %.sroa.3.0.copyload53 = phi i8 [ %i.l, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.0 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  switch i64 %.sroa.07.0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit [
    i64 0, label %bb.o
    i64 3, label %bb.p
  ]

bb.f:                                             ; preds = %bb.n, %bb.d
  %.sroa.355.0.copyload = phi i8 [ %i.l, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.1 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  switch i64 %.sroa.07.1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36 [
    i64 3, label %bb.o
    i64 0, label %bb.p
  ]

bb.g:                                             ; preds = %bb.n, %bb.d
  %.sroa.07.2 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  %i.s = icmp eq i64 %.sroa.07.2, 2
  br i1 %i.s, label %bb.r, label %bb.p

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.sroa.318.0 = phi i8 [ %i.k, %bb.c ], [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ], [ %.sroa.3.0.copyload, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %.sroa.017, ptr noundef nonnull align 16 dereferenceable(21) %1, i64 21, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.523, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) %.sroa.017, i64 21, i1 false)
  store i8 %.sroa.318.0, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.523, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.037.0.copyload = load i128, ptr %1, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.744.0.copyload = load i8, ptr %.sroa.744.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.3.0..sroa_idx, i64 11, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12454)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !4582, !alias.scope !12454, !noalias !12456, !noundef !5 ; 2 uses
  %i.v = icmp eq i8 %.sroa.744.0.copyload, 1
  br i1 %i.v, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.u, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %.sroa.037.0.copyload38 = load i128, ptr %2, align 16, !alias.scope !12457, !noalias !12449
  %.sroa.7.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload41 = load i32, ptr %.sroa.7.0..sroa_idx40, align 16, !alias.scope !12457, !noalias !12449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %i.e, i64 11, i1 false), !alias.scope !12457, !noalias !12449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12458)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.h ], [ %.sroa.7.0.copyload41, %bb.j ]
  %.sroa.037.0 = phi i128 [ %.sroa.037.0.copyload, %bb.h ], [ %.sroa.037.0.copyload38, %bb.j ] ; 2 uses
  %i.x = and i128 %.sroa.037.0, 512
  %.not.not.i.i = icmp eq i128 %i.x, 0
  %.sroa.037.1 = or i128 %.sroa.037.0, 512
  %.sroa.0.0.i.i = zext i1 %.not.not.i.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.y, align 16, !alias.scope !12461, !noalias !12463
  store i128 %.sroa.037.1, ptr %0, align 16, !alias.scope !12464, !noalias !12454
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx42, align 16, !alias.scope !12464, !noalias !12454
  %.sroa.744.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.744.0..sroa_idx47, align 4, !alias.scope !12464, !noalias !12454
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx50, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !alias.scope !12464, !noalias !12454
  %i.z = icmp eq i8 %i.u, 1
  br i1 %i.z, label %bb.l, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12465
  unreachable

bb.l:                                             ; preds = %.thread.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12454, !noalias !12456
  %i.aa = and i128 %.sroa.0.0.copyload.i, 512
  %.not.not.i = icmp eq i128 %i.aa, 0
  br i1 %.not.not.i, label %bb.m, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.y, align 16, !alias.scope !12449, !noalias !12457
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.thread.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.n to i64                ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !4582, !noundef !5
  switch i8 %i.ad, label %default.unreachable75 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ae, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @63, i64 32, i1 false)
  br label %bb.q

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.e
  %spec.select70 = and i8 %.sroa.3.0.copyload53, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.af, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @67, i64 21, i1 false)
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select70, ptr %.sroa.461.0..sroa_idx, align 1
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @67, i64 22), i64 10, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ag, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36, %bb.p, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit, %bb.o, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit
  ret void

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36: ; preds = %bb.f
  %spec.select71 = and i8 %.sroa.355.0.copyload, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.ah, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @68, i64 21, i1 false)
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select71, ptr %.sroa.468.0..sroa_idx, align 1
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @68, i64 22), i64 10, i1 false)
  br label %bb.q

bb.r:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i32, ptr %i.ai, align 16, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 16, !noundef !5
  %i.am = sub i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 16
  %i.an = load i128, ptr %1, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i128 %i.an, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ao = load i128, ptr %2, align 16, !noundef !5
  store i128 %i.ao, ptr %i.c, align 16
  %i.ap = call fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %1, ptr noalias nofree noundef align 4 dereferenceable(4) %i.ak, ptr noalias nofree noundef nonnull align 16 %i.d, ptr noalias nofree noundef nonnull align 16 %i.c, i64 noundef 11) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, i8 noundef %3, i8 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = load i8, ptr %i.aq, align 16, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.ap, 0
  %i.as = or i8 %i.ar, 16
  %spec.select = select i1 %.not, i8 %i.ar, i8 %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %spec.select, ptr %i.at, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float5mul_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %.sroa.9 = alloca [11 x i8], align 1            ; 5 uses
  %.sroa.016 = alloca [21 x i8], align 16         ; 2 uses
  %.sroa.522 = alloca [10 x i8], align 2          ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 4 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !2517, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i8, ptr %i.g, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = and i8 %.sroa.3.0.copyload, 1            ; 3 uses
  %i.k = xor i8 %i.j, 1                           ; 4 uses
  store i8 %i.k, ptr %.sroa.3.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i8, ptr %i.l, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.h to i64                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i8, ptr %i.p, align 4, !range !4582, !noundef !5
  switch i8 %i.q, label %default.unreachable77 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

default.unreachable77:                            ; preds = %bb.n, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.d
  %.sroa.3.0.copyload5275 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.0 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  %i.r = icmp eq i64 %.sroa.07.0, 3
  br i1 %i.r, label %bb.o, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit

bb.f:                                             ; preds = %bb.n, %bb.d
  %.sroa.354.0.copyload73 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.1 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  %i.s = icmp eq i64 %.sroa.07.1, 0
  br i1 %i.s, label %bb.o, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35

bb.g:                                             ; preds = %bb.n, %bb.d
  %.sroa.354.0.copyload72 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ] ; 2 uses
  %.sroa.07.2 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  switch i64 %.sroa.07.2, label %.unreachabledefault [
    i64 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit
    i64 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35
    i64 2, label %bb.q
  ]

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.sroa.317.0 = phi i8 [ %i.j, %bb.c ], [ %i.j, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ], [ %.sroa.3.0.copyload, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %.sroa.016, ptr noundef nonnull align 16 dereferenceable(21) %1, i64 21, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.522, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) %.sroa.016, i64 21, i1 false)
  store i8 %.sroa.317.0, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.522, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.036.0.copyload = load i128, ptr %1, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.743.0.copyload = load i8, ptr %.sroa.743.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.3.0..sroa_idx, i64 11, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12471)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !4582, !alias.scope !12471, !noalias !12473, !noundef !5 ; 2 uses
  %i.v = icmp eq i8 %.sroa.743.0.copyload, 1
  br i1 %i.v, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.u, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %.sroa.036.0.copyload37 = load i128, ptr %2, align 16, !alias.scope !12474, !noalias !12466
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload40 = load i32, ptr %.sroa.7.0..sroa_idx39, align 16, !alias.scope !12474, !noalias !12466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %i.d, i64 11, i1 false), !alias.scope !12474, !noalias !12466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12475)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.h ], [ %.sroa.7.0.copyload40, %bb.j ]
  %.sroa.036.0 = phi i128 [ %.sroa.036.0.copyload, %bb.h ], [ %.sroa.036.0.copyload37, %bb.j ] ; 2 uses
  %i.x = and i128 %.sroa.036.0, 512
  %.not.not.i.i = icmp eq i128 %i.x, 0
  %.sroa.036.1 = or i128 %.sroa.036.0, 512
  %.sroa.0.0.i.i = zext i1 %.not.not.i.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.y, align 16, !alias.scope !12478, !noalias !12480
  store i128 %.sroa.036.1, ptr %0, align 16, !alias.scope !12481, !noalias !12471
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx41, align 16, !alias.scope !12481, !noalias !12471
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.743.0..sroa_idx46, align 4, !alias.scope !12481, !noalias !12471
  %.sroa.9.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx49, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !alias.scope !12481, !noalias !12471
  %i.z = icmp eq i8 %i.u, 1
  br i1 %i.z, label %bb.l, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12482
  unreachable

bb.l:                                             ; preds = %.thread.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12471, !noalias !12473
  %i.aa = and i128 %.sroa.0.0.copyload.i, 512
  %.not.not.i = icmp eq i128 %i.aa, 0
  br i1 %.not.not.i, label %bb.m, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.y, align 16, !alias.scope !12466, !noalias !12474
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.thread.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.m to i64                ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !4582, !noundef !5
  switch i8 %i.ad, label %default.unreachable77 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ae, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @63, i64 32, i1 false)
  br label %bb.p

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.g, %bb.e
  %.sroa.3.0.copyload52 = phi i8 [ %.sroa.354.0.copyload72, %bb.g ], [ %.sroa.3.0.copyload5275, %bb.e ]
  %spec.select69 = and i8 %.sroa.3.0.copyload52, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.af, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @68, i64 21, i1 false)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select69, ptr %.sroa.460.0..sroa_idx, align 1
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.561.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @68, i64 22), i64 10, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit, %bb.o, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit
  ret void

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35: ; preds = %bb.g, %bb.f
  %.sroa.354.0.copyload = phi i8 [ %.sroa.354.0.copyload72, %bb.g ], [ %.sroa.354.0.copyload73, %bb.f ]
  %spec.select70 = and i8 %.sroa.354.0.copyload, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ag, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @67, i64 21, i1 false)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select70, ptr %.sroa.467.0..sroa_idx, align 1
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @67, i64 22), i64 10, i1 false)
  br label %bb.p

.unreachabledefault:                              ; preds = %bb.g
  unreachable

bb.q:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 16, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 16, !noundef !5
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.am = call fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %i.c, i64 noundef 2, ptr noalias nofree noundef align 4 dereferenceable(4) %i.aj, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, i64 noundef 11) #34 ; 2 uses
  %i.an = load i128, ptr %i.c, align 16, !noundef !5
  store i128 %i.an, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, i8 noundef %3, i8 noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ap = load i8, ptr %i.ao, align 16, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.am, 0
  %i.aq = or i8 %i.ap, 16
  %spec.select = select i1 %.not, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %spec.select, ptr %i.ar, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float5sub_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !4582, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  %i.e = icmp eq i8 %i.b, 1                       ; 2 uses
  %i.f = icmp eq i8 %i.d, 1                       ; 3 uses
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12488)
  br i1 %i.e, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.g, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !12490, !noalias !12483
  %.pr.i = load i8, ptr %i.a, align 4, !alias.scope !12491, !noalias !12494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12497)
  %i.g = icmp eq i8 %.pr.i, 1
  br i1 %i.g, label %.thread.i, label %bb.e, !prof !12498

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #31, !noalias !12499
  unreachable

.thread.i:                                        ; preds = %bb.d, %bb.b
  %.sroa.02.0.copyload.i.i = load i128, ptr %1, align 16, !alias.scope !12491, !noalias !12494 ; 2 uses
  %i.h = and i128 %.sroa.02.0.copyload.i.i, 512
  %.not.not.i.i = icmp eq i128 %i.h, 0
  br i1 %.not.not.i.i, label %bb.f, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit.i

bb.f:                                             ; preds = %.thread.i
  %i.i = or disjoint i128 %.sroa.02.0.copyload.i.i, 512
  store i128 %i.i, ptr %1, align 16, !alias.scope !12491, !noalias !12494
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.f, %.thread.i
  %.sroa.0.0.i.i = phi i8 [ 1, %bb.f ], [ 0, %.thread.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.j, align 16, !alias.scope !12500, !noalias !12501
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !12502, !noalias !12488
  br i1 %i.f, label %bb.h, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12503
  unreachable

bb.h:                                             ; preds = %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12488, !noalias !12504
  %i.k = and i128 %.sroa.0.0.copyload.i, 512
  %.not.not.i = icmp eq i128 %i.k, 0
  br i1 %.not.not.i, label %bb.i, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 16, !alias.scope !12483, !noalias !12490
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !2517, !noundef !5
  %i.n = xor i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 1
  tail call void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtB7_5Float5add_rCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %2, i8 noundef %3)
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.i, %bb.h, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5HalfSECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float14cmp_abs_normalCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4
  switch i8 %.sroa.3.0.copyload, label %bb.c [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ], !prof !12423

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.39.0.copyload = load i8, ptr %.sroa.39.0..sroa_idx, align 4
  switch i8 %.sroa.39.0.copyload, label %bb.e [
    i8 3, label %bb.d
    i8 1, label %bb.d
    i8 0, label %bb.d
  ], !prof !12423

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 16, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !noundef !5 ; 2 uses
  %i.f = tail call i8 @llvm.scmp.i8.i32(i32 %i.c, i32 %i.e)
  %i.g = icmp eq i32 %i.c, %i.e
  br i1 %i.g, label %bb.f, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12505
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 16 %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 16 %1, ptr noundef nonnull readonly %i.d)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !12505 ; 2 uses
  %.sroa.3.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload.i7 = load ptr, ptr %.sroa.3.0..sroa_idx.i6, align 8, !noalias !12505 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !12505 ; 2 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.611.0.copyload.i = load i64, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !12505 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12505
  %i.h = icmp ult i64 %.sroa.510.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i7) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.i = icmp ult i64 %.sroa.510.0.copyload.i, %i.j
  br i1 %i.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, %bb.g
  %.sroa.7.0.i16 = phi i64 [ %i.j, %bb.g ], [ %.sroa.611.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader ]
  %i.j = add i64 %.sroa.7.0.i16, -1               ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.j
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i7, i64 %i.j
  %i.m = load i128, ptr %i.k, align 16, !noundef !5 ; 2 uses
  %i.n = load i128, ptr %i.l, align 16, !noundef !5 ; 2 uses
  %i.o = icmp eq i128 %i.m, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.p = tail call i8 @llvm.ucmp.i8.i128(i128 %i.m, i128 %i.n)
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit: ; preds = %bb.g, %bb.f, %bb.h, %bb.e
  %.sroa.0.0 = phi i8 [ %i.f, %bb.e ], [ %i.p, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5add_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %.sroa.9 = alloca [11 x i8], align 1            ; 6 uses
end_hunk_1
begin_hunk_2_@_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5add_rCs8K4cjrcxBsw_6hir_ty:bb.a
  %i.an = load i8, ptr %i.e, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.ao = icmp ne i8 %i.an, 3
  %i.ap = icmp eq i8 %i.ah, 0
  %or.cond = or i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.o, label %bb.p, !prof !9853

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 80, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #31
  unreachable

.thread45:                                        ; preds = %bb.g, %bb.i, %bb.k, %bb.q, %bb.r, %bb.l, %bb.h
  %.sroa.06.1 = phi i8 [ %.sroa.06.2, %bb.q ], [ %.sroa.06.0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.h ], [ %i.f, %bb.g ], [ 0, %bb.i ], [ 1, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.06.1, ptr %i.aq, align 16
  br label %bb.m

bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.210.0.copyload = phi i8 [ %.sroa.210.0.copyload.pre, %._crit_edge ], [ %i.ax, %bb.r ] ; 3 uses
  %.sroa.06.2 = phi i8 [ %.sroa.06.0, %._crit_edge ], [ 0, %bb.r ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ar = icmp eq i8 %3, 2
  %i.as = trunc nuw i8 %.sroa.210.0.copyload to i1
  %i.at = xor i1 %i.ar, %i.as
  %i.au = and i8 %.sroa.210.0.copyload, 1
  %i.av = xor i8 %i.au, 1
  %.sroa.210.0 = select i1 %i.at, i8 %i.av, i8 %.sroa.210.0.copyload
  store i8 %.sroa.210.0, ptr %.sroa.210.0..sroa_idx, align 1
  br label %.thread45

bb.r:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ax = load i8, ptr %i.aw, align 1, !range !2517, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.az = load i8, ptr %i.ay, align 1, !range !2517, !noundef !5
  %.not = icmp eq i8 %i.ax, %i.az
  br i1 %.not, label %.thread45, label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5div_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.9 = alloca [11 x i8], align 1            ; 5 uses
  %.sroa.017 = alloca [21 x i8], align 16         ; 2 uses
  %.sroa.523 = alloca [10 x i8], align 2          ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 4 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !2517, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = and i8 %.sroa.3.0.copyload, 1            ; 3 uses
  %i.l = xor i8 %i.k, 1                           ; 3 uses
  store i8 %i.l, ptr %.sroa.3.0..sroa_idx, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.i to i64                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load i8, ptr %i.q, align 4, !range !4582, !noundef !5
  switch i8 %i.r, label %default.unreachable75 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

default.unreachable75:                            ; preds = %bb.n, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.d
  %.sroa.3.0.copyload53 = phi i8 [ %i.l, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.0 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  switch i64 %.sroa.07.0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit [
    i64 0, label %bb.o
    i64 3, label %bb.p
  ]

bb.f:                                             ; preds = %bb.n, %bb.d
  %.sroa.355.0.copyload = phi i8 [ %i.l, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.1 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  switch i64 %.sroa.07.1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36 [
    i64 3, label %bb.o
    i64 0, label %bb.p
  ]

bb.g:                                             ; preds = %bb.n, %bb.d
  %.sroa.07.2 = phi i64 [ %i.ab, %bb.n ], [ %i.p, %bb.d ]
  %i.s = icmp eq i64 %.sroa.07.2, 2
  br i1 %i.s, label %bb.r, label %bb.p

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.sroa.318.0 = phi i8 [ %i.k, %bb.c ], [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ], [ %.sroa.3.0.copyload, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %.sroa.017, ptr noundef nonnull align 16 dereferenceable(21) %1, i64 21, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.523, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) %.sroa.017, i64 21, i1 false)
  store i8 %.sroa.318.0, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.523, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.037.0.copyload = load i128, ptr %1, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.744.0.copyload = load i8, ptr %.sroa.744.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.3.0..sroa_idx, i64 11, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12535)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !4582, !alias.scope !12535, !noalias !12537, !noundef !5 ; 2 uses
  %i.v = icmp eq i8 %.sroa.744.0.copyload, 1
  br i1 %i.v, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.u, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %.sroa.037.0.copyload38 = load i128, ptr %2, align 16, !alias.scope !12538, !noalias !12530
  %.sroa.7.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload41 = load i32, ptr %.sroa.7.0..sroa_idx40, align 16, !alias.scope !12538, !noalias !12530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %i.e, i64 11, i1 false), !alias.scope !12538, !noalias !12530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12539)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.h ], [ %.sroa.7.0.copyload41, %bb.j ]
  %.sroa.037.0 = phi i128 [ %.sroa.037.0.copyload, %bb.h ], [ %.sroa.037.0.copyload38, %bb.j ] ; 2 uses
  %i.x = and i128 %.sroa.037.0, 2596148429267413814265248164610048
  %.not.not.i.i = icmp eq i128 %i.x, 0
  %.sroa.037.1 = or i128 %.sroa.037.0, 2596148429267413814265248164610048
  %.sroa.0.0.i.i = zext i1 %.not.not.i.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.y, align 16, !alias.scope !12542, !noalias !12544
  store i128 %.sroa.037.1, ptr %0, align 16, !alias.scope !12545, !noalias !12535
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx42, align 16, !alias.scope !12545, !noalias !12535
  %.sroa.744.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.744.0..sroa_idx47, align 4, !alias.scope !12545, !noalias !12535
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx50, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !alias.scope !12545, !noalias !12535
  %i.z = icmp eq i8 %i.u, 1
  br i1 %i.z, label %bb.l, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12546
  unreachable

bb.l:                                             ; preds = %.thread.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12535, !noalias !12537
  %i.aa = and i128 %.sroa.0.0.copyload.i, 2596148429267413814265248164610048
  %.not.not.i = icmp eq i128 %i.aa, 0
  br i1 %.not.not.i, label %bb.m, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.y, align 16, !alias.scope !12530, !noalias !12538
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.thread.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.n to i64                ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !4582, !noundef !5
  switch i8 %i.ad, label %default.unreachable75 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ae, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @71, i64 32, i1 false)
  br label %bb.q

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.e
  %spec.select70 = and i8 %.sroa.3.0.copyload53, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.af, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @72, i64 21, i1 false)
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select70, ptr %.sroa.461.0..sroa_idx, align 1
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @72, i64 22), i64 10, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ag, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36, %bb.p, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit, %bb.o, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit
  ret void

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit36: ; preds = %bb.f
  %spec.select71 = and i8 %.sroa.355.0.copyload, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.ah, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @73, i64 21, i1 false)
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select71, ptr %.sroa.468.0..sroa_idx, align 1
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @73, i64 22), i64 10, i1 false)
  br label %bb.q

bb.r:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i32, ptr %i.ai, align 16, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 16, !noundef !5
  %i.am = sub i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 16
  %i.an = load i128, ptr %1, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i128 %i.an, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ao = load i128, ptr %2, align 16, !noundef !5
  store i128 %i.ao, ptr %i.c, align 16
  %i.ap = call fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3div(ptr noalias nofree noundef nonnull align 16 %1, ptr noalias nofree noundef align 4 dereferenceable(4) %i.ak, ptr noalias nofree noundef nonnull align 16 %i.d, ptr noalias nofree noundef nonnull align 16 %i.c, i64 noundef 113) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, i8 noundef %3, i8 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = load i8, ptr %i.aq, align 16, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.ap, 0
  %i.as = or i8 %i.ar, 16
  %spec.select = select i1 %.not, i8 %i.ar, i8 %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %spec.select, ptr %i.at, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5mul_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %.sroa.9 = alloca [11 x i8], align 1            ; 5 uses
  %.sroa.016 = alloca [21 x i8], align 16         ; 2 uses
  %.sroa.522 = alloca [10 x i8], align 2          ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 4 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !2517, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i8, ptr %i.g, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = and i8 %.sroa.3.0.copyload, 1            ; 3 uses
  %i.k = xor i8 %i.j, 1                           ; 4 uses
  store i8 %i.k, ptr %.sroa.3.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i8, ptr %i.l, align 4, !range !4582, !noundef !5 ; 2 uses
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.h to i64                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i8, ptr %i.p, align 4, !range !4582, !noundef !5
  switch i8 %i.q, label %default.unreachable77 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

default.unreachable77:                            ; preds = %bb.n, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.d
  %.sroa.3.0.copyload5275 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.0 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  %i.r = icmp eq i64 %.sroa.07.0, 3
  br i1 %i.r, label %bb.o, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit

bb.f:                                             ; preds = %bb.n, %bb.d
  %.sroa.354.0.copyload73 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ]
  %.sroa.07.1 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  %i.s = icmp eq i64 %.sroa.07.1, 0
  br i1 %i.s, label %bb.o, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35

bb.g:                                             ; preds = %bb.n, %bb.d
  %.sroa.354.0.copyload72 = phi i8 [ %i.k, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ] ; 2 uses
  %.sroa.07.2 = phi i64 [ %i.ab, %bb.n ], [ %i.o, %bb.d ]
  switch i64 %.sroa.07.2, label %.unreachabledefault [
    i64 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit
    i64 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35
    i64 2, label %bb.q
  ]

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.n
  %.sroa.317.0 = phi i8 [ %i.j, %bb.c ], [ %i.j, %bb.n ], [ %.sroa.3.0.copyload, %bb.d ], [ %.sroa.3.0.copyload, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %.sroa.016, ptr noundef nonnull align 16 dereferenceable(21) %1, i64 21, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.522, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) %.sroa.016, i64 21, i1 false)
  store i8 %.sroa.317.0, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.522, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.036.0.copyload = load i128, ptr %1, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.743.0.copyload = load i8, ptr %.sroa.743.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.3.0..sroa_idx, i64 11, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12552)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !4582, !alias.scope !12552, !noalias !12554, !noundef !5 ; 2 uses
  %i.v = icmp eq i8 %.sroa.743.0.copyload, 1
  br i1 %i.v, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.u, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %.sroa.036.0.copyload37 = load i128, ptr %2, align 16, !alias.scope !12555, !noalias !12547
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload40 = load i32, ptr %.sroa.7.0..sroa_idx39, align 16, !alias.scope !12555, !noalias !12547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %i.d, i64 11, i1 false), !alias.scope !12555, !noalias !12547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %bb.h ], [ %.sroa.7.0.copyload40, %bb.j ]
  %.sroa.036.0 = phi i128 [ %.sroa.036.0.copyload, %bb.h ], [ %.sroa.036.0.copyload37, %bb.j ] ; 2 uses
  %i.x = and i128 %.sroa.036.0, 2596148429267413814265248164610048
  %.not.not.i.i = icmp eq i128 %i.x, 0
  %.sroa.036.1 = or i128 %.sroa.036.0, 2596148429267413814265248164610048
  %.sroa.0.0.i.i = zext i1 %.not.not.i.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.y, align 16, !alias.scope !12559, !noalias !12561
  store i128 %.sroa.036.1, ptr %0, align 16, !alias.scope !12562, !noalias !12552
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx41, align 16, !alias.scope !12562, !noalias !12552
  %.sroa.743.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.743.0..sroa_idx46, align 4, !alias.scope !12562, !noalias !12552
  %.sroa.9.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx49, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !alias.scope !12562, !noalias !12552
  %i.z = icmp eq i8 %i.u, 1
  br i1 %i.z, label %bb.l, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12563
  unreachable

bb.l:                                             ; preds = %.thread.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12552, !noalias !12554
  %i.aa = and i128 %.sroa.0.0.copyload.i, 2596148429267413814265248164610048
  %.not.not.i = icmp eq i128 %i.aa, 0
  br i1 %.not.not.i, label %bb.m, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.y, align 16, !alias.scope !12547, !noalias !12555
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.thread.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.m to i64                ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !4582, !noundef !5
  switch i8 %i.ad, label %default.unreachable77 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 3, label %bb.f
    i8 2, label %bb.g
  ]

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ae, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @71, i64 32, i1 false)
  br label %bb.p

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.g, %bb.e
  %.sroa.3.0.copyload52 = phi i8 [ %.sroa.354.0.copyload72, %bb.g ], [ %.sroa.3.0.copyload5275, %bb.e ]
  %spec.select69 = and i8 %.sroa.3.0.copyload52, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.af, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @73, i64 21, i1 false)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select69, ptr %.sroa.460.0..sroa_idx, align 1
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.561.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @73, i64 22), i64 10, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit, %bb.o, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit
  ret void

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCs8K4cjrcxBsw_6hir_ty.exit35: ; preds = %bb.g, %bb.f
  %.sroa.354.0.copyload = phi i8 [ %.sroa.354.0.copyload72, %bb.g ], [ %.sroa.354.0.copyload73, %bb.f ]
  %spec.select70 = and i8 %.sroa.354.0.copyload, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ag, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @72, i64 21, i1 false)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select70, ptr %.sroa.467.0..sroa_idx, align 1
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @72, i64 22), i64 10, i1 false)
  br label %bb.p

.unreachabledefault:                              ; preds = %bb.g
  unreachable

bb.q:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 16, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 16, !noundef !5
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.am = call fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %i.c, i64 noundef 2, ptr noalias nofree noundef align 4 dereferenceable(4) %i.aj, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %2, i64 noundef 1, i64 noundef 113) #34 ; 2 uses
  %i.an = load i128, ptr %i.c, align 16, !noundef !5
  store i128 %i.an, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  call fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, i8 noundef %3, i8 noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ap = load i8, ptr %i.ao, align 16, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.am, 0
  %i.aq = or i8 %i.ap, 16
  %spec.select = select i1 %.not, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %spec.select, ptr %i.ar, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5sub_rCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 16 captures(none) dead_on_return dereferenceable(32) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !4582, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  %i.e = icmp eq i8 %i.b, 1                       ; 2 uses
  %i.f = icmp eq i8 %i.d, 1                       ; 3 uses
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12569)
  br i1 %i.e, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.g, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !12571, !noalias !12564
  %.pr.i = load i8, ptr %i.a, align 4, !alias.scope !12572, !noalias !12575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %i.g = icmp eq i8 %.pr.i, 1
  br i1 %i.g, label %.thread.i, label %bb.e, !prof !12498

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #31, !noalias !12579
  unreachable

.thread.i:                                        ; preds = %bb.d, %bb.b
  %.sroa.02.0.copyload.i.i = load i128, ptr %1, align 16, !alias.scope !12572, !noalias !12575 ; 2 uses
  %i.h = and i128 %.sroa.02.0.copyload.i.i, 2596148429267413814265248164610048
  %.not.not.i.i = icmp eq i128 %i.h, 0
  br i1 %.not.not.i.i, label %bb.f, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit.i

bb.f:                                             ; preds = %.thread.i
  %i.i = or disjoint i128 %.sroa.02.0.copyload.i.i, 2596148429267413814265248164610048
  store i128 %i.i, ptr %1, align 16, !alias.scope !12572, !noalias !12575
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.f, %.thread.i
  %.sroa.0.0.i.i = phi i8 [ 1, %bb.f ], [ 0, %.thread.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.j, align 16, !alias.scope !12580, !noalias !12581
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !12582, !noalias !12569
  br i1 %i.f, label %bb.h, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31, !noalias !12583
  unreachable

bb.h:                                             ; preds = %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.0.copyload.i = load i128, ptr %2, align 16, !alias.scope !12569, !noalias !12584
  %i.k = and i128 %.sroa.0.0.copyload.i, 2596148429267413814265248164610048
  %.not.not.i = icmp eq i128 %i.k, 0
  br i1 %.not.not.i, label %bb.i, label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 16, !alias.scope !12564, !noalias !12571
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 21 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !2517, !noundef !5
  %i.n = xor i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 1
  tail call void @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtB7_5Float5add_rCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(32) %2, i8 noundef %3)
  br label %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling28binop_result_from_either_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.i, %bb.h, %_RINvMs7_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB6_28IeeeDefaultExceptionHandling15result_from_nanNtB6_5QuadSECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7DoubleSENtB7_5Float14cmp_abs_normalCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4
  switch i8 %.sroa.3.0.copyload, label %bb.c [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ], !prof !12423

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.39.0.copyload = load i8, ptr %.sroa.39.0..sroa_idx, align 4
  switch i8 %.sroa.39.0.copyload, label %bb.e [
    i8 3, label %bb.d
    i8 1, label %bb.d
    i8 0, label %bb.d
  ], !prof !12423

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 16, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !noundef !5 ; 2 uses
  %i.f = tail call i8 @llvm.scmp.i8.i32(i32 %i.c, i32 %i.e)
  %i.g = icmp eq i32 %i.c, %i.e
  br i1 %i.g, label %bb.f, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12585
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 16 %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 16 %1, ptr noundef nonnull readonly %i.d)
  %.sroa.09.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !12585 ; 2 uses
  %.sroa.3.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload.i7 = load ptr, ptr %.sroa.3.0..sroa_idx.i6, align 8, !noalias !12585 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !12585 ; 2 uses
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.611.0.copyload.i = load i64, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !12585 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12585
  %i.h = icmp ult i64 %.sroa.510.0.copyload.i, %.sroa.611.0.copyload.i
  br i1 %i.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i7) ]
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.i = icmp ult i64 %.sroa.510.0.copyload.i, %i.j
  br i1 %i.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader, %bb.g
  %.sroa.7.0.i16 = phi i64 [ %i.j, %bb.g ], [ %.sroa.611.0.copyload.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i.preheader ]
  %i.j = add i64 %.sroa.7.0.i16, -1               ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.j
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i7, i64 %i.j
  %i.m = load i128, ptr %i.k, align 16, !noundef !5 ; 2 uses
  %i.n = load i128, ptr %i.l, align 16, !noundef !5 ; 2 uses
  %i.o = icmp eq i128 %i.m, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E9next_backCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.p = tail call i8 @llvm.ucmp.i8.i128(i128 %i.m, i128 %i.n)
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3cmp.exit: ; preds = %bb.g, %bb.f, %bb.h, %bb.e
  %.sroa.0.0 = phi i8 [ %i.f, %bb.e ], [ %i.p, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_7SingleSENtB7_5Float14cmp_abs_normalCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4
  switch i8 %.sroa.3.0.copyload, label %bb.c [
    i8 3, label %bb.b
end_hunk_2
begin_hunk_3_@_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtBP_5lower22GenericPredicateSourceEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtBM_5lower22GenericPredicateSourceEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtB1f_5lower22GenericPredicateSourceEEEB1f_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtBT_5lower22GenericPredicateSourceEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtB1m_5lower22GenericPredicateSourceEEEB1m_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtB1m_5lower22GenericPredicateSourceEEEB1m_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtB1f_5lower22GenericPredicateSourceEEEB1f_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtBT_5lower22GenericPredicateSourceEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseNtNtB1f_5lower22GenericPredicateSourceEEEB1f_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB22_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEEB2s_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEEB2z_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEEB2z_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEEB2s_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTjRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEEEB2s_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 16, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 16, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECs8K4cjrcxBsw_6hir_ty.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCsdtH0xi6p5qe_10rayon_core8registry19WORKER_THREAD_STATE0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_INtNtB1f_4cell4CellPNtB8_12WorkerThreadEEEEE9call_onceCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsdtH0xi6p5qe_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMs4_NtCsdtH0xi6p5qe_10rayon_core8registryNtBe_8Registry14in_worker_cold10LOCK_LATCH0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1G_6option6OptionQIB2l_NtNtBg_5latch9LockLatchEEEE9call_onceCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCsdtH0xi6p5qe_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5HalfSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 2 uses
  %i.b = and i128 %i.a, 1023                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  switch i8 %i.d, label %default.unreachable13 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 16, !noundef !5 ; 2 uses
  %i.g = and i128 %i.a, 1024
  %i.h = icmp eq i128 %i.g, 0
  %i.i = icmp eq i32 %i.f, -14
  %brmerge.not = and i1 %i.h, %i.i
  %i.j = sext i1 %brmerge.not to i32
  %spec.select = add i32 %i.f, 15
  %i.k = add i32 %spec.select, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.sroa.08.0 = phi i32 [ 0, %bb.d ], [ 31, %bb.b ], [ %i.k, %bb.c ], [ 31, %bb.a ]
  %.sroa.0.0 = phi i128 [ 0, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ 0, %bb.a ]
  %i.l = sext i32 %.sroa.08.0 to i128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.n = load i8, ptr %i.m, align 1, !range !2517, !noundef !5
  %i.o = zext nneg i8 %i.n to i128
  %i.p = shl nuw nsw i128 %i.o, 15
  %i.q = shl nsw i128 %i.l, 10
  %i.r = or disjoint i128 %i.q, %.sroa.0.0
  %i.s = or i128 %i.r, %i.p
  ret i128 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5HalfSNtB4_9Semantics9from_bitsCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 22)) %0, i128 noundef %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i128 %1, 1023                        ; 5 uses
  %i.b = trunc i128 %1 to i32
  %i.c = lshr i32 %i.b, 10
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = add nsw i32 %i.d, -15                    ; 2 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 16
  br i1 %i.g, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1, label %bb.b

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i
  %.not.i.i.i.i.1.not.not = icmp eq i128 %i.a, 0
  br i1 %.not.i.i.i.i.1.not.not, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5HalfSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5HalfSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread: ; preds = %bb.a
  %.not.i.i.i.i.not.not = icmp eq i128 %i.a, 0    ; 2 uses
  %spec.select62 = select i1 %.not.i.i.i.i.not.not, i32 -15, i32 -14
  %spec.select63 = select i1 %.not.i.i.i.i.not.not, i8 3, i8 2
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5HalfSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i
  %i.h = or disjoint i128 %i.a, 1024
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5HalfSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5HalfSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2, %bb.b
  %.sroa.7.0 = phi i32 [ %spec.select62, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ %i.e, %bb.b ], [ 16, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 16, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %.sroa.0.0 = phi i128 [ %i.a, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ %i.h, %bb.b ], [ %i.a, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 0, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %.sroa.01.0 = phi i8 [ %spec.select63, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ 2, %bb.b ], [ 1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 0, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5HalfSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %2 = lshr i128 %1, 15
  %3 = trunc i128 %2 to i8
  %4 = and i8 %3, 1
  store i128 %.sroa.0.0, ptr %0, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.01.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %4, ptr %.sroa.13.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5QuadSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 2 uses
  %i.b = and i128 %i.a, 5192296858534827628530496329220095 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  switch i8 %i.d, label %default.unreachable13 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 16, !noundef !5 ; 2 uses
  %i.g = and i128 %i.a, 5192296858534827628530496329220096
  %i.h = icmp eq i128 %i.g, 0
  %i.i = icmp eq i32 %i.f, -16382
  %brmerge.not = and i1 %i.h, %i.i
  %i.j = sext i1 %brmerge.not to i32
  %spec.select = add i32 %i.f, 16383
  %i.k = add i32 %spec.select, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.sroa.08.0 = phi i32 [ 0, %bb.d ], [ 32767, %bb.b ], [ %i.k, %bb.c ], [ 32767, %bb.a ]
  %.sroa.0.0 = phi i128 [ 0, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ 0, %bb.a ]
  %i.l = zext i32 %.sroa.08.0 to i128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.n = load i8, ptr %i.m, align 1, !range !2517, !noundef !5
  %i.o = zext nneg i8 %i.n to i128
  %i.p = shl nuw i128 %i.o, 127
  %i.q = shl i128 %i.l, 112
  %i.r = or disjoint i128 %i.q, %.sroa.0.0
  %i.s = or i128 %i.r, %i.p
  ret i128 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee5QuadSNtB4_9Semantics9from_bitsCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 22)) %0, i128 noundef %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i128 %1, 112
  %i.b = and i128 %1, 5192296858534827628530496329220095 ; 5 uses
  %i.c = trunc nuw nsw i128 %i.a to i32
  %i.d = and i32 %i.c, 32767                      ; 2 uses
  %i.e = add nsw i32 %i.d, -16383                 ; 2 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 16384
  br i1 %i.g, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1, label %bb.b

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i
  %.not.i.i.i.i.1.not.not = icmp eq i128 %i.b, 0
  br i1 %.not.i.i.i.i.1.not.not, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5QuadSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5QuadSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread: ; preds = %bb.a
  %.not.i.i.i.i.not.not = icmp eq i128 %i.b, 0    ; 2 uses
  %spec.select62 = select i1 %.not.i.i.i.i.not.not, i32 -16383, i32 -16382
  %spec.select63 = select i1 %.not.i.i.i.i.not.not, i8 3, i8 2
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5QuadSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i
  %i.h = or disjoint i128 %i.b, 5192296858534827628530496329220096
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5QuadSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit

_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB3B_5QuadSEEE8try_folduNCINvNvB10_8find_map5checkB3y_NtB3D_8CategoryNCNvYB4l_NtB3B_9Semantics9from_bits0E0INtNtB7_12control_flow11ControlFlowB5e_EE0B65_ECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2, %bb.b
  %.sroa.7.0 = phi i32 [ %spec.select62, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ %i.e, %bb.b ], [ 16384, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 16384, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %.sroa.0.0 = phi i128 [ %i.b, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ %i.h, %bb.b ], [ %i.b, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 0, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %.sroa.01.0 = phi i8 [ %spec.select63, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.thread ], [ 2, %bb.b ], [ 1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2 ], [ 0, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB20_5QuadSEEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_NtB22_8CategoryNCNvYB2K_NtB20_9Semantics9from_bits0E0INtNtNtBe_3ops12control_flow11ControlFlowB4e_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1 ]
  %.lobit = lshr i128 %1, 127
  %2 = trunc nuw nsw i128 %.lobit to i8
  store i128 %.sroa.0.0, ptr %0, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.01.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %2, ptr %.sroa.13.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee7DoubleSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 2 uses
  %i.b = and i128 %i.a, 4503599627370495          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  switch i8 %i.d, label %default.unreachable13 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 16, !noundef !5 ; 2 uses
  %i.g = and i128 %i.a, 4503599627370496
  %i.h = icmp eq i128 %i.g, 0
  %i.i = icmp eq i32 %i.f, -1022
  %brmerge.not = and i1 %i.h, %i.i
  %i.j = sext i1 %brmerge.not to i32
  %spec.select = add i32 %i.f, 1023
  %i.k = add i32 %spec.select, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.sroa.08.0 = phi i32 [ 0, %bb.d ], [ 2047, %bb.b ], [ %i.k, %bb.c ], [ 2047, %bb.a ]
  %.sroa.0.0 = phi i128 [ 0, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ 0, %bb.a ]
  %i.l = sext i32 %.sroa.08.0 to i128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.n = load i8, ptr %i.m, align 1, !range !2517, !noundef !5
  %i.o = zext nneg i8 %i.n to i128
  %i.p = shl nuw nsw i128 %i.o, 63
  %i.q = shl nsw i128 %i.l, 52
  %i.r = or disjoint i128 %i.q, %.sroa.0.0
  %i.s = or i128 %i.r, %i.p
  ret i128 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i128 @_RNvYNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee7SingleSNtB4_9Semantics7to_bitsCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 2 uses
  %i.b = and i128 %i.a, 8388607                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !4582, !noundef !5
  switch i8 %i.d, label %default.unreachable13 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 16, !noundef !5 ; 2 uses
  %i.g = and i128 %i.a, 8388608
  %i.h = icmp eq i128 %i.g, 0
  %i.i = icmp eq i32 %i.f, -126
  %brmerge.not = and i1 %i.h, %i.i
  %i.j = sext i1 %brmerge.not to i32
  %spec.select = add i32 %i.f, 127
  %i.k = add i32 %spec.select, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.sroa.08.0 = phi i32 [ 0, %bb.d ], [ 255, %bb.b ], [ %i.k, %bb.c ], [ 255, %bb.a ]
  %.sroa.0.0 = phi i128 [ 0, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ 0, %bb.a ]
  %i.l = sext i32 %.sroa.08.0 to i128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.n = load i8, ptr %i.m, align 1, !range !2517, !noundef !5
  %i.o = zext nneg i8 %i.n to i128
  %i.p = shl nuw nsw i128 %i.o, 31
  %i.q = shl nsw i128 %i.l, 23
  %i.r = or disjoint i128 %i.q, %.sroa.0.0
  %i.s = or i128 %i.r, %i.p
  ret i128 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE14offset_of_dataBT_(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE14offset_of_dataBT_(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBb0_16GarbageCollector13sweep_storageB7Z_NCNvXBb0_INtBb0_15InternedStorageB8z_ENtBb0_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdo_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaJ_16GarbageCollector13sweep_storageB7Z_NCNvXBaJ_INtBaJ_15InternedStorageB8z_ENtBaJ_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bd7_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaQ_16GarbageCollector13sweep_storageB7Z_NCNvXBaQ_INtBaQ_15InternedStorageB8z_ENtBaQ_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bde_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaR_16GarbageCollector13sweep_storageB7Z_NCNvXBaR_INtBaR_15InternedStorageB8z_ENtBaR_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdf_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBb5_16GarbageCollector13sweep_storageB7Z_NCNvXBb5_INtBb5_15InternedStorageB8z_ENtBb5_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdt_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner15PatternInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaU_16GarbageCollector13sweep_storageB7Z_NCNvXBaU_INtBaU_15InternedStorageB8z_ENtBaU_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdi_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaX_16GarbageCollector13sweep_storageB7Z_NCNvXBaX_INtBaX_15InternedStorageB8z_ENtBaX_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdl_EB8F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBb2_16GarbageCollector13sweep_storageB7Z_NCNvXBb2_INtBb2_15InternedStorageB8z_ENtBb2_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdq_EB8H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB8K_6ClauseEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBbn_16GarbageCollector13sweep_storageB7Z_NCNvXs_Bbn_INtBbn_20InternedSliceStorageNtB8K_14ClausesStorageENtBbn_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bea_EB8O_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBc4_16GarbageCollector13sweep_storageB7Z_NCNvXs_Bc4_INtBc4_20InternedSliceStorageNtB9P_20BoundVarKindsStorageENtBc4_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BeX_EB9T_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8O_9predicate20ExistentialPredicateB9B_EEEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBcC_16GarbageCollector13sweep_storageB7Z_NCNvXs_BcC_INtBcC_20InternedSliceStorageNtNtB9F_9predicate33BoundExistentialPredicatesStorageENtBcC_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BfU_EB9H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBc6_16GarbageCollector13sweep_storageB7Z_NCNvXs_Bc6_INtBc6_20InternedSliceStorageNtB9R_20CanonicalVarsStorageENtBc6_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BeZ_EB9V_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB9U_11generic_arg10GenericArgEEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBcE_16GarbageCollector13sweep_storageB7Z_NCNvXs_BcE_INtBcE_20InternedSliceStorageNtNtB9U_6region24RegionAssumptionsStorageENtBcE_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BfK_EB9W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8M_5LocalEEEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBbs_16GarbageCollector13sweep_storageB7Z_NCNvXs_Bbs_INtBbs_20InternedSliceStorageNtB8M_17ProjectionStorageENtBbs_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bei_EB8O_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaK_16GarbageCollector13sweep_storageB7Z_NCNvXs_BaK_INtBaK_20InternedSliceStorageNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner18VariancesOfStorageENtBaK_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bei_EBcB_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBb3_16GarbageCollector13sweep_storageB7Z_NCNvXs_Bb3_INtBb3_20InternedSliceStorageNtB8L_18GenericArgsStorageENtBb3_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BdU_EB8P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaK_16GarbageCollector13sweep_storageB7Z_NCNvXs_BaK_INtBaK_20InternedSliceStorageNtB8L_10TysStorageENtBaK_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Bdt_EB8P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaR_16GarbageCollector13sweep_storageB7Z_NCNvXs_BaR_INtBaR_20InternedSliceStorageNtB8L_13ConstsStorageENtBaR_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0BdD_EB8P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsdtH0xi6p5qe_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs1Deu0X9zrS8_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtB6z_4util11SharedValueuEEEEEEINtNtB3e_8for_each15ForEachConsumerNCINvMs0_NtCs39E2wp1vf7X_6intern2gcNtBaY_16GarbageCollector13sweep_storageB7Z_NCNvXs_BaY_INtBaY_20InternedSliceStorageNtNtB8N_7opaques19SolverDefIdsStorageENtBaY_7Storage5sweep0Es_0EE0NCB37_s_0uuE0TuuEE0Be0_EB8P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0
end_hunk_3
