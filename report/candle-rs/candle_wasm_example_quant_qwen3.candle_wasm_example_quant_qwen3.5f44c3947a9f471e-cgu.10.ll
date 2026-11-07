Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_quant_qwen3.candle_wasm_example_quant_qwen3.5f44c3947a9f471e-cgu.10?download=true
inline.NumInlined: 365
inline.NumDeleted: 215
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1n_6string6StringEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  %.not17 = icmp eq i64 %i.az, 0
  br i1 %.not17, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.ab, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 %i.bc, ptr %i.u, align 8
  store ptr %i.be, ptr %.sroa.49.0..sroa_idx, align 8
  store i64 %i.az, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bg = load i64, ptr %i.m, align 8, !alias.scope !217, !noundef !6 ; 3 uses
  %i.bh = load i64, ptr %i.k, align 8, !range !218, !alias.scope !217, !noundef !6
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ac unwind label %bb.z, !noalias !219

bb.z:                                             ; preds = %bb.y
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #20
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ab:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.x

bb.ac:                                            ; preds = %bb.y, %bb.x
  %i.bl = load ptr, ptr %i.l, align 8, !alias.scope !217, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bl, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.bn = add i64 %i.bg, 1
  store i64 %i.bn, ptr %i.m, align 8, !alias.scope !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body29 unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body31 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.ai:                                            ; preds = %.body31, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %.body29, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aj:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.bu, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body29 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit38 unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit38: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i40 unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit38
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body31 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i40: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit38
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit46 unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit46: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit46
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.ap ], [ %.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtB1O_6string6StringENCINvNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe5model25convert_merges_to_hashmapB1H_E0EEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit46
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB3_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.414.i = alloca [39 x i8], align 1        ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11.sroa.9.sroa.5 = alloca [24 x i8], align 8 ; 3 uses
  %i.k = alloca [64 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.24.sroa.22.sroa.12 = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.8418 = alloca [7 x i8], align 1          ; 5 uses
  %.sroa.12423 = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.6414.sroa.0 = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.6414.sroa.7 = alloca [24 x i8], align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6414.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6414.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8418)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !231
  call void @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtB6_14ContentVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !232
  %i.ac = load i8, ptr %i.h, align 8, !range !15, !noalias !231, !noundef !6 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !231, !nonnull !6, !align !16, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !231
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !231
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !231
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !231
  store i8 %i.ac, ptr %i.i, align 8, !noalias !231
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !231
  invoke void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB3b_14DecoderWrapperNtB22_11Deserialize11deserialize1__NtB38_6TaggedB48_11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.e unwind label %bb.d, !noalias !231

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i, %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i, %bb.h, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #20
          to label %common.resume unwind label %bb.m, !noalias !231

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.f, align 8, !range !17, !noalias !231, !noundef !6
  %i.ai = icmp eq i8 %i.ah, -1
  br i1 %i.ai, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !231, !nonnull !6, !align !16, !noundef !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !noalias !231
  store i8 -2, ptr %i.g, align 8, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !231
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !231
  %.pr.i = load i8, ptr %i.g, align 8, !noalias !231 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !231
  %i.am = icmp eq i8 %.pr.i, -2
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.8418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418.0..sroa_idx, i64 7, i1 false), !noalias !233
  %.sroa.9420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9420.0.copyload = load ptr, ptr %.sroa.9420.0..sroa_idx, align 8, !noalias !233
  %.sroa.12423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423.0..sroa_idx, i64 24, i1 false), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !231
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i unwind label %bb.d, !noalias !231

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !231
  invoke void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1n_5value2deNtB38_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.i unwind label %bb.d, !noalias !231

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i
  %i.ao = load i8, ptr %i.d, align 8, !range !17, !noalias !231, !noundef !6
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i)
  %.sroa.414.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.414.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !231
  store i8 -1, ptr %i.e, align 8, !noalias !231
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.i, i64 39, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, i64 7, i1 false), !noalias !233
  %.sroa.9420.0..sroa_idx421 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9420.0.copyload422 = load ptr, ptr %.sroa.9420.0..sroa_idx421, align 8, !noalias !233
  %.sroa.12423.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423.0..sroa_idx424, i64 24, i1 false), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !231
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !231, !nonnull !6, !align !16, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !noalias !231
  store i8 -2, ptr %i.e, align 8, !noalias !231
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i unwind label %bb.d, !noalias !231

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !231
  %i.at = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 61)
          to label %bb.l unwind label %bb.d, !noalias !231

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !231
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !231
  unreachable

