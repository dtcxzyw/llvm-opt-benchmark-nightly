Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_argsNtB4_13ExprCollector19collect_format_args:bb.a
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit.i297.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit302.i unwind label %bb.gw, !noalias !3123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit302.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit.i297.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3124
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6387.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adl, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsileJQcQObtj_7hir_def.exit.i.i.i305.i unwind label %bb.jk, !noalias !3123

bb.jk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit302.i
  %i.adm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuEEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao) #39
          to label %.body230.i unwind label %bb.jn, !noalias !3123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsileJQcQObtj_7hir_def.exit.i.i.i305.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def.exit302.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit.i306.i unwind label %bb.jl, !noalias !3123

bb.jl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsileJQcQObtj_7hir_def.exit.i.i.i305.i
  %i.adn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %.body230.i unwind label %bb.jm, !noalias !3123

bb.jm:                                            ; preds = %bb.jl
  %i.ado = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3123
  unreachable

bb.jn:                                            ; preds = %bb.jk
  %i.adp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3123
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit.i306.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsileJQcQObtj_7hir_def.exit.i.i.i305.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit311.i unwind label %bb.dc, !noalias !3123

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit311.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit.i306.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3124
  call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  %.val.i.i = load ptr, ptr %i.lr, align 8, !alias.scope !3226, !noalias !3125, !nonnull !8, !noundef !8 ; 4 uses
  %.val2.i.i = load i64, ptr %i.ls, align 8, !alias.scope !3226, !noalias !3125, !noundef !8 ; 6 uses
  %cond861 = icmp eq i64 %.val2.i.i, 0
  br i1 %cond861, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEEB1h_.exit.i.i, label %.lr.ph846

bb.jo:                                            ; preds = %.lr.ph846
  %i.adq = icmp eq i64 %i.ads, %.val2.i.i
  br i1 %i.adq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBI_.exit.i.i.i, label %.lr.ph846

.lr.ph846:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit311.i, %bb.jo
  %.sroa.0.0.i.i.i.i845 = phi i64 [ %i.ads, %bb.jo ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit311.i ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [128 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i845
  %i.ads = add nuw nsw i64 %.sroa.0.0.i.i.i.i845, 1 ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(128) %i.adr)
          to label %bb.jo unwind label %bb.jq, !noalias !3227

bb.jp:                                            ; preds = %.lr.ph849
  %i.adt = add i64 %.sroa.0.1.i.i.i.i847, 1       ; 2 uses
  %i.adu = icmp eq i64 %i.adt, %.val2.i.i
  br i1 %i.adu, label %.body.i.i.i, label %.lr.ph849

bb.jq:                                            ; preds = %.lr.ph846
  %i.adv = landingpad { ptr, i32 }
          cleanup
  %i.adw = icmp eq i64 %i.ads, %.val2.i.i
  br i1 %i.adw, label %.body.i.i.i, label %.lr.ph849

.lr.ph849:                                        ; preds = %bb.jq, %bb.jp
  %.sroa.0.1.i.i.i.i847 = phi i64 [ %i.adt, %bb.jp ], [ %i.ads, %bb.jq ] ; 2 uses
  %i.adx = getelementptr inbounds nuw [128 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i847
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(128) %i.adx) #39
          to label %bb.jp unwind label %bb.jr, !noalias !3227

bb.jr:                                            ; preds = %.lr.ph849
  %i.ady = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3228
  unreachable

.body.i.i.i:                                      ; preds = %bb.jp, %bb.jq
  %i.adz = shl nuw nsw i64 %.val2.i.i, 7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.adz, i64 noundef 8) #31, !noalias !3227
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgumentsEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aea) #39
          to label %bb.js unwind label %bb.jx, !noalias !3133

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBI_.exit.i.i.i: ; preds = %bb.jo
  %i.aeb = shl nuw nsw i64 %.val2.i.i, 7
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aeb, i64 noundef 8) #31, !noalias !3227
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEEB1h_.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEEB1h_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1q_.exit311.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBI_.exit.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgumentsEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aec)
          to label %bb.ju unwind label %bb.jt, !noalias !3133

bb.js:                                            ; preds = %bb.jt, %.body.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aed, %bb.jt ], [ %i.adv, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEEB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ba) #39
          to label %.thread197 unwind label %bb.jx, !noalias !3133

bb.jt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEEB1h_.exit.i.i
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.ju:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEEB1h_.exit.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args10FormatArgsEBH_.exit.i unwind label %bb.jv, !noalias !3133

