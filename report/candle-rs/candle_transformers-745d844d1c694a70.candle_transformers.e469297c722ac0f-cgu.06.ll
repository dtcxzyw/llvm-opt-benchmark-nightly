Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.06?download=true
inline.NumInlined: 4703
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsb_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepSchedulerNtNtB7_10schedulers9Scheduler4step:bb.a
          to label %bb.jx unwind label %.loopexit.i, !noalias !38080

bb.jx:                                            ; preds = %bb.jw
  %i.afx = load i64, ptr %i.dc, align 8, !range !5, !noalias !38084, !noundef !4 ; 2 uses
  %.not560.i = icmp eq i64 %i.afx, -1
  %i.afy = load ptr, ptr %i.qu, align 8, !noalias !38084 ; 2 uses
  br i1 %.not560.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %.sroa.5301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.59.16.copyload249.a = load ptr, ptr %.sroa.5301.0..sroa_idx.i, align 8, !noalias !38086
  %.sroa.85.16..sroa.5301.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.85.16.copyload272.a = load i64, ptr %.sroa.85.16..sroa.5301.0..sroa_idx.i.sroa_idx, align 8, !noalias !38086
  %.sroa.87.16..sroa.5301.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87.16..sroa.5301.0..sroa_idx.i.sroa_idx, i64 48, i1 false), !noalias !38086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !38084
  %i.afz = ptrtoint ptr %i.afy to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !38084
  br label %bb.jl

bb.jz:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !38084
  invoke void @_RNvXsO_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3DivdE3div(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.dd, ptr noundef nonnull %i.afy, double noundef %i.afq)
          to label %bb.ka unwind label %.loopexit.i, !noalias !38080

bb.ka:                                            ; preds = %bb.jz
  %i.aga = load i64, ptr %i.dd, align 8, !range !5, !noalias !38084, !noundef !4 ; 2 uses
  %.not561.i = icmp eq i64 %i.aga, -1
  %i.agb = load ptr, ptr %i.qv, align 8, !noalias !38084 ; 4 uses
  br i1 %.not561.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %.sroa.5310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.59.16.copyload250 = load ptr, ptr %.sroa.5310.0..sroa_idx.i, align 8, !noalias !38086
  %.sroa.85.16..sroa.5310.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.85.16.copyload273 = load i64, ptr %.sroa.85.16..sroa.5310.0..sroa_idx.i.sroa_idx, align 8, !noalias !38086
  %.sroa.87.16..sroa.5310.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87.16..sroa.5310.0..sroa_idx.i.sroa_idx, i64 48, i1 false), !noalias !38086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !38084
  %i.agc = ptrtoint ptr %i.agb to i64
  br label %bb.jl

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !38084
  call void @llvm.experimental.noalias.scope.decl(metadata !38399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !38084
  store ptr %i.agb, ptr %i.bi, align 8, !noalias !38400
  %i.agd = load i64, ptr %.sroa.37.0..sroa_idx.i, align 8, !alias.scope !38399, !noalias !38084, !noundef !4 ; 3 uses
  %i.age = load i64, ptr %i.de, align 8, !range !12, !alias.scope !38399, !noalias !38084, !noundef !4
  %i.agf = icmp eq i64 %i.agd, %i.age
  br i1 %i.agf, label %bb.kd, label %bb.kh

bb.kd:                                            ; preds = %bb.kc
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %bb.kh unwind label %bb.ke, !noalias !38080

bb.ke:                                            ; preds = %bb.kd
  %i.agg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agh = atomicrmw add ptr %i.agb, i64 -1 release, align 8, !noalias !38401
  %i.agi = icmp eq i64 %i.agh, 1
  br i1 %i.agi, label %bb.kf, label %.body736.i

bb.kf:                                            ; preds = %bb.ke
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #28
          to label %.body736.i unwind label %bb.kg, !noalias !38080

bb.kg:                                            ; preds = %bb.kf
  %i.agj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !38080
  unreachable

bb.kh:                                            ; preds = %bb.kd, %bb.kc
  %i.agk = load ptr, ptr %.sroa.26.0..sroa_idx.i, align 8, !alias.scope !38399, !noalias !38084, !nonnull !4, !noundef !4
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.agd
  store ptr %i.agb, ptr %i.agl, align 8, !noalias !38080
  %i.agm = add i64 %i.agd, 1
  store i64 %i.agm, ptr %.sroa.37.0..sroa_idx.i, align 8, !alias.scope !38399, !noalias !38084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !38084
  %exitcond.not.i = icmp eq i64 %i.qy, %i.qj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ci

bb.ki:                                            ; preds = %select.unfold61.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #31
          to label %bb.gb unwind label %.loopexit.split-lp.i, !noalias !38080

bb.kj:                                            ; preds = %select.unfold61.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aex, ptr noundef nonnull align 1 dereferenceable(42) @180, i64 42, i1 false), !noalias !38080
  br label %bb.jl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit719.i: ; preds = %bb.jp, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !38084
  %i.agn = trunc nuw i8 %.sroa.0263.4.i to i1
  br i1 %i.agn, label %bb.kk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i