common.resume:                                    ; preds = %.thread, %bb.v, %bb.y, %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.ag, %bb.d ], [ %i.av, %bb.o ], [ %i.bg, %bb.y ], [ %.pn431, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.b, %bb.l
  %.sroa.9420.1.ph = phi ptr [ %i.at, %bb.l ], [ %i.af, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !234
  store ptr %.sroa.9420.1.ph, ptr %i.c, align 8, !noalias !234
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.p unwind label %bb.o, !noalias !234

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %common.resume unwind label %bb.q, !noalias !234

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !234
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.j, %bb.g
  %.sroa.9420.0 = phi ptr [ %.sroa.9420.0.copyload422, %bb.j ], [ %.sroa.9420.0.copyload, %bb.g ] ; 2 uses
  %.sroa.0416.0 = phi i8 [ -1, %bb.j ], [ %.pr.i, %bb.g ] ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, i64 7, i1 false), !alias.scope !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, i64 24, i1 false), !alias.scope !234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8418)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12423)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.sroa.22.sroa.12)
  %i.ax = icmp eq i8 %.sroa.0416.0, -1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.9420.0, ptr %i.l, align 8
  %.sroa.6414.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6414.sroa.7.7..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvXNvNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB8_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes2_1__NtB5_15DecoderUntaggedB14_11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l)
  %i.ay = load i64, ptr %i.k, align 8, !range !11, !noundef !6 ; 5 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 9 uses
  br i1 %i.az, label %bb.by, label %bb.bz

bb.s:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  store i8 %.sroa.0416.0, ptr %i.b, align 8
  %.sroa.6414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.sroa.0, i64 7, i1 false)
  %.sroa.6414.sroa.5.0..sroa.6414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.9420.0, ptr %.sroa.6414.sroa.5.0..sroa.6414.0..sroa_idx.sroa_idx, align 8
  %.sroa.6414.sroa.7.0..sroa.6414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6414.sroa.7.0..sroa.6414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.bc = load i8, ptr %i.z, align 8, !range !13, !alias.scope !238, !noundef !6
  %i.bd = icmp eq i8 %i.bc, 5
  br i1 %i.bd, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXs1_NtNtCsaPlfBUY5LAj_10serde_json5value2deINtNtBa_3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_5ValueENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXs8_BM_BJ_NtB1P_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.be)
          to label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bf = invoke fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
          to label %bb.w unwind label %bb.v, !noalias !237

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i8, ptr %i.z, align 8, !range !13, !alias.scope !238, !noundef !6
  %i.bi = icmp eq i8 %i.bh, 5
  br i1 %i.bi, label %common.resume, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !alias.scope !237
  %.pre = load i8, ptr %i.z, align 8, !range !13, !alias.scope !238
  %i.bk = icmp eq i8 %.pre, 5
  br i1 %i.bk, label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z), !noalias !237
  br label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread

bb.y:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #20
          to label %common.resume unwind label %bb.z, !noalias !237

bb.z:                                             ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !237
  unreachable

_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.aa

