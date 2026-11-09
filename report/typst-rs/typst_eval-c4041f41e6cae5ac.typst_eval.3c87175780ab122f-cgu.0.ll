Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs8_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast5ArrayNtB7_4Eval4eval:bb.a
  br i1 %.not.i.i.us.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %.val.i.us.i, i64 -8
  %.val.i.i.us.i = load i64, ptr %i.cs, align 8, !noalias !18421, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i: ; preds = %bb.x, %bb.w
  %.sroa.02.0.i.i.us.i = phi i64 [ %.val.i.i.us.i, %bb.x ], [ 0, %bb.w ]
  %i.ct = icmp eq i64 %i.cr, %.sroa.02.0.i.i.us.i
  %i.cu = zext i1 %i.ct to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.cu)
          to label %bb.y unwind label %.split.us.i, !noalias !18422, !inline_history !30

bb.y:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.cv = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35
  %i.cw = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35 ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !18420
  %i.cy = add i64 %i.cw, 1
  store i64 %i.cy, ptr %i.ai, align 8, !alias.scope !18420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %exitcond25.not.i = icmp eq i64 %i.co, %i.ch
  br i1 %exitcond25.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i

.split.us.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %.noexc119
  %i.da = sub i64 %.val4.i, %.val.i115
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.da)
          to label %bb.v unwind label %bb.ah

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.af
  %i.db = phi i64 [ %i.dc, %bb.af ], [ %.promoted.i117, %.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18416
  %i.dc = add nuw i64 %i.db, 1                    ; 5 uses
  %i.dd = icmp ult i64 %i.db, %i.cm
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.db
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.aa, !noalias !18413

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  store i64 %i.dc, ptr %i.al, align 8, !noalias !18413
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.df, %bb.aa ], [ %.us-phi18.i, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #44
          to label %.thread165 unwind label %bb.ag, !noalias !18413

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph.split.i
  %.sroa.05.0.copyload6.i = load i64, ptr %i.d, align 8, !noalias !18418 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx7.i, i64 24, i1 false), !noalias !18418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18416
  %.not2.i = icmp eq i64 %.sroa.05.0.copyload6.i, -1
  br i1 %.not2.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18413
  store i64 %.sroa.05.0.copyload6.i, ptr %i.e, align 8, !noalias !18413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !18413
  call void @llvm.experimental.noalias.scope.decl(metadata !18419)
  %i.dg = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35
  %.val.i.i118 = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i118, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ad

.split.i:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.split.i, %.split.us.i
  %.us-phi17.i = phi i64 [ %i.dc, %.split.i ], [ %i.co, %.split.us.i ]
  %.us-phi18.i = phi { ptr, i32 } [ %i.dh, %.split.i ], [ %i.cz, %.split.us.i ]
  store i64 %.us-phi17.i, ptr %i.al, align 8, !noalias !18413
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #44
          to label %.body.i unwind label %bb.ae, !noalias !18420, !inline_history !30

bb.ad:                                            ; preds = %bb.ab
  %i.di = getelementptr i8, ptr %.val.i.i118, i64 -8
  %.val.i.i.i = load i64, ptr %i.di, align 8, !noalias !18421, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ad, %bb.ab
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.ad ], [ 0, %bb.ab ]
  %i.dj = icmp eq i64 %i.dg, %.sroa.02.0.i.i.i
  %i.dk = zext i1 %i.dj to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.dk)
          to label %bb.af unwind label %.split.i, !noalias !18422, !inline_history !30

bb.ae:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18420, !inline_history !30
  unreachable

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i: ; preds = %bb.af, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i, %bb.y, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i, %bb.v
  %i.dm = phi i64 [ %.promoted.i117, %bb.v ], [ %i.co, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i ], [ %i.ch, %bb.y ], [ %i.ch, %bb.af ], [ %i.dc, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i ]
  store i64 %i.dm, ptr %i.al, align 8, !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f)
          to label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendNtNtBM_5array5ArrayECs5cbCQMMIObr_10typst_eval.exit unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.dn = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35
  %i.do = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35 ; 2 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !18420
  %i.dq = add i64 %i.do, 1
  store i64 %i.dq, ptr %i.ai, align 8, !alias.scope !18420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %exitcond.not.i = icmp eq i64 %i.dc, %i.ch
  br i1 %exitcond.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %.lr.ph.split.i

bb.ag:                                            ; preds = %bb.ah, %.body.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18413
  unreachable

bb.ah:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #44
          to label %.thread165 unwind label %bb.ag, !noalias !18413

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendNtNtBM_5array5ArrayECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18413
  %.pre = load i64, ptr %i.aa, align 8, !range !41
  br label %bb.t

bb.ai:                                            ; preds = %bb.s
  br i1 %.sroa.0.0, label %.preheader, label %.loopexit194

.preheader:                                       ; preds = %bb.ai
  %i.dt = icmp eq ptr %i.ar, %i.ah
  br i1 %i.dt, label %.thread181, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.al

.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.am, %.noexc134, %bb.ap, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, %bb.u, %bb.an, %bb.ao
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.thread165

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.f, %bb.g, %bb.p, %bb.ak, %bb.bk, %bb.bw
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ak, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.n

