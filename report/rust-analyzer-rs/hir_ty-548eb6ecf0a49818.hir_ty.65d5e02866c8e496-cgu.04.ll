Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator15patch_addressesNCNvB2_27allocate_allocation_in_heaps_0EBa_:bb.a
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cb
  %.sink477 = phi ptr [ %i.fs, %bb.cs ], [ %.sroa.5220.0.copyload, %bb.cb ]
  %.sink476 = phi i64 [ %i.gb, %bb.cs ], [ %.sroa.6221.0.copyload, %bb.cb ]
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink477, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink476, ptr %.sroa.560.0..sroa_idx, align 8
  br label %bb.cr

bb.cu:                                            ; preds = %bb.r
  %i.gc = load i32, ptr %i.w, align 8, !range !9, !noundef !5 ; 2 uses
  %.not329 = icmp eq i32 %i.gc, -1
  br i1 %.not329, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.4259.0.copyload = load i32, ptr %.sroa.4259.0..sroa_idx, align 4
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5260.0.copyload = load ptr, ptr %.sroa.5260.0..sroa_idx, align 8
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6261.0.copyload = load i64, ptr %.sroa.6261.0..sroa_idx, align 8
  %.sroa.7262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.7267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7267.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7262.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i32 %i.gc, ptr %0, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4259.0.copyload, ptr %.sroa.4264.0..sroa_idx, align 4
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5260.0.copyload, ptr %.sroa.5265.0..sroa_idx, align 8
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6261.0.copyload, ptr %.sroa.6266.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dm

bb.cw:                                            ; preds = %bb.cu
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !nonnull !5, !noundef !5
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator27allocate_allocation_in_heaps_0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.x, ptr nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ge, i64 noundef %i.gg)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  %i.gh = load i32, ptr %i.x, align 8, !range !9, !noundef !5 ; 2 uses
  %.not330 = icmp eq i32 %i.gh, -1
  br i1 %.not330, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.4273.0.copyload = load i32, ptr %.sroa.4273.0..sroa_idx, align 4
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5274.0.copyload = load ptr, ptr %.sroa.5274.0..sroa_idx, align 8
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6279.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6275.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i32 %i.gh, ptr %0, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4273.0.copyload, ptr %.sroa.4277.0..sroa_idx, align 4
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5274.0.copyload, ptr %.sroa.5278.0..sroa_idx, align 8
  br label %bb.dm

bb.cz:                                            ; preds = %bb.cx
  %i.gi = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.gl = invoke fastcc noundef i64 @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB2_9VTableMap2id(ptr noalias nofree noundef align 8 dereferenceable(56) %i.gk, ptr noundef nonnull %i.gj)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.gl, ptr %i.u, align 8
  invoke void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  %i.gm = load i32, ptr %i.v, align 8, !range !9, !noundef !5
  %.not331 = icmp eq i32 %i.gm, -1
  br i1 %.not331, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.dm

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit447

bb.de:                                            ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5394.0.copyload) ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.5394.0.copyload, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !noundef !5
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.5394.0.copyload, i64 16 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.gp, ptr %i.i, align 8
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.gq, ptr %.sroa.2148.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  br label %bb.df

bb.df:                                            ; preds = %bb.dl, %bb.de
  %i.gs = invoke noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc377:                                        ; preds = %bb.df
  %.not.i375 = icmp eq ptr %i.gs, null
  br i1 %.not.i375, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.noexc377
  %i.gt = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2337, !noundef !5 ; 2 uses
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2337
  %i.gv = invoke fastcc noundef i64 @_RNvMsr_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE6offsetBW_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gr, i64 noundef %i.gt)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dh:                                            ; preds = %.noexc377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit447

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.4.0.i.i378 = add i64 %i.gv, %5
  invoke fastcc void @_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator15patch_addressesNCNvB2_27allocate_allocation_in_heaps_0EBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i64 noundef %4, i64 noundef %.sroa.4.0.i.i378, ptr noundef nonnull %i.gs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %7)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dj:                                            ; preds = %bb.di
  %i.gw = load i32, ptr %i.h, align 8, !range !9, !noundef !5
  %.not328 = icmp eq i32 %i.gw, -1
  br i1 %.not328, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.df

bb.dm:                                            ; preds = %bb.cv, %bb.cy, %bb.dk, %bb.ba, %bb.bf, %bb.bc, %bb.cr, %bb.bx, %bb.bi, %bb.dc, %bb.aw, %bb.ad, %bb.l
  %i.gx = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2338
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.dn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit379

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.aj) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit379

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit379: ; preds = %bb.o, %.loopexit447, %bb.b, %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void