_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.t
  %i.bm = load i64, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %2 = trunc nuw i64 %i.bm to i1
  br i1 %2, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread, %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %4 = load ptr, ptr %3, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bn = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.ab:                                            ; preds = %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0329.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4330.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0329.0.copyload, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.ae, %bb.aj, %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bp = load i64, ptr %i.j, align 8, !range !7, !noundef !6
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !8, !noundef !6 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i64, ptr %i.bt, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #22
          to label %bb.bx unwind label %bb.ac

bb.af:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.bt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bw = icmp samesign ugt i64 %i.bs, 3
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i32 1701869940, ptr %i.bv, align 1
  store i64 %i.bs, ptr %i.x, align 8
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bv, ptr %.sroa.4334.0..sroa_idx, align 8
  %.sroa.6335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 4, ptr %.sroa.6335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  invoke fastcc void @_RINvNtCsaPlfBUY5LAj_10serde_json5value8to_valueRNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBP_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize8EnumTypeECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.bx)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %.thread unwind label %bb.bw

bb.ah:                                            ; preds = %bb.af
  %i.bz = load i8, ptr %i.w, align 8, !range !17, !noundef !6 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cd = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.cc)
          to label %bb.bt unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ah
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx16, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4337.0..sroa_idx, i64 7, i1 false)
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5338.0.copyload = load ptr, ptr %.sroa.5338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6339.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 %i.bz, ptr %i.v, align 8
  %.sroa.617.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5338.0.copyload, ptr %.sroa.617.0..sroa_idx18, align 8
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueE6insertCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.ak unwind label %bb.ac

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ce = load i8, ptr %i.y, align 8, !range !17, !alias.scope !239, !noundef !6
  %i.cf = icmp eq i8 %i.ce, -1
  br i1 %i.cf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  store i8 5, ptr %i.u, align 8
  %i.ch = load i8, ptr %i.bx, align 8, !range !5, !noundef !6
  switch i8 %i.ch, label %default.unreachable449 [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.aq
    i8 4, label %bb.ar
    i8 5, label %bb.as
    i8 6, label %bb.at
    i8 7, label %bb.au
    i8 8, label %bb.av
    i8 9, label %bb.aw
  ]

default.unreachable449:                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  unreachable

bb.am:                                            ; preds = %bb.bz
  unreachable

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtB5_10BPEDecoderNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.ci = load i64, ptr %i.t, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  br i1 %i.cj, label %bb.ax, label %bb.ay

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels_1__NtB5_9ByteLevelNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.cm = load i8, ptr %i.s, align 8, !range !19, !noundef !6
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.bb, label %bb.bc

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders9wordpiece1__NtB5_9WordPieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.co = load i64, ptr %i.r, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %i.cp, label %bb.bd, label %bb.be

bb.aq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RINvXs_NtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.cs = load i64, ptr %i.q, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  br i1 %i.ct, label %bb.bf, label %bb.bg

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3ctcs_1__NtB5_3CTCNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.p, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u)
  %i.cw = load i64, ptr %i.p, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  br i1 %i.cx, label %bb.bh, label %bb.bi

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders8sequences_1__NtB5_8SequenceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.da = load i64, ptr %i.o, align 8, !range !10, !noundef !6 ; 2 uses
  %i.db = icmp eq i64 %i.da, -1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  br i1 %i.db, label %bb.bj, label %bb.bk

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replaces2_1__NtB5_7ReplaceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.de = load i64, ptr %i.n, align 8, !range !20, !noundef !6 ; 2 uses
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  br i1 %i.df, label %bb.bl, label %bb.bm

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.di = call noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders4fuses_1__NtB5_4FuseNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u) ; 2 uses
  %.not409 = icmp eq ptr %i.di, null
  br i1 %.not409, label %bb.az, label %bb.bn

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders5strip1__NtB5_5StripNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !range !21, !noundef !6 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, -1
  %i.dm = load ptr, ptr %i.m, align 8             ; 2 uses
  br i1 %i.dl, label %bb.bo, label %bb.bp

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.dn = call noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders13byte_fallback1__NtB5_12ByteFallbackNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u) ; 2 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %bb.az, label %bb.bq

