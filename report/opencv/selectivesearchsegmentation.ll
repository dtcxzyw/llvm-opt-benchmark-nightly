Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation?download=true
inline.NumInlined: 2286
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl30switchToSelectiveSearchQualityEiif:bb.a
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #26
  br label %bb.jx

bb.jj:                                            ; preds = %bb.dq
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #26
  br label %bb.jw

bb.jk:                                            ; preds = %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit169
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %.body172

bb.jl:                                            ; preds = %bb.dx
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.jm:                                            ; preds = %bb.dy
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %.body182

bb.jn:                                            ; preds = %_ZN2cv3PtrINS_8ximgproc12segmentation35SelectiveSearchSegmentationStrategyEEC2INS2_39SelectiveSearchSegmentationStrategySizeEEERKNS0_IT_EE.exit193
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #26
  br label %bb.jv

bb.jo:                                            ; preds = %bb.fg
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #26
  br label %bb.ju

bb.jp:                                            ; preds = %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit223
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %.body226

bb.jq:                                            ; preds = %bb.fu
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #26
  br label %bb.jt

bb.jr:                                            ; preds = %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit243
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %.body246

bb.js:                                            ; preds = %bb.gi
  %i.abw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation35SelectiveSearchSegmentationStrategyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategySizeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #26
  br label %.body246

.body246:                                         ; preds = %bb.jr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i244, %bb.js
  %.pn74 = phi { ptr, i32 } [ %i.abw, %bb.js ], [ %i.abv, %bb.jr ], [ %i.sw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  br label %bb.jt

bb.jt:                                            ; preds = %.body246, %bb.jq
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %.body246 ], [ %i.abu, %bb.jq ]
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategyFillELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #26
  br label %.body226

.body226:                                         ; preds = %bb.jp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i224, %bb.jt
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.jt ], [ %i.abt, %bb.jp ], [ %i.rk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.ju

bb.ju:                                            ; preds = %.body226, %bb.jo
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn, %.body226 ], [ %i.abs, %bb.jo ]
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyMultipleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #26
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jn
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %bb.ju ], [ %i.abr, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategySizeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #26
  br label %.body182

.body182:                                         ; preds = %bb.jm, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i180, %bb.jv
  %.pn74.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn, %bb.jv ], [ %i.abq, %bb.jm ], [ %i.nd, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation42SelectiveSearchSegmentationStrategyTextureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #26
  br label %.body177

.body177:                                         ; preds = %bb.jl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation46SelectiveSearchSegmentationStrategyTextureImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i175, %.body182
  %.pn74.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn, %.body182 ], [ %i.abp, %bb.jl ], [ %i.mx, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation46SelectiveSearchSegmentationStrategyTextureImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategyFillELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #26
  br label %.body172

.body172:                                         ; preds = %bb.jk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i170, %.body177
  %.pn74.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn, %.body177 ], [ %i.abo, %bb.jk ], [ %i.mr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.jw

bb.jw:                                            ; preds = %.body172, %bb.jj
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn, %.body172 ], [ %i.abn, %bb.jj ]
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyMultipleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #26
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ji
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jw ], [ %i.abm, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategySizeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #26
  br label %.body129

.body129:                                         ; preds = %bb.jh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, %bb.jx
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jx ], [ %i.abl, %bb.jh ], [ %i.hl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategySizeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation42SelectiveSearchSegmentationStrategyTextureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #26
  br label %.body126

.body126:                                         ; preds = %bb.jg, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation46SelectiveSearchSegmentationStrategyTextureImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, %.body129
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body129 ], [ %i.abk, %bb.jg ], [ %i.hf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation46SelectiveSearchSegmentationStrategyTextureImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation39SelectiveSearchSegmentationStrategyFillELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #26
  br label %.body123

.body123:                                         ; preds = %bb.jf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, %.body126
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body126 ], [ %i.abj, %bb.jf ], [ %i.gz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation43SelectiveSearchSegmentationStrategyFillImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation40SelectiveSearchSegmentationStrategyColorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #26
  br label %.body111

.body111:                                         ; preds = %bb.je, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation44SelectiveSearchSegmentationStrategyColorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i, %.body123
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body123 ], [ %i.abi, %bb.je ], [ %i.ds, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc12segmentation44SelectiveSearchSegmentationStrategyColorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.jy

bb.jy:                                            ; preds = %.body111, %bb.bw, %bb.at, %bb.as
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.bw ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body111 ], [ %i.ei, %bb.at ], [ %i.eh, %bb.as ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #26
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %.loopexit
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %bb.jy ], [ %.pn67, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.ap, %bb.ao
  %.pn89.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn, %bb.jz ], [ %i.dz, %bb.ao ], [ %i.ea, %bb.ap ]
  %i.abx = getelementptr inbounds nuw i8, ptr %16, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.abx) #26
  %i.aby = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aby) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.an, %bb.am
  %.pn89.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn, %bb.ka ], [ %i.dy, %bb.an ], [ %i.dx, %bb.am ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.al, %bb.ak
  %.pn89.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn, %bb.kb ], [ %i.dw, %bb.al ], [ %i.dv, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.aj, %bb.ai
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn.pn.pn.pn, %bb.kc ], [ %i.du, %bb.aj ], [ %i.dt, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl7processERSt6vectorINS_5Rect_IiEESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split507:
  %2 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %3 = alloca %"class.cv::Mat_.91", align 8       ; 13 uses
  %4 = alloca %"class.cv::Mat_.67", align 8       ; 13 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::vector.37", align 8    ; 8 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.std::vector.85", align 8   ; 10 uses
  %13 = alloca %"class.std::map", align 8         ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !530  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !530  ; 2 uses
  %.not508 = icmp eq ptr %i.e, %i.g
  br i1 %.not508, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split507
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !531
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !531 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.split

._crit_edge514:                                   ; preds = %._crit_edge502
  %.not.i.i = icmp eq ptr %.sroa.0226.1.lcssa, %.sroa.10.1.lcssa
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge514
  %i.at = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.au = ptrtoint ptr %.sroa.0226.1.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.sroa.0226.1.lcssa, ptr %.sroa.10.1.lcssa, i64 noundef %i.az)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.a
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.0226.1.lcssa, ptr %.sroa.10.1.lcssa)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %bb.aw

