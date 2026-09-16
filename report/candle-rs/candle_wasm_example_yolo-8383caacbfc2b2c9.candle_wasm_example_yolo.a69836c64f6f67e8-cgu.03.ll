Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.03?download=true
inline.NumInlined: 486
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo5model11report_pose:bb.a
  %.sink308.sroa.phi = phi ptr [ %.sink308.sroa.gep, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 ], [ %.sink308.sroa.gep367, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us ]
  %.sink308.sroa.phi368 = phi ptr [ %.sink308.sroa.gep369, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 ], [ %.sink308.sroa.gep370, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us ]
  %.sink308.sroa.phi371 = phi ptr [ %.sink308.sroa.gep372, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 ], [ %.sink308.sroa.gep373, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us ]
  %.sink308 = phi ptr [ %i.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 ], [ %i.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us ]
  %.sink305 = phi ptr [ %i.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 ], [ %i.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us ]
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sink308.sroa.phi, align 8
  store ptr %.sink305, ptr %.sink308.sroa.phi368, align 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt5floatfNtB7_5Debug3fmt, ptr %.sink308.sroa.phi371, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %.sink308, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us.cont unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us.cont: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us.invoke
  unreachable

.loopexit164.split.us:                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.us, %.lr.ph210.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split.us:                                        ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107.us
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split214.us:                                     ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split214

.lr.ph210.split:                                  ; preds = %.lr.ph210
  %i.bv = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bw = fcmp ult float %i.bv, 0.000000e+00
  br i1 %i.bw, label %.lr.ph210.split.split.us, label %.lr.ph210.split.split.preheader, !prof !7

.lr.ph210.split.split.preheader:                  ; preds = %.lr.ph210.split
  %i.bx = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.by = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat330 = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat332 = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat334 = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %.lr.ph210.split.split

.lr.ph210.split.split.us:                         ; preds = %.lr.ph210.split
  store ptr %i.bh, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  store ptr @_RNvXs1h_NtCsf3Ta7LF998c_4core3fmtQNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNtB6_5Debug3fmtBA_, ptr %.sroa.481.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @56, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107.us220 unwind label %.loopexit164.split.split.us

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107.us220: ; preds = %.lr.ph210.split.split.us
  %i.bz = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.ca = load i64, ptr %i.bn, align 8, !noundef !4
  invoke void @_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.ca)
          to label %bb.n unwind label %.split.split.us

bb.n:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107.us220
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.us221 unwind label %.split214.split.us

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.us221: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222 unwind label %.loopexit164.split.split.us

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us222: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.us221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cb = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 8, !noundef !4
  %i.ce = extractelement <2 x float> %i.bg, i64 0
  %i.cf = fmul float %i.ce, %i.cd                 ; 2 uses
  %i.cg = fcmp olt float %i.cf, 0.000000e+00
  %spec.store.select.i.us = select i1 %i.cg, float 0.000000e+00, float %i.cf ; 2 uses
  %i.ch = fcmp ogt float %spec.store.select.i.us, %i.bp
  %spec.store.select1.i.us = select i1 %i.ch, float %i.bp, float %spec.store.select.i.us
  store float %spec.store.select1.i.us, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store float 0.000000e+00, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %i.bv, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit.us.invoke

.loopexit164.split.split.us:                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.us221, %.lr.ph210.split.split.us
  %lpad.loopexit.us223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split.split.us:                                  ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107.us220
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split214.split.us:                               ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.split214

.loopexit:                                        ; preds = %.lr.ph208, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.ck = icmp eq ptr %i.cl, %i.bk
  br i1 %i.ck, label %._crit_edge211, label %.lr.ph210.split.split