bb.jv:                                            ; preds = %bb.ju
  %i.aee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ba)
          to label %.thread197 unwind label %bb.jw, !noalias !3133

bb.jw:                                            ; preds = %bb.jv
  %i.aef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3133
  unreachable

bb.jx:                                            ; preds = %bb.js, %.body.i.i.i
  %i.aeg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !3133
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args10FormatArgsEBH_.exit.i: ; preds = %bb.ju
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ba)
          to label %_RNvMNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_argsNtB4_13ExprCollector24collect_format_args_impl.exit unwind label %.thread211

bb.jy:                                            ; preds = %bb.hi, %bb.hh
  %i.aeh = load ptr, ptr %i.lp, align 8, !alias.scope !3195, !noalias !3124, !nonnull !8, !noundef !8
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.xt
  store i8 -64, ptr %i.aei, align 1, !noalias !3123
  %i.aej = add nuw i64 %i.xt, 1
  store i64 %i.aej, ptr %i.lq, align 8, !alias.scope !3195, !noalias !3124
  %i.aek = load i64, ptr %.sroa.0.0388515.i, align 8, !range !22, !noalias !3123, !noundef !8
  %.not108.i = icmp eq i64 %i.aek, 2
  br i1 %.not108.i, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 8
  %i.aem = load i64, ptr %i.ael, align 8, !noalias !3123, !noundef !8
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.038.0.i = phi i64 [ %i.aem, %bb.jz ], [ -1, %bb.jy ]
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 124
  %i.aeo = load i8, ptr %i.aen, align 4, !range !51, !noalias !3123, !noundef !8
  %i.aep = invoke { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao, i64 noundef %.sroa.038.0.i, i8 noundef %i.aeo)
          to label %bb.kb unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

bb.kb:                                            ; preds = %bb.ka
  %i.aeq = extractvalue { i64, i1 } %i.aep, 0     ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 32 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 104
  %i.aet = load i8, ptr %i.aes, align 8, !range !3229, !noalias !3123, !noundef !8 ; 2 uses
  %.not109.i = icmp eq i8 %i.aet, -1
  %i.aeu = zext nneg i8 %i.aet to i32
  %i.aev = shl i32 %i.aeu, 29
  %.sroa.039.0.i = select i1 %.not109.i, i32 1610612736, i32 %i.aev
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 96
  %i.aex = load i32, ptr %i.aew, align 8, !range !3230, !noalias !3123, !noundef !8 ; 2 uses
  %.not110.i = icmp eq i32 %i.aex, -1
  %.sroa.040.0.i = select i1 %.not110.i, i32 32, i32 %i.aex ; 3 uses
  %i.aey = icmp samesign ult i32 %.sroa.040.0.i, 1114112
  call void @llvm.assume(i1 %i.aey)
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 102
  %i.afa = load i8, ptr %i.aez, align 2, !range !30, !noalias !3123, !noundef !8 ; 3 uses
  %.not111.i = icmp eq i8 %i.afa, 2
  br i1 %.not111.i, label %.thread439.i, label %bb.kc

.thread439.i:                                     ; preds = %bb.kc, %bb.kb
  %.sroa.044.0.i = phi i32 [ %i.afq, %bb.kc ], [ %.sroa.040.0.i, %bb.kb ]
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 100
  %i.afc = load i8, ptr %i.afb, align 4, !range !10, !noalias !3123, !noundef !8
  %i.afd = zext nneg i8 %i.afc to i32
  %i.afe = shl nuw nsw i32 %i.afd, 23
  %i.aff = or i32 %i.afe, %.sroa.044.0.i
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 101
  %i.afh = load i8, ptr %i.afg, align 1, !range !10, !noalias !3123, !noundef !8
  %i.afi = zext nneg i8 %i.afh to i32
  %i.afj = shl nuw nsw i32 %i.afi, 24
  %i.afk = or i32 %i.aff, %i.afj                  ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 103
  %i.afm = load i8, ptr %i.afl, align 1, !range !30, !noalias !3123, !noundef !8 ; 3 uses
  %.not113.i = icmp eq i8 %i.afm, 2
  br i1 %.not113.i, label %.thread441.i, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.afn = icmp eq i8 %i.afa, 0
  %3 = select i1 %i.afn, i32 2097152, i32 0
  %i.afo = icmp eq i8 %i.afa, 1
  %i.afp = select i1 %i.afo, i32 4194304, i32 0
  %4 = or disjoint i32 %i.afp, %3
  %i.afq = or disjoint i32 %4, %.sroa.040.0.i
  br label %.thread439.i

