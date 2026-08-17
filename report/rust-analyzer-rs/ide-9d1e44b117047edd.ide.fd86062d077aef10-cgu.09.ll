inline.NumInlined: 2460
inline.NumDeleted: 1000
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCslLuZgPVt6hg_3ide10references9find_defs:bb.a

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i49) #41
          to label %common.resume unwind label %bb.ac, !noalias !1053

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i47: ; preds = %bb.y, %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val.i48 = load ptr, ptr %i.cg, align 8, !alias.scope !1053, !nonnull !13, !noundef !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i48, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noalias !1053, !noundef !13
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !noalias !1053
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i44, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit51

bb.ac:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !1053
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit51: ; preds = %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i44, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59

.thread77:                                        ; preds = %bb.ak, %bb.ae, %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread69

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i, %bb.t, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 4 uses
  %i.co = load i32, ptr %i.cn, align 4, !noundef !13 ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.ad, label %bb.ae, !prof !102

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #39
          to label %.noexc52 unwind label %.thread77

.noexc52:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit
  %i.cq = add nuw i32 %i.co, 1
  store i32 %i.cq, ptr %i.cn, align 4
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl30check_for_format_args_template(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noundef nonnull align 8 %i.cm, ptr noundef nonnull %i.p, i32 noundef %3)
          to label %bb.af unwind label %.thread77

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !range !516, !noundef !13
  %.not17 = icmp eq i32 %i.cs, 2
  br i1 %.not17, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.08.0.copyload = load i32, ptr %i.ct, align 8 ; 2 uses
  %.not18 = icmp eq i32 %.sroa.08.0.copyload, 2
  br i1 %.not18, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.sroa.08.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx10, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromINtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB1Y_16InlineAsmOperandEE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.an unwind label %bb.al

bb.ai:                                            ; preds = %bb.ag
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ap
  %.val30 = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val30, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !noundef !13
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit55

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val30) #41
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit55 unwind label %.thread77

bb.al:                                            ; preds = %bb.ah, %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val28 = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val28, i64 48 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !noundef !13
  %i.db = add i32 %i.da, -1                       ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.am, label %.thread69

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val28) #41
          to label %.thread69 unwind label %bb.p

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1056
  %i.dd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 40, 225) 40, i64 noundef 8) #36, !noalias !1056 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ao, label %bb.ap, !prof !102

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc58 unwind label %bb.al

.noexc58:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !1060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.564.0..sroa_idx, align 8
  br label %bb.aj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit55: ; preds = %bb.aj, %bb.ak
  %i.df = load i32, ptr %i.cn, align 4, !noundef !13
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.cn, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.aq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit55
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.p) #41
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59

bb.ar:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl25descend_into_macros_exact(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.cm, ptr noundef nonnull %i.p)
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.di, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.h, align 8
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB2d_INtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNvNtCslLuZgPVt6hg_3ide10references9find_defss1_0ENCB5w_s2_0EE9from_iterB5A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit59

