Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.14?download=true
inline.NumInlined: 4030
inline.NumDeleted: 1869
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs1_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_22ExpressionStoreBuilder6finish:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !99 ; 2 uses
  %i.db = icmp ult i64 %i.da, 576460752303423488
  call void @llvm.assume(i1 %i.db)
  %.not = icmp eq i64 %i.da, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread206, %bb.ae
  %i.dc = load i64, ptr %i.ar, align 8, !range !118, !noundef !99
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ae, %bb.au
  %.sroa.0.0208 = phi i1 [ true, %bb.au ], [ false, %bb.ae ]
  %.sroa.039.2 = phi i8 [ 0, %bb.au ], [ 1, %bb.ae ] ; 37 uses
  %.sroa.04.0 = phi ptr [ %i.dx, %bb.au ], [ null, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %.sroa.04.0, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp ne i64 %i.dh, 0
  %or.cond.not = select i1 %.sroa.0.0208, i1 true, i1 %i.di
  br i1 %or.cond.not, label %bb.av, label %bb.bl

bb.ah:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E13shrink_to_fitBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %bb.ai unwind label %bb.b

bb.ai:                                            ; preds = %bb.ah, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.dk = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCsileJQcQObtj_7hir_def9BlockIdLtE16into_boxed_sliceBG_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.ak unwind label %bb.aj     ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1d_.exit: ; preds = %bb.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.aj ], [ %i.eb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit ], [ %i.eb, %bb.at ]
  %.sroa.039.3 = phi i8 [ 1, %bb.aj ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit ], [ 0, %bb.at ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIBQ_NtB1l_4ExprEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIB1x_NtB22_4ExprENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1d_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dm = extractvalue { ptr, i64 } %i.dk, 0      ; 4 uses
  %i.dn = extractvalue { ptr, i64 } %i.dk, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  %.sroa.05.0.copyload = load i64, ptr %i.ar, align 8
  %i.do = trunc nuw i64 %.sroa.05.0.copyload to i1
  br i1 %i.do, label %bb.al, label %bb.ap, !prof !111

bb.al:                                            ; preds = %bb.ak
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store ptr %i.dm, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i64 %i.dn, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !2927
  %i.dx = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 665) 200, i64 noundef range(i64 4, 9) 8) #42, !noalias !2927 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.am, label %bb.au, !prof !106

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #45
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def10expr_store19ExpressionOnlyStoreEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.y) #40
          to label %bb.ei unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ap:                                            ; preds = %bb.ak
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #45
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtBT_10expr_store9HygieneIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap
  unreachable

bb.as:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ev, %bb.et, %bb.er, %bb.ep, %.thread316, %bb.em, %bb.el, %bb.ej, %bb.ee, %bb.ed, %bb.ec, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2E_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB3K_3ast9generated5nodes15RecordExprFieldNtB4N_14RecordPatFieldEEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit164, %bb.ea, %.body117, %bb.aq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1d_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1B_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2H_3ast9generated5nodes9MacroCallEENtB1B_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECsileJQcQObtj_7hir_def.exit, %bb.ek, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.ey, %bb.ew, %bb.eu, %bb.es, %.thread303.thread, %bb.eq, %bb.eo, %bb.en, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEIB1x_NtB22_4ExprENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1B_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2H_3ast9generated5nodes3PatEENtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB3T_.exit170, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1B_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB2H_3ast9generated5nodes5LabelNtB3K_9BlockExprEEEINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB5b_.exit168, %bb.eb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2F_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB3L_3ast9generated5nodes15RecordExprFieldEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit166, %.body110
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit: ; preds = %bb.aq
  %i.ed = icmp eq i64 %i.dn, 0
  br i1 %i.ed, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1d_.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtNtB1A_10expr_store9HygieneIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit
  %i.ee = shl nuw nsw i64 %i.dn, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef range(i64 1, 0) %i.ee, i64 noundef 4) #42
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCsileJQcQObtj_7hir_def9BlockIdLtEEB1d_.exit

bb.au:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.dx, ptr noundef nonnull align 8 dereferenceable(200) %i.y, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ag

bb.av:                                            ; preds = %bb.bl, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2928
  %i.ef = invoke noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE13with_capacityBK_(i64 noundef 0)
          to label %bb.aw unwind label %bb.bk, !noalias !2928

bb.aw:                                            ; preds = %bb.av
  store i64 %i.ef, ptr %i.e, align 8, !noalias !2928
  %.sroa.0.0.copyload5.i = load i64, ptr %i.f, align 8, !alias.scope !2928
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2928, !nonnull !99, !noundef !99 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2928 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2930
  %i.eg = icmp ult i64 %.sroa.5.0.copyload.i, 115292150460684698
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw [80 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %i.d, align 8, !alias.scope !2931, !noalias !2930
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.0.0.copyload5.i, ptr %i.ei, align 8, !alias.scope !2931, !noalias !2930
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %i.ej, align 8, !alias.scope !2931, !noalias !2930
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.eh, ptr %i.ek, align 8, !alias.scope !2931, !noalias !2930
  %.not.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %bb.ax

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i: ; preds = %bb.bg, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2930
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.en = load ptr, ptr %i.el, align 8, !alias.scope !2932, !noalias !2930, !nonnull !99, !noundef !99
  %i.eo = load ptr, ptr %i.em, align 8, !alias.scope !2932, !noalias !2930, !nonnull !99, !noundef !99 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.en
  br i1 %i.ep, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.lr.ph.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.lr.ph.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE7reserveBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %.sroa.5.0.copyload.i)
          to label %.preheader.i.i unwind label %.thread27.i.i, !noalias !2933

.preheader.i.i:                                   ; preds = %bb.ax
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.ay

.thread27.i.i:                                    ; preds = %bb.ax
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.thread23.i.i