.thread441.i:                                     ; preds = %bb.kd, %.thread439.i
  %.sroa.046.0.i = phi i32 [ %i.agd, %bb.kd ], [ %i.afk, %.thread439.i ]
  %i.afr = load i64, ptr %i.aer, align 8, !range !36, !noalias !3123, !noundef !8
  %.not115.i = icmp eq i64 %i.afr, -2
  %i.afs = select i1 %.not115.i, i32 0, i32 134217728
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 64 ; 2 uses
  %i.afu = load i64, ptr %i.aft, align 8, !range !36, !noalias !3123, !noundef !8
  %.not116.i = icmp eq i64 %i.afu, -2
  %i.afv = select i1 %.not116.i, i32 0, i32 268435456
  %i.afw = or i32 %.sroa.046.0.i, %.sroa.039.0.i
  %i.afx = or i32 %i.afw, %i.afs
  %i.afy = or i32 %i.afx, %i.afv                  ; 2 uses
  %i.afz = icmp eq i32 %i.afy, 1610612768
  br i1 %i.afz, label %bb.ke, label %bb.kf

bb.kd:                                            ; preds = %.thread439.i
  %i.aga = icmp eq i8 %i.afm, 0
  %5 = select i1 %i.aga, i32 33554432, i32 0
  %i.agb = icmp eq i8 %i.afm, 1
  %i.agc = select i1 %i.agb, i32 67108864, i32 0
  %6 = or disjoint i32 %5, %i.agc
  %i.agd = or i32 %6, %i.afk
  br label %.thread441.i

bb.ke:                                            ; preds = %bb.ku, %bb.kr, %bb.kk, %.thread441.i
  %.not120.i = icmp eq i64 %.sroa.06.0.ph518.i, %i.aeq
  br i1 %.not120.i, label %bb.kw, label %bb.kv

bb.kf:                                            ; preds = %.thread441.i
  %i.age = load i64, ptr %i.lq, align 8, !noalias !3124, !noundef !8 ; 2 uses
  %i.agf = icmp ult i64 %i.xt, %i.age
  br i1 %i.agf, label %bb.kg, label %.invoke.i

bb.kg:                                            ; preds = %bb.kf
  %i.agg = load ptr, ptr %i.lp, align 8, !noalias !3124, !nonnull !8, !noundef !8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.xt ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !noalias !3123, !noundef !8
  %i.agj = or i8 %i.agi, 1
  store i8 %i.agj, ptr %i.agh, align 1, !noalias !3123
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 4)
          to label %bb.kh unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

bb.kh:                                            ; preds = %bb.kg
  %i.agk = load i64, ptr %i.lq, align 8, !alias.scope !3231, !noalias !3124, !noundef !8 ; 2 uses
  %i.agl = icmp sgt i64 %i.agk, -1
  call void @llvm.assume(i1 %i.agl)
  %i.agm = load ptr, ptr %i.lp, align 8, !alias.scope !3231, !noalias !3124, !nonnull !8, !noundef !8
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agk
  store i32 %i.afy, ptr %i.agn, align 1, !noalias !3123
  %.pre.i312.i = load i64, ptr %i.lq, align 8, !alias.scope !3231, !noalias !3124
  %i.ago = add i64 %.pre.i312.i, 4                ; 4 uses
  store i64 %i.ago, ptr %i.lq, align 8, !alias.scope !3231, !noalias !3124
  %i.agp = load i64, ptr %i.aer, align 8, !range !36, !noalias !3123, !noundef !8 ; 3 uses
  %.not117.i = icmp eq i64 %i.agp, -2
  br i1 %.not117.i, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %.not.i315.not.i = icmp eq i64 %i.agp, -1       ; 2 uses
  br i1 %.not.i315.not.i, label %bb.kl, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %.not2.i.i = icmp eq i64 %i.agp, 2
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 40
  %i.agr = load i64, ptr %i.agq, align 8, !alias.scope !3232, !noalias !3233
  %.sroa.01.0.i.i = select i1 %.not2.i.i, i64 %i.agr, i64 -1
  %i.ags = invoke { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao, i64 noundef %.sroa.01.0.i.i, i8 noundef -1)
          to label %.thread443.i unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

.thread443.i:                                     ; preds = %bb.kj
  %i.agt = extractvalue { i64, i1 } %i.ags, 0
  %i.agu = trunc i64 %i.agt to i16
  %.pre.i = load i64, ptr %i.lq, align 8, !noalias !3124
  br label %bb.km