bb.kk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit719.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.kn unwind label %bb.kl, !noalias !38080

bb.kl:                                            ; preds = %bb.kk
  %i.ago = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i739.i = load i64, ptr %i.df, align 8, !alias.scope !38402, !noalias !38084 ; 2 uses
  %i.agp = icmp eq i64 %.val2.i739.i, 0
  br i1 %i.agp, label %.body, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.val3.i740.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !38403, !noalias !38084, !nonnull !4, !noundef !4
  br label %common.resume.sink.split.i

bb.kn:                                            ; preds = %bb.kk
  %.val.i742.i = load i64, ptr %i.df, align 8, !alias.scope !38402, !noalias !38084 ; 2 uses
  %i.agq = icmp eq i64 %.val.i742.i, 0
  br i1 %i.agq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.val1.i743.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !38403, !noalias !38084, !nonnull !4, !noundef !4
  %i.agr = shl nuw i64 %.val.i742.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i743.i, i64 noundef %i.agr, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38404
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i

common.resume.sink.split.i:                       ; preds = %bb.km, %bb.cn
  %.val2.i.sink.i = phi i64 [ %.val2.i.i, %bb.cn ], [ %.val2.i739.i, %bb.km ]
  %.val3.i.sink.i = phi ptr [ %.val3.i.i, %bb.cn ], [ %.val3.i740.i, %bb.km ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.rj, %bb.cn ], [ %i.ago, %bb.km ]
  %i.ags = shl nuw i64 %.val2.i.sink.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.sink.i, i64 noundef %i.ags, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38080
  br label %.body

bb.kp:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.df) #27
          to label %.body unwind label %bb.dv, !noalias !38080

bb.kq:                                            ; preds = %select.unfold.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #31
          to label %.noexc103 unwind label %bb.bx

.noexc103:                                        ; preds = %bb.kq
  unreachable

bb.kr:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.my, ptr noundef nonnull align 1 dereferenceable(42) @180, i64 42, i1 false), !noalias !38080
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i
  %.sroa.85.16.ph = phi i64 [ %.sroa.85.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ 42, %bb.kr ]
  %.sroa.59.16.ph = phi ptr [ %.sroa.59.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ %i.my, %bb.kr ]
  %.sroa.31.16.ph = phi i64 [ %.sroa.31.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ 42, %bb.kr ]
  %.sroa.0.16.ph = phi i64 [ %.sroa.0.0277, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers.exit744.i ], [ -9223372036854775766, %bb.kr ]
  %i.agt = inttoptr i64 %.sroa.31.16.ph to ptr
  %.sroa.556.sroa.5.0..sroa.556.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.556.sroa.5.0..sroa.556.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.87, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87)
  store i64 %.sroa.0.16.ph, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.agt, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.59.16.ph, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.85.16.ph, ptr %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216

bb.kt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit653.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !38084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !38084
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87)
  store ptr %i.zr, ptr %i.ee, align 8
  br label %bb.kw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216: ; preds = %bb.xd, %bb.xe, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers.exit, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.experimental.noalias.scope.decl(metadata !38405)
  call void @llvm.experimental.noalias.scope.decl(metadata !38406)
  call void @llvm.experimental.noalias.scope.decl(metadata !38407)
  %i.agu = load ptr, ptr %i.eg, align 8, !alias.scope !38408, !nonnull !4, !noundef !4
  %i.agv = atomicrmw add ptr %i.agu, i64 -1 release, align 8, !noalias !38408
  %i.agw = icmp eq i64 %i.agv, 1
  br i1 %i.agw, label %bb.ku, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