.thread69:                                        ; preds = %bb.u, %bb.v, %bb.am, %bb.al, %.thread77
  %.pn72 = phi { ptr, i32 } [ %i.cy, %bb.am ], [ %lpad.thr_comm, %.thread77 ], [ %i.cy, %bb.al ], [ %i.bd, %bb.v ], [ %i.bd, %bb.u ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !13
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.as, label %common.resume

bb.as:                                            ; preds = %.thread69
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.p) #41
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCslLuZgPVt6hg_3ide3ssr11ssr_assists(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [200 x i8], align 8               ; 15 uses
  %i.h = alloca [96 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 2 uses
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [96 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [96 x i8], align 8                ; 6 uses
  %i.p = alloca [96 x i8], align 8                ; 6 uses
  %i.q = alloca [424 x i8], align 8               ; 7 uses
  %i.r = alloca [416 x i8], align 8               ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 200)
  %i.t = load i64, ptr %i.d, align 8, !range !100, !noundef !13
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !101, !noundef !13 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.u, label %bb.b, label %bb.c, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.x, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !13, !noundef !13
  %i.aa = icmp samesign ugt i64 %i.w, 1
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.w, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvNtCs3smBju6uAx0_7ide_ssr12from_comment16ssr_from_comment(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.q, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3)
          to label %bb.d unwind label %.thread83

.thread83:                                        ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.q, align 8, !range !134, !noundef !13
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.r, ptr noundef nonnull align 8 dereferenceable(416) %i.q, i64 416, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  %i.ag = load <2 x i32>, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.ah = load i64, ptr %2, align 8, !range !1064, !alias.scope !1061, !noalias !1065, !noundef !13 ; 3 uses
  %i.ai = add nsw i64 %i.ah, -2
  %.inv.i = icmp samesign ult i64 %i.ah, 2
  %i.aj = select i1 %.inv.i, i64 2, i64 %i.ai
  switch i64 %i.aj, label %bb.f [
    i64 0, label %bb.l
    i64 1, label %_RNvMs1_NtCs6oosyzwIepl_6ide_db7assistsNtB5_21AssistResolveStrategy14should_resolve.exit
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1061, !noalias !1065, !noundef !13
  %i.am = icmp eq i64 %i.al, 3
  br i1 %i.am, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1061, !noalias !1065, !nonnull !13, !noundef !13 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = xor i16 %i.ap, 29555
  %i.ar = getelementptr i8, ptr %i.ao, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = xor i16 %i.at, 114
  %i.av = or i16 %i.aq, %i.au
  %i.aw = icmp ne i16 %i.av, 0                    ; 2 uses
  %i.ax = zext i1 %i.aw to i32                    ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !range !501
  %i.ba = icmp ne i8 %i.az, 5
  %or.cond.not112 = select i1 %i.aw, i1 true, i1 %i.ba
  %i.bb = trunc nuw i64 %i.ah to i1
  %or.cond109 = select i1 %or.cond.not112, i1 true, i1 %i.bb
  br i1 %or.cond109, label %bb.l, label %_RNvMs1_NtCs6oosyzwIepl_6ide_db7assistsNtB5_21AssistResolveStrategy14should_resolve.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTReINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEEECslLuZgPVt6hg_3ide.exit68, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.critedge:                                        ; preds = %.noexc70, %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEECslLuZgPVt6hg_3ide.exit, %bb.ab, %bb.s, %bb.k
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn54.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEECslLuZgPVt6hg_3ide.exit ], [ %i.bc, %bb.k ], [ %i.cu, %bb.ab ], [ %i.eh, %bb.aw ], [ %i.eh, %.noexc70 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs3smBju6uAx0_7ide_ssr11MatchFinderECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(416) %i.r) #40
          to label %.thread unwind label %bb.as

bb.k:                                             ; preds = %bb.aa, %_RNvMs1_NtCs6oosyzwIepl_6ide_db7assistsNtB5_21AssistResolveStrategy14should_resolve.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RNvMs1_NtCs6oosyzwIepl_6ide_db7assistsNtB5_21AssistResolveStrategy14should_resolve.exit: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMCs3smBju6uAx0_7ide_ssrNtB2_11MatchFinder5edits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noundef nonnull align 8 %i.r)
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide.exit65
  %i.bd = phi i64 [ %.sroa.010.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide.exit65 ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.be = phi i64 [ %.sroa.02.0.copyload4, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide.exit65 ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.bd, ptr %i.p, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.be, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.bf = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 40, 225) 224, i64 noundef 8) #36 ; 10 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.m, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph, !prof !102

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #39
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_RNvMs1_NtCs6oosyzwIepl_6ide_db7assistsNtB5_21AssistResolveStrategy14should_resolve.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !1067, !noalias !1070, !noundef !13
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %select.unfold, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bm = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs4sl5YdnrCxp_3vfs6FileIdECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bh)
          to label %.noexc61 unwind label %.loopexit.split-lp117 ; 2 uses

.noexc61:                                         ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.bn = lshr i64 %i.bm, 57
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1078, !noalias !1079, !noundef !13 ; 2 uses
  %i.br = load ptr, ptr %i.n, align 8, !alias.scope !1078, !noalias !1079, !nonnull !13, !noundef !13 ; 2 uses
  %i.bs = insertelement <16 x i8> poison, i8 %i.bo, i64 0
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.noexc61
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc61 ], [ %i.ck, %bb.r ]
  %.pn.i.i = phi i64 [ %i.bm, %.noexc61 ], [ %i.cl, %bb.r ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bq     ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !1081 ; 2 uses
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.bt
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i = phi i16 [ %i.cj, %bb.q ], [ %i.bw, %bb.p ] ; 3 uses
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.01.0.i.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.bq
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds [40 x i8], ptr %i.br, i64 %i.cb ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -40
  %i.ce = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCs4sl5YdnrCxp_3vfs6FileIdINtB2_10EquivalentBq_E10equivalentCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd)
          to label %.noexc62 unwind label %.loopexit116

.noexc62:                                         ; preds = %.lr.ph.i.i
  br i1 %i.ce, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECslLuZgPVt6hg_3ide.exit, label %bb.q, !prof !133

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.p
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = icmp eq i16 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %select.unfold, !prof !102

bb.q:                                             ; preds = %.noexc62
  %i.ci = add i16 %.sroa.06.0.i31.i.i, -1
  %i.cj = and i16 %i.ci, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.ck = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cl = add i64 %.sroa.01.0.i.i.i, %i.ck
  br label %bb.p

bb.s:                                             ; preds = %.loopexit116, %.loopexit.split-lp117, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.critedge unwind label %bb.as

.loopexit116:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit118 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp117:                            ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECslLuZgPVt6hg_3ide.exit, %bb.t, %bb.o
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECslLuZgPVt6hg_3ide.exit: ; preds = %.noexc62
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm)
          to label %bb.u unwind label %.loopexit.split-lp117

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.n
  store i64 0, ptr %i.l, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 0, ptr %4, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %select.unfold
  %i.cn = load i32, ptr %i.bh, align 4, !noundef !13
  invoke void @_RINvMs_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_12SourceChange14from_text_editNtCs4sl5YdnrCxp_3vfs6FileIdECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.m, i32 noundef %i.cn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.x unwind label %.loopexit.split-lp117

