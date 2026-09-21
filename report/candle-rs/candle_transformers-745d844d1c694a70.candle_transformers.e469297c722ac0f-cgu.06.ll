Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.06?download=true
inline.NumInlined: 4703
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsb_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepSchedulerNtNtB7_10schedulers9Scheduler4step:bb.a

bb.kg:                                            ; preds = %bb.kf
  %i.agi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agj = atomicrmw sub ptr %i.agd, i64 1 release, align 8, !noalias !38368
  %i.agk = icmp eq i64 %i.agj, 1
  br i1 %i.agk, label %bb.kh, label %.body736.i

bb.kh:                                            ; preds = %bb.kg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #28
          to label %.body736.i unwind label %bb.ki, !noalias !38042

bb.ki:                                            ; preds = %bb.kh
  %i.agl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !38042
  unreachable

bb.kj:                                            ; preds = %bb.kf, %bb.ke
  %i.agm = load ptr, ptr %.sroa.26.0..sroa_idx.i, align 8, !alias.scope !38366, !noalias !38051, !nonnull !4, !noundef !4
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.agm, i64 %i.agf
  store ptr %i.agd, ptr %i.agn, align 8, !noalias !38042
  %i.ago = add i64 %i.agf, 1
  store i64 %i.ago, ptr %.sroa.37.0..sroa_idx.i, align 8, !alias.scope !38366, !noalias !38051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !38051
  %exitcond.not.i = icmp eq i64 %i.qz, %i.qk
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cj

bb.kk:                                            ; preds = %select.unfold61.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #31
          to label %bb.gd unwind label %.loopexit.split-lp.i, !noalias !38042

bb.kl:                                            ; preds = %select.unfold61.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aez, ptr noundef nonnull align 1 dereferenceable(42) @180, i64 42, i1 false), !noalias !38042
  br label %bb.jn

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit719.i: ; preds = %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !38051
  %i.agp = trunc nuw i8 %.sroa.0263.4.i to i1
  br i1 %i.agp, label %bb.km, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i

bb.km:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit719.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.kp unwind label %bb.kn, !noalias !38042

bb.kn:                                            ; preds = %bb.km
  %i.agq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i739.i = load i64, ptr %i.df, align 8, !alias.scope !38369, !noalias !38051 ; 2 uses
  %i.agr = icmp eq i64 %.val2.i739.i, 0
  br i1 %i.agr, label %.body, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.val3.i740.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !38370, !noalias !38051, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i

bb.kp:                                            ; preds = %bb.km
  %.val.i742.i = load i64, ptr %i.df, align 8, !alias.scope !38369, !noalias !38051 ; 2 uses
  %i.ags = icmp eq i64 %.val.i742.i, 0
  br i1 %i.ags, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %.val1.i743.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !38370, !noalias !38051, !nonnull !4, !noundef !4
  %i.agt = shl nuw i64 %.val.i742.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i743.i, i64 noundef %i.agt, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38371
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i

common.resume.sink.split.i:                       ; preds = %bb.ko, %bb.co
  %.val2.i.sink.i = phi i64 [ %.val2.i.i, %bb.co ], [ %.val2.i739.i, %bb.ko ]
  %.val3.i.sink.i = phi ptr [ %.val3.i.i, %bb.co ], [ %.val3.i740.i, %bb.ko ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.rk, %bb.co ], [ %i.agq, %bb.ko ]
  %i.agu = shl nuw i64 %.val2.i.sink.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.sink.i, i64 noundef %i.agu, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38042
  br label %.body

bb.kr:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #27
          to label %.body unwind label %bb.dx, !noalias !38042

bb.ks:                                            ; preds = %select.unfold.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #31
          to label %.noexc103 unwind label %bb.by

.noexc103:                                        ; preds = %bb.ks
  unreachable

bb.kt:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.mz, ptr noundef nonnull align 1 dereferenceable(42) @180, i64 42, i1 false), !noalias !38042
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i
  %.sroa.85.16.ph = phi i64 [ %.sroa.85.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ 42, %bb.kt ]
  %.sroa.59.16.ph = phi ptr [ %.sroa.59.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ %i.mz, %bb.kt ]
  %.sroa.31.16.ph = phi i64 [ %.sroa.31.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ 42, %bb.kt ]
  %.sroa.0.16.ph = phi i64 [ %.sroa.0.0278, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ -9223372036854775766, %bb.kt ]
  %i.agv = inttoptr i64 %.sroa.31.16.ph to ptr
  %.sroa.556.sroa.5.0..sroa.556.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.556.sroa.5.0..sroa.556.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87)
  store i64 %.sroa.0.16.ph, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.agv, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.16.ph, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.85.16.ph, ptr %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218

