Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.14?download=true
inline.NumInlined: 2440
inline.NumDeleted: 1578
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBY_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2Z_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5M_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00ENCB5G_s0_0ENvYNtNtNtB4K_3ast8node_ext8NameLikeNtB88_7AstNode4castENCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB10_19filter_map_try_foldINtNtBc_6result6ResultINtNtBc_6option6OptionTINtB2X_16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtB6z_4defs10DefinitionNtNtB2Z_4name4NameNtNtB6z_6rename16RenameDefinitionEENtBeQ_11RenameErrorEIBaZ_BbG_Bfn_EuINtNtNtBc_3ops12control_flow11ControlFlowBbG_ENvMs1_Bb1_BaY_9transposeNCINvNvB9M_8find_map5checkBfH_BbG_QNCINvB8Y_9ok_if_anyBbG_Bfn_IBY_BN_BgG_EE0E0E0BfW_EB90_:bb.a
_RNvMs5_NtCs33K2ylI4knu_10hir_expand4nameNtB5_4Name3new.exit.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i.i.i.i
  %.sroa.0415.sroa.0.i.sroa.0.0.copyload20.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !730
  %.sroa.0415.sroa.0.i.sroa.6.0.copyload23.i.i.i.i = load ptr, ptr %.sroa.6410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !730
  %.sroa.0415.sroa.0.i.sroa.7.0.copyload27.i.i.i.i = load i64, ptr %.sroa.7411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0415.sroa.0.i.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8412.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !730
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i unwind label %bb.bx, !noalias !726

bb.bx:                                            ; preds = %_RNvMs5_NtCs33K2ylI4knu_10hir_expand4nameNtB5_4Name3new.exit.i.i.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i.i.i.i.i.i unwind label %bb.by, !noalias !726

bb.by:                                            ; preds = %bb.bx
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !726
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs33K2ylI4knu_10hir_expand4nameNtB5_4Name3new.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i unwind label %bb.bh, !noalias !726

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !727
  br label %bb.bt

bb.bz:                                            ; preds = %bb.bw, %.body.i.i.i.i.i.i
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !726
  unreachable

bb.ca:                                            ; preds = %bb.bg
  %.sroa.0415.sroa.0.i.sroa.0.0.copyload21.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !730
  %.sroa.0415.sroa.0.i.sroa.6.0.copyload25.i.i.i.i = load ptr, ptr %.sroa.6410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !730
  %.sroa.0415.sroa.0.i.sroa.7.0.copyload29.i.i.i.i = load i64, ptr %.sroa.7411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0415.sroa.0.i.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8412.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !730
  %.pre.i.i.i.i.i.i = and i64 %i.hf, 1
  br label %bb.bt

bb.cb:                                            ; preds = %bb.ad
  %i.kd = add nuw i32 %i.ev, 1
  store i32 %i.kd, ptr %i.eu, align 4, !noalias !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !705
  store ptr %.val148.i.i.i.i.i, ptr %i.g, align 8, !noalias !705
  %i.ke = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.ce unwind label %bb.cc, !noalias !706

bb.cc:                                            ; preds = %bb.cb
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load i32, ptr %i.eu, align 4, !noalias !706, !noundef !6
  %i.kh = add i32 %i.kg, -1                       ; 2 uses
  store i32 %i.kh, ptr %i.eu, align 4, !noalias !706
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.cd, label %.body.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val148.i.i.i.i.i) #40
          to label %.body.i.i.i.i.i unwind label %bb.cg, !noalias !706

bb.ce:                                            ; preds = %bb.cb
  %i.kj = load i32, ptr %i.eu, align 4, !noalias !706, !noundef !6
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.eu, align 4, !noalias !706
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val148.i.i.i.i.i) #40
          to label %bb.ch unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

bb.cg:                                            ; preds = %bb.cd
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !706
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i.i.i.i.i: ; preds = %bb.ch, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !705
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ad, ptr noundef nonnull align 8 %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %bb.ck unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %i.kn = icmp eq i16 %i.ke, 282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !705
  br i1 %i.kn, label %bb.ci, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !731
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) 41, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc182.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