bb.ax:                                            ; preds = %bb.an
  %i.do = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ba

bb.ay:                                            ; preds = %bb.an
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5346.0.copyload = load i64, ptr %.sroa.5346.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dp = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5346.0.copyload, i64 0
  br label %bb.az
end_hunk_0
begin_hunk_1_@_RINvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB3_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeINtNtNtNtCsiOg657KYfD4_5serde7private2de7content19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3:bb.a
  %.sroa.6392.0.copyload = load i32, ptr %.sroa.6392.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ej = ptrtoint ptr %i.dm to i64
  %i.ek = inttoptr i64 %.sroa.4390.0.copyload to ptr
  %.sroa.6255.16.insert.ext = zext i32 %.sroa.6392.0.copyload to i64
  %.sroa.6255.16.insert.shift = shl nuw i64 %.sroa.6255.16.insert.ext, 32
  %.sroa.4254.16.insert.ext = zext nneg i32 %i.dk to i64
  %.sroa.4254.16.insert.insert = or disjoint i64 %.sroa.6255.16.insert.shift, %.sroa.4254.16.insert.ext
  %i.el = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4254.16.insert.insert, i64 0
  br label %bb.az

bb.bq:                                            ; preds = %bb.aw
  %i.em = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.dn)
  br label %bb.ba

bb.br:                                            ; preds = %bb.cj, %bb.az
  %.sroa.24.sroa.0.1 = phi i64 [ %.sroa.24.sroa.0.2, %bb.cj ], [ %.sroa.24.sroa.0.0, %bb.az ]
  %.sroa.24.sroa.20.1 = phi ptr [ %.sroa.24.sroa.20.2, %bb.cj ], [ %.sroa.24.sroa.20.0, %bb.az ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %bb.cj ], [ %.sroa.0.0, %bb.az ]
  %i.en = phi <2 x i64> [ %i.fk, %bb.cj ], [ %i.dq, %bb.az ]
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.24.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.24.sroa.0.1, ptr %.sroa.24.0..sroa_idx3, align 8
  %.sroa.24.sroa.20.0..sroa.24.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.24.sroa.20.1, ptr %.sroa.24.sroa.20.0..sroa.24.0..sroa_idx3.sroa_idx, align 8
  %.sroa.24.sroa.21.0..sroa.24.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.en, ptr %.sroa.24.sroa.21.0..sroa.24.0..sroa_idx3.sroa_idx, align 8
  %.sroa.24.sroa.22.sroa.12.0..sroa.24.sroa.22.0..sroa.24.0..sroa_idx3.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.sroa.22.sroa.12.0..sroa.24.sroa.22.0..sroa.24.0..sroa_idx3.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.sroa.22.sroa.12, i64 24, i1 false)
  br label %bb.ck

bb.bs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, %bb.ba, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.bt:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.eo, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %bb.bs

bb.bw:                                            ; preds = %.thread, %bb.ag
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bx:                                            ; preds = %bb.ae
  unreachable