bb.kv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit653.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !38051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !38051
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87)
  store ptr %i.zt, ptr %i.ee, align 8
  br label %bb.ky

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218: ; preds = %bb.xh, %bb.xi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers.exit, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.experimental.noalias.scope.decl(metadata !38372)
  call void @llvm.experimental.noalias.scope.decl(metadata !38373)
  call void @llvm.experimental.noalias.scope.decl(metadata !38374)
  %i.agw = load ptr, ptr %i.eg, align 8, !alias.scope !38375, !nonnull !4, !noundef !4
  %i.agx = atomicrmw sub ptr %i.agw, i64 1 release, align 8, !noalias !38375
  %i.agy = icmp eq i64 %i.agx, 1
  br i1 %i.agy, label %bb.kw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.kw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit218
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eg) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

.body202:                                         ; preds = %bb.wz, %bb.xa, %bb.ws, %bb.wt, %bb.kx, %.body110
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body110 ], [ %i.bhx, %bb.ws ], [ %i.agz, %bb.kx ], [ %i.bhx, %bb.wt ], [ %i.big, %bb.xa ], [ %i.big, %bb.wz ] ; 3 uses
  br i1 %.sroa.036.0, label %bb.xv, label %.body

bb.kx:                                            ; preds = %bb.la
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %.body202

bb.ky:                                            ; preds = %bb.kv, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread280, %bb.ca
  %.sroa.036.0 = phi i1 [ true, %bb.kv ], [ false, %bb.ca ], [ false, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread280 ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.ee, %bb.kv ], [ %4, %bb.ca ], [ %4, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread280 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %.val80 = load ptr, ptr %i.aha, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %.val81 = load i64, ptr %i.ahb, align 8, !noundef !4 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38376)
  %i.ahc = shl nuw nsw i64 %.val81, 3             ; 2 uses
  %i.ahd = icmp eq i64 %.val81, 0
  br i1 %i.ahd, label %.loopexit, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !38377
  %i.ahe = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ahc, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38377 ; 4 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %bb.la, label %.lr.ph.preheader.i

bb.la:                                            ; preds = %bb.kz
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ahc) #31
          to label %.noexc107 unwind label %bb.kx

.noexc107:                                        ; preds = %bb.la
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.kz
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %.val80, i64 %.val81
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.ahj, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.val80, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ahk, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.ahh, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.val81, %.lr.ph.preheader.i ]
  %i.ahh = add nsw i64 %.sroa.10.021.i, -1        ; 2 uses
  %i.ahi = icmp eq ptr %.sroa.013.023.i, %i.ahg
  br i1 %i.ahi, label %.loopexit, label %bb.lb

bb.lb:                                            ; preds = %.lr.ph.i105
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.ahk = add nuw nsw i64 %.sroa.7.022.i, 1
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !38376, !noalias !38378, !noundef !4 ; 3 uses
  %.not.i.i106 = icmp eq ptr %.val12.i, null
  br i1 %.not.i.i106, label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ahl = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !38379
  %i.ahm = icmp slt i64 %i.ahl, 0
  br i1 %i.ahm, label %bb.ld, label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.lc, %bb.lb
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.ahe, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.ahn, align 8, !noalias !38379
  %i.aho = icmp eq i64 %i.ahh, 0
  br i1 %i.aho, label %.loopexit, label %.lr.ph.i105

.loopexit:                                        ; preds = %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, %.lr.ph.i105, %bb.ky
  %.sroa.5277.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ky ], [ %i.ahe, %.lr.ph.i105 ], [ %i.ahe, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ]
  store i64 %.val81, ptr %i.ed, align 8, !noalias !38376
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 6 uses
  store ptr %.sroa.5277.0, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !38376
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 3 uses
  store i64 %.val81, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !38376
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.ahq = load i64, ptr %i.ahp, align 8, !noundef !4 ; 2 uses
  %i.ahr = call i64 @llvm.usub.sat.i64(i64 %i.ahq, i64 1)
  %.not = icmp ult i64 %i.ahq, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit226
  %.pre383 = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.ahs = phi i64 [ %.pre383, %._crit_edge.loopexit ], [ %.val81, %.loopexit ] ; 2 uses
  %i.aht = icmp ult i64 %i.ahs, 1152921504606846976
  call void @llvm.assume(i1 %i.aht)
  %i.ahu = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4
  %i.ahv = atomicrmw add ptr %i.ahu, i64 1 monotonic, align 8
  %i.ahw = icmp slt i64 %i.ahv, 0
  br i1 %i.ahw, label %bb.ln, label %bb.le