bb.kk:                                            ; preds = %bb.ko, %bb.kl, %bb.kh
  %i.agv = phi i64 [ %i.ahk, %bb.ko ], [ %i.ago, %bb.kl ], [ %i.ago, %bb.kh ]
  %i.agw = load i64, ptr %i.aft, align 8, !range !36, !noalias !3123, !noundef !8 ; 3 uses
  %.not.i57 = icmp eq i64 %i.agw, -2
  br i1 %.not.i57, label %bb.ke, label %bb.kp

bb.kl:                                            ; preds = %bb.ki
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 40
  %i.agy = load i16, ptr %i.agx, align 8, !alias.scope !3232, !noalias !3233, !noundef !8 ; 2 uses
  %.not455.i = icmp eq i16 %i.agy, 0
  br i1 %.not455.i, label %bb.kk, label %bb.km

bb.km:                                            ; preds = %bb.kl, %.thread443.i
  %i.agz = phi i64 [ %.pre.i, %.thread443.i ], [ %i.ago, %bb.kl ] ; 2 uses
  %.sroa.3.0.i316446.i = phi i16 [ %i.agu, %.thread443.i ], [ %i.agy, %bb.kl ]
  %i.aha = icmp ult i64 %i.xt, %i.agz
  br i1 %i.aha, label %bb.kn, label %.invoke.i

bb.kn:                                            ; preds = %bb.km
  %i.ahb = load ptr, ptr %i.lp, align 8, !noalias !3124, !nonnull !8, !noundef !8
  %i.ahc = select i1 %.not.i315.not.i, i8 2, i8 18
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.xt ; 2 uses
  %i.ahe = load i8, ptr %i.ahd, align 1, !noalias !3123, !noundef !8
  %i.ahf = or i8 %i.ahe, %i.ahc
  store i8 %i.ahf, ptr %i.ahd, align 1, !noalias !3123
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 2)
          to label %bb.ko unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

bb.ko:                                            ; preds = %bb.kn
  %i.ahg = load i64, ptr %i.lq, align 8, !alias.scope !3234, !noalias !3124, !noundef !8 ; 2 uses
  %i.ahh = icmp sgt i64 %i.ahg, -1
  call void @llvm.assume(i1 %i.ahh)
  %i.ahi = load ptr, ptr %i.lp, align 8, !alias.scope !3234, !noalias !3124, !nonnull !8, !noundef !8
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahg
  store i16 %.sroa.3.0.i316446.i, ptr %i.ahj, align 1, !noalias !3123
  %.pre.i318.i = load i64, ptr %i.lq, align 8, !alias.scope !3234, !noalias !3124
  %i.ahk = add i64 %.pre.i318.i, 2                ; 2 uses
  store i64 %i.ahk, ptr %i.lq, align 8, !alias.scope !3234, !noalias !3124
  br label %bb.kk

bb.kp:                                            ; preds = %bb.kk
  %.not.i321.not.i = icmp eq i64 %i.agw, -1       ; 2 uses
  br i1 %.not.i321.not.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %.not2.i323.i = icmp eq i64 %i.agw, 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 72
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !3235, !noalias !3236
  %.sroa.01.0.i324.i = select i1 %.not2.i323.i, i64 %i.ahm, i64 -1
  %i.ahn = invoke { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapTjNtNtNtNtCsileJQcQObtj_7hir_def10expr_store5lower11format_args12ArgumentTypeEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ao, i64 noundef %.sroa.01.0.i324.i, i8 noundef -1)
          to label %.thread447.i unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

.thread447.i:                                     ; preds = %bb.kq
  %i.aho = extractvalue { i64, i1 } %i.ahn, 0
  %i.ahp = trunc i64 %i.aho to i16
  %.pre566.i = load i64, ptr %i.lq, align 8, !noalias !3124
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.0.0388515.i, i64 72
  %i.ahr = load i16, ptr %i.ahq, align 8, !alias.scope !3235, !noalias !3236, !noundef !8 ; 2 uses
  %.not456.i = icmp eq i16 %i.ahr, 0
  br i1 %.not456.i, label %bb.ke, label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.thread447.i
  %i.ahs = phi i64 [ %.pre566.i, %.thread447.i ], [ %i.agv, %bb.kr ] ; 2 uses
  %.sroa.3.0.i322450.i = phi i16 [ %i.ahp, %.thread447.i ], [ %i.ahr, %bb.kr ]
  %i.aht = icmp ult i64 %i.xt, %i.ahs
  br i1 %i.aht, label %bb.kt, label %.invoke.i