.split:                                           ; preds = %.split.lr.ph, %._crit_edge502
  %i.ba = phi ptr [ %i.bd, %._crit_edge502 ], [ %i.g, %.split.lr.ph ]
  %i.bb = phi ptr [ %i.be, %._crit_edge502 ], [ %i.ar, %.split.lr.ph ] ; 2 uses
  %.0513 = phi i32 [ %.1.lcssa, %._crit_edge502 ], [ 0, %.split.lr.ph ] ; 2 uses
  %.sroa.0226.0512 = phi ptr [ %.sroa.0226.1.lcssa, %._crit_edge502 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.10.0511 = phi ptr [ %.sroa.10.1.lcssa, %._crit_edge502 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.16.0510 = phi ptr [ %.sroa.16.1.lcssa, %._crit_edge502 ], [ null, %.split.lr.ph ] ; 2 uses
  %.sroa.0222.0509 = phi ptr [ %i.bf, %._crit_edge502 ], [ %i.e, %.split.lr.ph ] ; 3 uses
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !531 ; 2 uses
  %.not261495 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not261495, label %._crit_edge502, label %.lr.ph501

._crit_edge502.loopexit:                          ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.pre621 = load ptr, ptr %i.f, align 8, !tbaa !530
  br label %._crit_edge502

._crit_edge502:                                   ; preds = %._crit_edge502.loopexit, %.split
  %i.bd = phi ptr [ %i.ba, %.split ], [ %.pre621, %._crit_edge502.loopexit ] ; 2 uses
  %i.be = phi ptr [ %i.bb, %.split ], [ %i.im, %._crit_edge502.loopexit ]
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0510, %.split ], [ %.sroa.16.2.lcssa, %._crit_edge502.loopexit ] ; 4 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0511, %.split ], [ %.sroa.10.2.lcssa, %._crit_edge502.loopexit ] ; 7 uses
  %.sroa.0226.1.lcssa = phi ptr [ %.sroa.0226.0512, %.split ], [ %.sroa.0226.2.lcssa, %._crit_edge502.loopexit ] ; 8 uses
  %.1.lcssa = phi i32 [ %.0513, %.split ], [ %i.hy, %._crit_edge502.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0222.0509, i64 208 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bd
  br i1 %.not, label %._crit_edge514, label %.split, !llvm.loop !511

.lr.ph501:                                        ; preds = %.split, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %.1500 = phi i32 [ %i.hy, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.0513, %.split ] ; 2 uses
  %.sroa.0226.1499 = phi ptr [ %.sroa.0226.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.0226.0512, %.split ] ; 10 uses
  %.sroa.10.1498 = phi ptr [ %.sroa.10.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.10.0511, %.split ] ; 2 uses
  %.sroa.16.1497 = phi ptr [ %.sroa.16.2.lcssa, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %.sroa.16.0510, %.split ] ; 10 uses
  %.sroa.0218.0496 = phi ptr [ %i.im, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit ], [ %i.bc, %.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  %i.bg = load i32, ptr %3, align 8, !tbaa !56
  %i.bh = and i32 %i.bg, -4096
  %i.bi = or disjoint i32 %i.bh, 1
  store i32 %i.bi, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  %i.bj = load i32, ptr %4, align 8, !tbaa !56
  %i.bk = and i32 %i.bj, -4096
  %i.bl = or disjoint i32 %i.bk, 4
  store i32 %i.bl, ptr %4, align 8, !tbaa !56
  %i.bm = load ptr, ptr %.sroa.0218.0496, align 8, !tbaa !165 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %i.j, align 8, !tbaa !49
  store i32 0, ptr %i.k, align 4, !tbaa !50
  store i32 16842752, ptr %5, align 8, !tbaa !51
  store ptr %.sroa.0222.0509, ptr %i.l, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !51
  store ptr %2, ptr %i.m, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %.lr.ph501
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 0, ptr %i.o, align 8, !tbaa !49
  store i32 0, ptr %i.p, align 4, !tbaa !50
  store i32 16842752, ptr %7, align 8, !tbaa !51
  store ptr %2, ptr %i.q, align 8, !tbaa !33
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.br = load double, ptr %i.b, align 8, !tbaa !55
  %i.bs = fptosi double %i.br to i32              ; 3 uses
  %i.bt = add nsw i32 %i.bs, 1                    ; 7 uses
  store i32 %i.bt, ptr %i.c, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bu = sext i32 %i.bt to i64                   ; 4 uses
  %cond = icmp eq i32 %i.bt, 0
  br i1 %cond, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp slt i32 %i.bs, -1
  br i1 %i.bv, label %bb.f, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc166 unwind label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp

.noexc166:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.bw = shl nuw nsw i64 %i.bu, 4                ; 2 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc167 unwind label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %i.bw, i1 false)
  store ptr %i.bx, ptr %8, align 8, !tbaa !137
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bu ; 4 uses
  store ptr %i.by, ptr %i.r, align 8, !tbaa !136
  store ptr %i.by, ptr %i.s, align 8, !tbaa !166
  %i.bz = mul nuw nsw i64 %i.bu, 24               ; 2 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #28
          to label %.noexc100 unwind label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc100:                                        ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.bz, i1 false)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bu
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %bb.d, %.noexc100
  %i.cc = phi ptr [ %i.bx, %.noexc100 ], [ null, %bb.d ] ; 6 uses
  %14 = phi ptr [ %i.by, %.noexc100 ], [ null, %bb.d ] ; 2 uses
  %.sroa.0205.1 = phi ptr [ %i.ca, %.noexc100 ], [ null, %bb.d ] ; 12 uses
  %.sroa.13.1 = phi ptr [ %i.cb, %.noexc100 ], [ null, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.bt, i32 noundef %i.bt, i32 noundef 0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.cd = load ptr, ptr %9, align 8, !tbaa !63    ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1)
          to label %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit unwind label %bb.l, !inline_history !512