bb.do:                                            ; preds = %bb.k
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator20fill_locals_for_bodyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1o_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1120) %1, i64 %.88.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [64 x i8], align 8                ; 13 uses
  %i.g = icmp ult i64 %.88.val, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  store i64 1, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store ptr %4, ptr %.sroa.3.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = insertelement <2 x ptr> poison, ptr %.sroa.0.sroa.4.0..sroa_idx, i64 0
  %i.r = insertelement <2 x ptr> %i.q, ptr %.sroa.0.sroa.3.0..sroa_idx, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.s = phi i64 [ 1, %bb.a ], [ %.pre, %bb.u ]   ; 2 uses
  %.sroa.0.0 = phi i64 [ %.88.val, %bb.a ], [ %i.be, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %bb.c, label %bb.g, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2382
  store <2 x ptr> %i.r, ptr %i.c, align 16, !noalias !2383
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !2384, !noalias !2385, !nonnull !5, !noundef !5
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2384, !noalias !2385
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.u = phi ptr [ %i.w, %bb.e ], [ %.promoted.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.t
  br i1 %i.v, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3f_8ArenaMapINtB3h_3IdxNtB2s_5LocalEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.f, align 8, !alias.scope !2384, !noalias !2385
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.x = load ptr, ptr %i.m, align 8, !alias.scope !2386, !noalias !2387, !nonnull !5, !align !11, !noundef !5
  %i.y = load i64, ptr %i.x, align 8, !noalias !2388, !noundef !5
  %i.z = call { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtBT_8ArenaMapINtBV_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtB1N_4eval8IntervalE4iter0INtB7_5FnMutTTjRINtNtBb_6option6OptionB2l_EEEE8call_mutB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !2389 ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %i.m, align 8, !alias.scope !2386, !noalias !2387, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !2389, !noundef !5
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !2389
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i32, ptr } %i.z, 0
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3f_8ArenaMapINtB3h_3IdxNtB2s_5LocalEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_.exit.i.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3f_8ArenaMapINtB3h_3IdxNtB2s_5LocalEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_.exit.i.i: ; preds = %bb.d, %bb.f
  %.sroa.3.0.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.f ], [ null, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.f ], [ undef, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2382
  %.not.i.i.i.i = icmp eq ptr %.sroa.3.0.i.i.i.i.i.i, null
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i32 undef, i32 %.sroa.0.0.i.i.i.i.i.i
  %i.af = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i.i.i.i, 0
  %i.ag = insertvalue { i32, ptr } %i.af, ptr %.sroa.3.0.i.i.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10filter_map9FilterMapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3w_8ArenaMapINtB3y_3IdxNtB2J_5LocalEB2F_E4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB2L_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !2390, !noalias !2391
  %i.ah = call fastcc { i32, ptr } @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB39_8ArenaMapINtB3b_3IdxNtB2m_5LocalEB2i_E4iter0ENtNtNtB9_6traits8iterator8Iterator3nthB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.s) #47, !noalias !2391
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10filter_map9FilterMapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3w_8ArenaMapINtB3y_3IdxNtB2J_5LocalEB2F_E4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB2L_.exit.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10filter_map9FilterMapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3w_8ArenaMapINtB3y_3IdxNtB2J_5LocalEB2F_E4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB2L_.exit.i: ; preds = %bb.g, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3f_8ArenaMapINtB3h_3IdxNtB2s_5LocalEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_.exit.i.i
  %.pn.i.i = phi { i32, ptr } [ %i.ah, %bb.g ], [ %i.ag, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3f_8ArenaMapINtB3h_3IdxNtB2s_5LocalEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_.exit.i.i ] ; 2 uses
  %i.ai = extractvalue { i32, ptr } %.pn.i.i, 0   ; 3 uses
  %i.aj = extractvalue { i32, ptr } %.pn.i.i, 1   ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10filter_map9FilterMapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3w_8ArenaMapINtB3y_3IdxNtB2J_5LocalEB2F_E4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB2L_.exit.i
  %i.ak = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2392, !noalias !2393, !nonnull !5, !noundef !5 ; 3 uses
  %i.al = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2392, !noalias !2393, !nonnull !5, !noundef !5
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.an, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2392, !noalias !2393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.ao = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ao, ptr %i.b, align 8, !noalias !2394
  store i32 %i.ai, ptr %i.o, align 8, !noalias !2394
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !2394, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %exitcond.not.i.i82 = icmp eq i64 %i.aq, 0
  br i1 %exitcond.not.i.i82, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtB8_12control_flow11ControlFlowuENCNvMs8_B2g_B2e_20iterate_over_parents0NCINvNvBL_3any5checkB2e_NCNvMs7_NtB2g_4evalNtB4B_9DropFlags9add_place0E0E0B2R_EB2i_.exit.thread.i.loopexit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCNvMs7_NtB12_4evalNtB3Y_9DropFlags9add_place0E0E0B14_.exit.i.i

bb.j:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_10filter_map9FilterMapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3w_8ArenaMapINtB3y_3IdxNtB2J_5LocalEB2F_E4iter0EENtNtNtB8_6traits8iterator8Iterator4nextB2L_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not29 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not29, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -1, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2395
  %i.as = call noundef dereferenceable_or_null(17) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 17, i64 noundef range(i64 1, 17) 1) #48, !noalias !2395 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.o, %bb.r, %bb.k
  ret void

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 17) #45
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(17) @82, i64 range(i64 17, 59) 17, i1 false)
  store i32 15, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 17, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.m