bb.kt:                                            ; preds = %bb.ks
  %i.ahu = load ptr, ptr %i.lp, align 8, !noalias !3124, !nonnull !8, !noundef !8
  %i.ahv = select i1 %.not.i321.not.i, i8 4, i8 36
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.xt ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !noalias !3123, !noundef !8
  %i.ahy = or i8 %i.ahx, %i.ahv
  store i8 %i.ahy, ptr %i.ahw, align 1, !noalias !3123
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 2)
          to label %bb.ku unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

bb.ku:                                            ; preds = %bb.kt
  %i.ahz = load i64, ptr %i.lq, align 8, !alias.scope !3237, !noalias !3124, !noundef !8 ; 2 uses
  %i.aia = icmp sgt i64 %i.ahz, -1
  call void @llvm.assume(i1 %i.aia)
  %i.aib = load ptr, ptr %i.lp, align 8, !alias.scope !3237, !noalias !3124, !nonnull !8, !noundef !8
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ahz
  store i16 %.sroa.3.0.i322450.i, ptr %i.aic, align 1, !noalias !3123
  %.pre.i327.i = load i64, ptr %i.lq, align 8, !alias.scope !3237, !noalias !3124
  %i.aid = add i64 %.pre.i327.i, 2
  store i64 %i.aid, ptr %i.lq, align 8, !alias.scope !3237, !noalias !3124
  br label %bb.ke

bb.kv:                                            ; preds = %bb.ke
  %i.aie = load i64, ptr %i.lq, align 8, !noalias !3124, !noundef !8 ; 2 uses
  %i.aif = icmp ult i64 %i.xt, %i.aie
  br i1 %i.aif, label %bb.kx, label %.invoke.i

bb.kw:                                            ; preds = %bb.ky, %bb.ke
  %i.aig = add i64 %i.aeq, 1
  br label %.outer.i

bb.kx:                                            ; preds = %bb.kv
  %i.aih = load ptr, ptr %i.lp, align 8, !noalias !3124, !nonnull !8, !noundef !8
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.xt ; 2 uses
  %i.aij = load i8, ptr %i.aii, align 1, !noalias !3123, !noundef !8
  %i.aik = or i8 %i.aij, 8
  store i8 %i.aik, ptr %i.aii, align 1, !noalias !3123
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 2)
          to label %bb.ky unwind label %.loopexit.split-lp463.loopexit.loopexit.split-lp.i, !noalias !3123

.invoke.i:                                        ; preds = %bb.kv, %bb.ks, %bb.km, %bb.kf
  %i.ail = phi i64 [ %i.ahs, %bb.ks ], [ %i.agz, %bb.km ], [ %i.age, %bb.kf ], [ %i.aie, %bb.kv ]
  %i.aim = phi ptr [ @84, %bb.ks ], [ @83, %bb.km ], [ @82, %bb.kf ], [ @85, %bb.kv ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.xt, i64 noundef %i.ail, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aim) #40
          to label %.cont.i unwind label %.loopexit.split-lp463.loopexit.split-lp.i, !noalias !3123

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ky:                                            ; preds = %bb.kx
  %i.ain = trunc i64 %i.aeq to i16
  %i.aio = load i64, ptr %i.lq, align 8, !alias.scope !3238, !noalias !3124, !noundef !8 ; 2 uses
  %i.aip = icmp sgt i64 %i.aio, -1
  call void @llvm.assume(i1 %i.aip)
  %i.aiq = load ptr, ptr %i.lp, align 8, !alias.scope !3238, !noalias !3124, !nonnull !8, !noundef !8
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.aio
  store i16 %i.ain, ptr %i.air, align 1, !noalias !3123
  %.pre.i330.i = load i64, ptr %i.lq, align 8, !alias.scope !3238, !noalias !3124
  %i.ais = add i64 %.pre.i330.i, 2
  store i64 %i.ais, ptr %i.lq, align 8, !alias.scope !3238, !noalias !3124
  br label %bb.kw

.noexc334.i.preheader:                            ; preds = %.body216.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPieceEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3123

bb.kz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.i
  %.pn121.pn602.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp461.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.thread.i ], [ %.pn121.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.i ]
  %.sroa.075.5601.i = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.thread.i ], [ %.sroa.075.2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir11format_args15FormatArgsPiecej1_EBI_.exit335.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.lb unwind label %bb.la, !noalias !3123

bb.la:                                            ; preds = %bb.kz
  %i.ait = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.i unwind label %bb.lc, !noalias !3123

end_hunk_0