bb.ay:                                            ; preds = %bb.bg, %.preheader.i.i
  %i.er = phi ptr [ %.sroa.4.0.copyload.i, %.preheader.i.i ], [ %2, %bb.bg ] ; 4 uses
  %.sroa.0.033.i.i = phi i64 [ %.sroa.5.0.copyload.i, %.preheader.i.i ], [ %i.es, %bb.bg ]
  %i.es = add nsw i64 %.sroa.0.033.i.i, -1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.et = icmp eq ptr %i.er, %i.eh
  br i1 %i.et, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i: ; preds = %bb.ay
  %2 = getelementptr inbounds nuw i8, ptr %i.er, i64 80 ; 2 uses
  store ptr %2, ptr %i.ej, align 8, !alias.scope !2934, !noalias !2930
  %.sroa.013.0.copyload14.i.i = load i64, ptr %i.er, align 8, !noalias !2935 ; 2 uses
  %.not6.i.i = icmp eq i64 %.sroa.013.0.copyload14.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %bb.az

bb.az:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2930
  store i64 %.sroa.013.0.copyload14.i.i, ptr %i.c, align 8, !noalias !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx15.i.i, i64 72, i1 false), !noalias !2933
  call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  %i.eu = load ptr, ptr %i.e, align 8, !alias.scope !2937, !noalias !2928, !nonnull !99, !noundef !99
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !2938, !noundef !99 ; 2 uses
  %i.ew = invoke noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.bg unwind label %bb.ba, !noalias !2939

bb.ba:                                            ; preds = %bb.az
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #40
          to label %.thread23.i.i unwind label %bb.bb, !noalias !2933

bb.bb:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !2933
  unreachable

bb.bc:                                            ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i unwind label %bb.bf, !noalias !2933

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.i.i: ; preds = %bb.be, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.lr.ph.i.i
  %i.fa = phi ptr [ %i.eo, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.lr.ph.i.i ], [ %i.fd, %bb.be ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  store ptr %i.fb, ptr %i.em, align 8, !alias.scope !2940, !noalias !2930
  %.sroa.016.0.copyload17.i.i = load i64, ptr %i.fa, align 8, !noalias !2941 ; 2 uses
  %.not7.i.i = icmp eq i64 %.sroa.016.0.copyload17.i.i, -1
  br i1 %.not7.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.i.i
  %.sroa.718.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2930
  store i64 %.sroa.016.0.copyload17.i.i, ptr %i.a, align 8, !noalias !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.718.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.718.0..sroa_idx19.i.i, i64 72, i1 false), !noalias !2933
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsE4pushBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
          to label %bb.be unwind label %bb.bc, !noalias !2933

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i: ; preds = %bb.be, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.br unwind label %bb.bh, !noalias !2928

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2930
  %i.fc = load ptr, ptr %i.el, align 8, !alias.scope !2942, !noalias !2930, !nonnull !99, !noundef !99
  %i.fd = load ptr, ptr %i.em, align 8, !alias.scope !2942, !noalias !2930, !nonnull !99, !noundef !99 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.fc
  br i1 %i.fe, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.i.i

bb.bf:                                            ; preds = %.thread23.i.i, %bb.bc
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !2933
  unreachable

bb.bg:                                            ; preds = %bb.az
  %i.fg = getelementptr inbounds nuw [80 x i8], ptr %i.ew, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !2933
  %i.fh = add i64 %i.ev, 1
  %i.fi = load ptr, ptr %i.e, align 8, !alias.scope !2937, !noalias !2928, !nonnull !99, !noundef !99
  store i64 %i.fh, ptr %i.fi, align 8, !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2930
  %i.fj = icmp eq i64 %i.es, 0
  br i1 %i.fj, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread.i.i, label %bb.ay

.thread23.i.i:                                    ; preds = %bb.ba, %.thread27.i.i
  %eh.lpad-body26.i.i = phi { ptr, i32 } [ %i.eq, %.thread27.i.i ], [ %i.ex, %bb.ba ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body.i unwind label %bb.bf, !noalias !2933

bb.bh:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bh, %.thread23.i.i, %bb.bc
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fk, %bb.bh ], [ %eh.lpad-body26.i.i, %.thread23.i.i ], [ %i.ez, %bb.bc ] ; 2 uses
  %i.fl = load ptr, ptr %i.e, align 8, !alias.scope !2943, !noalias !2928, !nonnull !99, !noundef !99
  %i.fm = icmp eq ptr %i.fl, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.fm, label %.body117, label %bb.bi, !prof !111

bb.bi:                                            ; preds = %.body.i
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %.body117 unwind label %bb.bj, !noalias !2928

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bk:                                            ; preds = %bb.av
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %.body117 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !99 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 115292150460684698
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp eq i64 %i.fq, 0
  br i1 %i.fs, label %bb.bm, label %bb.av

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %.sroa.06.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %.sroa.06.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.06.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ft, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.06, i64 112, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ej unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bv unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.body117:                                         ; preds = %.body.i, %bb.bi, %bb.bk
  %eh.lpad-body118 = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.bi ], [ %i.fo, %bb.bk ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBU_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB1Z_3ast9generated5nodes9MacroCallEENtBU_11MacroCallIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1B_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2H_3ast9generated5nodes9MacroCallEENtB1B_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECsileJQcQObtj_7hir_def.exit unwind label %bb.as

bb.br:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_.exit10.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2930
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr %i.bw, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store i64 %.sroa.0.0.copyload.i, ptr %i.gh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !2944
  %i.gi = call noundef align 8 dereferenceable_or_null(304) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 665) 304, i64 noundef range(i64 4, 9) 8) #42, !noalias !2944 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.bs, label %bb.ct, !prof !106

end_hunk_0