.lr.ph210.split.split:                            ; preds = %.lr.ph210.split.split.preheader, %.loopexit
  %.sroa.032.0209 = phi ptr [ %i.cl, %.loopexit ], [ %i.bh, %.lr.ph210.split.split.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.0209, i64 48 ; 2 uses
  store ptr %.sroa.032.0209, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  store ptr @_RNvXs1h_NtCsf3Ta7LF998c_4core3fmtQNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNtB6_5Debug3fmtBA_, ptr %.sroa.481.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @56, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107 unwind label %.loopexit164.split.split

._crit_edge211:                                   ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEEB1D_.exit105
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.r

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107: ; preds = %.lr.ph210.split.split
  %i.cn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.co = load i64, ptr %i.bn, align 8, !noundef !4
  invoke void @_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.co)
          to label %bb.o unwind label %.split.split

.split.split:                                     ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.split, %.split.split.us, %.split.us
  %.us-phi212 = phi { ptr, i32 } [ %i.bt, %.split.us ], [ %i.cp, %.split.split ], [ %i.ci, %.split.split.us ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #15
          to label %.body unwind label %bb.q

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseiMiKruFR5A_24candle_wasm_example_yolo.exit107
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i unwind label %.split214.split

.split214.split:                                  ; preds = %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.split214

.split214:                                        ; preds = %.split214.split, %.split214.split.us, %.split214.us
  %.us-phi215 = phi { ptr, i32 } [ %i.bu, %.split214.us ], [ %i.cq, %.split214.split ], [ %i.cj, %.split214.split.us ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %.split214
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %.loopexit164.split.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECseiMiKruFR5A_24candle_wasm_example_yolo.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cs = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cu = load <4 x float>, ptr %i.ct, align 8
  %i.cv = fmul <4 x float> %i.bx, %i.cu           ; 2 uses
  %i.cw = fcmp olt <4 x float> %i.cv, zeroinitializer
  %i.cx = select <4 x i1> %i.cw, <4 x float> zeroinitializer, <4 x float> %i.cv ; 2 uses
  %i.cy = fcmp ogt <4 x float> %i.cx, %i.by
  %i.cz = select <4 x i1> %i.cy, <4 x float> %i.by, <4 x float> %i.cx
  store <4 x float> %i.cz, ptr %i.ct, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !4 ; 2 uses
  %.idx232 = mul i64 %i.dd, 12                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx232
  %i.df = icmp eq i64 %i.dd, 0
  br i1 %i.df, label %.loopexit, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECseiMiKruFR5A_24candle_wasm_example_yolo.exit
  %i.dg = add i64 %.idx232, -12                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 48
  br i1 %min.iters.check, label %.lr.ph208.preheader338, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph208.preheader
  %i.dh = udiv i64 %i.dg, 12
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dj = and i64 %i.di, 3                        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = select i1 %i.dk, i64 4, i64 %i.dj
  %n.vec = sub nsw i64 %i.di, %i.dl               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dm ; 3 uses
  %i.dn = getelementptr i8, ptr %i.db, i64 %i.dm  ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.dn, i64 12 ; 2 uses
  %i.do = getelementptr i8, ptr %i.db, i64 %i.dm  ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.do, i64 24 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.db, i64 %i.dm  ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.dp, i64 36 ; 2 uses
  %i.dq = load float, ptr %next.gep, align 4, !noundef !4
  %i.dr = load float, ptr %next.gep335, align 4, !noundef !4
  %i.ds = load float, ptr %next.gep336, align 4, !noundef !4
  %i.dt = load float, ptr %next.gep337, align 4, !noundef !4
  %i.du = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.dr, i64 1
  %i.dw = insertelement <4 x float> %i.dv, float %i.ds, i64 2
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 3
  %i.dy = fmul <4 x float> %broadcast.splat, %i.dx ; 2 uses
  %i.dz = fcmp olt <4 x float> %i.dy, zeroinitializer
  %i.ea = select <4 x i1> %i.dz, <4 x float> zeroinitializer, <4 x float> %i.dy ; 2 uses
  %i.eb = fcmp ogt <4 x float> %i.ea, %broadcast.splat330
  %i.ec = select <4 x i1> %i.eb, <4 x float> %broadcast.splat330, <4 x float> %i.ea ; 4 uses
  %i.ed = extractelement <4 x float> %i.ec, i64 0
  store float %i.ed, ptr %next.gep, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dn, i64 16
  %i.eg = getelementptr i8, ptr %i.do, i64 28
  %i.eh = getelementptr i8, ptr %i.dp, i64 40
  %i.ei = load float, ptr %i.ee, align 4, !noundef !4
  %i.ej = load float, ptr %i.ef, align 4, !noundef !4
  %i.ek = load float, ptr %i.eg, align 4, !noundef !4
  %i.el = load float, ptr %i.eh, align 4, !noundef !4
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  %i.eq = fmul <4 x float> %broadcast.splat332, %i.ep ; 2 uses
  %i.er = fcmp olt <4 x float> %i.eq, zeroinitializer
  %i.es = select <4 x i1> %i.er, <4 x float> zeroinitializer, <4 x float> %i.eq ; 2 uses
  %i.et = fcmp ogt <4 x float> %i.es, %broadcast.splat334
  %i.eu = select <4 x i1> %i.et, <4 x float> %broadcast.splat334, <4 x float> %i.es ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  store float %i.ev, ptr %i.ee, align 4
  %i.ew = shufflevector <4 x float> %i.ec, <4 x float> %i.eu, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ew, ptr %next.gep335, align 4
  %i.ex = shufflevector <4 x float> %i.ec, <4 x float> %i.eu, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ex, ptr %next.gep336, align 4
  %i.ey = shufflevector <4 x float> %i.ec, <4 x float> %i.eu, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ey, ptr %next.gep337, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %.lr.ph208.preheader338.loopexit, label %vector.body, !llvm.loop !2302

.lr.ph208.preheader338.loopexit:                  ; preds = %vector.body
  %7 = mul i64 %n.vec, 12
  %8 = getelementptr i8, ptr %i.db, i64 %7
  br label %.lr.ph208.preheader338

.lr.ph208.preheader338:                           ; preds = %.lr.ph208.preheader338.loopexit, %.lr.ph208.preheader
  %.sroa.034.0206.ph = phi ptr [ %i.db, %.lr.ph208.preheader ], [ %8, %.lr.ph208.preheader338.loopexit ]
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader338, %.lr.ph208
  %.sroa.034.0206 = phi ptr [ %i.fa, %.lr.ph208 ], [ %.sroa.034.0206.ph, %.lr.ph208.preheader338 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.034.0206, i64 12 ; 2 uses
  %i.fb = load <2 x float>, ptr %.sroa.034.0206, align 4
  %i.fc = fmul <2 x float> %i.bg, %i.fb           ; 2 uses
  %i.fd = fcmp olt <2 x float> %i.fc, zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> zeroinitializer, <2 x float> %i.fc ; 2 uses
  %i.ff = fcmp ogt <2 x float> %i.fe, %i.bo
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.bo, <2 x float> %i.fe
  store <2 x float> %i.fg, ptr %.sroa.034.0206, align 4
  %i.fh = icmp eq ptr %i.fa, %i.de
  br i1 %i.fh, label %.loopexit, label %.lr.ph208, !llvm.loop !2303

bb.q:                                             ; preds = %bb.j, %bb.au, %bb.ao, %.body143, %bb.s, %.split, %.body, %.body146
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.r:                                             ; preds = %bb.d, %bb.at, %._crit_edge211
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8jJy9Kok3op_5image6images8dynimage12DynamicImageECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(48) %2)
  ret void

bb.s:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #15
          to label %.body146 unwind label %bb.q

bb.t:                                             ; preds = %bb.i
  %i.fk = load i64, ptr %i.p, align 8, !range !5, !noundef !4 ; 2 uses
  %.not90 = icmp eq i64 %i.fk, -1
  %i.fl = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %.not90, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.565.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.fk, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %.sroa.467.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ap

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXs1_NtCsltEA4u8Pgfu_11candle_core7convertINtNtCsgCecv3eZDcN_5alloc3vec3VecfEINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtB7_6tensor6TensorE8try_fromCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noundef nonnull %i.fl)
          to label %bb.w unwind label %.loopexit165

bb.w:                                             ; preds = %bb.v
  %i.fm = load i64, ptr %i.q, align 8, !range !5, !noundef !4 ; 2 uses
  %.not91 = icmp eq i64 %i.fm, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.577.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.574.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.476.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  store i64 %i.fm, ptr %0, align 8
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  %i.fn = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, 4
  br i1 %i.fo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fp = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load float, ptr %i.fq, align 4, !noundef !4 ; 2 uses
  %i.fs = fcmp ogt float %i.fr, %5
  br i1 %i.fs, label %bb.af, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 4, i64 noundef %i.fn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #17
          to label %bb.l unwind label %.loopexit.split-lp171

.body143:                                         ; preds = %.loopexit170, %.loopexit.split-lp171, %bb.al, %bb.ao
  %.pn94 = phi { ptr, i32 } [ %i.gw, %bb.ao ], [ %i.gr, %bb.al ], [ %lpad.loopexit172, %.loopexit170 ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #15
          to label %bb.au unwind label %bb.q

.loopexit170:                                     ; preds = %bb.af
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.body143

.loopexit.split-lp171:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ab:                                            ; preds = %bb.an, %bb.z
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.au unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %.loopexit165

bb.ae:                                            ; preds = %bb.ac
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.am, align 8
  store i64 17, ptr %i.an, align 8
  store ptr %i.r, ptr %i.n, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model8KeyPointEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range5RangejENCNvB15_11report_pose0EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ag unwind label %.loopexit170

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fv = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.fw = load i64, ptr %i.al, align 8, !noundef !4 ; 4 uses
  %.not92 = icmp eq i64 %i.fw, 0
  br i1 %.not92, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load float, ptr %i.fv, align 4, !noundef !4
  %i.fy = icmp ugt i64 %i.fw, 2
  br i1 %i.fy, label %bb.ai, label %.invoke

.invoke:                                          ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fz = phi i64 [ 2, %bb.ah ], [ 0, %bb.ag ], [ 3, %bb.ai ]
  %i.ga = phi i64 [ %i.fw, %bb.ah ], [ 0, %bb.ag ], [ 3, %bb.ai ]
  %i.gb = phi ptr [ @59, %bb.ah ], [ @58, %bb.ag ], [ @60, %bb.ai ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef %i.ga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb) #17
          to label %.cont unwind label %bb.ao

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %.not93 = icmp eq i64 %i.fw, 3
  br i1 %.not93, label %.invoke, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gf = load <2 x float>, ptr %i.ge, align 4
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = fmul <4 x float> %i.gg, splat (float 5.000000e-01) ; 2 uses
  %i.gi = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.gd, i64 1
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gl = fsub <4 x float> %i.gk, %i.gh
  %i.gm = fadd <4 x float> %i.gk, %i.gh
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store <4 x float> %i.gn, ptr %i.ao, align 8
  store float %i.fr, ptr %i.ap, align 8
  %i.go = load i64, ptr %i.ah, align 8, !alias.scope !2312, !noalias !2313, !noundef !4 ; 3 uses
  %i.gp = load i64, ptr %i.s, align 8, !range !8, !alias.scope !2312, !noalias !2313, !noundef !4
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.an unwind label %bb.al, !noalias !2313

bb.al:                                            ; preds = %bb.ak
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #15
          to label %.body143 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.gt = load ptr, ptr %i.ag, align 8, !alias.scope !2312, !noalias !2313, !nonnull !4, !noundef !4
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %i.gt, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
end_hunk_0