.thread:                                          ; preds = %bb.bu, %bb.ag, %bb.ac
  %.pn431 = phi { ptr, i32 } [ %i.by, %bb.ag ], [ %lpad.thr_comm.split-lp, %bb.ac ], [ %i.ep, %bb.bu ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.bw

bb.by:                                            ; preds = %bb.r
  %i.es = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.et, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ck

bb.bz:                                            ; preds = %bb.r
  %.sroa.5399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5399.sroa.0.0.copyload = load ptr, ptr %.sroa.5399.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5399.sroa.4.0..sroa.5399.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.eu = load <2 x i64>, ptr %.sroa.5399.sroa.4.0..sroa.5399.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  %.sroa.5399.sroa.6.0..sroa.5399.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5399.sroa.6.0..sroa.5399.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ev = icmp ne i64 %i.ay, 8
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nsw i64 %i.ay, -2
  %i.ex = icmp samesign ugt i64 %i.ay, 1
  %i.ey = select i1 %i.ex, i64 %i.ew, i64 6
  switch i64 %i.ey, label %bb.am [
    i64 0, label %bb.ca
    i64 1, label %bb.cb
    i64 2, label %bb.cc
    i64 3, label %bb.cd
    i64 4, label %bb.ce
    i64 5, label %bb.cf
    i64 6, label %bb.cg
    i64 7, label %bb.cj
    i64 8, label %bb.ch
    i64 9, label %bb.ci
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.ez = ptrtoint ptr %i.bb to i64
  %i.fa = insertelement <2 x i64> %i.eu, i64 undef, i64 1
  br label %bb.cj

bb.cb:                                            ; preds = %bb.bz
  %i.fb = ptrtoint ptr %i.bb to i64
  %.sroa.24.sroa.0.0.insert.ext114 = and i64 %i.fb, 16777215
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bz
  %i.fc = ptrtoint ptr %i.bb to i64
  br label %bb.cj

bb.cd:                                            ; preds = %bb.bz
  %i.fd = ptrtoint ptr %i.bb to i64
  br label %bb.cj

bb.ce:                                            ; preds = %bb.bz
  %i.fe = ptrtoint ptr %i.bb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.sroa.22.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.9.sroa.5, i64 24, i1 false)
  br label %bb.cj

bb.cf:                                            ; preds = %bb.bz
  %i.ff = ptrtoint ptr %i.bb to i64
  %i.fg = insertelement <2 x i64> %i.eu, i64 undef, i64 1
  br label %bb.cj

bb.cg:                                            ; preds = %bb.bz
  %i.fh = ptrtoint ptr %i.bb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.sroa.22.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.9.sroa.5, i64 24, i1 false)
  br label %bb.cj

bb.ch:                                            ; preds = %bb.bz
  %i.fi = ptrtoint ptr %i.bb to i64
  %i.fj = insertelement <2 x i64> %i.eu, i64 undef, i64 1
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bz
  br label %bb.cj