.noexc182.i.i.i.i.i:                              ; preds = %bb.ci
  %i.ko = load i64, ptr %i.f, align 8, !range !13, !noalias !731, !noundef !6
  %i.kp = trunc nuw i64 %i.ko to i1
  %i.kq = load i64, ptr %i.ay, align 8, !range !14, !noalias !731, !noundef !6 ; 3 uses
  br i1 %i.kp, label %bb.cj, label %bb.cr, !prof !5

bb.cj:                                            ; preds = %.noexc182.i.i.i.i.i
  %i.kr = load i64, ptr %i.az, align 8, !noalias !731
  br label %.invoke.i.i.i.i.i

bb.ck:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i.i.i.i.i
  %i.ks = load i32, ptr %i.ad, align 8, !range !732, !noalias !705, !noundef !6 ; 3 uses
  %.not137.i.i.i.i.i = icmp eq i32 %i.ks, -1
  br i1 %.not137.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.541.sroa.4.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.541.sroa.4.0..sroa.541.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.0.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.sroa.6.sroa.6.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.8.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.sroa.6.sroa.8.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.10.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.541.sroa.6.sroa.10.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.12.sroa.0.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 1, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.12.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.sroa.6.sroa.12.sroa.6.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.12.sroa.8.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.sroa.6.sroa.12.sroa.8.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !705 ; 2 uses
  %.sroa.541.sroa.6.sroa.12.sroa.10.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.541.sroa.6.sroa.12.sroa.10.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.0.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.541.sroa.6.sroa.12.sroa.12.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 1, !noalias !705
  %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.5.0..sroa.541.sroa.6.sroa.12.sroa.12.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !705
  %i.kt = load <2 x i32>, ptr %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.7.0..sroa.541.sroa.6.sroa.12.sroa.12.0..sroa.541.sroa.6.sroa.12.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %i.ku = icmp samesign ult i32 %i.ks, 3
  br i1 %i.ku, label %bb.cp, label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !733
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) 31, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc187.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

.noexc187.i.i.i.i.i:                              ; preds = %bb.cm
  %i.kv = load i64, ptr %i.e, align 8, !range !13, !noalias !733, !noundef !6
  %i.kw = trunc nuw i64 %i.kv to i1
  %i.kx = load i64, ptr %i.ba, align 8, !range !14, !noalias !733, !noundef !6 ; 3 uses
  br i1 %i.kw, label %bb.cn, label %bb.co, !prof !5

bb.cn:                                            ; preds = %.noexc187.i.i.i.i.i
  %i.ky = load i64, ptr %i.bb, align 8, !noalias !733
  br label %.invoke.i.i.i.i.i

bb.co:                                            ; preds = %.noexc187.i.i.i.i.i
  %i.kz = load ptr, ptr %i.bb, align 8, !noalias !733, !nonnull !6, !noundef !6 ; 2 uses
  %i.la = icmp ugt i64 %i.kx, 30
  call void @llvm.assume(i1 %i.la)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.kz, ptr noundef nonnull readonly align 1 dereferenceable(31) @29, i64 range(i64 0, -9223372036854775808) 31, i1 false), !noalias !734
  br label %bb.cy