bb.ak:                                            ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0.3240 = phi ptr [ %i.ar, %.lr.ph ], [ %i.du, %.backedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.3240, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18423
  invoke void @_RNvXsL_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9ArrayItemNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.3240)
          to label %.noexc128 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18399

.noexc128:                                        ; preds = %bb.al
  %i.dv = load i64, ptr %i.c, align 8, !range !18409, !noalias !18423, !noundef !35
  switch i64 %i.dv, label %.loopexit [
    i64 -2, label %.backedge
    i64 -1, label %bb.am
  ]

bb.am:                                            ; preds = %.noexc128
  %.sroa.4155.0.copyload = load ptr, ptr %.sroa.4155.0..sroa_idx, align 8, !noalias !18423, !nonnull !35, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18424
  %i.dw = invoke { i64, ptr } @_RNvMsQ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_6Spread4expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4155.0.copyload)
          to label %.noexc134 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403 ; 2 uses

.noexc134:                                        ; preds = %bb.am
  %i.dx = extractvalue { i64, ptr } %i.dw, 0
  %i.dy = extractvalue { i64, ptr } %i.dw, 1
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.dx, ptr noundef %i.dy, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %.noexc135 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

.noexc135:                                        ; preds = %.noexc134
  %i.dz = load i64, ptr %i.b, align 8, !range !39, !noalias !18424, !noundef !35
  switch i64 %i.dz, label %bb.an [
    i64 -1, label %bb.ao
    i64 26, label %bb.ap
  ]

bb.an:                                            ; preds = %.noexc135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

bb.ao:                                            ; preds = %.noexc135
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i133 = load ptr, ptr %i.ea, align 8, !alias.scope !18425, !noalias !18424, !nonnull !35, !noundef !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i = load i64, ptr %i.eb, align 8, !alias.scope !18425, !noalias !18424
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i.i133, i64 %.val1.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18424
  br label %.loopexit

bb.ap:                                            ; preds = %.noexc135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc129 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

.noexc129:                                        ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18424
  br label %.backedge

.backedge:                                        ; preds = %.noexc128, %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18423
  %i.ec = icmp eq ptr %i.du, %i.ah
  br i1 %i.ec, label %.thread181, label %bb.al

.loopexit:                                        ; preds = %.noexc128, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18423
  br label %.loopexit194

.thread181:                                       ; preds = %.backedge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode9full_text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.av, %bb.at, %bb.ar
  %.pn102 = phi { ptr, i32 } [ %i.ed, %bb.ar ], [ %.pn100, %bb.av ], [ %i.ee, %bb.at ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #44
          to label %.body unwind label %bb.bn

bb.ar:                                            ; preds = %bb.bj, %.thread181
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %.thread181
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8replacen(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 3, i64 noundef 1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #44
          to label %bb.aq unwind label %bb.bn

bb.au:                                            ; preds = %bb.as
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.bg, %bb.ay, %bb.aw
  %.pn100 = phi { ptr, i32 } [ %i.ef, %bb.aw ], [ %.pn, %bb.bg ], [ %i.ej, %bb.ay ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #44
          to label %bb.aq unwind label %bb.bn

bb.aw:                                            ; preds = %bb.bi, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112, %bb.au
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  store i8 -128, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ei = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.az, %bb.ax
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #44
          to label %bb.av unwind label %bb.bn

bb.az:                                            ; preds = %bb.ax
  store ptr %i.ei, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1_NtNtCsdaEETE4DqmE_13typst_library11foundations2tyNtB5_4TypeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  %i.ek = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @352, ptr noundef nonnull %i.q)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ek, label %bb.bb, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112, !prof !40

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #47
          to label %.noexc111 unwind label %bb.ay

.noexc111:                                        ; preds = %bb.bb
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.u, i64 noundef %i.eh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.t)
          to label %bb.bc unwind label %bb.aw

bb.bc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.p, i8 0, i64 15, i1 false)
  %.sroa.3.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 -128, ptr %.sroa.3.0..sroa_idx42, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.x, ptr %i.o, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  %i.el = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @354, ptr noundef nonnull %i.o)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #44
          to label %bb.bg unwind label %bb.bn

bb.be:                                            ; preds = %bb.bc
  br i1 %i.el, label %bb.bf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110, !prof !40

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #47
          to label %.noexc109 unwind label %bb.bd

.noexc109:                                        ; preds = %bb.bf
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 1, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.ep, align 8
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %i.eo, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %i.em, %bb.bd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #44
          to label %bb.av unwind label %bb.bn

bb.bh:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.er = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.v)
          to label %bb.bj unwind label %bb.aw     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.es = extractvalue { ptr, i64 } %i.er, 0
  %i.et = extractvalue { ptr, i64 } %i.er, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.et, ptr %i.ev, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.bk unwind label %bb.ar

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bx, %bb.bl, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.o

bb.bn:                                            ; preds = %bb.by, %.body125, %bb.bo, %bb.bg, %bb.bd, %bb.ay, %bb.av, %bb.at, %bb.aq, %.body
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.bo:                                            ; preds = %bb.br, %bb.bp, %.loopexit194
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #44
end_hunk_0