_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit:             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, i32 noundef %i.bt, i32 noundef 1, i32 noundef 4)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit
  %i.ch = load ptr, ptr %10, align 8, !tbaa !63   ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 4)
          to label %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit unwind label %bb.o, !inline_history !513

_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit:             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.w) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cl = load i32, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %or.cond774 = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond774, label %.lr.ph469.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit
  %.not264470 = icmp slt i32 %i.bs, 0
  br i1 %.not264470, label %._crit_edge473, label %.lr.ph472

.lr.ph472:                                        ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.y

bb.i:                                             ; preds = %.lr.ph501
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.at

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.as

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.f
  %lpad.loopexit.split-lp993 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142

bb.k:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn80 = phi { ptr, i32 } [ %i.cs, %bb.l ], [ %i.cr, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ao

bb.n:                                             ; preds = %_ZN2cv4Mat_IcEaSERKNS_7MatExprE.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn82 = phi { ptr, i32 } [ %i.cu, %bb.o ], [ %i.ct, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ao

.lr.ph469.split:                                  ; preds = %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit, %._crit_edge
  %i.cv = phi i32 [ %i.dd, %._crit_edge ], [ %i.cl, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ]
  %i.cw = phi i32 [ %i.de, %._crit_edge ], [ %i.cn, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %._crit_edge ], [ 0, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 4 uses
  %.056467 = phi ptr [ %i.da, %._crit_edge ], [ null, %_ZN2cv4Mat_IiEaSERKNS_7MatExprE.exit ] ; 2 uses
  %i.cx = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.cy = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.cz = mul i64 %i.cy, %indvars.iv613
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz ; 3 uses
  %i.db = icmp sgt i32 %i.cw, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph469.split
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %indvars.iv613, 32 ; 2 uses
  %i.dc = icmp ne i64 %indvars.iv613, 0
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre = load i32, ptr %i.z, align 8, !tbaa !116
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph469.split
  %i.dd = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cv, %.lr.ph469.split ] ; 2 uses
  %i.de = phi i32 [ %i.hh, %._crit_edge.loopexit ], [ %i.cw, %.lr.ph469.split ]
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %i.df = sext i32 %i.dd to i64
  %i.dg = icmp slt i64 %indvars.iv.next614, %i.df
  br i1 %i.dg, label %.lr.ph469.split, label %.preheader, !llvm.loop !514

bb.q:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv ; 8 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0205.1, i64 %i.dj ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !141 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !142
  %.not.i.i103 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i.i103, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0195.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0195.0.insert.insert, ptr %i.dm, align 4, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !141
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !143 ; 5 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.t, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc105 unwind label %.loopexit.split-lp273.loopexit.split-lp

.noexc105:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #28
          to label %.noexc106 unwind label %.loopexit.split-lp273.loopexit.split-lp ; 5 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  %.sroa.0195.0.insert.insert199 = or disjoint i64 %.sroa.6.0.insert.shift, %indvars.iv
  store i64 %.sroa.0195.0.insert.insert199, ptr %i.ec, align 4, !tbaa !52
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dq, %i.dm
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc106, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i ], [ %i.eb, %.noexc106 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %i.dq, %.noexc106 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ed = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !52, !alias.scope !533
  store i64 %i.ed, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !52, !alias.scope !532
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ee, %i.dm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc106
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eb, %.noexc106 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.eh = load ptr, ptr %i.dn, align 8, !tbaa !142
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.ej) #27
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !143
  store ptr %i.eg, ptr %i.dl, align 8, !tbaa !141
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ek, ptr %i.dn, align 8, !tbaa !142
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.r
  %i.el = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.em = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.en = icmp slt i32 %i.em, 2
  %i.eo = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ep = load i64, ptr %i.af, align 8
  %i.eq = sext i32 %i.el to i64
  %i.er = mul i64 %i.ep, %i.eq
  %.sink.idx.i = select i1 %i.en, i64 0, i64 %i.er
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.idx.i ; 2 uses
  %i.es = load i32, ptr %.sink.i, align 4, !tbaa !52
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %.sink.i, align 4, !tbaa !52
  %i.eu = icmp ne i64 %indvars.iv, 0
  %or.cond = and i1 %i.dc, %i.eu
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.ew = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.ez = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.fa = icmp slt i32 %i.ez, 2
  %i.fb = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.fc = load i64, ptr %i.ai, align 8
  %i.fd = sext i32 %i.ev to i64
  %i.fe = mul i64 %i.fc, %i.fd
  %.sink.idx.i109 = select i1 %i.fa, i64 0, i64 %i.fe
  %.sink.i110 = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sink.idx.i109
  %i.ff = sext i32 %i.ey to i64
  %i.fg = getelementptr inbounds i8, ptr %.sink.i110, i64 %i.ff
  store i8 1, ptr %i.fg, align 1, !tbaa !89
  %i.fh = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.056467, i64 %indvars.iv ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !52
  %i.fk = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.fl = icmp slt i32 %i.fk, 2
  %i.fm = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.fn = load i64, ptr %i.ai, align 8
  %i.fo = sext i32 %i.fh to i64
  %i.fp = mul i64 %i.fn, %i.fo
  %.sink.idx.i111 = select i1 %i.fl, i64 0, i64 %i.fp
  %.sink.i112 = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sink.idx.i111
  %i.fq = sext i32 %i.fj to i64
  %i.fr = getelementptr inbounds i8, ptr %.sink.i112, i64 %i.fq
  store i8 1, ptr %i.fr, align 1, !tbaa !89
  %i.fs = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.056467, i64 %i.ew ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !52
  %i.fv = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.fw = icmp slt i32 %i.fv, 2
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.fy = load i64, ptr %i.ai, align 8
  %i.fz = sext i32 %i.fs to i64
  %i.ga = mul i64 %i.fy, %i.fz
  %.sink.idx.i113 = select i1 %i.fw, i64 0, i64 %i.ga
  %.sink.i114 = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink.idx.i113
  %i.gb = sext i32 %i.fu to i64
  %i.gc = getelementptr inbounds i8, ptr %.sink.i114, i64 %i.gb
  store i8 1, ptr %i.gc, align 1, !tbaa !89
  %i.gd = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.ge = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.gf = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.gg = icmp slt i32 %i.gf, 2
  %i.gh = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.gi = load i64, ptr %i.ai, align 8
  %i.gj = sext i32 %i.gd to i64
  %i.gk = mul i64 %i.gi, %i.gj
  %.sink.idx.i115 = select i1 %i.gg, i64 0, i64 %i.gk
  %.sink.i116 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sink.idx.i115
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr inbounds i8, ptr %.sink.i116, i64 %i.gl
  store i8 1, ptr %i.gm, align 1, !tbaa !89
  %i.gn = load i32, ptr %i.fi, align 4, !tbaa !52
  %i.go = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.gp = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.gq = icmp slt i32 %i.gp, 2
  %i.gr = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.gs = load i64, ptr %i.ai, align 8
  %i.gt = sext i32 %i.gn to i64
  %i.gu = mul i64 %i.gs, %i.gt
  %.sink.idx.i117 = select i1 %i.gq, i64 0, i64 %i.gu
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink.idx.i117
  %i.gv = sext i32 %i.go to i64
  %i.gw = getelementptr inbounds i8, ptr %.sink.i118, i64 %i.gv
  store i8 1, ptr %i.gw, align 1, !tbaa !89
  %i.gx = load i32, ptr %i.ft, align 4, !tbaa !52
  %i.gy = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.gz = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.ha = icmp slt i32 %i.gz, 2
  %i.hb = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.hc = load i64, ptr %i.ai, align 8
  %i.hd = sext i32 %i.gx to i64
  %i.he = mul i64 %i.hc, %i.hd
  %.sink.idx.i119 = select i1 %i.ha, i64 0, i64 %i.he
  %.sink.i120 = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.sink.idx.i119
  %i.hf = sext i32 %i.gy to i64
  %i.hg = getelementptr inbounds i8, ptr %.sink.i120, i64 %i.hf
  store i8 1, ptr %i.hg, align 1, !tbaa !89
  br label %bb.x

.loopexit.split-lp273.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.t
  %lpad.loopexit.split-lp865 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc167
  %lpad.loopexit.split-lp871 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hh = load i32, ptr %i.ac, align 4, !tbaa !79 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp slt i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %bb.q, label %._crit_edge.loopexit, !llvm.loop !518

._crit_edge473:                                   ; preds = %bb.ab, %.preheader
  %i.hk = load ptr, ptr %i.am, align 8, !tbaa !534 ; 2 uses
  %i.hl = load ptr, ptr %i.an, align 8, !tbaa !534
  %.not265484 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not265484, label %._crit_edge491, label %.lr.ph490

bb.y:                                             ; preds = %.lr.ph472, %bb.ab
  %indvars.iv616 = phi i64 [ 0, %.lr.ph472 ], [ %indvars.iv.next617, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0205.1, i64 %indvars.iv616 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !49
  store i32 0, ptr %i.ak, align 4, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !141
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !143
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 3                 ; 2 uses
  %.not.i = icmp ugt i64 %i.ht, 2147483647
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ht, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #29
          to label %.noexc121 unwind label %.loopexit.split-lp278.loopexit.split-lp

.noexc121:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  store i32 -2130509788, ptr %11, align 8, !tbaa !51
  store ptr %i.hm, ptr %i.al, align 8, !tbaa !33
  %i.hu = invoke { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ab unwind label %.loopexit.split-lp278.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.hv = extractvalue { i64, i64 } %i.hu, 0
  %i.hw = extractvalue { i64, i64 } %i.hu, 1
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv616 ; 2 uses
  store i64 %i.hv, ptr %i.hx, align 4, !tbaa !52
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %i.hw, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge473, label %bb.y, !llvm.loop !519

.loopexit.split-lp278.loopexit.split-lp:          ; preds = %bb.aa, %bb.z
  %lpad.loopexit.split-lp868 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ao

._crit_edge491:                                   ; preds = %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit, %._crit_edge473
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.1497, %._crit_edge473 ], [ %.sroa.16.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ] ; 2 uses
  %.sroa.10.2.lcssa = phi ptr [ %.sroa.10.1498, %._crit_edge473 ], [ %.sroa.10.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ] ; 2 uses
  %.sroa.0226.2.lcssa = phi ptr [ %.sroa.0226.1499, %._crit_edge473 ], [ %.sroa.0226.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ] ; 2 uses
  %i.hy = add nsw i32 %.1500, 1                   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0205.1, %.sroa.13.1
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge491, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.if, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i ], [ %.sroa.0205.1, %._crit_edge491 ] ; 3 uses
  %i.hz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !142
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #27
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.if, %.sroa.13.1
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, %._crit_edge491
  %.not.i.i1.i = icmp eq ptr %.sroa.0205.1, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ig = ptrtoint ptr %.sroa.13.1 to i64
  %i.ih = ptrtoint ptr %.sroa.0205.1 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.1, i64 noundef %i.ii) #27
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ad
  %.not.i.i.i122 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit
  %i.ij = ptrtoint ptr %14 to i64
  %i.ik = ptrtoint ptr %i.cc to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.il) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0218.0496, i64 16 ; 3 uses
  %i.in = load ptr, ptr %i.i, align 8, !tbaa !531
  %.not261 = icmp eq ptr %i.im, %i.in
  br i1 %.not261, label %._crit_edge502.loopexit, label %.lr.ph501, !llvm.loop !520