bb.cj:                                            ; preds = %bb.bz, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.sroa.24.sroa.0.2 = phi i64 [ %i.ez, %bb.ca ], [ %.sroa.24.sroa.0.0.insert.ext114, %bb.cb ], [ %i.fc, %bb.cc ], [ %i.fd, %bb.cd ], [ %i.fe, %bb.ce ], [ %i.ff, %bb.cf ], [ %i.fh, %bb.cg ], [ undef, %bb.ci ], [ %i.fi, %bb.ch ], [ undef, %bb.bz ]
  %.sroa.24.sroa.20.2 = phi ptr [ %.sroa.5399.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ %.sroa.5399.sroa.0.0.copyload, %bb.cc ], [ %.sroa.5399.sroa.0.0.copyload, %bb.cd ], [ %.sroa.5399.sroa.0.0.copyload, %bb.ce ], [ %.sroa.5399.sroa.0.0.copyload, %bb.cf ], [ %.sroa.5399.sroa.0.0.copyload, %bb.cg ], [ undef, %bb.ci ], [ %.sroa.5399.sroa.0.0.copyload, %bb.ch ], [ undef, %bb.bz ]
  %.sroa.0.2 = phi i64 [ 2, %bb.ca ], [ 3, %bb.cb ], [ 4, %bb.cc ], [ 5, %bb.cd ], [ 6, %bb.ce ], [ 7, %bb.cf ], [ %i.ay, %bb.cg ], [ 11, %bb.ci ], [ 10, %bb.ch ], [ 9, %bb.bz ]
  %i.fk = phi <2 x i64> [ %i.fa, %bb.ca ], [ undef, %bb.cb ], [ %i.eu, %bb.cc ], [ %i.eu, %bb.cd ], [ %i.eu, %bb.ce ], [ %i.fg, %bb.cf ], [ %i.eu, %bb.cg ], [ undef, %bb.ci ], [ %i.fj, %bb.ch ], [ undef, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.br

bb.ck:                                            ; preds = %bb.bs, %bb.by, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.sroa.22.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6414.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6414.sroa.7)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB3_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB21_4read9SliceReadEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.414.i = alloca [39 x i8], align 1        ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11.sroa.9.sroa.5 = alloca [24 x i8], align 8 ; 3 uses
  %i.k = alloca [64 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.24.sroa.22.sroa.12 = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.8418 = alloca [7 x i8], align 1          ; 5 uses
  %.sroa.12423 = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.6414.sroa.0 = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.6414.sroa.7 = alloca [24 x i8], align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6414.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6414.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8418)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !251
  call void @_RINvYQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !252
  %i.ac = load i8, ptr %i.h, align 8, !range !15, !noalias !251, !noundef !6 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !251, !nonnull !6, !align !16, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !251
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !251
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !251
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !251
  store i8 %i.ac, ptr %i.i, align 8, !noalias !251
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !251
  invoke void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB3b_14DecoderWrapperNtB22_11Deserialize11deserialize1__NtB38_6TaggedB48_11deserialize9___VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.e unwind label %bb.d, !noalias !252

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i, %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i, %bb.h, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #20
          to label %common.resume unwind label %bb.m, !noalias !252

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.f, align 8, !range !17, !noalias !251, !noundef !6
  %i.ai = icmp eq i8 %i.ah, -1
  br i1 %i.ai, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !251, !nonnull !6, !align !16, !noundef !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !noalias !251
  store i8 -2, ptr %i.g, align 8, !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !251
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !251
  %.pr.i = load i8, ptr %i.g, align 8, !noalias !251 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !251
  %i.am = icmp eq i8 %.pr.i, -2
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.8418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418.0..sroa_idx, i64 7, i1 false), !noalias !253
  %.sroa.9420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9420.0.copyload = load ptr, ptr %.sroa.9420.0..sroa_idx, align 8, !noalias !253
  %.sroa.12423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423.0..sroa_idx, i64 24, i1 false), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !251
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i unwind label %bb.d, !noalias !252

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !251
  invoke void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1n_5value2deNtB38_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.i unwind label %bb.d, !noalias !252

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit25.i
  %i.ao = load i8, ptr %i.d, align 8, !range !17, !noalias !251, !noundef !6
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i)
  %.sroa.414.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.414.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !251
  store i8 -1, ptr %i.e, align 8, !noalias !251
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.i, i64 39, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, i64 7, i1 false), !noalias !253
  %.sroa.9420.0..sroa_idx421 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9420.0.copyload422 = load ptr, ptr %.sroa.9420.0..sroa_idx421, align 8, !noalias !253
  %.sroa.12423.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423.0..sroa_idx424, i64 24, i1 false), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !251
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !251, !nonnull !6, !align !16, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !noalias !251
  store i8 -2, ptr %i.e, align 8, !noalias !251
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i unwind label %bb.d, !noalias !252

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !251
  %i.at = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customReECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 61)
          to label %bb.l unwind label %bb.d, !noalias !252

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit39.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !252
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !252
  unreachable