.lr.ph:                                           ; preds = %.loopexit, %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit226
  %.sroa.057.0333 = phi i64 [ %i.ahx, %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit226 ], [ 0, %.loopexit ] ; 4 uses
  %i.ahx = add nuw i64 %.sroa.057.0333, 1         ; 5 uses
  %i.ahy = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ahz = icmp ult i64 %i.ahx, %i.ahy
  br i1 %i.ahz, label %bb.xj, label %bb.xt

bb.le:                                            ; preds = %._crit_edge
  %i.aia = add nsw i64 %i.ahs, -1                 ; 3 uses
  %i.aib = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val87 = load ptr, ptr %i.aha, align 8         ; 2 uses
  %.val88 = load i64, ptr %i.ahb, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.aib, ptr %i.bh, align 8
  %.not.i108 = icmp ult i64 %i.aia, %.val88
  br i1 %.not.i108, label %bb.lf, label %bb.li

bb.lf:                                            ; preds = %bb.le
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val87) ]
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %i.aia ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38380)
  %i.aid = load ptr, ptr %i.aic, align 8, !alias.scope !38380, !noundef !4 ; 2 uses
  %i.aie = icmp eq ptr %i.aid, null
  br i1 %i.aie, label %bb.lp, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aif = atomicrmw sub ptr %i.aid, i64 1 release, align 8, !noalias !38381
  %i.aig = icmp eq i64 %i.aif, 1
  br i1 %i.aig, label %bb.lh, label %bb.lp

bb.lh:                                            ; preds = %bb.lg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aic) #28
          to label %bb.lp unwind label %.thread.i

bb.li:                                            ; preds = %bb.le
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 -1, -2) %i.aia, i64 noundef %.val88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #31
          to label %bb.lj unwind label %bb.lk

bb.lj:                                            ; preds = %bb.li
  unreachable

.thread.i:                                        ; preds = %bb.lh
  %i.aih = landingpad { ptr, i32 }
          cleanup
  %i.aii = load ptr, ptr %i.bh, align 8, !noundef !4
  store ptr %i.aii, ptr %i.aic, align 8
  br label %.body110

bb.lk:                                            ; preds = %bb.li
  %i.aij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aik = atomicrmw sub ptr %i.aib, i64 1 release, align 8, !noalias !38382
  %i.ail = icmp eq i64 %i.aik, 1
  br i1 %i.ail, label %bb.ll, label %.body110

bb.ll:                                            ; preds = %bb.lk
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #28
          to label %.body110 unwind label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aim = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ln:                                            ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

.body110:                                         ; preds = %.thread.i223, %bb.xp, %bb.xq, %bb.xr, %bb.ml, %bb.th, %common.resume.sink.split.i127, %bb.ti, %bb.tj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit727.i, %bb.to, %bb.tp, %.body.i122, %bb.wj, %bb.wo, %bb.ll, %bb.lk, %.thread.i, %bb.lo
  %.pn = phi { ptr, i32 } [ %i.bjf, %bb.xq ], [ %i.aij, %bb.lk ], [ %i.aih, %.thread.i ], [ %i.aij, %bb.ll ], [ %common.resume.op.ph.i128, %common.resume.sink.split.i127 ], [ %i.ain, %bb.lo ], [ %i.bhq, %bb.wj ], [ %.pn610.i, %bb.wo ], [ %.pn610.i, %.body.i122 ], [ %i.bbm, %bb.ti ], [ %.pn588.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit727.i ], [ %i.bbm, %bb.th ], [ %i.bbm, %bb.tj ], [ %.pn588.i, %bb.tp ], [ %.pn588.i, %bb.to ], [ %i.aoc, %bb.ml ], [ %i.bjd, %.thread.i223 ], [ %i.bjf, %bb.xr ], [ %i.bjf, %bb.xp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed) #27
          to label %.body202 unwind label %bb.xg

