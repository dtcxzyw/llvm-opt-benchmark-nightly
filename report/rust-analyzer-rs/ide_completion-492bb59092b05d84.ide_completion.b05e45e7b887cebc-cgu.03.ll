Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.03?download=true
inline.NumInlined: 1132
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12shift_regionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerECsf8NQSppxkmK_14ide_completion:bb.a
  %i.g = icmp ult i32 %i.f, -255
  br i1 %i.g, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef nonnull ptr @_RNvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6RegionNtNtB7_8interner10DbInternerE9new_bound(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.h, %bb.d ], [ %1, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2_4expr18complete_expr_pathsc_0EB4_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  call void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum8variants(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.j, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.a, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread, %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre65 = load i64, ptr %.phi.trans.insert64, align 8 ; 2 uses
  %.pre66 = shl nuw nsw i64 %.pre65, 3
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.j, align 4, !range !20, !noundef !7
  %.not21 = icmp eq i32 %i.o, 2
  br i1 %.not21, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.p = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl7self_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.sroa.09.0.copyload.i = load i32, ptr %.val, align 8, !noalias !368 ; 2 uses
  %i.q = icmp ne i32 %.sroa.09.0.copyload.i, 27
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i32 %.sroa.09.0.copyload.i, 7
  br i1 %i.r, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit: ; preds = %bb.f
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.811.sroa.9.0.copyload.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i, align 8, !noalias !368
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %.sroa.811.sroa.8.0.copyload.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i, align 4, !noalias !368
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.811.sroa.0.0.copyload.i = load i8, ptr %.sroa.811.0..sroa_idx.i, align 8, !noalias !368
  %i.s = icmp eq i8 %.sroa.811.sroa.0.0.copyload.i, 2
  %i.t = icmp eq i32 %.sroa.811.sroa.9.0.copyload.i, %3
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i, %2
  %or.cond61 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond61, label %bb.g, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread: ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.g:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 4 uses
  %.idx = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.h

bb.h:                                             ; preds = %.noexc29, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.ai, %.noexc29 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8 ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.03.i, align 4, !range !21, !noalias !369, !noundef !7 ; 3 uses
  %i.aj = getelementptr i8, ptr %.sroa.0.03.i, i64 4
  %.sroa.0.0.val2.i = load i32, ptr %i.aj, align 4, !noalias !369, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !370
  store i8 0, ptr %i.c, align 4, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !370
  %i.ak = load ptr, ptr %i.l, align 8, !noalias !370, !nonnull !7, !align !10, !noundef !7
  %i.al = invoke noundef nonnull ptr @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant4name(i32 noundef range(i32 1, 0) %.sroa.0.0.val.i, i32 noundef %.sroa.0.0.val2.i, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !371, !noalias !370
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR, ptr %i.ab, align 8, !alias.scope !371, !noalias !370
  store i64 1, ptr %i.ac, align 8, !alias.scope !371, !noalias !370
  store ptr %i.al, ptr %i.ad, align 8, !alias.scope !371, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !370
  invoke void @_RINvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7ModPath13from_segmentsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1f_7sources4once4OnceNtNtB7_4name4NameEB20_EECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !370
  store ptr %0, ptr %i.a, align 8, !noalias !370
  store ptr %1, ptr %i.af, align 8, !noalias !370
  store i32 %.sroa.0.0.val.i, ptr %i.ag, align 8, !noalias !370
  store i32 %.sroa.0.0.val2.i, ptr %i.ah, align 4, !noalias !370
  invoke fastcc void @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsc_0B7_(ptr nonnull %5, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %.sroa.0.0.val.i, i32 noundef %.sroa.0.0.val2.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ae) #32
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !370
  %i.am = icmp eq ptr %i.ai, %i.z
  br i1 %i.am, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit, label %bb.h

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit: ; preds = %.noexc29, %bb.g, %bb.c
  %.idx62.pre-phi = phi i64 [ %.pre66, %bb.c ], [ %.idx, %bb.g ], [ %.idx, %.noexc29 ]
  %i.an = phi i64 [ %.pre65, %bb.c ], [ %i.y, %bb.g ], [ %i.y, %.noexc29 ] ; 2 uses
  %i.ao = phi ptr [ %.pre, %bb.c ], [ %i.w, %bb.g ], [ %i.w, %.noexc29 ] ; 4 uses
  %i.ap = load i64, ptr %i.k, align 8, !range !22, !noundef !7
  %i.aq = icmp ult i64 %i.an, 1152921504606846976
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx62.pre-phi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ao, ptr %i.h, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.ao, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ap, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.ar, ptr %.sroa.6.0..sroa_idx, align 8
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35: ; preds = %bb.r, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.bt, %bb.l ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread unwind label %bb.s

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %i.be = phi ptr [ %i.ao, %.lr.ph ], [ %i.bx, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !372
  %i.bg = load i32, ptr %i.be, align 4, !range !21, !noalias !372, !noundef !7 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !372, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bj = load i32, ptr %i.at, align 8, !range !21, !noundef !7
  %i.bk = load i32, ptr %i.au, align 4, !noundef !7
  %i.bl = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bg, ptr %i.av, align 4
  store i32 %i.bi, ptr %i.aw, align 4
  store i8 3, ptr %i.f, align 4
  %i.bm = load ptr, ptr %i.ax, align 8, !nonnull !7, !align !10, !noundef !7 ; 2 uses
  %i.bn = load i8, ptr %i.ay, align 4, !range !15, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %6 = load i16, ptr %i.bo, align 8
  %7 = zext i16 %6 to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 130
  %i.bq = load i8, ptr %i.bp, align 2, !range !15, !noundef !7
  %.sroa.519.0.insert.ext.a = zext nneg i8 %i.bn to i32
  %.sroa.519.0.insert.shift.a = shl nuw nsw i32 %.sroa.519.0.insert.ext.a, 24
  %.sroa.418.0.insert.ext = zext nneg i8 %i.bq to i32
  %.sroa.418.0.insert.shift = shl nuw nsw i32 %.sroa.418.0.insert.ext, 16
  %.sroa.418.0.insert.insert = or disjoint i32 %.sroa.519.0.insert.shift.a, %7
  %.sroa.017.0.insert.insert = or disjoint i32 %.sroa.418.0.insert.insert, %.sroa.418.0.insert.shift
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @16, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, i32 noundef %.sroa.017.0.insert.insert)
          to label %bb.j unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32: ; preds = %bb.q, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_4expr18complete_expr_pathsc_0Es0_0EB2j_.exit
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.br = load i8, ptr %i.az, align 8, !range !23, !noundef !7
  %.not24 = icmp eq i8 %i.br, -1
  br i1 %.not24, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.bs = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.m unwind label %bb.r

bb.l:                                             ; preds = %bb.i, %bb.n, %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35

bb.m:                                             ; preds = %bb.k
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  %i.bv = icmp ugt i64 %i.bu, 1
  br i1 %i.bv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  store ptr %0, ptr %i.d, align 8
  store ptr %1, ptr %i.ba, align 8
  store i32 %i.bg, ptr %i.bb, align 8
  store i32 %i.bi, ptr %i.bc, align 4
  invoke fastcc void @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4expr18complete_expr_pathsc_0B7_(ptr nonnull %5, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %i.bg, i32 noundef %i.bi, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bd)
          to label %bb.p unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit

bb.q:                                             ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !373, !nonnull !7, !noundef !7
  %i.bx = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !373, !nonnull !7, !noundef !7 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bw
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32, label %bb.i

bb.r:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35 unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn45 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn.pn45

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc28, %bb.h, %.noexc, %bb.e, %bb.b
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #29
          to label %.thread unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2_7pattern16complete_patterns4_0EB4_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  call void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum8variants(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6to_defNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.j, ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.a, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread, %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre65 = load i64, ptr %.phi.trans.insert64, align 8 ; 2 uses
  %.pre66 = shl nuw nsw i64 %.pre65, 3
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.j, align 4, !range !20, !noundef !7
  %.not21 = icmp eq i32 %i.o, 2
  br i1 %.not21, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.p = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  invoke void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl7self_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.sroa.09.0.copyload.i = load i32, ptr %.val, align 8, !noalias !386 ; 2 uses
  %i.q = icmp ne i32 %.sroa.09.0.copyload.i, 27
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i32 %.sroa.09.0.copyload.i, 7
  br i1 %i.r, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit: ; preds = %bb.f
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.811.sroa.9.0.copyload.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i, align 8, !noalias !386
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %.sroa.811.sroa.8.0.copyload.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i, align 4, !noalias !386
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.811.sroa.0.0.copyload.i = load i8, ptr %.sroa.811.0..sroa_idx.i, align 8, !noalias !386
  %i.s = icmp eq i8 %.sroa.811.sroa.0.0.copyload.i, 2
  %i.t = icmp eq i32 %.sroa.811.sroa.9.0.copyload.i, %3
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i, %2
  %or.cond61 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond61, label %bb.g, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread: ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.g:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 4 uses
  %.idx = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.h

bb.h:                                             ; preds = %.noexc29, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.ai, %.noexc29 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8 ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.03.i, align 4, !range !21, !noalias !387, !noundef !7 ; 3 uses
  %i.aj = getelementptr i8, ptr %.sroa.0.03.i, i64 4
  %.sroa.0.0.val2.i = load i32, ptr %i.aj, align 4, !noalias !387, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !388
  store i8 0, ptr %i.c, align 4, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !388
  %i.ak = load ptr, ptr %i.l, align 8, !noalias !388, !nonnull !7, !align !10, !noundef !7
  %i.al = invoke noundef nonnull ptr @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant4name(i32 noundef range(i32 1, 0) %.sroa.0.0.val.i, i32 noundef %.sroa.0.0.val2.i, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !389, !noalias !388
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR, ptr %i.ab, align 8, !alias.scope !389, !noalias !388
  store i64 1, ptr %i.ac, align 8, !alias.scope !389, !noalias !388
  store ptr %i.al, ptr %i.ad, align 8, !alias.scope !389, !noalias !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !388
  invoke void @_RINvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7ModPath13from_segmentsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB1f_7sources4once4OnceNtNtB7_4name4NameEB20_EECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !388
  store ptr %0, ptr %i.a, align 8, !noalias !388
  store ptr %1, ptr %i.af, align 8, !noalias !388
  store i32 %.sroa.0.0.val.i, ptr %i.ag, align 8, !noalias !388
  store i32 %.sroa.0.0.val2.i, ptr %i.ah, align 4, !noalias !388
  invoke fastcc void @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7pattern16complete_patterns4_0B7_(ptr nonnull %5, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %.sroa.0.0.val.i, i32 noundef %.sroa.0.0.val2.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ae) #32
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  %i.am = icmp eq ptr %i.ai, %i.z
  br i1 %i.am, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit, label %bb.h

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit: ; preds = %.noexc29, %bb.g, %bb.c
  %.idx62.pre-phi = phi i64 [ %.pre66, %bb.c ], [ %.idx, %bb.g ], [ %.idx, %.noexc29 ]
  %i.an = phi i64 [ %.pre65, %bb.c ], [ %i.y, %bb.g ], [ %i.y, %.noexc29 ] ; 2 uses
  %i.ao = phi ptr [ %.pre, %bb.c ], [ %i.w, %bb.g ], [ %i.w, %.noexc29 ] ; 4 uses
  %i.ap = load i64, ptr %i.k, align 8, !range !22, !noundef !7
  %i.aq = icmp ult i64 %i.an, 1152921504606846976
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx62.pre-phi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ao, ptr %i.h, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.ao, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ap, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.ar, ptr %.sroa.6.0..sroa_idx, align 8
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35: ; preds = %bb.r, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %i.bt, %bb.l ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread unwind label %bb.s

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %i.be = phi ptr [ %i.ao, %.lr.ph ], [ %i.bx, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !390
  %i.bg = load i32, ptr %i.be, align 4, !range !21, !noalias !390, !noundef !7 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !390, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bj = load i32, ptr %i.at, align 8, !range !21, !noundef !7
  %i.bk = load i32, ptr %i.au, align 4, !noundef !7
  %i.bl = load ptr, ptr %i.l, align 8, !nonnull !7, !align !10, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bg, ptr %i.av, align 4
  store i32 %i.bi, ptr %i.aw, align 4
  store i8 3, ptr %i.f, align 4
  %i.bm = load ptr, ptr %i.ax, align 8, !nonnull !7, !align !10, !noundef !7 ; 2 uses
  %i.bn = load i8, ptr %i.ay, align 4, !range !15, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %6 = load i16, ptr %i.bo, align 8
  %7 = zext i16 %6 to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 130
  %i.bq = load i8, ptr %i.bp, align 2, !range !15, !noundef !7
  %.sroa.519.0.insert.ext.a = zext nneg i8 %i.bn to i32
  %.sroa.519.0.insert.shift.a = shl nuw nsw i32 %.sroa.519.0.insert.ext.a, 24
  %.sroa.418.0.insert.ext = zext nneg i8 %i.bq to i32
  %.sroa.418.0.insert.shift = shl nuw nsw i32 %.sroa.418.0.insert.ext, 16
  %.sroa.418.0.insert.insert = or disjoint i32 %.sroa.519.0.insert.shift.a, %7
  %.sroa.017.0.insert.insert = or disjoint i32 %.sroa.418.0.insert.insert, %.sroa.418.0.insert.shift
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module9find_pathNtB6_9ModuleDefECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @16, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, i32 noundef %.sroa.017.0.insert.insert)
          to label %bb.j unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32: ; preds = %bb.q, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtCsf8NQSppxkmK_14ide_completion11completions24enum_variants_with_pathsNCNvNtB2h_7pattern16complete_patterns4_0Es0_0EB2j_.exit
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.br = load i8, ptr %i.az, align 8, !range !23, !noundef !7
  %.not24 = icmp eq i8 %i.br, -1
  br i1 %.not24, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.bs = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.m unwind label %bb.r

bb.l:                                             ; preds = %bb.i, %bb.n, %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35

bb.m:                                             ; preds = %bb.k
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  %i.bv = icmp ugt i64 %i.bu, 1
  br i1 %i.bv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  store ptr %0, ptr %i.d, align 8
  store ptr %1, ptr %i.ba, align 8
  store i32 %i.bg, ptr %i.bb, align 8
  store i32 %i.bi, ptr %i.bc, align 4
  invoke fastcc void @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7pattern16complete_patterns4_0B7_(ptr nonnull %5, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %i.bg, i32 noundef %i.bi, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bd)
          to label %bb.p unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit

bb.q:                                             ; preds = %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !391, !nonnull !7, !noundef !7
  %i.bx = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !391, !nonnull !7, !noundef !7 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bw
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion.exit32, label %bb.i

bb.r:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35 unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn45 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsf8NQSppxkmK_14ide_completion.exit35 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn.pn45

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc28, %bb.h, %.noexc, %bb.e, %bb.b
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir11EnumVariantEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #29
          to label %.thread unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2D_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3s_11SyntaxTokenB3O_EEReEKj1_EINtBE_8IntoIterB23_EEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2h_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB36_11SyntaxTokenB3s_EEReEKj1_EINtNtB4_6option8IntoIterB1H_EEECsf8NQSppxkmK_14ide_completion.exit
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB21_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2Q_11SyntaxTokenB3c_EEReEKj1_EEECsf8NQSppxkmK_14ide_completion.exit.i
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2h_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB36_11SyntaxTokenB3s_EEReEKj1_EINtNtB4_6option8IntoIterB1H_EEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i6.i, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB21_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2Q_11SyntaxTokenB3c_EEReEKj1_EEECsf8NQSppxkmK_14ide_completion.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !408, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !408, !noundef !7
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB26_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2V_11SyntaxTokenB3h_EEReEEj1_NtB4_11PartialDrop12partial_dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.d, i64 noundef %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB21_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2Q_11SyntaxTokenB3c_EEReEKj1_EEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i = load i64, ptr %i.h, align 8, !range !24, !alias.scope !409, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !409 ; 3 uses
  %cond.i.i = icmp eq i64 %.val2.i, 0
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1M_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2B_11SyntaxTokenB2X_EEReEEEECsf8NQSppxkmK_14ide_completion.exit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val3.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !410, !noundef !7
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !410
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1M_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2B_11SyntaxTokenB2X_EEReEEEECsf8NQSppxkmK_14ide_completion.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i) #28
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1M_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2B_11SyntaxTokenB2X_EEReEEEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB21_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2Q_11SyntaxTokenB3c_EEReEKj1_EEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load i64, ptr %i.n, align 8, !range !24, !alias.scope !409, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !409 ; 3 uses
  %cond.i5.i = icmp eq i64 %.val.i, 0
  br i1 %cond.i5.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2h_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB36_11SyntaxTokenB3s_EEReEKj1_EINtNtB4_6option8IntoIterB1H_EEECsf8NQSppxkmK_14ide_completion.exit

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB21_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2Q_11SyntaxTokenB3c_EEReEKj1_EEECsf8NQSppxkmK_14ide_completion.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !411, !noundef !7
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !noalias !411
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i6.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2h_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB36_11SyntaxTokenB3s_EEReEKj1_EINtNtB4_6option8IntoIterB1H_EEECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i6.i: ; preds = %bb.e
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i) #28, !noalias !411
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB4_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2h_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB36_11SyntaxTokenB3s_EEReEKj1_EINtNtB4_6option8IntoIterB1H_EEECsf8NQSppxkmK_14ide_completion.exit

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1M_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2B_11SyntaxTokenB2X_EEReEEEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i.i.i, %bb.d, %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !16, !noundef !7 ; 2 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %switch.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !424, !nonnull !7, !noundef !7
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !424
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsf8NQSppxkmK_14ide_completion(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp eq ptr %.0.val, null
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.b, %bb.a
  ret void

end_hunk_0
