begin_hunk_0

391:                                              ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142
  %.sroa.0358.6 = phi ptr [ %204, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %79, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; [#uses=20 type=ptr]
  %.sroa.22.0 = phi ptr [ %207, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %81, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; [#uses=16 type=ptr]
  %.sroa.0341.6 = phi ptr [ %199, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %66, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; [#uses=19 type=ptr]
  %.sroa.16.0 = phi ptr [ %203, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %78, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142 ] ; [#uses=15 type=ptr]
  %392 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %404 ; [#uses=0 type=ptr]

end_hunk_0
begin_hunk_1
  %445 = ptrtoint ptr %.sroa.16.0 to i64          ; [#uses=1 type=i64]
  %446 = ptrtoint ptr %.sroa.0341.6 to i64        ; [#uses=1 type=i64]
  %447 = sub i64 %445, %446                       ; [#uses=3 type=i64]
  %448 = ptrtoint ptr %.sroa.22.0 to i64          ; [#uses=1 type=i64]
  %449 = ptrtoint ptr %.sroa.0358.6 to i64        ; [#uses=1 type=i64]
  %450 = sub i64 %448, %449                       ; [#uses=2 type=i64]
  %451 = ashr exact i64 %450, 2                   ; [#uses=2 type=i64]
  %.not = icmp eq i64 %447, %450                  ; [#uses=1 type=i1]
  br i1 %.not, label %459, label %452

end_hunk_1
begin_hunk_2
  br label %.split

459:                                              ; preds = %433
  %460 = icmp eq ptr %.sroa.0358.6, %.sroa.22.0   ; [#uses=1 type=i1]
  br i1 %460, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %459
end_hunk_2
begin_hunk_3
  br label %.split

.split462.us.loopexit:                            ; preds = %522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us
  %lpad.loopexit511 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.split

.split462.us.loopexit.split-lp.loopexit:          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us.1, %481
  %lpad.loopexit517 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.split

.split462.us.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.us.2, %509
  %lpad.loopexit.split-lp518 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.split

end_hunk_3
begin_hunk_4
  br label %.split

.split465.us.loopexit.split-lp.loopexit:          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us.1, %468
  %lpad.loopexit514 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.split

.split465.us.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.us.2, %496
  %lpad.loopexit.split-lp515 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.split

end_hunk_4
begin_hunk_5
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %455 ; [#uses=0 type=ptr]

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader: ; preds = %567, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 ], [ 0, %567 ] ; [#uses=2 type=i64]
  %.idx = mul nuw nsw i64 %indvars.iv520, 12      ; [#uses=1 type=i64]
  %571 = getelementptr inbounds nuw i8, ptr %27, i64 %.idx ; [#uses=3 type=ptr]
  %572 = load float, ptr %571, align 4, !tbaa !59 ; [#uses=1 type=float]
  %573 = fpext float %572 to double               ; [#uses=1 type=double]
end_hunk_5
begin_hunk_6
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %586 ; [#uses=0 type=ptr]

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEf.exit233
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; [#uses=2 type=i64]
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %33 ; [#uses=1 type=i1]
  br i1 %exitcond524.not, label %569, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader, !llvm.loop !176

586:                                              ; preds = %_ZNSolsEf.exit233, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %_ZNSolsEf.exit229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %_ZNSolsEf.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.preheader
  %587 = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7

.split:                                           ; preds = %.split465.us.loopexit, %.split465.us.loopexit.split-lp.loopexit.split-lp, %.split465.us.loopexit.split-lp.loopexit, %.split462.us.loopexit, %.split462.us.loopexit.split-lp.loopexit.split-lp, %.split462.us.loopexit.split-lp.loopexit, %.split.us, %.split.split, %406, %586, %457, %455, %430, %76, %151, %404, %390
  %.sroa.0358.7 = phi ptr [ %.sroa.0358.6, %430 ], [ %.sroa.0358.6, %586 ], [ %.sroa.0358.6, %455 ], [ %.sroa.0358.6, %.split.us ], [ %.sroa.0358.6, %.split462.us.loopexit ], [ %.sroa.0358.0, %76 ], [ %.sroa.0358.6, %457 ], [ %.sroa.0358.6, %406 ], [ %.sroa.0358.6, %404 ], [ %.sroa.0358.5, %390 ], [ %79, %151 ], [ %.sroa.0358.6, %.split.split ], [ %.sroa.0358.6, %.split462.us.loopexit.split-lp.loopexit ], [ %.sroa.0358.6, %.split462.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0358.6, %.split465.us.loopexit.split-lp.loopexit ], [ %.sroa.0358.6, %.split465.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0358.6, %.split465.us.loopexit ] ; [#uses=3 type=ptr]
  %.sroa.37.7 = phi ptr [ %.sroa.22.0, %430 ], [ %.sroa.22.0, %586 ], [ %.sroa.22.0, %455 ], [ %.sroa.22.0, %.split.us ], [ %.sroa.22.0, %.split462.us.loopexit ], [ %.sroa.37.0, %76 ], [ %.sroa.22.0, %457 ], [ %.sroa.22.0, %406 ], [ %.sroa.22.0, %404 ], [ %.sroa.37.5, %390 ], [ %81, %151 ], [ %.sroa.22.0, %.split.split ], [ %.sroa.22.0, %.split462.us.loopexit.split-lp.loopexit ], [ %.sroa.22.0, %.split462.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.22.0, %.split465.us.loopexit.split-lp.loopexit ], [ %.sroa.22.0, %.split465.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.22.0, %.split465.us.loopexit ] ; [#uses=1 type=ptr]
  %.sroa.0341.7 = phi ptr [ %.sroa.0341.6, %430 ], [ %.sroa.0341.6, %586 ], [ %.sroa.0341.6, %455 ], [ %.sroa.0341.6, %.split.us ], [ %.sroa.0341.6, %.split462.us.loopexit ], [ %.sroa.0341.0, %76 ], [ %.sroa.0341.6, %457 ], [ %.sroa.0341.6, %406 ], [ %.sroa.0341.6, %404 ], [ %.sroa.0341.5, %390 ], [ %66, %151 ], [ %.sroa.0341.6, %.split.split ], [ %.sroa.0341.6, %.split462.us.loopexit.split-lp.loopexit ], [ %.sroa.0341.6, %.split462.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0341.6, %.split465.us.loopexit.split-lp.loopexit ], [ %.sroa.0341.6, %.split465.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0341.6, %.split465.us.loopexit ] ; [#uses=3 type=ptr]
  %.sroa.27.7 = phi ptr [ %.sroa.16.0, %430 ], [ %.sroa.16.0, %586 ], [ %.sroa.16.0, %455 ], [ %.sroa.16.0, %.split.us ], [ %.sroa.16.0, %.split462.us.loopexit ], [ %.sroa.27.0, %76 ], [ %.sroa.16.0, %457 ], [ %.sroa.16.0, %406 ], [ %.sroa.16.0, %404 ], [ %.sroa.27.5, %390 ], [ %78, %151 ], [ %.sroa.16.0, %.split.split ], [ %.sroa.16.0, %.split462.us.loopexit.split-lp.loopexit ], [ %.sroa.16.0, %.split462.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.0, %.split465.us.loopexit.split-lp.loopexit ], [ %.sroa.16.0, %.split465.us.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.16.0, %.split465.us.loopexit ] ; [#uses=1 type=ptr]
  %.pn119.pn.pn = phi { ptr, i32 } [ %431, %430 ], [ %587, %586 ], [ %456, %455 ], [ %545, %.split.us ], [ %lpad.loopexit511, %.split462.us.loopexit ], [ %77, %76 ], [ %458, %457 ], [ %407, %406 ], [ %405, %404 ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn, %390 ], [ %.pn.pn.pn.pn, %151 ], [ %550, %.split.split ], [ %lpad.loopexit517, %.split462.us.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp518, %.split462.us.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit514, %.split465.us.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp515, %.split465.us.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.split465.us.loopexit ] ; [#uses=2 type={ ptr, i32 }]
  %615 = load ptr, ptr %8, align 8, !tbaa !26     ; [#uses=2 type=ptr]
  %616 = icmp eq ptr %615, %37                    ; [#uses=1 type=i1]
  br i1 %616, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
end_hunk_7
begin_hunk_8

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27 ; [#uses=1 type=i32]
  %12 = icmp eq i32 %11, 0                        ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_8
begin_hunk_9

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27 ; [#uses=1 type=i32]
  %12 = icmp eq i32 %11, 0                        ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_9