bb.lo:                                            ; preds = %bb.wp, %bb.tl, %bb.lz, %bb.ly, %bb.lw, %bb.lu, %bb.xt
  %i.ain = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.lp:                                            ; preds = %bb.lh, %bb.lg, %bb.lf
  %i.aio = load ptr, ptr %i.bh, align 8, !noundef !4
  store ptr %i.aio, ptr %i.aic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.aip = load i64, ptr %i.ahp, align 8, !noundef !4 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.air = load i8, ptr %i.aiq, align 1, !range !27, !noundef !4
  %i.ais = trunc nuw i8 %i.air to i1
  br i1 %i.ais, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.ait = load i64, ptr %i.ej, align 8, !noundef !4 ; 2 uses
  %i.aiu = icmp ult i64 %i.ait, 1152921504606846976
  call void @llvm.assume(i1 %i.aiu)
  %i.aiv = sub i64 %i.ait, %i.ek
  %i.aiw = call i64 @llvm.umin.i64(i64 %i.aip, i64 %i.aiv)
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %.sroa.025.0 = phi i64 [ %i.aiw, %bb.lq ], [ %i.aip, %bb.lp ]
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %.val90 = load i64, ptr %i.aix, align 8, !noundef !4
  %i.aiy = add i64 %.val90, 1
  %i.aiz = call i64 @llvm.umin.i64(i64 %.sroa.025.0, i64 %i.aiy)
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store i64 %i.aiz, ptr %i.aja, align 8, !alias.scope !38383
  %i.ajb = load ptr, ptr %.sroa.0.0, align 8, !nonnull !4, !noundef !4
  %i.ajc = atomicrmw add ptr %i.ajb, i64 1 monotonic, align 8
  %i.ajd = icmp slt i64 %i.ajc, 0
  br i1 %i.ajd, label %bb.lv, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aje = load ptr, ptr %.sroa.0.0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !38384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !38384
  %i.ajf = load ptr, ptr %i.ml, align 8, !alias.scope !38384, !noundef !4 ; 3 uses
  store ptr %i.ajf, ptr %i.bg, align 8, !noalias !38384
  store ptr %i.aje, ptr %i.ml, align 8, !alias.scope !38384
  %i.ajg = icmp eq ptr %i.ajf, null
  br i1 %i.ajg, label %bb.lw, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ajh = atomicrmw sub ptr %i.ajf, i64 1 release, align 8, !noalias !38385
  %i.aji = icmp eq i64 %i.ajh, 1
  br i1 %i.aji, label %bb.lu, label %bb.lw

bb.lu:                                            ; preds = %bb.lt
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #28
          to label %bb.lw unwind label %bb.lo

bb.lv:                                            ; preds = %bb.lr
  call void @llvm.trap()
  unreachable

bb.lw:                                            ; preds = %bb.lt, %bb.ls, %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !38384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.experimental.noalias.scope.decl(metadata !38386)
  call void @llvm.experimental.noalias.scope.decl(metadata !38387)
  call void @llvm.experimental.noalias.scope.decl(metadata !38388)
  %.val615.i = load ptr, ptr %i.ei, align 8, !alias.scope !38387, !noalias !38389, !nonnull !4, !noundef !4 ; 4 uses
  %.val616.i = load i64, ptr %i.ej, align 8, !alias.scope !38387, !noalias !38389, !noundef !4 ; 4 uses
  %i.ajj = invoke fastcc noundef i64 @_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler10step_index(ptr nonnull %.val615.i, i64 %.val616.i, i64 noundef %3)
          to label %.noexc194 unwind label %bb.lo

.noexc194:                                        ; preds = %bb.lw
  %i.ajk = load ptr, ptr %i.aha, align 8, !alias.scope !38387, !noalias !38389, !nonnull !4, !noundef !4 ; 2 uses
  %i.ajl = load i64, ptr %i.ahb, align 8, !alias.scope !38387, !noalias !38389, !noundef !4 ; 4 uses
  %i.ajm = add i64 %i.ajl, -1                     ; 2 uses
  %.not.i114 = icmp eq i64 %i.ajl, 0
  br i1 %.not.i114, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %.noexc194
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %i.ajm ; 7 uses
  %i.ajo = load ptr, ptr %i.ajn, align 8, !noalias !38387, !noundef !4
  %.not535.i115 = icmp eq ptr %i.ajo, null
  br i1 %.not535.i115, label %bb.ma, label %bb.lz

bb.ly:                                            ; preds = %.noexc194
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ajm, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #32
          to label %.noexc195 unwind label %bb.lo

.noexc195:                                        ; preds = %bb.ly
  unreachable

bb.lz:                                            ; preds = %bb.lx
  %i.ajp = invoke fastcc noundef i64 @_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler10step_index(ptr nonnull %.val615.i, i64 %.val616.i, i64 noundef %3)
          to label %.noexc196 unwind label %bb.lo

.noexc196:                                        ; preds = %bb.lz
  %i.ajq = add i64 %i.ajp, 1                      ; 2 uses
  %i.ajr = icmp ult i64 %i.ajq, %.val616.i
  br i1 %i.ajr, label %bb.mb, label %bb.mc

end_hunk_0