common.resume:                                    ; preds = %.thread, %bb.v, %bb.y, %bb.o, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.ag, %bb.d ], [ %i.av, %bb.o ], [ %i.bg, %bb.y ], [ %.pn431, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.b, %bb.l
  %.sroa.9420.1.ph = phi ptr [ %i.at, %bb.l ], [ %i.af, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !254
  store ptr %.sroa.9420.1.ph, ptr %i.c, align 8, !noalias !254
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.p unwind label %bb.o, !noalias !254

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %common.resume unwind label %bb.q, !noalias !254

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !254
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.j, %bb.g
  %.sroa.9420.0 = phi ptr [ %.sroa.9420.0.copyload422, %bb.j ], [ %.sroa.9420.0.copyload, %bb.g ] ; 2 uses
  %.sroa.0416.0 = phi i8 [ -1, %bb.j ], [ %.pr.i, %bb.g ] ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8418, i64 7, i1 false), !alias.scope !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12423, i64 24, i1 false), !alias.scope !254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8418)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12423)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.sroa.22.sroa.12)
  %i.ax = icmp eq i8 %.sroa.0416.0, -1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.9420.0, ptr %i.l, align 8
  %.sroa.6414.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6414.sroa.7.7..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RINvXNvNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtB8_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializes2_1__NtB5_15DecoderUntaggedB14_11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.l)
  %i.ay = load i64, ptr %i.k, align 8, !range !11, !noundef !6 ; 5 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 9 uses
  br i1 %i.az, label %bb.by, label %bb.bz

bb.s:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBM_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorE6expectCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  store i8 %.sroa.0416.0, ptr %i.b, align 8
  %.sroa.6414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6414.sroa.0, i64 7, i1 false)
  %.sroa.6414.sroa.5.0..sroa.6414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.9420.0, ptr %.sroa.6414.sroa.5.0..sroa.6414.0..sroa_idx.sroa_idx, align 8
  %.sroa.6414.sroa.7.0..sroa.6414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6414.sroa.7.0..sroa.6414.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6414.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.bc = load i8, ptr %i.z, align 8, !range !13, !alias.scope !258, !noundef !6
  %i.bd = icmp eq i8 %i.bc, 5
  br i1 %i.bd, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXs1_NtNtCsaPlfBUY5LAj_10serde_json5value2deINtNtBa_3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_5ValueENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNvXs8_BM_BJ_NtB1P_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.be)
          to label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bf = invoke fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
          to label %bb.w unwind label %bb.v, !noalias !257

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i8, ptr %i.z, align 8, !range !13, !alias.scope !258, !noundef !6
  %i.bi = icmp eq i8 %i.bh, 5
  br i1 %i.bi, label %common.resume, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !alias.scope !257
  %.pre = load i8, ptr %i.z, align 8, !range !13, !alias.scope !258
  %i.bk = icmp eq i8 %.pre, 5
  br i1 %i.bk, label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z), !noalias !257
  br label %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread

bb.y:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #20
          to label %common.resume unwind label %bb.z, !noalias !257

bb.z:                                             ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !257
  unreachable

_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.aa

_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.t
  %i.bm = load i64, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %2 = trunc nuw i64 %i.bm to i1
  br i1 %2, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.thread, %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %4 = load ptr, ptr %3, align 8, !nonnull !6, !align !16, !noundef !6
  %i.bn = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.ab:                                            ; preds = %_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtBa_3mapINtB23_3MapNtNtCsgCecv3eZDcN_5alloc6string6StringBJ_ENtBW_11Deserialize11deserialize7VisitorECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0329.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4330.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0329.0.copyload, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.ae, %bb.aj, %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bp = load i64, ptr %i.j, align 8, !range !7, !noundef !6
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !8, !noundef !6 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i64, ptr %i.bt, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #22
          to label %bb.bx unwind label %bb.ac

bb.af:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.bt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bw = icmp samesign ugt i64 %i.bs, 3
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i32 1701869940, ptr %i.bv, align 1
  store i64 %i.bs, ptr %i.x, align 8
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bv, ptr %.sroa.4334.0..sroa_idx, align 8
  %.sroa.6335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 4, ptr %.sroa.6335.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  invoke fastcc void @_RINvNtCsaPlfBUY5LAj_10serde_json5value8to_valueRNtNvXNtCshBhMCGs0DAb_10tokenizers8decodersNtBP_14DecoderWrapperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize8EnumTypeECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %i.bx)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %.thread unwind label %bb.bw