bb.cp:                                            ; preds = %bb.cl
  %.sroa.541.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.541.0..sroa_idx.i.i.i.i.i, align 4, !noalias !705
  %i.lb = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %.sroa.541.sroa.6.sroa.12.sroa.8.0.copyload.i.i.i.i.i, i64 0
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cl
  %.sroa.647.sroa.0.sroa.0.0.i.i.i.i.i = phi i24 [ undef, %bb.cp ], [ %.sroa.541.sroa.6.sroa.0.sroa.0.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.0.sroa.0.0.i.i.i.i.i = phi i24 [ %.sroa.541.sroa.6.sroa.0.sroa.0.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.0.sroa.0.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.9.sroa.0.sroa.0.0.i.i.i.i.i = phi i24 [ %.sroa.541.sroa.6.sroa.12.sroa.0.sroa.0.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.0.sroa.0.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.9.sroa.6.0.i.i.i.i.i = phi i32 [ %.sroa.541.sroa.6.sroa.12.sroa.6.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.12.sroa.5.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.8.0.i.i.i.i.i = phi i8 [ %.sroa.541.sroa.6.sroa.10.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.10.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.7.0.i.i.i.i.i = phi i32 [ %.sroa.541.sroa.6.sroa.8.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.8.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.8.sroa.6.0.i.i.i.i.i = phi i32 [ %.sroa.541.sroa.6.sroa.6.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.12.sroa.6.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.7.0.i.i.i.i.i = phi i8 [ %.sroa.541.sroa.4.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.10.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.6.0.i.i.i.i.i = phi i32 [ %.sroa.541.sroa.0.0.copyload.i.i.i.i.i, %bb.cp ], [ %.sroa.541.sroa.6.sroa.8.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.647.sroa.5.0.i.i.i.i.i = phi i32 [ %i.ks, %bb.cp ], [ %.sroa.541.sroa.6.sroa.6.0.copyload.i.i.i.i.i, %bb.cl ]
  %.sroa.044.0.i.i.i.i.i = phi i8 [ 14, %bb.cp ], [ %.sroa.541.sroa.4.0.copyload.i.i.i.i.i, %bb.cl ]
  %i.lc = phi <2 x i32> [ %i.lb, %bb.cp ], [ %i.kt, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !705
  %.sroa.19.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.647.sroa.8.sroa.6.0.i.i.i.i.i to i64
  %.sroa.19.4.insert.ext.i.i.i.i.i = zext i32 %.sroa.647.sroa.8.sroa.7.0.i.i.i.i.i to i64
  %.sroa.19.4.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.19.4.insert.ext.i.i.i.i.i, 32
  %.sroa.19.4.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.19.4.insert.shift.i.i.i.i.i, %.sroa.19.0.insert.ext.i.i.i.i.i
  %i.ld = inttoptr i64 %.sroa.19.4.insert.insert.i.i.i.i.i to ptr
  %i.le = zext i24 %.sroa.647.sroa.8.sroa.0.sroa.0.0.i.i.i.i.i to i64
  %i.lf = zext i32 %.sroa.647.sroa.8.sroa.9.sroa.6.0.i.i.i.i.i to i64
  br label %bb.bd

bb.cr:                                            ; preds = %.noexc182.i.i.i.i.i
  %i.lg = load ptr, ptr %i.az, align 8, !noalias !731, !nonnull !6, !noundef !6 ; 2 uses
  %i.lh = icmp ugt i64 %i.kq, 40
  call void @llvm.assume(i1 %i.lh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.lg, ptr noundef nonnull readonly align 1 dereferenceable(41) @30, i64 range(i64 0, -9223372036854775808) 41, i1 false), !noalias !735
  br label %bb.aa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i: ; preds = %bb.cy, %bb.aa
  %.sroa.17.1.i.i.i.i = phi i8 [ undef, %bb.aa ], [ %.sroa.17.0.i.i.i.i, %bb.cy ]
  %.sroa.13.1.i.i.i.i = phi i16 [ -2, %bb.aa ], [ %.sroa.13.0.i.i.i.i, %bb.cy ]
  %.sroa.12.1.i.i.i.i = phi ptr [ undef, %bb.aa ], [ %.sroa.12.0.i.i.i.i, %bb.cy ]
  %.sroa.11.1.i.i.i.i = phi i64 [ undef, %bb.aa ], [ %.sroa.11.0.i.i.i.i, %bb.cy ]
  %.sroa.107.1.i.i.i.i = phi ptr [ undef, %bb.aa ], [ %.sroa.107.0.i.i.i.i, %bb.cy ]
  %.sroa.8.1.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i, %bb.aa ], [ %.sroa.8.0.i.i.i.i, %bb.cy ]
  %.sroa.64.1.i.i.i.i = phi ptr [ %.sink545.i.i.i.i.i, %bb.aa ], [ %.sroa.64.0.i.i.i.i, %bb.cy ]
  %.sroa.02.1.i.i.i.i = phi i64 [ %.sink546.i.i.i.i.i, %bb.aa ], [ %.sroa.02.0.i.i.i.i, %bb.cy ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dz) #40, !noalias !706
  br label %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.af
  %i.li = load i32, ptr %i.ac, align 8, !range !710, !noalias !705, !noundef !6 ; 3 uses
  %.not134.i.i.i.i.i = icmp eq i32 %i.li, -1
  br i1 %.not134.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %4

4:                                                ; preds = %bb.cs
  %5 = icmp ne i32 %i.li, 4
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i32 %i.li, 3
  br i1 %6, label %bb.ct, label %.sink.split.i.i.i.i.i

bb.ct:                                            ; preds = %4
  %i.lj = load <2 x i32>, ptr %.sroa.4130.sroa.4.sroa.8.0..sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %.sroa.4130.sroa.4.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4130.sroa.4.sroa.7.0..sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %.sroa.4130.sroa.4.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4130.sroa.4.sroa.6.0..sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %.sroa.4130.sroa.4.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4130.sroa.4.sroa.5.0..sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705
  %.sroa.4130.sroa.4.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4130.sroa.4.sroa.4.0..sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !705
  %.sroa.4130.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.4130.sroa.4.0..sroa.4130.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !noalias !705
  %.sroa.4130.sroa.3.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.4130.sroa.3.0..sroa.4130.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !705 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !705
  %.not.i189.i.i.i.i.i = icmp eq i8 %.sroa.4130.sroa.3.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i189.i.i.i.i.i, label %bb.cu, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %4, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !705
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !736
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass17classify_lifetime(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull align 8 %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc190.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

.noexc190.i.i.i.i.i:                              ; preds = %bb.cu
  %i.lk = load i32, ptr %i.d, align 8, !range !732, !noalias !737, !noundef !6
  %cond.i.i.i.i.i = icmp eq i32 %i.lk, 3
  br i1 %cond.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread526.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread526.i.i.i.i.i: ; preds = %.noexc190.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !736
  br label %bb.cv

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i: ; preds = %.noexc190.i.i.i.i.i
  %.sroa.0326.0.copyload328.i.i.i.i.i = load i8, ptr %i.av, align 8, !noalias !738 ; 2 uses
  %.sroa.9329.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.9329.0..sroa_idx331.i.i.i.i.i, align 1, !noalias !738
  %.sroa.9329.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.9329.sroa.6.0..sroa.9329.0..sroa_idx331.sroa_idx.i.i.i.i.i, align 4, !noalias !738
  %.sroa.9329.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.9329.sroa.7.0..sroa.9329.0..sroa_idx331.sroa_idx.i.i.i.i.i, align 8, !noalias !738
  %.sroa.9329.sroa.8.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.9329.sroa.8.0..sroa.9329.0..sroa_idx331.sroa_idx.i.i.i.i.i, align 8, !noalias !738
  %.sroa.9329.sroa.9.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.9329.sroa.9.0..sroa.9329.0..sroa_idx331.sroa_idx.i.i.i.i.i, align 8, !noalias !738
  %i.ll = load <2 x i32>, ptr %.sroa.9329.sroa.10.0..sroa.9329.0..sroa_idx331.sroa_idx.i.i.i.i.i, align 8, !noalias !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !736
  %.not135.i.i.i.i.i = icmp eq i8 %.sroa.0326.0.copyload328.i.i.i.i.i, -1
  br i1 %.not135.i.i.i.i.i, label %bb.cv, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread.i.i.i.i.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i, %bb.ct
  %.sroa.0326.1525.i.i.i.i.i = phi i8 [ %.sroa.0326.0.copyload328.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.3.0.copyload.i.i.i.i.i, %bb.ct ]
  %.sroa.9329.sroa.9.1522.i.i.i.i.i = phi i64 [ %.sroa.9329.sroa.9.0.copyload.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.4.sroa.7.0.copyload.i.i.i.i.i, %bb.ct ] ; 3 uses
  %.sroa.9329.sroa.8.1521.i.i.i.i.i = phi ptr [ %.sroa.9329.sroa.8.0.copyload.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.4.sroa.6.0.copyload.i.i.i.i.i, %bb.ct ]
  %.sroa.9329.sroa.7.1520.i.i.i.i.i = phi i64 [ %.sroa.9329.sroa.7.0.copyload.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.4.sroa.5.0.copyload.i.i.i.i.i, %bb.ct ] ; 3 uses
  %.sroa.9329.sroa.6.1519.i.i.i.i.i = phi i32 [ %.sroa.9329.sroa.6.0.copyload.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.4.sroa.4.0.copyload.i.i.i.i.i, %bb.ct ]
  %.sroa.9329.sroa.0.1518.i.i.i.i.i = phi i24 [ %.sroa.9329.sroa.0.0.copyload.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %.sroa.4130.sroa.4.sroa.0.0.copyload.i.i.i.i.i, %bb.ct ]
  %i.lm = phi <2 x i32> [ %i.ll, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i ], [ %i.lj, %bb.ct ]
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.9329.sroa.7.1520.i.i.i.i.i to i32
  %.sroa.11.sroa.9.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.9329.sroa.7.1520.i.i.i.i.i, 32
  %.sroa.11.sroa.9.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.11.sroa.9.0.extract.shift.i.i.i.i.i to i8
  %.sroa.11.sroa.10.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.9329.sroa.7.1520.i.i.i.i.i, 40
  %.sroa.22.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.9329.sroa.9.1522.i.i.i.i.i to i8
  %.sroa.22.sroa.9.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.9329.sroa.9.1522.i.i.i.i.i, 8
  %.sroa.22.sroa.9.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.22.sroa.9.0.extract.shift.i.i.i.i.i to i24
  %.sroa.22.sroa.10.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.9329.sroa.9.1522.i.i.i.i.i, 32
  br label %bb.bd

bb.cv:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionE7or_elseNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s7_0EB1F_.exit.thread526.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !739
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 31, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc194.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

.noexc194.i.i.i.i.i:                              ; preds = %bb.cv
  %i.ln = load i64, ptr %i.c, align 8, !range !13, !noalias !739, !noundef !6
  %i.lo = trunc nuw i64 %i.ln to i1
  %i.lp = load i64, ptr %i.aw, align 8, !range !14, !noalias !739, !noundef !6 ; 3 uses
  br i1 %i.lo, label %bb.cw, label %bb.cx, !prof !5

bb.cw:                                            ; preds = %.noexc194.i.i.i.i.i
  %i.lq = load i64, ptr %i.ax, align 8, !noalias !739
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.cw, %bb.cn, %bb.cj, %bb.bb, %bb.ba, %bb.y
  %i.lr = phi i64 [ %i.lp, %bb.cw ], [ %i.kx, %bb.cn ], [ %i.kq, %bb.cj ], [ %i.gy, %bb.bb ], [ %i.gs, %bb.ba ], [ %i.el, %bb.y ]
  %i.ls = phi i64 [ %i.lq, %bb.cw ], [ %i.ky, %bb.cn ], [ %i.kr, %bb.cj ], [ %i.gz, %bb.bb ], [ %i.gt, %bb.ba ], [ %i.em, %bb.y ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.lr, i64 %i.ls) #38
          to label %.cont.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !706

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.cx:                                            ; preds = %.noexc194.i.i.i.i.i
  %i.lt = load ptr, ptr %i.ax, align 8, !noalias !739, !nonnull !6, !noundef !6 ; 2 uses
  %i.lu = icmp ugt i64 %i.lp, 30
  call void @llvm.assume(i1 %i.lu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.lt, ptr noundef nonnull readonly align 1 dereferenceable(31) @29, i64 range(i64 0, -9223372036854775808) 31, i1 false), !noalias !740
  br label %bb.cy

bb.cy:                                            ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i, %bb.cx, %bb.co, %bb.bc, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i
  %.sroa.17.0.i.i.i.i = phi i8 [ %.sroa.14.1.i.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.co ], [ undef, %bb.bc ], [ undef, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i.i.i.i = phi i16 [ %.sroa.9417.1.i.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ -2, %bb.cx ], [ -2, %bb.co ], [ -2, %bb.bc ], [ -2, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.12.0.i.i.i.i = phi ptr [ %.sroa.6416.1.i.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.co ], [ undef, %bb.bc ], [ undef, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0.i.i.i.i = phi i64 [ %.sroa.0415.sroa.7.1.i.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.co ], [ undef, %bb.bc ], [ undef, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.107.0.i.i.i.i = phi ptr [ %.sroa.0415.sroa.6.1.i.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ undef, %bb.cx ], [ undef, %bb.co ], [ undef, %bb.bc ], [ undef, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi i64 [ %.sroa.0415.sroa.0.i.sroa.7.1.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ 31, %bb.cx ], [ 31, %bb.co ], [ 31, %bb.bc ], [ 41, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.64.0.i.i.i.i = phi ptr [ %.sroa.0415.sroa.0.i.sroa.6.1.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ %i.lt, %bb.cx ], [ %i.kz, %bb.co ], [ %i.ha, %bb.bc ], [ %i.gu, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %.sroa.0415.sroa.0.i.sroa.0.1.i.i.i.i, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i ], [ %i.lp, %bb.cx ], [ %i.kx, %bb.co ], [ %i.gy, %bb.bc ], [ %i.gs, %_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s5_0B7_.exit.thread.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !noalias !706, !noundef !6
  %i.lx = add i32 %i.lw, -1                       ; 2 uses
  store i32 %i.lx, ptr %i.lv, align 4, !noalias !706
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i, label %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i

_RNCNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0s9_0B7_.exit.i.i.i.i.i: ; preds = %.noexc176.i.i.i.i.i, %bb.bt, %.noexc173.i.i.i.i.i
  %.sroa.0415.sroa.0.i.sroa.7.1.i.i.i.i = phi i64 [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.0415.sroa.0.i.sroa.7.0.i.i.i.i, %bb.bt ], [ %.sroa.0415.sroa.0.i.sroa.7.0.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.0415.sroa.0.i.sroa.6.1.i.i.i.i = phi ptr [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.0415.sroa.0.i.sroa.6.0.i.i.i.i, %bb.bt ], [ %.sroa.0415.sroa.0.i.sroa.6.0.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.0415.sroa.0.i.sroa.0.1.i.i.i.i = phi i64 [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.0415.sroa.0.i.sroa.0.0.i.i.i.i, %bb.bt ], [ %.sroa.0415.sroa.0.i.sroa.0.0.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.0415.sroa.7.1.i.i.i.i.i = phi i64 [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.0415.sroa.7.0.i.i.i.i.i, %bb.bt ], [ %.sroa.0415.sroa.7.0.i.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.0415.sroa.6.1.i.i.i.i.i = phi ptr [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.0415.sroa.6.0.i.i.i.i.i, %bb.bt ], [ %.sroa.0415.sroa.6.0.i.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.6416.1.i.i.i.i.i = phi ptr [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.6416.0.i.i.i.i.i, %bb.bt ], [ %.sroa.6416.0.i.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.9417.1.i.i.i.i.i = phi i16 [ -1, %.noexc173.i.i.i.i.i ], [ %.sroa.9417.0.i.i.i.i.i, %bb.bt ], [ %.sroa.9417.0.i.i.i.i.i, %.noexc176.i.i.i.i.i ]
  %.sroa.14.1.i.i.i.i.i = phi i8 [ undef, %.noexc173.i.i.i.i.i ], [ %.sroa.14.0.i.i.i.i.i, %bb.bt ], [ %.sroa.14.0.i.i.i.i.i, %.noexc176.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0415.sroa.0.i.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0415.sroa.0.i.sroa.8.i.i.i.i)
  br label %bb.cy

bb.cz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !706
  unreachable

_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i: ; preds = %bb.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i
  %.sroa.17.2.i.i.i.i = phi i8 [ %.sroa.17.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.17.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.13.2.i.i.i.i = phi i16 [ %.sroa.13.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.13.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.12.2.i.i.i.i = phi ptr [ %.sroa.12.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.12.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.11.2.i.i.i.i = phi i64 [ %.sroa.11.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.11.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.107.2.i.i.i.i = phi ptr [ %.sroa.107.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.107.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.8.2.i.i.i.i = phi i64 [ %.sroa.8.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.64.2.i.i.i.i = phi ptr [ %.sroa.64.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.64.0.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.02.2.i.i.i.i = phi i64 [ %.sroa.02.1.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECslLuZgPVt6hg_3ide.exit152.sink.split.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !704
  switch i16 %.sroa.13.2.i.i.i.i, label %bb.da [
    i16 -2, label %bb.db
    i16 -1, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h362
  ]

bb.da:                                            ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i
  %.sroa.02.276.i.i.i.i = phi i64 [ %.sroa.02.2.i.i.i.i, %bb.da ], [ %.sink546.i.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.02.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.64.274.i.i.i.i = phi ptr [ %.sroa.64.2.i.i.i.i, %bb.da ], [ %.sink545.i.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.64.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.8.272.i.i.i.i = phi i64 [ %.sroa.8.2.i.i.i.i, %bb.da ], [ %.sink.i.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.8.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.107.270.i.i.i.i = phi ptr [ %.sroa.107.2.i.i.i.i, %bb.da ], [ undef, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.107.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.11.268.i.i.i.i = phi i64 [ %.sroa.11.2.i.i.i.i, %bb.da ], [ undef, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.11.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.12.266.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i, %bb.da ], [ undef, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.12.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.17.264.i.i.i.i = phi i8 [ %.sroa.17.2.i.i.i.i, %bb.da ], [ undef, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ %.sroa.17.2.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  %.sroa.5.0.ph.i.i.i.i.i = phi i16 [ %.sroa.13.2.i.i.i.i, %bb.da ], [ -1, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.thread.i.i.i.i ], [ -1, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i.i, i64 16, i1 false), !noalias !704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !741
  store i64 %.sroa.02.276.i.i.i.i, ptr %i.a, align 8, !noalias !742
  store ptr %.sroa.64.274.i.i.i.i, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !742
  store i64 %.sroa.8.272.i.i.i.i, ptr %.sroa.0.i.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !742
  store ptr %.sroa.107.270.i.i.i.i, ptr %.sroa.0.i.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !742
  store i64 %.sroa.11.268.i.i.i.i, ptr %.sroa.0.i.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !742
  store ptr %.sroa.12.266.i.i.i.i, ptr %.sroa.0.i.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !742
  store i16 %.sroa.5.0.ph.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !743
  store i8 %.sroa.17.264.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 2, !noalias !742
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtCslLuZgPVt6hg_3ide6rename9ok_if_anyTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB1A_4name4NameNtNtB4t_6rename16RenameDefinitionENtB5p_11RenameErrorINtNtNtNtBb_4iter8adapters10filter_map9FilterMapINtNtB6j_3map3MapIB6f_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIB6f_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB1y_13InFileWrapperNtB1A_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtBbe_9SemanticsNtB4t_12RootDatabaseE36find_namelike_at_offset_with_descends_00ENCBb8_s0_0ENvYNtNtNtBac_3ast8node_ext8NameLikeNtBdj_7AstNode4castENCNvBT_16find_definitionss3_0ENvMs1_NtBb_6resultINtBeF_6ResultINtNtBb_6option6OptionB1u_EB5V_E9transposeEE0INtB7_5FnMutTIBeS_B1u_B5V_EEE8call_mutBV_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !741
  %i.ma = load i16, ptr %i.bu, align 8, !range !26, !noalias !741, !noundef !6 ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq i16 %i.ma, -1
  br i1 %.not.i.i1.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_25, label %bb.dc

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_25: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h362

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !745
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.512.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.9.0..sroa_idx.i.i, i64 6, i1 false), !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBW_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2J_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5w_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00ENCB5q_s0_0ENvYNtNtNtB4u_3ast8node_ext8NameLikeNtB7S_7AstNode4castENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB7O_INtNtBc_6result6ResultINtNtBc_6option6OptionTINtB2H_16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtB6j_4defs10DefinitionNtNtB2J_4name4NameNtNtB6j_6rename16RenameDefinitionEENtBdK_11RenameErrorEuINtNtNtBc_3ops12control_flow11ControlFlowBaA_ENCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCINvB6_19filter

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h362: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_25, %_RNCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0B5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_17

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_17: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h362, %.loopexit.i.i
  %i.mb = load i64, ptr %i.ao, align 8, !alias.scope !746, !noundef !6 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, 164703072086692426
  call void @llvm.assume(i1 %i.mc)
  %i.md = icmp eq i64 %i.mb, 0
  br i1 %i.md, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBW_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2J_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5w_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00ENCB5q_s0_0ENvYNtNtNtB4u_3ast8node_ext8NameLikeNtB7S_7AstNode4castENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB7O_INtNtBc_6result6ResultINtNtBc_6option6OptionTINtB2H_16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtB6j_4defs10DefinitionNtNtB2J_4name4NameNtNtB6j_6rename16RenameDefinitionEENtBdK_11RenameErrorEuINtNtNtBc_3ops12control_flow11ControlFlowBaA_ENCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCINvB6_19filter, label %bb.b

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBW_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2J_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENCNCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5w_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE36find_namelike_at_offset_with_descends_00ENCB5q_s0_0ENvYNtNtNtB4u_3ast8node_ext8NameLikeNtB7S_7AstNode4castENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldB7O_INtNtBc_6result6ResultINtNtBc_6option6OptionTINtB2H_16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtB6j_4defs10DefinitionNtNtB2J_4name4NameNtNtB6j_6rename16RenameDefinitionEENtBdK_11RenameErrorEuINtNtNtBc_3ops12control_flow11ControlFlowBaA_ENCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCINvB6_19filter: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_17, %bb.a, %bb.dc
  %.sink.i = phi i16 [ %i.ma, %bb.dc ], [ -1, %bb.a ], [ -1, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtB1X_3ast8node_ext8NameLikeuINtNtNtBa_3ops12control_flow11ControlFlowTINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdENtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionNtNtB42_4name4NameNtNtB6V_6rename16RenameDefinitionEENvYB2K_NtB2O_7AstNode4castNCINvNtB6_3map12map_try_foldB2K_INtNtBa_6result6ResultINtNtBa_6option6OptionB3W_ENtB7R_11RenameErrorEuB3h_NCNvNtCslLuZgPVt6hg_3ide6rename16find_definitionss3_0NCIB2_B9k_IB9l_B3W_Ba7_EuB3h_NvMs1_B9n_B9k_9transposeNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkBbx_B3W_QNCINvBaA_9ok_if_anyB3W_Ba7_INtB4_9FilterMapINtB8T_3MapIBdJ_INtNtCscFGNKo4Sl5v_9itertools11kmerge_impl8KMergeByIBdJ_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtB40_13InFileWrapperNtB42_9HirFileIdINtB1h_17 ]
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %.sink.i, ptr %i.me, align 8, !alias.scope !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !672
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1t_NtB1t_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1v_13utility_types11NodeOrTokenINtNtB1v_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3S_11SyntaxTokenB4e_EEINtNtBc_7convert4FromIB3f_B2s_NtB1t_11SyntaxTokenEE4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB6q_8find_map5checkB3e_B55_QNCNvNtCslLuZgPVt6hg_3ide12static_index33definition_range_excluding_trivia0E0INtNtNtBc_3ops12control_flow11ControlFlowB55_EEB7N_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !762 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !763
  store ptr %i.c, ptr %i.b, align 8, !noalias !763
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !noalias !763
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.e, align 8, !noalias !763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  call void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !noalias !765
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !764, !noundef !6 ; 2 uses
  %.not9.i.i = icmp eq i64 %i.f, 2
  br i1 %.not9.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1d_NtB1d_10SyntaxNode23descendants_with_tokens0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtNtB1f_13utility_types11NodeOrTokenB2c_NtB1d_11SyntaxTokenEIB46_INtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5c_11SyntaxTokenB5y_EEuINtNtNtBc_3ops12control_flow11ControlFlowB6p_ENvYB54_INtNtBc_7convert4FromB45_E4fromNCINvNvB2V_8find_map5checkB54_B6p_QNCNvNtCslLuZgPVt6hg_3ide12static_index33definition_range_excluding_trivia0E0E0B6Q_EB8R_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