bb.ku:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit216
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eg) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit104

.body200:                                         ; preds = %bb.wv, %bb.ww, %bb.wo, %bb.wp, %bb.kv, %.body110
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body110 ], [ %i.bid, %bb.wo ], [ %i.agx, %bb.kv ], [ %i.bid, %bb.wp ], [ %i.bio, %bb.ww ], [ %i.bio, %bb.wv ] ; 3 uses
  br i1 %.sroa.036.0, label %bb.xr, label %.body

bb.kv:                                            ; preds = %bb.ky
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.kw:                                            ; preds = %bb.kt, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread279, %bb.bz
  %.sroa.036.0 = phi i1 [ true, %bb.kt ], [ false, %bb.bz ], [ false, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread279 ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.ee, %bb.kt ], [ %4, %bb.bz ], [ %4, %_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler20convert_model_output.exit.thread279 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %.val80 = load ptr, ptr %i.agy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %.val81 = load i64, ptr %i.agz, align 8, !noundef !4 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38409)
  %i.aha = shl nuw nsw i64 %.val81, 3             ; 2 uses
  %i.ahb = icmp eq i64 %.val81, 0
  br i1 %i.ahb, label %.loopexit, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !38410
  %i.ahc = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aha, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !38410 ; 4 uses
  %i.ahd = icmp eq ptr %i.ahc, null
  br i1 %i.ahd, label %bb.ky, label %.lr.ph.preheader.i

bb.ky:                                            ; preds = %bb.kx
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aha) #31
          to label %.noexc107 unwind label %bb.kv

.noexc107:                                        ; preds = %bb.ky
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.kx
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.val80, i64 %.val81
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %7, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.val80, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %8, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.ahe, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %.val81, %.lr.ph.preheader.i ]
  %i.ahe = add nsw i64 %.sroa.10.021.i, -1        ; 2 uses
  %i.ahf = icmp eq ptr %.sroa.013.023.i, %5
  br i1 %i.ahf, label %.loopexit, label %6

6:                                                ; preds = %.lr.ph.i105
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %8 = add nuw nsw i64 %.sroa.7.022.i, 1
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !38409, !noundef !4 ; 3 uses
  %.not.i.i106 = icmp eq ptr %.val12.i, null
  br i1 %.not.i.i106, label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.kz

bb.kz:                                            ; preds = %6
  %i.ahg = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !38411
  %i.ahh = icmp slt i64 %i.ahg, 0
  br i1 %i.ahh, label %bb.la, label %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i

bb.la:                                            ; preds = %bb.kz
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.kz, %6
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.ahi, align 8, !noalias !38411
  %i.ahj = icmp eq i64 %i.ahe, 0
  br i1 %i.ahj, label %.loopexit, label %.lr.ph.i105

.loopexit:                                        ; preds = %.lr.ph.i105, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.kw
  %.sroa.5275.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.kw ], [ %i.ahc, %_RNvXs4_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtB7_5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers.exit.i ], [ %i.ahc, %.lr.ph.i105 ]
  store i64 %.val81, ptr %i.ed, align 8, !noalias !38409
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 6 uses
  store ptr %.sroa.5275.0, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !38409
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 3 uses
  store i64 %.val81, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !38409
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.ahl = load i64, ptr %i.ahk, align 8, !noundef !4 ; 2 uses
  %i.ahm = call i64 @llvm.usub.sat.i64(i64 %i.ahl, i64 1)
  %.not = icmp ult i64 %i.ahl, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit224
  %.pre388 = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.ahn = phi i64 [ %.pre388, %._crit_edge.loopexit ], [ %.val81, %.loopexit ] ; 2 uses
  %i.aho = icmp ult i64 %i.ahn, 1152921504606846976
  call void @llvm.assume(i1 %i.aho)
  %i.ahp = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4
  %i.ahq = atomicrmw add ptr %i.ahp, i64 1 monotonic, align 8
  %i.ahr = icmp slt i64 %i.ahq, 0
  br i1 %i.ahr, label %bb.lk, label %bb.lb