bb.ah:                                            ; preds = %bb.af
  %i.bz = load i8, ptr %i.w, align 8, !range !17, !noundef !6 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !6, !align !16, !noundef !6
  %i.cd = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.cc)
          to label %bb.bt unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ah
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx16, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4337.0..sroa_idx, i64 7, i1 false)
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5338.0.copyload = load ptr, ptr %.sroa.5338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6339.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 %i.bz, ptr %i.v, align 8
  %.sroa.617.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5338.0.copyload, ptr %.sroa.617.0..sroa_idx18, align 8
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueE6insertCs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.ak unwind label %bb.ac

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ce = load i8, ptr %i.y, align 8, !range !17, !alias.scope !259, !noundef !6
  %i.cf = icmp eq i8 %i.ce, -1
  br i1 %i.cf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit unwind label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  store i8 5, ptr %i.u, align 8
  %i.ch = load i8, ptr %i.bx, align 8, !range !5, !noundef !6
  switch i8 %i.ch, label %default.unreachable449 [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.aq
    i8 4, label %bb.ar
    i8 5, label %bb.as
    i8 6, label %bb.at
    i8 7, label %bb.au
    i8 8, label %bb.av
    i8 9, label %bb.aw
  ]

default.unreachable449:                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  unreachable

bb.am:                                            ; preds = %bb.bz
  unreachable

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3bpe1__NtB5_10BPEDecoderNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.ci = load i64, ptr %i.t, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  br i1 %i.cj, label %bb.ax, label %bb.ay

bb.ao:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers10byte_levels_1__NtB5_9ByteLevelNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.cm = load i8, ptr %i.s, align 8, !range !19, !noundef !6
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.bb, label %bb.bc

bb.ap:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders9wordpiece1__NtB5_9WordPieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.co = load i64, ptr %i.r, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %i.cp, label %bb.bd, label %bb.be

bb.aq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RINvXs_NtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.cs = load i64, ptr %i.q, align 8, !range !10, !noundef !6 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  br i1 %i.ct, label %bb.bf, label %bb.bg

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders3ctcs_1__NtB5_3CTCNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.p, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u)
  %i.cw = load i64, ptr %i.p, align 8, !range !10, !noundef !6 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  br i1 %i.cx, label %bb.bh, label %bb.bi

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders8sequences_1__NtB5_8SequenceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.da = load i64, ptr %i.o, align 8, !range !10, !noundef !6 ; 2 uses
  %i.db = icmp eq i64 %i.da, -1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  br i1 %i.db, label %bb.bj, label %bb.bk

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replaces2_1__NtB5_7ReplaceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.de = load i64, ptr %i.n, align 8, !range !20, !noundef !6 ; 2 uses
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  br i1 %i.df, label %bb.bl, label %bb.bm

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.di = call noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders4fuses_1__NtB5_4FuseNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u) ; 2 uses
  %.not409 = icmp eq ptr %i.di, null
  br i1 %.not409, label %bb.az, label %bb.bn

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders5strip1__NtB5_5StripNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !range !21, !noundef !6 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, -1
  %i.dm = load ptr, ptr %i.m, align 8             ; 2 uses
  br i1 %i.dl, label %bb.bo, label %bb.bp

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3.exit
  %i.dn = call noundef align 8 ptr @_RINvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders13byte_fallback1__NtB5_12ByteFallbackNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u) ; 2 uses
  %.not = icmp eq ptr %i.dn, null
  br i1 %.not, label %bb.az, label %bb.bq

bb.ax:                                            ; preds = %bb.an
  %i.do = call noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customBE_ECs8b6YJ2cVbcg_31candle_wasm_example_quant_qwen3(ptr noalias noundef nonnull align 8 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ba

bb.ay:                                            ; preds = %bb.an
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5346.0.copyload = load i64, ptr %.sroa.5346.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dp = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5346.0.copyload, i64 0
  br label %bb.az
end_hunk_1