.lr.ph490:                                        ; preds = %._crit_edge473, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit
  %.sroa.0226.2488 = phi ptr [ %.sroa.0226.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ], [ %.sroa.0226.1499, %._crit_edge473 ] ; 3 uses
  %.sroa.10.2487 = phi ptr [ %.sroa.10.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ], [ %.sroa.10.1498, %._crit_edge473 ] ; 2 uses
  %.sroa.16.2486 = phi ptr [ %.sroa.16.3.lcssa, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ], [ %.sroa.16.1497, %._crit_edge473 ] ; 3 uses
  %.sroa.0192.0485 = phi ptr [ %i.iv, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit ], [ %i.hk, %._crit_edge473 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv8ximgproc12segmentation31SelectiveSearchSegmentationImpl20hierarchicalGroupingERKNS_3MatERNS_3PtrINS1_35SelectiveSearchSegmentationStrategyEEES5_RKNS_4Mat_IcEERKNSA_IiEERiRKSt6vectorINS_5Rect_IiEESaISK_EERSI_INS1_6RegionESaISP_EEi(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.0222.0509, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0192.0485, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %.1500)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.lr.ph490
  %i.io = load ptr, ptr %12, align 8, !tbaa !168  ; 3 uses
  %i.ip = load ptr, ptr %i.ao, align 8, !tbaa !168 ; 3 uses
  %.not266474 = icmp eq ptr %i.io, %i.ip
  br i1 %.not266474, label %._crit_edge481, label %.lr.ph480

._crit_edge481.loopexit:                          ; preds = %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit
  %.pre620 = load ptr, ptr %12, align 8, !tbaa !170
  br label %._crit_edge481

._crit_edge481:                                   ; preds = %._crit_edge481.loopexit, %bb.af
  %i.iq = phi ptr [ %i.io, %bb.af ], [ %.pre620, %._crit_edge481.loopexit ] ; 3 uses
  %.sroa.16.3.lcssa = phi ptr [ %.sroa.16.2486, %bb.af ], [ %.sroa.16.10, %._crit_edge481.loopexit ] ; 2 uses
  %.sroa.10.3.lcssa = phi ptr [ %.sroa.10.2487, %bb.af ], [ %.sroa.10.4, %._crit_edge481.loopexit ] ; 2 uses
  %.sroa.0226.3.lcssa = phi ptr [ %.sroa.0226.2488, %bb.af ], [ %.sroa.0226.10, %._crit_edge481.loopexit ] ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge481
  %i.ir = load ptr, ptr %i.ap, align 8, !tbaa !171
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #27
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit: ; preds = %._crit_edge481, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0192.0485, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !534
  %.not265 = icmp eq ptr %i.iv, %i.iw
  br i1 %.not265, label %._crit_edge491, label %.lr.ph490, !llvm.loop !521

bb.ah:                                            ; preds = %.lr.ph490
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph480:                                        ; preds = %bb.af, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit
  %.pre619623 = phi ptr [ %.pre619624, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %i.ip, %bb.af ] ; 2 uses
  %i.iy = phi ptr [ %i.jo, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %i.ip, %bb.af ]
  %.sroa.0226.3478 = phi ptr [ %.sroa.0226.10, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.0226.2488, %bb.af ] ; 7 uses
  %.sroa.10.3477 = phi ptr [ %.sroa.10.4, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.10.2487, %bb.af ] ; 7 uses
  %.sroa.16.3476 = phi ptr [ %.sroa.16.10, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.16.2486, %bb.af ] ; 2 uses
  %.sroa.0188.0475 = phi ptr [ %i.jp, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit ], [ %i.io, %bb.af ] ; 3 uses
  %.not.i124 = icmp eq ptr %.sroa.10.3477, %.sroa.16.3476
  br i1 %.not.i124, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.3477, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0188.0475, i64 40, i1 false), !tbaa.struct !172
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit

bb.aj:                                            ; preds = %.lr.ph480
  %i.iz = ptrtoint ptr %.sroa.10.3477 to i64
  %i.ja = ptrtoint ptr %.sroa.0226.3478 to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 4 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.ak, label %_ZNKSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc126 unwind label %.loopexit.split-lp268.loopexit.split-lp

.noexc126:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.jd = sdiv exact i64 %i.jb, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = call i64 @llvm.umin.i64(i64 %i.je, i64 230584300921369395)
  %i.jh = select i1 %i.jf, i64 230584300921369395, i64 %i.jg ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.jh, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.ji = mul nuw nsw i64 %i.jh, 40
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #28
          to label %.noexc127 unwind label %.loopexit.split-lp268.loopexit.split-lp ; 5 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jk, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0188.0475, i64 40, i1 false), !tbaa.struct !172
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0226.3478, %.sroa.10.3477
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc127, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i ], [ %i.jj, %.noexc127 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i ], [ %.sroa.0226.3478, %.noexc127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !172, !alias.scope !535
  %i.jl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jl, %.sroa.10.3477
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc127
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.jj, %.noexc127 ], [ %i.jm, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0226.3478, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.3478, i64 noundef %i.jb) #27
  %.pre619.pre = load ptr, ptr %i.ao, align 8, !tbaa !168
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %.pre619 = phi ptr [ %.pre619.pre, %bb.al ], [ %.pre619623, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [40 x i8], ptr %i.jj, i64 %i.jh
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ai
  %.pre619624 = phi ptr [ %.pre619, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre619623, %bb.ai ]
  %i.jo = phi ptr [ %.pre619, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.iy, %bb.ai ] ; 2 uses
  %.sroa.16.10 = phi ptr [ %i.jn, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.16.3476, %bb.ai ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.10.3477, %bb.ai ]
  %.sroa.0226.10 = phi ptr [ %i.jj, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0226.3478, %bb.ai ] ; 2 uses
  %.sroa.10.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 40 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0188.0475, i64 40 ; 2 uses
  %.not266 = icmp eq ptr %i.jp, %i.jo
  br i1 %.not266, label %._crit_edge481.loopexit, label %.lr.ph480, !llvm.loop !525

.loopexit.split-lp268.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp268.loopexit.split-lp, %bb.ah
  %.sroa.16.4 = phi ptr [ %.sroa.16.2486, %bb.ah ], [ %.sroa.10.3477, %.loopexit.split-lp268.loopexit.split-lp ]
  %.sroa.0226.4 = phi ptr [ %.sroa.0226.2488, %bb.ah ], [ %.sroa.0226.3478, %.loopexit.split-lp268.loopexit.split-lp ]
  %.pn84 = phi { ptr, i32 } [ %i.ix, %bb.ah ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp268.loopexit.split-lp ]
  %i.jq = load ptr, ptr %12, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i128 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jr = load ptr, ptr %i.ap, align 8, !tbaa !171
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.ju) #27
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp273.loopexit.split-lp, %.loopexit.split-lp278.loopexit.split-lp, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129, %bb.p, %bb.m
  %.sroa.16.5 = phi ptr [ %.sroa.16.1497, %bb.m ], [ %.sroa.16.1497, %.loopexit.split-lp278.loopexit.split-lp ], [ %.sroa.16.4, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129 ], [ %.sroa.16.1497, %bb.p ], [ %.sroa.16.1497, %.loopexit.split-lp273.loopexit.split-lp ] ; 2 uses
  %.sroa.0226.5 = phi ptr [ %.sroa.0226.1499, %bb.m ], [ %.sroa.0226.1499, %.loopexit.split-lp278.loopexit.split-lp ], [ %.sroa.0226.4, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129 ], [ %.sroa.0226.1499, %bb.p ], [ %.sroa.0226.1499, %.loopexit.split-lp273.loopexit.split-lp ] ; 2 uses
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn80, %bb.m ], [ %lpad.loopexit.split-lp868, %.loopexit.split-lp278.loopexit.split-lp ], [ %.pn84, %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit129 ], [ %.pn82, %bb.p ], [ %lpad.loopexit.split-lp865, %.loopexit.split-lp273.loopexit.split-lp ] ; 2 uses
  %.not4.i.i.i130 = icmp eq ptr %.sroa.0205.1, %.sroa.13.1
  br i1 %.not4.i.i.i130, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138, label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %bb.ao, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134
  %.05.i.i.i132 = phi ptr [ %i.kb, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134 ], [ %.sroa.0205.1, %bb.ao ] ; 3 uses
  %i.jv = load ptr, ptr %.05.i.i.i132, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i.i.i.i133 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i.i133, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i131
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !142
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #27
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134: ; preds = %bb.ap, %.lr.ph.i.i.i131
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 24 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.kb, %.sroa.13.1
  br i1 %.not.i.i.i135, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138, label %.lr.ph.i.i.i131, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i134, %bb.ao
  %.not.i.i1.i139 = icmp eq ptr %.sroa.0205.1, null
  br i1 %.not.i.i1.i139, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138
  %i.kc = ptrtoint ptr %.sroa.13.1 to i64
  %i.kd = ptrtoint ptr %.sroa.0205.1 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.1, i64 noundef %i.ke) #27
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140: ; preds = %bb.aq, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138
  %.not.i.i.i141 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140
  %.pn88.pn.pn.pn272 = phi { ptr, i32 } [ %lpad.loopexit.split-lp871, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ], [ %.pn88.pn.pn, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ]
  %15 = phi ptr [ %i.bx, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ] ; 2 uses
  %16 = phi ptr [ %i.by, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ], [ %14, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ]
  %.sroa.0226.6271 = phi ptr [ %.sroa.0226.1499, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0226.5, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ]
  %.sroa.16.6270 = phi ptr [ %.sroa.16.1497, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i138.thread.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.5, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ]
  %i.kf = ptrtoint ptr %16 to i64
  %i.kg = ptrtoint ptr %15 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %i.kh) #27
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142:  ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140, %bb.ar
  %.pn88.pn.pn.pn264 = phi { ptr, i32 } [ %.pn88.pn.pn.pn272, %bb.ar ], [ %.pn88.pn.pn, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ], [ %lpad.loopexit.split-lp993, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0226.6263 = phi ptr [ %.sroa.0226.6271, %bb.ar ], [ %.sroa.0226.5, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ], [ %.sroa.0226.1499, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.16.6262 = phi ptr [ %.sroa.16.6270, %bb.ar ], [ %.sroa.16.5, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140 ], [ %.sroa.16.1497, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit140.thread.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142, %bb.j
  %.sroa.16.7 = phi ptr [ %.sroa.16.6262, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142 ], [ %.sroa.16.1497, %bb.j ]
  %.sroa.0226.7 = phi ptr [ %.sroa.0226.6263, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142 ], [ %.sroa.0226.1499, %bb.j ]
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn264, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit142 ], [ %i.cq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.i
  %.sroa.16.8 = phi ptr [ %.sroa.16.7, %bb.as ], [ %.sroa.16.1497, %bb.i ]
  %.sroa.0226.8 = phi ptr [ %.sroa.0226.7, %bb.as ], [ %.sroa.0226.1499, %bb.i ]
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn, %bb.as ], [ %i.cp, %bb.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.split.lr.ph, %.split507, %._crit_edge514, %.noexc
  %.not.i.i686 = phi i1 [ false, %.noexc ], [ true, %._crit_edge514 ], [ true, %.split507 ], [ true, %.split.lr.ph ]
  %.sroa.0226.0.lcssa684 = phi ptr [ %.sroa.0226.1.lcssa, %.noexc ], [ %.sroa.0226.1.lcssa, %._crit_edge514 ], [ null, %.split507 ], [ null, %.split.lr.ph ] ; 5 uses
  %.sroa.10.0.lcssa683 = phi ptr [ %.sroa.10.1.lcssa, %.noexc ], [ %.sroa.10.1.lcssa, %._crit_edge514 ], [ null, %.split507 ], [ null, %.split.lr.ph ]
  %.sroa.16.0.lcssa681 = phi ptr [ %.sroa.16.1.lcssa, %.noexc ], [ %.sroa.16.1.lcssa, %._crit_edge514 ], [ null, %.split507 ], [ null, %.split.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i32 0, ptr %i.ki, align 8, !tbaa !536
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.kj, align 8, !tbaa !177
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.ki, ptr %i.kk, align 8, !tbaa !178
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.ki, ptr %i.kl, align 8, !tbaa !537
  %i.km = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.km, align 8, !tbaa !179
  %i.kn = load ptr, ptr %1, align 8, !tbaa !137   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !136
  %.not.i.i143 = icmp eq ptr %i.kp, %i.kn
  br i1 %.not.i.i143, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i144

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i144: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !136
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i144
  br i1 %.not.i.i686, label %._crit_edge524, label %.lr.ph523

.lr.ph523:                                        ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.ax

._crit_edge524.loopexit:                          ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit
  %.pre622 = load ptr, ptr %i.kj, align 8, !tbaa !177
  br label %._crit_edge524

._crit_edge524:                                   ; preds = %._crit_edge524.loopexit, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  %i.kr = phi ptr [ %.pre622, %._crit_edge524.loopexit ], [ null, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit ]
  invoke void @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.kr)
          to label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %._crit_edge524
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #30
  unreachable

_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEED2Ev.exit: ; preds = %._crit_edge524
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not.i.i.i145 = icmp eq ptr %.sroa.0226.0.lcssa684, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit146, label %bb.av

bb.av:                                            ; preds = %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEED2Ev.exit
  %i.ku = ptrtoint ptr %.sroa.16.0.lcssa681 to i64
  %i.kv = ptrtoint ptr %.sroa.0226.0.lcssa684 to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0226.0.lcssa684, i64 noundef %i.kw) #27
  br label %_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit146

_ZNSt6vectorIN2cv8ximgproc12segmentation6RegionESaIS3_EED2Ev.exit146: ; preds = %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEED2Ev.exit, %bb.av
  ret void

bb.aw:                                            ; preds = %.noexc, %bb.a
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ax:                                            ; preds = %.lr.ph523, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit
  %.sroa.0182.0521 = phi ptr [ %.sroa.0226.0.lcssa684, %.lr.ph523 ], [ %i.nm, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0182.0521, i64 24 ; 4 uses
  %i.kz = load ptr, ptr %i.kj, align 8, !tbaa !177 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not14.i.i.i, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %.lr.ph.i.i.i147

.lr.ph.i.i.i147:                                  ; preds = %bb.ax
  %i.la = load i32, ptr %i.ky, align 4, !tbaa !180 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0182.0521, i64 28
  %i.lc = load i32, ptr %i.lb, align 4            ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0182.0521, i64 32
  %i.le = load i32, ptr %i.ld, align 4            ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0182.0521, i64 36
  %i.lg = load i32, ptr %i.lf, align 4            ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i, %.lr.ph.i.i.i147
  %.016.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i.i147 ], [ %.1.i.i.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i ] ; 9 uses
  %.0815.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i147 ], [ %.19.i.i.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !180 ; 2 uses
  %i.lj = icmp slt i32 %i.li, %i.la
  br i1 %i.lj, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lk = icmp sgt i32 %i.li, %i.la
  br i1 %i.lk, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ll = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 36
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !181 ; 2 uses
  %i.ln = icmp slt i32 %i.lm, %i.lc
  br i1 %i.ln, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lo = icmp sgt i32 %i.lm, %i.lc
  br i1 %i.lo, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lp = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 40
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !145 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %i.le
  br i1 %i.lr, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ls = icmp sgt i32 %i.lq, %i.le
  br i1 %i.ls, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i: ; preds = %bb.bd
  %i.lt = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 44
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !182
  %i.lv = icmp slt i32 %i.lu, %i.lg
  br i1 %i.lv, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i: ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i, %bb.bc, %bb.ba, %bb.ay
  br label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i: ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i, %bb.bd, %bb.bb, %bb.az
  %.sink.i.i.i = phi i64 [ 24, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i ], [ 16, %bb.az ], [ 16, %bb.bb ], [ 16, %bb.bd ], [ 16, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0815.i.i.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread.i.i.i ], [ %.016.i.i.i, %bb.az ], [ %.016.i.i.i, %bb.bb ], [ %.016.i.i.i, %bb.bd ], [ %.016.i.i.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i.i ] ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.lw, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i148, label %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.ay, !llvm.loop !17

_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread12.i.i.i
  %i.lx = icmp eq ptr %.19.i.i.i, %i.ki
  br i1 %i.lx, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %bb.be

bb.be:                                            ; preds = %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !180 ; 2 uses
  %i.ma = icmp slt i32 %i.la, %i.lz
  br i1 %i.ma, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mb = icmp sgt i32 %i.la, %i.lz
  br i1 %i.mb, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !181 ; 2 uses
  %i.me = icmp slt i32 %i.lc, %i.md
  br i1 %i.me, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mf = icmp sgt i32 %i.lc, %i.md
  br i1 %i.mf, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !145 ; 2 uses
  %i.mi = icmp slt i32 %i.le, %i.mh
  br i1 %i.mi, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mj = icmp sgt i32 %i.le, %i.mh
  br i1 %i.mj, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i: ; preds = %bb.bj
  %i.mk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 44
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !182
  %i.mm = icmp slt i32 %i.lg, %i.ml
  br i1 %i.mm, label %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_.exit

_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread: ; preds = %bb.bi, %bb.bg, %bb.be, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.i.i, %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.ax
  %i.mn = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 4 dereferenceable(16) %i.ky)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %_ZNSt3mapIN2cv5Rect_IiEEcNS0_8ximgproc12segmentation14rectComparatorESaISt4pairIKS2_cEEE4findERS7_.exit.thread
  store i8 1, ptr %i.mn, align 1, !tbaa !89
  %i.mo = load ptr, ptr %i.ko, align 8, !tbaa !136 ; 5 uses
  %i.mp = load ptr, ptr %i.kq, align 8, !tbaa !166
  %.not.i149 = icmp eq ptr %i.mo, %i.mp
end_hunk_0