.lr.ph:                                           ; preds = %.loopexit, %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit224
  %.sroa.057.0335 = phi i64 [ %i.ahs, %_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_5State19update_model_output.exit224 ], [ 0, %.loopexit ] ; 4 uses
  %i.ahs = add nuw i64 %.sroa.057.0335, 1         ; 5 uses
  %i.aht = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  %i.ahu = icmp ult i64 %i.ahs, %i.aht
  br i1 %i.ahu, label %bb.xf, label %bb.xp

bb.lb:                                            ; preds = %._crit_edge
  %i.ahv = add nsw i64 %i.ahn, -1                 ; 3 uses
  %i.ahw = load ptr, ptr %i.eg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val87 = load ptr, ptr %i.agy, align 8         ; 2 uses
  %.val88 = load i64, ptr %i.agz, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.ahw, ptr %i.bh, align 8
  %.not.i108 = icmp ult i64 %i.ahv, %.val88
  br i1 %.not.i108, label %bb.lc, label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val87) ]
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %i.ahv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38412)
  %i.ahy = load ptr, ptr %i.ahx, align 8, !alias.scope !38412, !noundef !4 ; 2 uses
  %i.ahz = icmp eq ptr %i.ahy, null
  br i1 %i.ahz, label %bb.lm, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aia = atomicrmw add ptr %i.ahy, i64 -1 release, align 8, !noalias !38413
  %i.aib = icmp eq i64 %i.aia, 1
  br i1 %i.aib, label %bb.le, label %bb.lm

bb.le:                                            ; preds = %bb.ld
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ahx) #28
          to label %bb.lm unwind label %.thread.i

bb.lf:                                            ; preds = %bb.lb
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 -1, -2) %i.ahv, i64 noundef %.val88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #31
          to label %bb.lg unwind label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  unreachable

.thread.i:                                        ; preds = %bb.le
  %i.aic = landingpad { ptr, i32 }
          cleanup
  %i.aid = load ptr, ptr %i.bh, align 8, !noundef !4
  store ptr %i.aid, ptr %i.ahx, align 8
  br label %.body110

bb.lh:                                            ; preds = %bb.lf
  %i.aie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aif = atomicrmw add ptr %i.ahw, i64 -1 release, align 8, !noalias !38414
  %i.aig = icmp eq i64 %i.aif, 1
  br i1 %i.aig, label %bb.li, label %.body110

bb.li:                                            ; preds = %bb.lh
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #28
          to label %.body110 unwind label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.lk:                                            ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

.body110:                                         ; preds = %.thread.i221, %bb.xl, %bb.xm, %bb.xn, %bb.mi, %bb.te, %common.resume.sink.split.i127, %bb.tf, %bb.tg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit727.i, %bb.tl, %bb.tm, %.body.i122, %bb.wg, %bb.wl, %bb.li, %bb.lh, %.thread.i, %bb.ll
  %.pn = phi { ptr, i32 } [ %i.bjn, %bb.xm ], [ %i.aie, %bb.lh ], [ %i.aic, %.thread.i ], [ %i.aie, %bb.li ], [ %common.resume.op.ph.i128, %common.resume.sink.split.i127 ], [ %i.aii, %bb.ll ], [ %i.bhy, %bb.wg ], [ %.pn610.i, %bb.wl ], [ %.pn610.i, %.body.i122 ], [ %i.bbk, %bb.tf ], [ %.pn588.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit727.i ], [ %i.bbk, %bb.te ], [ %i.bbk, %bb.tg ], [ %.pn588.i, %bb.tm ], [ %.pn588.i, %bb.tl ], [ %i.anx, %bb.mi ], [ %i.bjl, %.thread.i221 ], [ %i.bjn, %bb.xn ], [ %i.bjn, %bb.xl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ed) #27
          to label %.body200 unwind label %bb.xc