bb.p:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCNvMs7_NtB12_4evalNtB3Y_9DropFlags9add_place0E0E0B14_.exit.i.i
  %i.au = add i64 %i.av, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.aq
  br i1 %exitcond.not.i.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtB8_12control_flow11ControlFlowuENCNvMs8_B2g_B2e_20iterate_over_parents0NCINvNvBL_3any5checkB2e_NCNvMs7_NtB2g_4evalNtB4B_9DropFlags9add_place0E0E0B2R_EB2i_.exit.thread.i.loopexit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCNvMs7_NtB12_4evalNtB3Y_9DropFlags9add_place0E0E0B14_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCNvMs7_NtB12_4evalNtB3Y_9DropFlags9add_place0E0E0B14_.exit.i.i: ; preds = %bb.i, %bb.p
  %i.av = phi i64 [ %i.au, %bb.p ], [ 0, %bb.i ]  ; 2 uses
  %i.aw = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ar, i64 noundef %i.av) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2396
  store ptr %i.aw, ptr %i.a, align 8, !noalias !2396
  store i32 %i.ai, ptr %i.p, align 8, !noalias !2396
  %i.ax = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2396
  br i1 %i.ax, label %.loopexit73, label %bb.p

_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtB8_12control_flow11ControlFlowuENCNvMs8_B2g_B2e_20iterate_over_parents0NCINvNvBL_3any5checkB2e_NCNvMs7_NtB2g_4evalNtB4B_9DropFlags9add_place0E0E0B2R_EB2i_.exit.thread.i.loopexit: ; preds = %bb.p, %bb.i
  call void @_RINvMs_NtCsfjX3T6UU9IB_9hashbrown3setINtB5_7HashSetNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6retainNCNvMs7_NtBP_4evalNtB2m_9DropFlags9add_places_0EBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.ay = call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.ao, i32 noundef %i.ai) ; 0 uses
  br label %.loopexit73

.loopexit73:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCNvMs7_NtB12_4evalNtB3Y_9DropFlags9add_place0E0E0B14_.exit.i.i, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtB8_12control_flow11ControlFlowuENCNvMs8_B2g_B2e_20iterate_over_parents0NCINvNvBL_3any5checkB2e_NCNvMs7_NtB2g_4evalNtB4B_9DropFlags9add_place0E0E0B2R_EB2i_.exit.thread.i.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %i.aj, align 8, !range !10, !noundef !5
  %i.az = getelementptr i8, ptr %i.aj, i64 8
  %.val33 = load i64, ptr %i.az, align 8, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator18copy_from_interval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 16 dereferenceable(1120) %1, i64 noundef %.val, i64 noundef %.val33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.13.16..sroa_idx)
  %i.ba = load i32, ptr %i.d, align 8, !range !9, !noundef !5
  %.not31 = icmp eq i32 %i.ba, -1
  br i1 %.not31, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bb = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.bb, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.s:                                             ; preds = %.loopexit73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2397
  %i.bc = call noundef dereferenceable_or_null(18) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 18, i64 noundef range(i64 1, 17) 1) #48, !noalias !2397 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.be = add nsw i64 %.sroa.0.0, -1
  %.pre = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !2390, !noalias !2391
  br label %bb.b

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 18) #45
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(18) @83, i64 range(i64 17, 59) 18, i1 false)
  store i32 15, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 18, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.r
}
end_hunk_0