bb.u:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECslLuZgPVt6hg_3ide.exit
  %i.co = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.cp = load i32, ptr %i.co, align 8, !range !971, !noundef !13
  %i.cq = trunc nuw i32 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !noundef !13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.030.0 = phi i32 [ 1, %bb.v ], [ 0, %bb.u ]
  %.sroa.531.0 = phi i32 [ %i.cs, %bb.v ], [ undef, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.sroa.030.0, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %.sroa.531.0, ptr %.sroa.529.0..sroa_idx, align 4
  br label %bb.t

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMCs3smBju6uAx0_7ide_ssrNtB2_11MatchFinder5edits(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.r)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(96) %i.m) #40
          to label %bb.s unwind label %bb.as

bb.z:                                             ; preds = %bb.x
  invoke void @_RINvXs4_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_12SourceChangeINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB8_9text_edit8TextEditEE9from_iterINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapB22_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.010.0.copyload = load i64, ptr %i.m, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.411.0..sroa_idx, i64 88, i1 false)
  %.sroa.02.0.copyload4 = load i64, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx6, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide.exit65 unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECslLuZgPVt6hg_3ide.exit65: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.l

bb.ab:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph: ; preds = %bb.l
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  store ptr @55, ptr %i.bf, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 17, ptr %.sroa.413.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  store ptr @56, ptr %i.cv, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  store i64 22, ptr %.sroa.415.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bf, ptr %i.i, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 2, ptr %.sroa.318.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.cw, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEECslLuZgPVt6hg_3ide.exit: ; preds = %.thread98, %bb.at, %bb.ao
  %.pn54.pn = phi { ptr, i32 } [ %i.dx, %bb.ao ], [ %.pn54101, %.thread98 ], [ %.pn54101, %bb.at ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtB14_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.critedge unwind label %bb.as

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph, %bb.aq
  %i.dg = phi ptr [ %i.bf, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph ], [ %i.ed, %bb.aq ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  store ptr %i.dh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1084, !noalias !1087
  %.sroa.076.0.copyload = load ptr, ptr %i.dg, align 8, !noalias !1084 ; 2 uses
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.577.0.copyload = load i64, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !1084 ; 5 uses
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.678.0.copyload = load i64, ptr %.sroa.678.0..sroa_idx, align 8, !noalias !1084 ; 3 uses
  %.not52 = icmp eq i64 %.sroa.678.0.copyload, -2
  br i1 %.not52, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.076.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.678.0.copyload, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.577.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %.thread102.loopexit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit, %bb.aq
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtB14_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTReINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEEECslLuZgPVt6hg_3ide.exit68 unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTReINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEEECslLuZgPVt6hg_3ide.exit68: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTReINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6oosyzwIepl_6ide_db13source_change12SourceChangeEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs3smBju6uAx0_7ide_ssr11MatchFinderECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(416) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.j

.thread102.loopexit:                              ; preds = %bb.ag, %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

.thread102.loopexit.split-lp:                     ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i64, ptr %i.b, align 8, !range !100, !noundef !13
  %i.dj = trunc nuw i64 %i.di to i1
  %i.dk = load i64, ptr %i.cx, align 8, !range !101, !noundef !13 ; 3 uses
  br i1 %i.dj, label %bb.ae, label %bb.af, !prof !102

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load i64, ptr %i.cy, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dk, i64 %i.dl) #39
          to label %bb.ar unwind label %.thread102.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad
  %i.dm = load ptr, ptr %i.cy, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.dn = icmp ule i64 %.sroa.577.0.copyload, %i.dk
  call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not53 = icmp eq i64 %.sroa.577.0.copyload, 0
  br i1 %.not53, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.dk, ptr %i.e, align 8
  store ptr %i.dm, ptr %.sroa.436.0..sroa_idx, align 8
  store i64 %.sroa.577.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvMs1_NtCs6oosyzwIepl_6ide_db5labelNtB5_5Label3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ai unwind label %.thread102.loopexit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.sroa.076.0.copyload, i64 %.sroa.577.0.copyload, i1 false)
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %.loopexit

.loopexit:                                        ; preds = %bb.ai
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi115 = phi { ptr, i32 } [ %lpad.loopexit113, %.loopexit ], [ %lpad.loopexit.split-lp114, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db5label5LabelECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #40
          to label %.thread98 unwind label %bb.as

bb.ak:                                            ; preds = %bb.ai
  %i.do = load i64, ptr %i.a, align 8, !range !100, !noundef !13
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = load i64, ptr %i.cz, align 8, !range !101, !noundef !13 ; 3 uses
  br i1 %i.dp, label %bb.al, label %bb.am, !prof !102

bb.al:                                            ; preds = %bb.ak
  %i.dr = load i64, ptr %i.da, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.dr) #39
          to label %bb.ar unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.ds = load ptr, ptr %i.da, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.dt = icmp samesign ugt i64 %i.dq, 8
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