bb.ll:                                            ; preds = %bb.wm, %bb.ti, %bb.lw, %bb.lv, %bb.lt, %bb.lr, %bb.xp
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.lm:                                            ; preds = %bb.le, %bb.ld, %bb.lc
  %i.aij = load ptr, ptr %i.bh, align 8, !noundef !4
  store ptr %i.aij, ptr %i.ahx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.aik = load i64, ptr %i.ahk, align 8, !noundef !4 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.aim = load i8, ptr %i.ail, align 1, !range !27, !noundef !4
  %i.ain = trunc nuw i8 %i.aim to i1
  br i1 %i.ain, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.aio = load i64, ptr %i.ej, align 8, !noundef !4 ; 2 uses
  %i.aip = icmp ult i64 %i.aio, 1152921504606846976
  call void @llvm.assume(i1 %i.aip)
  %i.aiq = sub i64 %i.aio, %i.ek
  %i.air = call i64 @llvm.umin.i64(i64 %i.aik, i64 %i.aiq)
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.sroa.025.0 = phi i64 [ %i.air, %bb.ln ], [ %i.aik, %bb.lm ]
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %.val90 = load i64, ptr %i.ais, align 8, !noundef !4
  %i.ait = add i64 %.val90, 1
  %i.aiu = call i64 @llvm.umin.i64(i64 %.sroa.025.0, i64 %i.ait)
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store i64 %i.aiu, ptr %i.aiv, align 8, !alias.scope !38415
  %i.aiw = load ptr, ptr %.sroa.0.0, align 8, !nonnull !4, !noundef !4
  %i.aix = atomicrmw add ptr %i.aiw, i64 1 monotonic, align 8
  %i.aiy = icmp slt i64 %i.aix, 0
  br i1 %i.aiy, label %bb.ls, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aiz = load ptr, ptr %.sroa.0.0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !38416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !38416
  %i.aja = load ptr, ptr %i.mk, align 8, !alias.scope !38416, !noundef !4 ; 3 uses
  store ptr %i.aja, ptr %i.bg, align 8, !noalias !38416
  store ptr %i.aiz, ptr %i.mk, align 8, !alias.scope !38416
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %bb.lt, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ajc = atomicrmw add ptr %i.aja, i64 -1 release, align 8, !noalias !38417
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #28
          to label %bb.lt unwind label %bb.ll

bb.ls:                                            ; preds = %bb.lo
  call void @llvm.trap()
  unreachable

bb.lt:                                            ; preds = %bb.lq, %bb.lp, %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !38416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.experimental.noalias.scope.decl(metadata !38418)
  call void @llvm.experimental.noalias.scope.decl(metadata !38419)
  call void @llvm.experimental.noalias.scope.decl(metadata !38420)
  %.val615.i = load ptr, ptr %i.ei, align 8, !alias.scope !38419, !nonnull !4, !noundef !4 ; 4 uses
  %.val616.i = load i64, ptr %i.ej, align 8, !alias.scope !38419, !noundef !4 ; 4 uses
  %i.aje = invoke fastcc noundef i64 @_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler10step_index(ptr nonnull %.val615.i, i64 %.val616.i, i64 noundef %3)
          to label %.noexc192.a unwind label %bb.ll

.noexc192.a:                                      ; preds = %bb.lt
  %i.ajf = load ptr, ptr %i.agy, align 8, !alias.scope !38419, !nonnull !4, !noundef !4 ; 2 uses
  %i.ajg = load i64, ptr %i.agz, align 8, !alias.scope !38419, !noundef !4 ; 4 uses
  %i.ajh = add i64 %i.ajg, -1                     ; 2 uses
  %.not.i114 = icmp eq i64 %i.ajg, 0
  br i1 %.not.i114, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %.noexc192.a
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.ajf, i64 %i.ajh ; 7 uses
  %i.ajj = load ptr, ptr %i.aji, align 8, !noalias !38421, !noundef !4
  %.not535.i115 = icmp eq ptr %i.ajj, null
  br i1 %.not535.i115, label %bb.lx, label %bb.lw

bb.lv:                                            ; preds = %.noexc192.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ajh, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #32
          to label %.noexc193.a unwind label %bb.ll

.noexc193.a:                                      ; preds = %bb.lv
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.ajk = invoke fastcc noundef i64 @_RNvMsa_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pcNtB5_24EdmDpmMultistepScheduler10step_index(ptr nonnull %.val615.i, i64 %.val616.i, i64 noundef %3)
          to label %.noexc194 unwind label %bb.ll

.noexc194:                                        ; preds = %bb.lw
  %i.ajl = add i64 %i.ajk, 1                      ; 2 uses
  %i.ajm = icmp ult i64 %i.ajl, %.val616.i
  br i1 %i.ajm, label %bb.ly, label %bb.lz

bb.lx:                                            ; preds = %bb.lu
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !38422
  %i.ajn = call noundef dereferenceable_or_null(42) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 42, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !38422 ; 3 uses
end_hunk_0
