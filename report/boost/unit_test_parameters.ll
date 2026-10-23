Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/unit_test_parameters?download=true
inline.NumInlined: 6148
inline.NumDeleted: 1984
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5boost9unit_test14runtime_config12_GLOBAL__N_119register_parametersERNS_7runtime16parameters_storeE:bb.a
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pt ], [ %.pn295.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body1072 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #30
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.mq
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pu ], [ %i.clk, %bb.mq ]
  call void @_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %261) #30
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.mp
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pv ], [ %i.clj, %bb.mp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #30
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.mo
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pw ], [ %i.cli, %bb.mo ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %254) #30
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %.body923
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.px ], [ %.pn282.pn, %.body923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #30
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.ml
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.py ], [ %i.ckx, %bb.ml ]
  call void @_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %252) #30
  br label %bb.qa

bb.qa:                                            ; preds = %.body907, %bb.pz
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pz ], [ %.pn275.pn, %.body907 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #30
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.mj
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qa ], [ %i.ckv, %bb.mj ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %250) #30
  br label %.body855

.body855:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i, %bb.bs, %bb.mi, %bb.qb
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qb ], [ %i.cku, %bb.mi ], [ %.pn.pn.pn.pn.pn.i.i838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i ], [ %.pn.pn.pn.i, %bb.bs ], [ %.pn.pn.pn.pn.pn.i.i838, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #30
  br label %bb.qc

bb.qc:                                            ; preds = %.body855, %bb.mh
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body855 ], [ %i.ckt, %bb.mh ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %245) #30
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.mg
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qc ], [ %i.cks, %bb.mg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #30
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.mf
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qd ], [ %i.ckr, %bb.mf ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %240) #30
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.me
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qe ], [ %i.ckq, %bb.me ]
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #30
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.md
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qf ], [ %i.ckp, %bb.md ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %233) #30
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %.body759
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qg ], [ %.pn256.pn, %.body759 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #30
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.ma
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qh ], [ %i.cke, %bb.ma ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %228) #30
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.lz
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qi ], [ %i.ckd, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #30
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.ly
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qj ], [ %i.ckc, %bb.ly ]
  call void @_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %227) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i, %bb.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i, %bb.qk
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qk ], [ %i.ckb, %bb.lx ], [ %.pn.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i ], [ %.pn.pn.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #30
  br label %bb.ql

bb.ql:                                            ; preds = %.body, %bb.lw
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.cka, %bb.lw ]
  call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(235) dereferenceable(235) %222) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #30
  resume { ptr, i32 } %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost7runtime3cla6parser5parseEiPPcRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 9 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 9 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 8 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %7 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %8 = alloca %"class.boost::shared_ptr.347", align 8 ; 6 uses
  %9 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %10 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 4 uses
  %11 = alloca %"struct.std::pair.348", align 8   ; 15 uses
  %12 = alloca %"class.boost::shared_ptr.347", align 8 ; 4 uses
  %13 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %14 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %15 = alloca %"class.boost::shared_ptr.36", align 8 ; 6 uses
  %16 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %17 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %18 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %19 = alloca %"class.boost::runtime::format_error", align 8 ; 10 uses
  %20 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %21 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %22 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %23 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %24 = alloca %"class.boost::runtime::format_error", align 8 ; 10 uses
  %25 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %26 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %27 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %28 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %29 = alloca %"class.boost::runtime::format_error", align 8 ; 5 uses
  %30 = alloca %"class.boost::runtime::format_error", align 8 ; 10 uses
  %31 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %32 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 6 uses
  %33 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 5 uses
  %34 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %35 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %36 = alloca %"class.boost::runtime::duplicate_arg", align 8 ; 5 uses
  %37 = alloca %"class.boost::runtime::duplicate_arg", align 8 ; 5 uses
  %38 = alloca %"class.boost::runtime::duplicate_arg", align 8 ; 5 uses
  %39 = alloca %"class.boost::runtime::duplicate_arg", align 8 ; 5 uses
  %40 = alloca %"class.boost::runtime::duplicate_arg", align 8 ; 10 uses
  %41 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %42 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !89     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5boost9unit_test13basic_cstringIKcEaSEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strlen.i.i.i = tail call noundef i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  br label %_ZN5boost9unit_test13basic_cstringIKcEaSEPS2_.exit

_ZN5boost9unit_test13basic_cstringIKcEaSEPS2_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.a ] ; 3 uses
  %i.d = phi i64 [ %strlen.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.d ; 2 uses
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !64
  %i.g = tail call noundef ptr @_ZN5boost9unit_test5utils12find_last_ofIPKcS4_EET_S5_S5_T0_S6_(ptr noundef nonnull %.sroa.0.0.i, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.246, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.246, i64 2)) ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9unit_test13basic_cstringIKcEaSEPS2_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.not.i = icmp ugt ptr %i.h, %i.i
  %spec.store.select.i = select i1 %.not.i, ptr %i.i, ptr %i.h
  store ptr %spec.store.select.i, ptr %0, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost9unit_test13basic_cstringIKcEaSEPS2_.exit
  %i.j = icmp eq i32 %1, 1
  br i1 %i.j, label %.loopexit233, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph

_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph: ; preds = %bb.d
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #33
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit

_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit: ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph, %bb.df
  %.sroa.37.0290 = phi i64 [ %i.n, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph ], [ %.sroa.37.4, %bb.df ] ; 6 uses
  %.sroa.22.0289 = phi i64 [ 1, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph ], [ %.sroa.22.1, %bb.df ] ; 21 uses
  %.sroa.0174.0288 = phi i64 [ %i.k, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit.lr.ph ], [ %.sroa.0174.4, %bb.df ] ; 10 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.22.0289 ; 7 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !675 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.37.0290 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %4, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %5, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %6, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !82
  store ptr %i.an, ptr %7, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.r, align 8, !tbaa !64
  %i.ap = call noundef zeroext i1 @_ZN5boost7runtime3cla6parser21validate_token_formatENS_9unit_test13basic_cstringIKcEERS6_S7_S7_Rb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.ap, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit
  %i.aq = add i64 %.sroa.0174.0288, -1            ; 3 uses
  %i.ar = icmp ult i64 %.sroa.22.0289, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.as = shl i64 %.sroa.22.0289, 3
  %scevgep.i = getelementptr i8, ptr %2, i64 %i.as ; 2 uses
  %scevgep5.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.at = sub nuw i64 %i.aq, %.sroa.22.0289
  %i.au = shl nuw i64 %i.at, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep5.i, i64 %i.au, i1 false), !tbaa !89
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.loopexit233

bb.e:                                             ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN5boost9unit_test13basic_cstringIKcEENS0_10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESt4lessIS4_ESaISt4pairIKS4_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183 ; 3 uses
  store ptr %i.aw, ptr %8, align 8, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 7 uses
  store ptr %i.ay, ptr %i.t, align 8, !tbaa !78
  %.not.i.i72 = icmp eq ptr %i.ay, null           ; 2 uses
  br i1 %.not.i.i72, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit

_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit: ; preds = %bb.e, %bb.f
  %.not229 = icmp eq ptr %i.aw, null
  br i1 %.not229, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit
  %i.bb = load <2 x ptr>, ptr %0, align 8, !tbaa !89
  store <2 x ptr> %i.bb, ptr %9, align 16, !tbaa !89
  store ptr %i.an, ptr %10, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !64
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.254, i64 noundef 27)
          to label %.noexc unwind label %bb.i     ; 0 uses

.noexc:                                           ; preds = %bb.g
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc73 unwind label %bb.i   ; 4 uses

.noexc73:                                         ; preds = %.noexc
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %.noexc74 unwind label %bb.i   ; 0 uses

.noexc74:                                         ; preds = %.noexc73
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.256, i64 noundef 94)
          to label %.noexc75 unwind label %bb.i   ; 0 uses

.noexc75:                                         ; preds = %.noexc74
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.257, i64 noundef 33)
          to label %.noexc76 unwind label %bb.i   ; 0 uses

.noexc76:                                         ; preds = %.noexc75
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc77 unwind label %bb.i   ; 2 uses

.noexc77:                                         ; preds = %.noexc76
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.258, i64 noundef 13)
          to label %.noexc78 unwind label %bb.i   ; 0 uses

.noexc78:                                         ; preds = %.noexc77
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc79 unwind label %bb.i

.noexc79:                                         ; preds = %.noexc78
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.64, i64 noundef 1)
          to label %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit unwind label %bb.i ; 0 uses

_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit: ; preds = %.noexc79
  %i.bl = add i64 %.sroa.22.0289, 1               ; 3 uses
  %i.bm = icmp eq i64 %i.bl, %.sroa.0174.0288
  br i1 %i.bm, label %_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit, label %bb.h, !llvm.loop !666

bb.h:                                             ; preds = %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !89
  %i.bp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #33
  br label %_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit, !llvm.loop !666

bb.i:                                             ; preds = %.noexc79, %.noexc78, %.noexc77, %.noexc76, %.noexc75, %.noexc74, %.noexc73, %.noexc, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.j:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.bs = load ptr, ptr %4, align 16, !tbaa !63
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bv ; 2 uses
  %.not.i81 = icmp ugt ptr %i.ao, %i.bw
  %spec.store.select.i82 = select i1 %.not.i81, ptr %i.bw, ptr %i.ao ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %i.aw, ptr %12, align 8, !tbaa !183
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !78
  br i1 %.not.i.i72, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit84, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.by = atomicrmw add ptr %i.bx, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit84

_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit84: ; preds = %bb.j, %bb.k
  %i.bz = load <2 x ptr>, ptr %5, align 16, !tbaa !89
  store <2 x ptr> %i.bz, ptr %13, align 16, !tbaa !89
  store ptr %spec.store.select.i82, ptr %14, align 8, !tbaa !63
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !64
  invoke void @_ZN5boost7runtime3cla6parser16locate_parameterENS_10shared_ptrINS1_13rt_cla_detail14parameter_trieEEENS_9unit_test13basic_cstringIKcEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.348") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit84
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !78  ; 7 uses
  %.not.i.i85 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i85, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.n, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #30, !inline_history !5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.ca, align 8, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #30, !inline_history !6
  br label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit

_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !186 ; 14 uses
  store ptr %i.cn, ptr %15, align 8, !tbaa !186
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !78  ; 9 uses
  store ptr %i.co, ptr %i.x, align 8, !tbaa !78
  %.not.i.i86 = icmp eq ptr %i.co, null           ; 2 uses
  br i1 %.not.i.i86, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit

_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit: ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit, %bb.p
  %i.cr = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !84
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.q, label %bb.af

bb.q:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit
  %i.ct = load i8, ptr %i.z, align 8, !tbaa !188, !range !83, !noundef !84
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ae, label %bb.s

bb.r:                                             ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEC2ERKS5_.exit84
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %bb.dh

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !71 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 0, ptr %i.df, align 8, !tbaa !68
  store i8 0, ptr %i.de, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime12format_errorE, i64 16), ptr %19, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.247)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull @.str.248)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime12format_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %16) #32
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.aa ], [ %i.di, %bb.z ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.dh, %bb.y ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.dg, %bb.x ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.dg

bb.ae:                                            ; preds = %bb.q
  %i.dk = load i64, ptr %i.aa, align 8, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %spec.store.select.i82, i64 %i.dk ; 2 uses
  %.not.i87 = icmp ugt ptr %i.ao, %i.dl
  %spec.store.select.i88 = select i1 %.not.i87, ptr %i.dl, ptr %i.ao
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit
  %.sroa.0157.0 = phi ptr [ %spec.store.select.i88, %bb.ae ], [ %spec.store.select.i82, %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit ]
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.dn = load ptr, ptr %5, align 16, !tbaa !63
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0157.0, i64 %i.dq ; 3 uses
  %.not.i89.not = icmp ugt ptr %i.ao, %i.dr       ; 2 uses
  %spec.store.select.i90 = select i1 %.not.i89.not, ptr %i.dr, ptr %i.ao
  %i.ds = load ptr, ptr %i.q, align 8, !tbaa !64  ; 2 uses
  %i.dt = load ptr, ptr %6, align 16, !tbaa !63   ; 3 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cn, i64 170
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !189, !range !83, !noundef !84
  %43 = icmp eq i8 %i.dw, 0
  br i1 %43, label %bb.ah, label %bb.bq

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dx = load i64, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %i.dy = ptrtoint ptr %i.ds to i64
  %i.dz = ptrtoint ptr %i.dt to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp eq i64 %i.ea, %i.dx
  br i1 %i.eb, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %.not12.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not12.i.i.i.i, label %.loopexit232, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.ad, align 8, !tbaa !71
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %.lr.ph.i.i.preheader.i.i
  %.015.i.i.i.i = phi i64 [ %i.ei, %bb.aj ], [ %i.dx, %.lr.ph.i.i.preheader.i.i ]
  %.0814.i.i.i.i = phi ptr [ %i.eh, %bb.aj ], [ %i.ec, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.0913.i.i.i.i = phi ptr [ %i.eg, %bb.aj ], [ %i.dt, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ed = load i8, ptr %.0913.i.i.i.i, align 1, !tbaa !69
  %i.ee = load i8, ptr %.0814.i.i.i.i, align 1, !tbaa !69
  %i.ef = icmp eq i8 %i.ed, %i.ee
  br i1 %i.ef, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i, i64 1
  %i.ei = add i64 %.015.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i.i, label %.loopexit232, label %.lr.ph.i.i.i.i, !llvm.loop !2

bb.ak:                                            ; preds = %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

.loopexit:                                        ; preds = %bb.ah, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !71 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.el, ptr %i.ep, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store ptr %i.es, ptr %i.er, align 8, !tbaa !66
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i64 0, ptr %i.et, align 8, !tbaa !68
  store i8 0, ptr %i.es, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime12format_errorE, i64 16), ptr %24, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %23, ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull @.str.249)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %.loopexit
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %22, ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %21, ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull @.str.250)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !676 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.37.0290
  store ptr %i.eu, ptr %25, align 8, !tbaa !63, !alias.scope !676
  %i.ew = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !64, !alias.scope !676
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %20, ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime12format_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %20) #32
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %.loopexit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ar:                                            ; preds = %bb.al
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %bb.am
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %bb.an
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %20) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn50 = phi { ptr, i32 } [ %i.fb, %bb.au ], [ %i.fa, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.av ], [ %i.ez, %bb.as ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.aw ], [ %i.ey, %bb.ar ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aq
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.ax ], [ %i.ex, %bb.aq ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.dg

.loopexit232:                                     ; preds = %bb.aj, %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.store.select.i90, i64 %i.dx ; 2 uses
  %.not.i94.not = icmp ugt ptr %i.ao, %i.fc
  br i1 %.not.i94.not, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104, label %.preheader.i96

.preheader.i96:                                   ; preds = %.loopexit232
  %i.fd = add i64 %.sroa.0174.0288, -1            ; 4 uses
  %i.fe = icmp ult i64 %.sroa.22.0289, %i.fd
  br i1 %i.fe, label %.lr.ph.i98, label %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101

.lr.ph.i98:                                       ; preds = %.preheader.i96
  %i.ff = shl i64 %.sroa.22.0289, 3
  %scevgep.i99 = getelementptr i8, ptr %2, i64 %i.ff ; 2 uses
  %scevgep5.i100 = getelementptr i8, ptr %scevgep.i99, i64 8
  %i.fg = sub nuw i64 %i.fd, %.sroa.22.0289
  %i.fh = shl nuw i64 %i.fg, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i99, ptr align 8 %scevgep5.i100, i64 %i.fh, i1 false), !tbaa !89
  br label %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101

_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101: ; preds = %.preheader.i96, %.lr.ph.i98
  %i.fi = load ptr, ptr %i.am, align 8, !tbaa !89 ; 3 uses
  %i.fj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fi) #33 ; 3 uses
  %i.fk = icmp eq i64 %.sroa.22.0289, %i.fd
  br i1 %i.fk, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104.thread, label %bb.az

bb.az:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  br label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104

_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104: ; preds = %bb.az, %.loopexit232
  %.sroa.13.0 = phi ptr [ %i.ao, %.loopexit232 ], [ %i.fl, %bb.az ] ; 2 uses
  %.sroa.0148.0 = phi ptr [ %i.fc, %.loopexit232 ], [ %i.fi, %bb.az ] ; 2 uses
  %.sroa.0174.1 = phi i64 [ %.sroa.0174.0288, %.loopexit232 ], [ %i.fd, %bb.az ] ; 2 uses
  %.sroa.37.1 = phi i64 [ %.sroa.37.0290, %.loopexit232 ], [ %i.fj, %bb.az ] ; 2 uses
  %i.fm = icmp eq ptr %.sroa.13.0, %.sroa.0148.0
  br i1 %i.fm, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104.thread, label %bb.by

_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104.thread: ; preds = %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104
  %.sroa.37.1223 = phi i64 [ %.sroa.37.1, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ %i.fj, %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101 ]
  %.sroa.0174.1222 = phi i64 [ %.sroa.0174.1, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ %.sroa.22.0289, %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !71 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !68
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %i.fo, ptr %i.fs, align 8, !tbaa !63
  %i.ft = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !66
  %i.fw = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 0, ptr %i.fw, align 8, !tbaa !68
  store i8 0, ptr %i.fv, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime12format_errorE, i64 16), ptr %30, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull @.str.251)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104.thread
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %27, ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull @.str.250)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.fx = icmp eq i64 %.sroa.22.0289, %.sroa.0174.1222
  br i1 %i.fx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !677 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.37.1223
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink1.i105 = phi ptr [ %i.fy, %bb.bd ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.bc ]
  %.sink.i106 = phi ptr [ %i.fz, %bb.bd ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.bc ]
  store ptr %.sink1.i105, ptr %31, align 8, !tbaa !63, !alias.scope !677
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sink.i106, ptr %i.ga, align 8, !tbaa !64, !alias.scope !677
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %26, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime12format_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %26) #32
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104.thread
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bi:                                            ; preds = %bb.ba
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bb
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.be
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bf
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn62 = phi { ptr, i32 } [ %i.gf, %bb.bl ], [ %i.ge, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #30
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.bm ], [ %i.gd, %bb.bj ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bi
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.bn ], [ %i.gc, %bb.bi ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %29) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bh
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %bb.bo ], [ %i.gb, %bb.bh ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.dg

bb.bq:                                            ; preds = %bb.ag
  %i.gg = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.br, label %bb.by

bb.br:                                            ; preds = %bb.bq
  br i1 %.not.i89.not, label %bb.by, label %.preheader.i108

.preheader.i108:                                  ; preds = %bb.br
  %i.gi = add i64 %.sroa.0174.0288, -1            ; 4 uses
  %i.gj = icmp ult i64 %.sroa.22.0289, %i.gi
  br i1 %i.gj, label %.lr.ph.i110, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit119

.lr.ph.i110:                                      ; preds = %.preheader.i108
  %i.gk = shl i64 %.sroa.22.0289, 3
  %scevgep.i111 = getelementptr i8, ptr %2, i64 %i.gk ; 2 uses
  %scevgep5.i112 = getelementptr i8, ptr %scevgep.i111, i64 8
  %i.gl = sub nuw i64 %i.gi, %.sroa.22.0289
  %i.gm = shl nuw i64 %i.gl, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i111, ptr align 8 %scevgep5.i112, i64 %i.gm, i1 false), !tbaa !89
  br label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit119

_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit119: ; preds = %.lr.ph.i110, %.preheader.i108
  %i.gn = load ptr, ptr %i.am, align 8, !tbaa !89 ; 3 uses
  %i.go = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #33 ; 2 uses
  %i.gp = icmp eq i64 %.sroa.22.0289, %i.gi       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  %spec.select = select i1 %i.gp, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.gn ; 2 uses
  %spec.select446 = select i1 %i.gp, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.gq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %32, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %33, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  store <2 x ptr> <ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE>, ptr %34, align 16, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %spec.select, ptr %35, align 8, !tbaa !63
  store ptr %spec.select446, ptr %i.ac, align 8, !tbaa !64
  %i.gr = invoke noundef zeroext i1 @_ZN5boost7runtime3cla6parser21validate_token_formatENS_9unit_test13basic_cstringIKcEERS6_S7_S7_Rb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit119
  br i1 %i.gr, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.gs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN5boost9unit_test13basic_cstringIKcEENS0_10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESt4lessIS4_ESaISt4pairIKS4_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !183
  %.not230 = icmp eq ptr %i.gt, null
  br i1 %.not230, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bt, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit119
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.dg

bb.bw:                                            ; preds = %bb.bu, %bb.bs
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bu, %bb.bw
  %.sroa.13.1 = phi ptr [ %i.ao, %bb.bu ], [ %spec.select446, %bb.bw ]
  %.sroa.0148.1 = phi ptr [ %i.ao, %bb.bu ], [ %spec.select, %bb.bw ]
  %i.gv = phi i1 [ true, %bb.bu ], [ false, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.by

bb.by:                                            ; preds = %bb.bq, %bb.bx, %bb.br, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104
  %.sroa.13.2 = phi ptr [ %.sroa.13.0, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.bq ], [ %.sroa.13.1, %bb.bx ], [ %i.ao, %bb.br ]
  %.sroa.0148.2 = phi ptr [ %.sroa.0148.0, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.bq ], [ %.sroa.0148.1, %bb.bx ], [ %i.dr, %bb.br ]
  %.sroa.0174.2 = phi i64 [ %.sroa.0174.1, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ %.sroa.0174.0288, %bb.bq ], [ %i.gi, %bb.bx ], [ %.sroa.0174.0288, %bb.br ] ; 4 uses
  %.sroa.37.2 = phi i64 [ %.sroa.37.1, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ %.sroa.37.0290, %bb.bq ], [ %i.go, %bb.bx ], [ %.sroa.37.0290, %bb.br ] ; 2 uses
  %.1 = phi i1 [ false, %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit104 ], [ false, %bb.bq ], [ %i.gv, %bb.bx ], [ false, %bb.br ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !71 ; 4 uses
  %i.gy = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not13.i.i.i.i, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread, label %.lr.ph.i.i.i.i120

.lr.ph.i.i.i.i120:                                ; preds = %bb.by
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !68
  %.fr.i.i.i = freeze i64 %i.ha                   ; 8 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i64 %.fr.i.i.i, 0 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i120, %.lr.ph.i.split.us.i.i.i
  %.015.i.us.i.i.i = phi ptr [ %.1.i.us.i.i.i, %.lr.ph.i.split.us.i.i.i ], [ %i.gy, %.lr.ph.i.i.i.i120 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.015.i.us.i.i.i, i64 16
  %.1.i.us.i.i.i = load ptr, ptr %i.hb, align 8, !tbaa !80 ; 2 uses
  %.not.i.us.i.i.i = icmp eq ptr %.1.i.us.i.i.i, null
  br i1 %.not.i.us.i.i.i, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.split.us.i.i.i, !llvm.loop !1

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i120, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i
  %.015.i.i.i.i121 = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i ], [ %i.gy, %.lr.ph.i.i.i.i120 ] ; 6 uses
  %.0814.i.i.i.i122 = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i120 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i121, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i121, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !64
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !63 ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hi, %.fr.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.split.i.i.i
  %i.hj = icmp ult i64 %i.hi, %.fr.i.i.i
  br i1 %i.hj, label %bb.ca, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.split.i.i.i, %bb.bz
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.hp, %bb.bz ], [ %.fr.i.i.i, %.lr.ph.i.split.i.i.i ]
  %.0814.i.i.i.i.i.i.i = phi ptr [ %i.ho, %bb.bz ], [ %i.gx, %.lr.ph.i.split.i.i.i ] ; 2 uses
  %.0913.i.i.i.i.i.i.i = phi ptr [ %i.hn, %bb.bz ], [ %i.hf, %.lr.ph.i.split.i.i.i ] ; 2 uses
  %i.hk = load i8, ptr %.0913.i.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.hl = load i8, ptr %.0814.i.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.hm = icmp eq i8 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bz, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i, i64 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i, i64 1
  %i.hp = add i64 %.015.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hq = icmp slt i8 %i.hk, %i.hl
  br i1 %i.hq, label %bb.ca, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i

bb.ca:                                            ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i, %.split.i.i.i.i
  br label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i: ; preds = %bb.bz, %bb.ca, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i, %.split.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 24, %bb.ca ], [ 16, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i ], [ 16, %.split.i.i.i.i ], [ 16, %bb.bz ]
  %.19.i.i.i.i = phi ptr [ %.0814.i.i.i.i122, %bb.ca ], [ %.015.i.i.i.i121, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i ], [ %.015.i.i.i.i121, %.split.i.i.i.i ], [ %.015.i.i.i.i121, %bb.bz ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i121, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.hr, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i123, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.split.i.i.i, !llvm.loop !1

_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i, %.lr.ph.i.split.us.i.i.i
  %.us-phi.i.i.i = phi ptr [ %.015.i.us.i.i.i, %.lr.ph.i.split.us.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i ] ; 3 uses
  %i.hs = icmp eq ptr %.us-phi.i.i.i, %i.af
  br i1 %i.hs, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %.us-phi.i.i.i, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !64
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !63 ; 2 uses
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.fr.i.i.i, %i.hz
  br i1 %.not.i.i.i.i.i, label %bb.cc, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.cb
  %i.ia = icmp ult i64 %.fr.i.i.i, %i.hz
  br i1 %i.ia, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cc, %bb.cd
  %.015.i.i.i.i.i.i = phi i64 [ %i.ig, %bb.cd ], [ %.fr.i.i.i, %bb.cc ]
  %.0814.i.i.i.i.i.i = phi ptr [ %i.if, %bb.cd ], [ %i.hw, %bb.cc ] ; 2 uses
  %.0913.i.i.i.i.i.i = phi ptr [ %i.ie, %bb.cd ], [ %i.gx, %bb.cc ] ; 2 uses
  %i.ib = load i8, ptr %.0913.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.ic = load i8, ptr %.0814.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.id = icmp eq i8 %i.ib, %i.ic
  br i1 %i.id, label %bb.cd, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i, i64 1
  %i.if = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i, i64 1
  %i.ig = add i64 %.015.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i.i3.i.i.i, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ih = icmp slt i8 %i.ib, %i.ic
  br i1 %i.ih, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit

_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit: ; preds = %bb.cd, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i, %bb.cc, %.split.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cn, i64 169
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !119, !range !83, !noundef !84
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  %i.il = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.fr.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.gx, ptr %i.im, align 8, !tbaa !63
  %i.in = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %i.il, ptr %i.in, align 8, !tbaa !64
  %i.io = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 2 uses
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !66
  %i.iq = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 0, ptr %i.iq, align 8, !tbaa !68
  store i8 0, ptr %i.ip, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime13duplicate_argE, i64 16), ptr %40, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_13duplicate_argENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::duplicate_arg") align 8 %39, ptr noundef nonnull align 8 dereferenceable(56) %40, ptr noundef nonnull @.str.252)
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_13duplicate_argENS0_11input_errorEElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::duplicate_arg") align 8 %38, ptr noundef nonnull align 8 dereferenceable(56) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.ir)
          to label %bb.cg unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_13duplicate_argENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::duplicate_arg") align 8 %37, ptr noundef nonnull align 8 dereferenceable(56) %38, ptr noundef nonnull @.str.250)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.is = icmp eq i64 %.sroa.22.0289, %.sroa.0174.2
  br i1 %i.is, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.it = load ptr, ptr %i.am, align 8, !tbaa !89, !noalias !678 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.37.2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink1.i124 = phi ptr [ %i.it, %bb.ci ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.ch ]
  %.sink.i125 = phi ptr [ %i.iu, %bb.ci ], [ @_ZN5boost9unit_test13basic_cstringIKcE4nullE, %bb.ch ]
  store ptr %.sink1.i124, ptr %41, align 8, !tbaa !63, !alias.scope !678
  %i.iv = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %.sink.i125, ptr %i.iv, align 8, !tbaa !64, !alias.scope !678
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_13duplicate_argENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::duplicate_arg") align 8 %36, ptr noundef nonnull align 8 dereferenceable(56) %37, ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime13duplicate_argEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %36) #32
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %bb.ce
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cn:                                            ; preds = %bb.cf
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.co:                                            ; preds = %bb.cg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cj
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %36) #30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn56 = phi { ptr, i32 } [ %i.ja, %bb.cq ], [ %i.iz, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #30
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.cr ], [ %i.iy, %bb.co ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #30
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cn
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.cs ], [ %i.ix, %bb.cn ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %39) #30
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cm
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn, %bb.ct ], [ %i.iw, %bb.cm ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.dg

_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread: ; preds = %bb.by, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i, %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %.split.i.i.i, %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit
  store ptr %.sroa.0148.2, ptr %42, align 8, !tbaa !63
  store ptr %.sroa.13.2, ptr %i.ag, align 8, !tbaa !64
  %i.jb = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !84
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = load ptr, ptr %i.cn, align 8, !tbaa !74
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(232) %i.cn, ptr noundef nonnull align 8 dead_on_return %42, i1 noundef zeroext %i.jc, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.cv unwind label %bb.ak

bb.cv:                                            ; preds = %_ZNK5boost7runtime15arguments_store3hasENS_9unit_test13basic_cstringIKcEE.exit.thread
  %i.jg = icmp eq i64 %.sroa.22.0289, %.sroa.0174.2
  %or.cond = or i1 %i.jg, %.1
  br i1 %or.cond, label %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit132, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.cv
  %i.jh = add i64 %.sroa.0174.2, -1               ; 3 uses
  %i.ji = icmp ult i64 %.sroa.22.0289, %i.jh
  br i1 %i.ji, label %.lr.ph.i129, label %._crit_edge.i128

.lr.ph.i129:                                      ; preds = %.preheader.i127
  %i.jj = shl i64 %.sroa.22.0289, 3
  %scevgep.i130 = getelementptr i8, ptr %2, i64 %i.jj ; 2 uses
  %scevgep5.i131 = getelementptr i8, ptr %scevgep.i130, i64 8
  %i.jk = sub nuw i64 %i.jh, %.sroa.22.0289
  %i.jl = shl nuw i64 %i.jk, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i130, ptr align 8 %scevgep5.i131, i64 %i.jl, i1 false), !tbaa !89
  br label %._crit_edge.i128

._crit_edge.i128:                                 ; preds = %.lr.ph.i129, %.preheader.i127
  %i.jm = load ptr, ptr %i.am, align 8, !tbaa !89
  %i.jn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jm) #33
  br label %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit132

_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit132: ; preds = %._crit_edge.i128, %bb.cv
  %.sroa.0174.3 = phi i64 [ %.sroa.0174.2, %bb.cv ], [ %i.jh, %._crit_edge.i128 ]
  %.sroa.37.3 = phi i64 [ %.sroa.37.2, %bb.cv ], [ %i.jn, %._crit_edge.i128 ]
  br i1 %.not.i.i86, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit132
  %i.jo = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jp = atomicrmw add ptr %i.jo, i32 -1 acq_rel, align 4
  %i.jq = icmp eq i32 %i.jp, 1
  br i1 %i.jq, label %bb.cx, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit

bb.cx:                                            ; preds = %bb.cw
  %i.jr = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #30, !inline_history !7
  %i.ju = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.jv = atomicrmw add ptr %i.ju, i32 -1 acq_rel, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %bb.cy, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit

bb.cy:                                            ; preds = %bb.cx
  %i.jx = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #30, !inline_history !8
  br label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit

_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit: ; preds = %_ZN5boost7runtime3cla14argv_traverser10next_tokenEv.exit132, %bb.cw, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ka = load ptr, ptr %i.y, align 8, !tbaa !78  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = atomicrmw add ptr %i.kb, i32 -1 acq_rel, align 4
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.da, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i

bb.da:                                            ; preds = %bb.cz
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !74
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #30, !inline_history !673
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.ki = atomicrmw add ptr %i.kh, i32 -1 acq_rel, align 4
  %i.kj = icmp eq i32 %i.ki, 1
  br i1 %i.kj, label %bb.db, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i

bb.db:                                            ; preds = %bb.da
  %i.kk = load ptr, ptr %i.ka, align 8, !tbaa !74
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #30, !inline_history !674
  br label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i

_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i: ; preds = %bb.db, %bb.da, %bb.cz, %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit
  %i.kn = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.ah
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i
  %i.kp = load i64, ptr %i.ah, align 8, !tbaa !69
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.kr = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.aj
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.kt = load i64, ptr %i.aj, align 8, !tbaa !69
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.kv = load ptr, ptr %11, align 8, !tbaa !71   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.ak
  br i1 %i.kw, label %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.kx = load i64, ptr %i.ak, align 8, !tbaa !69
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #34
  br label %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit

_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !78
  br label %_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit

_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit: ; preds = %bb.h, %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit, %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit
  %i.kz = phi ptr [ %.pre, %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit ], [ %i.ay, %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit ], [ %i.ay, %bb.h ] ; 7 uses
  %.sroa.0174.4 = phi i64 [ %.sroa.0174.3, %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit ], [ %.sroa.0174.0288, %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit ], [ %.sroa.0174.0288, %bb.h ] ; 3 uses
  %.sroa.22.1 = phi i64 [ %.sroa.22.0289, %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit ], [ %.sroa.0174.0288, %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit ], [ %i.bl, %bb.h ] ; 2 uses
  %.sroa.37.4 = phi i64 [ %.sroa.37.3, %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev.exit ], [ %.sroa.37.0290, %_ZN5boost7runtime3cla13rt_cla_detailL20report_foreing_tokenENS_9unit_test13basic_cstringIKcEES6_.exit ], [ %i.bp, %bb.h ]
  %.not.i.i134 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i134, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = atomicrmw add ptr %i.la, i32 -1 acq_rel, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.ld = load ptr, ptr %i.kz, align 8, !tbaa !74
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #30, !inline_history !5
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.lh = atomicrmw add ptr %i.lg, i32 -1 acq_rel, align 4
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.lj = load ptr, ptr %i.kz, align 8, !tbaa !74
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #30, !inline_history !6
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %_ZN5boost7runtime3cla14argv_traverser10save_tokenEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.lm = icmp eq i64 %.sroa.22.1, %.sroa.0174.4
  br i1 %i.lm, label %.loopexit233, label %_ZN5boost7runtime3cla14argv_traverser13current_tokenEv.exit

bb.dg:                                            ; preds = %bb.ak, %bb.ay, %bb.bp, %bb.cu, %bb.bv, %bb.ad
  %.pn62.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ad ], [ %.pn62.pn.pn.pn, %bb.bp ], [ %i.ej, %bb.ak ], [ %.pn56.pn.pn.pn, %bb.cu ], [ %i.gu, %bb.bv ], [ %.pn50.pn.pn.pn, %bb.ay ]
  call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %11) #30
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.r
  %.pn62.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn, %bb.dg ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.i
  %.pn62.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn.pn, %bb.dh ], [ %i.bq, %bb.i ]
  call void @_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn.pn.pn.pn.pn

.loopexit233:                                     ; preds = %bb.df, %bb.d, %.thread
  %.sroa.0174.6 = phi i64 [ %i.aq, %.thread ], [ 1, %bb.d ], [ %.sroa.0174.4, %bb.df ]
  %i.ln = trunc i64 %.sroa.0174.6 to i32
  ret i32 %i.ln
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7runtime18finalize_argumentsERKNS0_16parameters_storeERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %3 = alloca %"class.boost::shared_ptr.36", align 8 ; 6 uses
  %4 = alloca %"class.boost::runtime::missing_req_arg", align 8 ; 5 uses
  %5 = alloca %"class.boost::runtime::missing_req_arg", align 8 ; 5 uses
  %6 = alloca %"class.boost::runtime::missing_req_arg", align 8 ; 5 uses
  %7 = alloca %"class.boost::runtime::missing_req_arg", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit
  %.sroa.0131.0167 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.fl, %_ZN5boost10shared_ptrINS_7runtime11basic_paramEED2Ev.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0131.0167, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0131.0167, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !186  ; 10 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !186
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !78   ; 9 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.l, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit

_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit: ; preds = %.preheader, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 7 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !57   ; 8 uses
  %.not13.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not13.i.i.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2ERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68
  %.fr.i.i.i = freeze i64 %i.s                    ; 10 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i64 %.fr.i.i.i, 0 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.split.us.i.i.i
  %.015.i.us.i.i.i = phi ptr [ %.1.i.us.i.i.i, %.lr.ph.i.split.us.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i.us.i.i.i, i64 16
  %.1.i.us.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !80 ; 2 uses
  %.not.i.us.i.i.i = icmp eq ptr %.1.i.us.i.i.i, null
  br i1 %.not.i.us.i.i.i, label %_ZNKSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS0_10shared_ptrINS0_7runtime8argumentEEEESt10_Select1stISB_ESt4lessIS4_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.split.us.i.i.i, !llvm.loop !1

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i ] ; 6 uses
  %.0814.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, %.fr.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.split.i.i.i
  %i.ab = icmp ult i64 %i.aa, %.fr.i.i.i
  br i1 %i.ab, label %bb.d, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.split.i.i.i, %bb.c
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.c ], [ %.fr.i.i.i, %.lr.ph.i.split.i.i.i ]
  %.0814.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.p, %.lr.ph.i.split.i.i.i ] ; 2 uses
  %.0913.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.c ], [ %i.x, %.lr.ph.i.split.i.i.i ] ; 2 uses
  %i.ac = load i8, ptr %.0913.i.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.ad = load i8, ptr %.0814.i.i.i.i.i.i.i, align 1, !tbaa !69 ; 2 uses
  %i.ae = icmp eq i8 %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i.i.i.i, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i.i.i.i, i64 1
  %i.ah = add i64 %.015.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = icmp slt i8 %i.ac, %i.ad
  br i1 %i.ai, label %bb.d, label %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.thread.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EEC2INS_3nfp23named_parameter_combineINS7_15named_parameterIKNS2_13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSD_EENS8_INS9_IKSt16initializer_listISt4pairISD_S3_EENSE_13enum_values_tERSM_EENS8_INS9_IKS3_NSE_15default_value_tERSQ_EENS8_INS9_ISD_NSE_9env_var_tESG_EENS9_ISD_NSE_13description_tESG_EEEEEEEEEEEESC_RKT_:bb.a
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.ac)
          to label %.noexc31.i.i unwind label %bb.r ; 0 uses

.noexc31.i.i:                                     ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SZ_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !66, !alias.scope !765
  %i.af = load ptr, ptr %6, align 8, !tbaa !71, !noalias !765 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %.noexc31.i.i
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !68, !noalias !765 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc31.i.i
  store ptr %i.af, ptr %i.p, align 8, !tbaa !71, !alias.scope !765
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !69, !noalias !765
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !69, !alias.scope !765
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !68, !noalias !765
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.al = phi i64 [ %i.ah, %bb.h ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !68, !alias.scope !765
  store ptr %i.q, ptr %6, align 8, !tbaa !71, !noalias !765
  store i64 0, ptr %i.r, align 8, !tbaa !68, !noalias !765
  store i8 0, ptr %i.q, align 8, !tbaa !69, !noalias !765
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !68
  store i8 0, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val26.i.i = load ptr, ptr %i.aq, align 8      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val27.i.i = load i8, ptr %i.ar, align 8, !tbaa !95, !range !83, !noundef !84
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.as = trunc nuw i8 %.val27.i.i to i1
  br i1 %i.as, label %bb.i, label %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SH_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.at = load atomic i8, ptr @_ZGVZN5boost3nfp3nil4instEvE6s_inst acquire, align 8, !noalias !766
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.j, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i, !prof !217

bb.j:                                             ; preds = %bb.i
  %i.av = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30, !noalias !766
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30, !noalias !766
  br label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i

_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i:        ; preds = %bb.k, %bb.j, %bb.i
  invoke void @_ZN5boost3nfp10nfp_detail34report_access_to_invalid_parameterEb(i1 noundef zeroext true)
          to label %.noexc35.i.i unwind label %bb.s

.noexc35.i.i:                                     ; preds = %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i
  unreachable

_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SH_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aw = load ptr, ptr %.val26.i.i, align 8, !tbaa !63, !noalias !766 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64, !noalias !766
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.bb)
          to label %.noexc36.i.i unwind label %bb.s ; 0 uses

.noexc36.i.i:                                     ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SH_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !66, !alias.scope !766
  %i.be = load ptr, ptr %7, align 8, !tbaa !71, !noalias !766 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ao
  br i1 %i.bf, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i

bb.l:                                             ; preds = %.noexc36.i.i
  %i.bg = load i64, ptr %i.ap, align 8, !tbaa !68, !noalias !766 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i: ; preds = %.noexc36.i.i
  store ptr %i.be, ptr %i.an, align 8, !tbaa !71, !alias.scope !766
  %i.bj = load i64, ptr %i.ao, align 8, !tbaa !69, !noalias !766
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !69, !alias.scope !766
  %.pre.i34.i.i = load i64, ptr %i.ap, align 8, !tbaa !68, !noalias !766
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i, %bb.l
  %i.bk = phi i64 [ %i.bg, %bb.l ], [ %.pre.i34.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !68, !alias.scope !766
  store ptr %i.ao, ptr %7, align 8, !tbaa !71, !noalias !766
  store i64 0, ptr %i.ap, align 8, !tbaa !68, !noalias !766
  store i8 0, ptr %i.ao, align 8, !tbaa !69, !noalias !766
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.bn, ptr %8, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !68
  store i8 0, ptr %i.bn, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val28.i.i = load ptr, ptr %i.bp, align 8      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val29.i.i = load i8, ptr %i.bq, align 8, !tbaa !93, !range !83, !noundef !84
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.br = trunc nuw i8 %.val29.i.i to i1
  br i1 %i.br, label %bb.m, label %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SX_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i
  %i.bs = load atomic i8, ptr @_ZGVZN5boost3nfp3nil4instEvE6s_inst acquire, align 8, !noalias !767
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i, !prof !217

bb.n:                                             ; preds = %bb.m
  %i.bu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30, !noalias !767
  %.not.i.i.i.i.i43.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i43.i.i, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30, !noalias !767
  br label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i

_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i:      ; preds = %bb.o, %bb.n, %bb.m
  invoke void @_ZN5boost3nfp10nfp_detail34report_access_to_invalid_parameterEb(i1 noundef zeroext true)
          to label %.noexc44.i.i unwind label %bb.t

.noexc44.i.i:                                     ; preds = %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i
  unreachable

_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SX_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i
  %i.bv = load ptr, ptr %.val28.i.i, align 8, !tbaa !63, !noalias !767 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !64, !noalias !767
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.ca)
          to label %.noexc45.i.i unwind label %bb.t ; 0 uses

.noexc45.i.i:                                     ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SX_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  store ptr %i.cc, ptr %i.bm, align 8, !tbaa !66, !alias.scope !767
  %i.cd = load ptr, ptr %8, align 8, !tbaa !71, !noalias !767 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bn
  br i1 %i.ce, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i

bb.p:                                             ; preds = %.noexc45.i.i
  %i.cf = load i64, ptr %i.bo, align 8, !tbaa !68, !noalias !767 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.ch, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i: ; preds = %.noexc45.i.i
  store ptr %i.cd, ptr %i.bm, align 8, !tbaa !71, !alias.scope !767
  %i.ci = load i64, ptr %i.bn, align 8, !tbaa !69, !noalias !767
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !69, !alias.scope !767
  %.pre.i41.i.i = load i64, ptr %i.bo, align 8, !tbaa !68, !noalias !767
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i, %bb.p
  %i.cj = phi i64 [ %i.cf, %bb.p ], [ %.pre.i41.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !68, !alias.scope !767
  store ptr %i.bn, ptr %8, align 8, !tbaa !71, !noalias !767
  store i64 0, ptr %i.bo, align 8, !tbaa !68, !noalias !767
  store i8 0, ptr %i.bn, align 8, !tbaa !69, !noalias !767
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !66, !alias.scope !768
  store i8 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.cp, align 8, !tbaa !68, !alias.scope !768
  store ptr %i.cm, ptr %9, align 8, !tbaa !71, !noalias !768
  store i64 0, ptr %i.cn, align 8, !tbaa !68, !noalias !768
  store i8 0, ptr %i.cm, align 8, !tbaa !69, !noalias !768
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.cq, align 8, !tbaa !190
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 0, ptr %i.cr, align 1, !tbaa !119
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 0, ptr %i.cs, align 2, !tbaa !189
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val.i.i = load i8, ptr %i.ct, align 8, !tbaa !143, !range !83, !noundef !84
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 171
  %11 = xor i8 %.val.i.i, 1
  store i8 %11, ptr %10, align 1, !tbaa !189
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.cu, align 8, !tbaa !99, !alias.scope !769
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cw = load <2 x ptr>, ptr @_ZN5boost7runtimeL11help_prefixE, align 16, !tbaa !89
  store <2 x ptr> %i.cw, ptr %3, align 16, !tbaa !89
  store ptr %.0.val, ptr %4, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.8.val, ptr %i.cx, align 8, !tbaa !64
  store ptr @.str.202, ptr %5, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.202, i64 1), ptr %i.cy, align 8, !tbaa !64
  invoke void @_ZN5boost7runtime11basic_param15add_cla_id_implENS_9unit_test13basic_cstringIKcEES5_S5_bb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZN5boost7runtime11basic_paramC2INS_3nfp23named_parameter_combineINS3_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSA_EENS4_INS5_IKSt16initializer_listISt4pairISA_NS6_13output_formatEEENSB_13enum_values_tERSK_EENS4_INS5_IKSH_NSB_15default_value_tERSO_EENS4_INS5_ISA_NSB_9env_var_tESD_EENS5_ISA_NSB_13description_tESD_EEEEEEEEEEEES9_bbRKT_.exit.i unwind label %bb.u

bb.r:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SZ_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.q
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %bb.r
  %i.dc = load i64, ptr %i.q, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.sink.split

bb.s:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SH_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ao
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i: ; preds = %bb.s
  %i.dg = load i64, ptr %i.ao, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.sink.split

bb.t:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_IKSt16initializer_listISt4pairISE_NSA_13output_formatEEENSG_13enum_values_tERSP_EENS8_INS9_IKSM_NSG_15default_value_tERST_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEEEENS0_13typed_keywordISD_SX_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKS18_S19_.exit.i.i.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i42.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bn
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %bb.t
  %i.dk = load i64, ptr %i.bn, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.sink.split

bb.u:                                             ; preds = %bb.q
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cv) #30
  call void @_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.cu) #30
  %i.dm = load ptr, ptr %i.cl, align 8, !tbaa !71 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.co
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i: ; preds = %bb.u
  %i.do = load i64, ptr %i.co, align 8, !tbaa !69
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i
  %i.dq = load ptr, ptr %i.bm, align 8, !tbaa !71 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cc
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i
  %i.ds = load i64, ptr %i.cc, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i
  %.sink34 = phi i64 [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i ]
  %.sink = phi ptr [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i ]
  %.pn.pn.pn.i.i.ph = phi { ptr, i32 } [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i ]
  %i.dt = add i64 %.sink34, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, %bb.t
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.dh, %bb.t ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ], [ %.pn.pn.pn.i.i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.sink.split ] ; 2 uses
  %i.du = load ptr, ptr %i.an, align 8, !tbaa !71 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bd
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i
  %i.dw = load i64, ptr %i.bd, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i
  %.sink37 = phi i64 [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i ]
  %.sink35 = phi ptr [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i ]
  %.pn.pn.pn.pn.i.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i.i ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i ]
  %i.dx = add i64 %.sink37, 1
  call void @_ZdlPvm(ptr noundef %.sink35, i64 noundef %i.dx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %bb.s
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.dd, %bb.s ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i ], [ %.pn.pn.pn.pn.i.i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.sink.split ] ; 2 uses
  %i.dy = load ptr, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.ae
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i
  %i.ea = load i64, ptr %i.ae, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i
  %.sink40 = phi i64 [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i ]
  %.sink38 = phi ptr [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i ]
  %.pn.pn.pn.pn.pn.i.i.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i ]
  %i.eb = add i64 %.sink40, 1
  call void @_ZdlPvm(ptr noundef %.sink38, i64 noundef %i.eb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i, %bb.r
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %.pn.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i ], [ %.pn.pn.pn.pn.pn.i.i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i.sink.split ] ; 2 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.c
  br i1 %i.ed, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !69
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #34
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i, %.body.i, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp41, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit ], [ %.pn.i, %.body.i ], [ %.pn.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i ], [ %.pn.pn.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost7runtime11basic_paramC2INS_3nfp23named_parameter_combineINS3_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSA_EENS4_INS5_IKSt16initializer_listISt4pairISA_NS6_13output_formatEEENSB_13enum_values_tERSK_EENS4_INS5_IKSH_NSB_15default_value_tERSO_EENS4_INS5_ISA_NSB_9env_var_tESD_EENS5_ISA_NSB_13description_tESD_EEEEEEEEEEEES9_bbRKT_.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.val5.i.i = load i8, ptr %i.eh, align 8, !tbaa !146, !range !83, !noundef !84
  %i.ei = trunc nuw i8 %.val5.i.i to i1
  br i1 %i.ei, label %bb.v, label %_ZNK5boost3nfp23named_parameter_combineINS0_15named_parameterIKSt16initializer_listISt4pairIKNS_9unit_test13basic_cstringIKcEENS5_13output_formatEEENS_7runtime12_GLOBAL__N_113enum_values_tERSD_EENS1_INS2_IKSA_NSF_15default_value_tERSJ_EENS1_INS2_IS9_NSF_9env_var_tERS9_EENS2_IS9_NSF_13description_tESO_EEEEEEEixENS0_7keywordISG_Lb0EEE.exit.i.i.i

bb.v:                                             ; preds = %_ZN5boost7runtime11basic_paramC2INS_3nfp23named_parameter_combineINS3_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSA_EENS4_INS5_IKSt16initializer_listISt4pairISA_NS6_13output_formatEEENSB_13enum_values_tERSK_EENS4_INS5_IKSH_NSB_15default_value_tERSO_EENS4_INS5_ISA_NSB_9env_var_tESD_EENS5_ISA_NSB_13description_tESD_EEEEEEEEEEEES9_bbRKT_.exit.i
  %i.ej = load atomic i8, ptr @_ZGVZN5boost3nfp3nil4instEvE6s_inst acquire, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.w, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i16.i, !prof !217

bb.w:                                             ; preds = %bb.v
  %i.el = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30
  %.not.i.i.i.i.i17.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i.i.i17.i, label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i16.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost3nfp3nil4instEvE6s_inst) #30
  br label %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i16.i

_ZN5boost3nfp3nil4instEv.exit.i.i.i.i16.i:        ; preds = %bb.x, %bb.w, %bb.v
  invoke void @_ZN5boost3nfp10nfp_detail34report_access_to_invalid_parameterEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i16.i
  unreachable

_ZNK5boost3nfp23named_parameter_combineINS0_15named_parameterIKSt16initializer_listISt4pairIKNS_9unit_test13basic_cstringIKcEENS5_13output_formatEEENS_7runtime12_GLOBAL__N_113enum_values_tERSD_EENS1_INS2_IKSA_NSF_15default_value_tERSJ_EENS1_INS2_IS9_NSF_9env_var_tERS9_EENS2_IS9_NSF_13description_tESO_EEEEEEEixENS0_7keywordISG_Lb0EEE.exit.i.i.i: ; preds = %_ZN5boost7runtime11basic_paramC2INS_3nfp23named_parameter_combineINS3_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSA_EENS4_INS5_IKSt16initializer_listISt4pairISA_NS6_13output_formatEEENSB_13enum_values_tERSK_EENS4_INS5_IKSH_NSB_15default_value_tERSO_EENS4_INS5_ISA_NSB_9env_var_tESD_EENS5_ISA_NSB_13description_tESD_EEEEEEEEEEEES9_bbRKT_.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val.i13.i = load ptr, ptr %i.em, align 8      ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.val.i13.i, align 8, !tbaa !770 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i13.i, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !96 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  store i32 0, ptr %i.en, align 8, !tbaa !70
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.eo, align 8, !tbaa !57
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.en, ptr %i.ep, align 8, !tbaa !59
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.en, ptr %i.eq, align 8, !tbaa !60
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.er, align 8, !tbaa !58
  %.idx.i.i.i.i = mul nuw nsw i64 %.sroa.2.0.copyload.i.i.i, 24
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.idx.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.eg, ptr %2, align 8, !tbaa !123
  %.not6.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not6.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost3nfp23named_parameter_combineINS0_15named_parameterIKSt16initializer_listISt4pairIKNS_9unit_test13basic_cstringIKcEENS5_13output_formatEEENS_7runtime12_GLOBAL__N_113enum_values_tERSD_EENS1_INS2_IKSA_NSF_15default_value_tERSJ_EENS1_INS2_IS9_NSF_9env_var_tERS9_EENS2_IS9_NSF_13description_tESO_EEEEEEEixENS0_7keywordISG_Lb0EEE.exit.i.i.i, %.noexc.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.eu, %.noexc.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5boost3nfp23named_parameter_combineINS0_15named_parameterIKSt16initializer_listISt4pairIKNS_9unit_test13basic_cstringIKcEENS5_13output_formatEEENS_7runtime12_GLOBAL__N_113enum_values_tERSD_EENS1_INS2_IKSA_NSF_15default_value_tERSJ_EENS1_INS2_IS9_NSF_9env_var_tERS9_EENS2_IS9_NSF_13description_tESO_EEEEEEEixENS0_7keywordISG_Lb0EEE.exit.i.i.i ] ; 2 uses
  %i.et = invoke ptr @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr nonnull %i.en, ptr noundef nonnull align 8 dereferenceable(20) %.07.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.i unwind label %.body.i.i.i ; 0 uses

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5boost7runtime11basic_param5usageERSoNS_9unit_test13basic_cstringIKcEEb
define linkonce_odr hidden void @_ZN5boost7runtime11basic_param5usageERSoNS_9unit_test13basic_cstringIKcEEb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 dead_on_return %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %7 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %8 = alloca %"struct.boost::unit_test::utils::scope_setcolor", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %11 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %12 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %13 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %14 = alloca %"struct.boost::unit_test::utils::scope_setcolor", align 8 ; 6 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.217, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.h = zext i1 %3 to i8                         ; 6 uses
  store ptr %1, ptr %8, align 8, !tbaa !202
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 %i.h, ptr %i.i, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i8 %i.h, ptr %7, align 4, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 13, ptr noundef nonnull @.str.220, i32 noundef 27, i32 noundef 49, i32 noundef 50, i32 noundef 57) #30 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.k, ptr %i.l, align 4, !tbaa !206
  %i.m = load i8, ptr %7, align 4, !tbaa !205, !range !83, !noundef !84
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq ptr %1, @_ZSt4cout
  %i.p = icmp eq ptr %1, @_ZSt4cerr
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.c, label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.k to i64
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef %i.q) ; 0 uses
  br label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i8 %i.h, ptr %6, align 4, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 13, ptr noundef nonnull @.str.220, i32 noundef 27, i32 noundef 48, i32 noundef 57, i32 noundef 57) #30 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.y, ptr %i.z, align 4, !tbaa !206
  %i.aa = load i8, ptr %6, align 4, !tbaa !205, !range !83, !noundef !84
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ac = icmp eq ptr %1, @_ZSt4cout
  %i.ad = icmp eq ptr %1, @_ZSt4cerr
  %or.cond.i.i46 = or i1 %i.ac, %i.ad
  br i1 %or.cond.i.i46, label %bb.e, label %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.y to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.x, i64 noundef %i.ae)
          to label %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #29
  unreachable

_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !69
  %i.ai = load ptr, ptr %1, align 8, !tbaa !74
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !199
  %.not.i47 = icmp eq i64 %i.an, 0
  br i1 %.not.i47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.o, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.au, ptr %9, align 8, !tbaa !66
  store i32 538976288, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.av, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.aw, align 4, !tbaa !69
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost7runtime24commandline_pretty_printERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.i unwind label %bb.n       ; 4 uses

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !69
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !74
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !199
  %.not.i48 = icmp eq i64 %i.bd, 0
  br i1 %.not.i48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 10)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bg = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bi = load i64, ptr %i.au, align 8, !tbaa !69
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.o

bb.m:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9unit_test5utils14scope_setcolorD2Ev(ptr noundef nonnull align 8 dead_on_return(13) dereferenceable(13) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ao

bb.n:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.au
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.n
  %i.bo = load i64, ptr %i.au, align 8, !tbaa !69
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ao

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !225 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !225 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %15 = icmp ne ptr %1, @_ZSt4cout                ; 2 uses
  %16 = icmp ne ptr %1, @_ZSt4cerr                ; 2 uses
  %or.cond.i.i57.not97 = and i1 %15, %16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %or.cond.i.i83.demorgan = and i1 %15, %16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread
  %.sroa.090.094 = phi ptr [ %i.br, %.preheader.lr.ph ], [ %i.fp, %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 64
  %i.cj = load i64, ptr %i.cd, align 8, !tbaa !68 ; 3 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost7runtimeL11help_prefixE, i64 8), align 8, !tbaa !64
  %i.cl = load ptr, ptr @_ZN5boost7runtimeL11help_prefixE, align 16, !tbaa !63 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp eq i64 %i.co, %i.cj
  br i1 %i.cp, label %bb.p, label %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit

bb.p:                                             ; preds = %.preheader
  %.not12.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not12.i.i.i.i, label %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.p
  %i.cq = load ptr, ptr %.sroa.090.094, align 8, !tbaa !71
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.preheader.i.i
  %.015.i.i.i.i = phi i64 [ %i.cw, %bb.q ], [ %i.cj, %.lr.ph.i.i.preheader.i.i ]
  %.0814.i.i.i.i = phi ptr [ %i.cv, %bb.q ], [ %i.cq, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.0913.i.i.i.i = phi ptr [ %i.cu, %bb.q ], [ %i.cl, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.cr = load i8, ptr %.0913.i.i.i.i, align 1, !tbaa !69
  %i.cs = load i8, ptr %.0814.i.i.i.i, align 1, !tbaa !69
  %i.ct = icmp eq i8 %i.cr, %i.cs
  br i1 %i.ct, label %bb.q, label %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.0814.i.i.i.i, i64 1
  %i.cw = add i64 %.015.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit: ; preds = %.lr.ph.i.i.i.i, %.preheader
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.218, i64 noundef 4) ; 0 uses
  %i.cy = load ptr, ptr %.sroa.090.094, align 8, !tbaa !71
  %i.cz = load i64, ptr %i.cd, align 8, !tbaa !68
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cy, i64 noundef %i.cz) ; 0 uses
  %i.db = load i8, ptr %i.ce, align 8, !tbaa !188, !range !83, !noundef !84
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load ptr, ptr %i.cf, align 8, !tbaa !71 ; 4 uses
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit
  store ptr %i.dd, ptr %10, align 8, !tbaa !63
  %i.de = load i64, ptr %i.cg, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  store ptr %i.df, ptr %i.bw, align 8, !tbaa !64
  %i.dg = load <2 x ptr>, ptr %2, align 8, !tbaa !89
  store <2 x ptr> %i.dg, ptr %11, align 16, !tbaa !89
  %i.dh = load ptr, ptr %0, align 8, !tbaa !74
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, i1 noundef zeroext %3)
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit
  store ptr %i.dd, ptr %12, align 8, !tbaa !63
  %i.dk = load i64, ptr %i.cg, align 8, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dk
  store ptr %i.dl, ptr %i.bv, align 8, !tbaa !64
  store <2 x ptr> <ptr @.str.219, ptr @.str.219>, ptr %13, align 16, !tbaa !89
  %i.dm = load ptr, ptr %0, align 8, !tbaa !74
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, i1 noundef zeroext %3)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr %1, ptr %14, align 8, !tbaa !202
  store i8 %i.h, ptr %i.bx, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 %i.h, ptr %5, align 4, !tbaa !205
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.by, i64 noundef 13, ptr noundef nonnull @.str.220, i32 noundef 27, i32 noundef 49, i32 noundef 51, i32 noundef 57) #30 ; 2 uses
  store i32 %i.dp, ptr %i.bz, align 4, !tbaa !206
  %i.dq = load i8, ptr %5, align 4, !tbaa !205, !range !83, !noundef !84
  %.not = icmp eq i8 %i.dq, 0
  %brmerge = or i1 %.not, %or.cond.i.i57.not97
  br i1 %brmerge, label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit58, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = sext i32 %i.dp to i64
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.by, i64 noundef %i.dr) ; 0 uses
  br label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit58

_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit58: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.dt = load i8, ptr %i.ca, align 2, !tbaa !82, !range !83, !noundef !84
  %i.du = trunc nuw i8 %i.dt to i1                ; 2 uses
  br i1 %i.du, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 91, ptr %i.d, align 1, !tbaa !69
  %i.dv = load ptr, ptr %1, align 8, !tbaa !74
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !199
  %.not.i59 = icmp eq i64 %i.ea, 0
  br i1 %.not.i59, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63 unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.y:                                             ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %bb.x, %bb.w, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit70
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9unit_test5utils14scope_setcolorD2Ev(ptr noundef nonnull align 8 dead_on_return(13) dereferenceable(13) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ao

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63, %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit58
  %i.ee = load i64, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !69
  %i.eg = load ptr, ptr %1, align 8, !tbaa !74
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %1, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !199
  %.not.i64 = icmp eq i64 %i.el, 0
  br i1 %.not.i64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit68 unwind label %bb.y ; 0 uses

bb.ac:                                            ; preds = %bb.aa
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit68 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit68: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit70

bb.ad:                                            ; preds = %bb.z
  %i.eo = load ptr, ptr %i.ci, align 8, !tbaa !71
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.eo, i64 noundef %i.ee)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit70 unwind label %bb.y ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit70: ; preds = %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit68
  %i.eq = load ptr, ptr %0, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.y

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit70
  br i1 %i.du, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 93, ptr %i.b, align 1, !tbaa !69
  %i.et = load ptr, ptr %1, align 8, !tbaa !74
  %i.eu = getelementptr i8, ptr %i.et, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %1, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !199
  %.not.i71 = icmp eq i64 %i.ey, 0
  br i1 %.not.i71, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit75 unwind label %bb.y ; 0 uses

bb.ah:                                            ; preds = %bb.af
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 93)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit75 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit75: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit75, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !69
  %i.fb = load ptr, ptr %1, align 8, !tbaa !74
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %1, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !199
  %.not.i76 = icmp eq i64 %i.fg, 0
  br i1 %.not.i76, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.al unwind label %bb.y      ; 0 uses

bb.ak:                                            ; preds = %bb.ai
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10)
          to label %bb.al unwind label %bb.y      ; 0 uses

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 %i.h, ptr %4, align 4, !tbaa !205
  %i.fj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cb, i64 noundef 13, ptr noundef nonnull @.str.220, i32 noundef 27, i32 noundef 48, i32 noundef 57, i32 noundef 57) #30 ; 2 uses
  store i32 %i.fj, ptr %i.cc, align 4, !tbaa !206
  %i.fk = load i8, ptr %4, align 4, !tbaa !205, !range !83, !noundef !84
  %.not108 = icmp eq i8 %i.fk, 0
  %brmerge109 = or i1 %.not108, %or.cond.i.i83.demorgan
  br i1 %brmerge109, label %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit84, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fl = sext i32 %i.fj to i64
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cb, i64 noundef %i.fl)
          to label %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit84 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #29
  unreachable

_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit84: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread

_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread: ; preds = %bb.q, %bb.p, %_ZN5boost9unit_test5utils14scope_setcolorD2Ev.exit84
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.090.094, i64 104 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.bt
  br i1 %i.fq, label %.critedge, label %.preheader, !llvm.loop !788

.critedge:                                        ; preds = %_ZN5boost9unit_testeqIKcEEbRKNS0_13basic_cstringIT_E10std_stringERKS5_.exit.thread, %bb.o
  ret void

bb.ao:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.m
  %.pn44 = phi { ptr, i32 } [ %i.ed, %bb.y ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.bk, %bb.m ]
  resume { ptr, i32 } %.pn44
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7runtime11basic_param4helpERSoNS_9unit_test13basic_cstringIKcEEb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 dead_on_return %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load <2 x ptr>, ptr %2, align 8, !tbaa !89
  store <2 x ptr> %i.b, ptr %4, align 16, !tbaa !89
  %i.c = load ptr, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dead_on_return %4, i1 noundef zeroext %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !69
  %i.j = load ptr, ptr %1, align 8, !tbaa !74
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !199
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !66
  store i16 8224, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.t, align 2, !tbaa !69
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost7runtime24commandline_pretty_printERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.v = load ptr, ptr %5, align 8, !tbaa !71     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.r, align 8, !tbaa !69
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !69
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime6option13cla_name_helpERSoNS_9unit_test13basic_cstringIKcEES6_b(ptr noundef nonnull align 8 dereferenceable(235) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.boost::unit_test::utils::setcolor", align 4 ; 6 uses
  %7 = alloca %"struct.boost::unit_test::utils::scope_setcolor", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = load ptr, ptr %3, align 8, !tbaa !63
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.g = zext i1 %4 to i8                         ; 3 uses
  store ptr %1, ptr %7, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 %i.g, ptr %i.h, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i8 %i.g, ptr %6, align 4, !tbaa !205
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 13, ptr noundef nonnull @.str.220, i32 noundef 27, i32 noundef 49, i32 noundef 51, i32 noundef 57) #30 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.j, ptr %i.k, align 4, !tbaa !206
  %i.l = load i8, ptr %6, align 4, !tbaa !205, !range !83, !noundef !84
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %1, @_ZSt4cout
  %i.o = icmp eq ptr %1, @_ZSt4cerr
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.d, label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.j to i64
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.i, i64 noundef %i.p) ; 0 uses
  br label %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit

_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 91, ptr %i.b, align 1, !tbaa !69
  %i.r = load ptr, ptr %1, align 8, !tbaa !74
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.g unwind label %bb.o

bb.f:                                             ; preds = %_ZN5boost9unit_test5utils14scope_setcolorC2EbRSoNS1_9term_attr1_ENS1_10term_color1_ES7_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 91)
          to label %bb.g unwind label %bb.o       ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.o       ; 4 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 93, ptr %i.a, align 1, !tbaa !69
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !199
  %.not.i6 = icmp eq i64 %i.af, 0
  br i1 %.not.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.a, i64 noundef 1)
end_hunk_2
begin_hunk_3_@_ZN5boost7runtime11basic_param15add_cla_id_implENS_9unit_test13basic_cstringIKcEES5_S5_bb:bb.a
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull @.str.226)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime14invalid_cla_idEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %8) #32
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn22 = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.w, %bb.p ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.r ], [ %i.v, %bb.o ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.s ], [ %i.u, %bb.n ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ax

bb.u:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 9 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !63    ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.v, label %.lr.ph.i.preheader.preheader.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.ad, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !68
  store i8 0, ptr %i.af, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime14invalid_cla_idE, i64 16), ptr %15, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull @.str.165)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull @.str.227)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime14invalid_cla_idEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %12) #32
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.x
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn18 = phi { ptr, i32 } [ %i.ak, %bb.ad ], [ %i.aj, %bb.ac ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ae ], [ %i.ai, %bb.ab ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.af ], [ %i.ah, %bb.aa ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ax

.lr.ph.i.preheader.preheader.i.i:                 ; preds = %bb.u
  %i.al = ptrtoaddr ptr %i.aa to i64
  %i.am = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.an = sub i64 %i.am, %i.al
  %scevgep.i.i = getelementptr i8, ptr %i.aa, i64 %i.an
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i, %.lr.ph.i.preheader.preheader.i.i
  %.012.i.i = phi ptr [ %i.ap, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i ], [ %i.aa, %.lr.ph.i.preheader.preheader.i.i ] ; 3 uses
  %i.ao = load i8, ptr %.012.i.i, align 1, !tbaa !69
  switch i8 %i.ao, label %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i [
    i8 32, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i
    i8 10, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i
    i8 9, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i
  ]

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.preheader.i.i, %.lr.ph.i.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i, label %.lr.ph.i.preheader.i.i, !llvm.loop !21

_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i: ; preds = %.lr.ph.i.preheader.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i
  %.010.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.preheader.i.i ], [ %scevgep.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i.i ] ; 3 uses
  %.not.i5.i.not.i = icmp ugt ptr %i.z, %.010.i.i ; 2 uses
  %spec.store.select.i.i.i = select i1 %.not.i5.i.not.i, ptr %.010.i.i, ptr %i.z ; 4 uses
  store ptr %spec.store.select.i.i.i, ptr %3, align 8, !tbaa !63
  br i1 %.not.i5.i.not.i, label %.lr.ph.i.preheader.preheader.i3.i, label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit

.lr.ph.i.preheader.preheader.i3.i:                ; preds = %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i
  %i.aq = ptrtoaddr ptr %.010.i.i to i64
  %reass.sub.i = sub i64 %i.aq, %i.am
  %i.ar = getelementptr i8, ptr %i.z, i64 %reass.sub.i
  %scevgep.i4.i = getelementptr i8, ptr %i.ar, i64 1
  br label %.lr.ph.i.preheader.i5.i

.lr.ph.i.preheader.i5.i:                          ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i, %.lr.ph.i.preheader.preheader.i3.i
  %.0.i.i = phi ptr [ %i.as, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i ], [ %i.z, %.lr.ph.i.preheader.preheader.i3.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  switch i8 %i.at, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i [
    i8 32, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i
    i8 10, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i
    i8 9, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i
  ]

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i: ; preds = %.lr.ph.i.preheader.i5.i, %.lr.ph.i.preheader.i5.i, %.lr.ph.i.preheader.i5.i
  %.not8.i.i = icmp eq ptr %i.as, %spec.store.select.i.i.i
  br i1 %.not8.i.i, label %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i, label %.lr.ph.i.preheader.i5.i, !llvm.loop !22

_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i: ; preds = %.lr.ph.i.preheader.i5.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.preheader.i5.i ], [ %scevgep.i4.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.i10.i ] ; 6 uses
  store ptr %.013.i.i, ptr %i.y, align 8, !tbaa !64
  %.not.i9.i.i = icmp ugt ptr %.013.i.i, %spec.store.select.i.i.i
  br i1 %.not.i9.i.i, label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i
  store ptr %.013.i.i, ptr %3, align 8, !tbaa !63
  br label %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit

_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit: ; preds = %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i, %bb.ah
  %i.au = phi ptr [ %i.z, %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i ], [ %spec.store.select.i.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i ], [ %.013.i.i, %bb.ah ] ; 2 uses
  %i.av = phi ptr [ %i.z, %_ZN5boost9unit_test13basic_cstringIKcE9trim_leftES3_.exit.i ], [ %.013.i.i, %_ZN5boost9unit_test9ut_detail20bcs_char_traits_implIKcE4findEPS3_mc.exit.thread.i.i ], [ %.013.i.i, %bb.ah ] ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.au
  %or.cond = and i1 %5, %i.aw
  br i1 %or.cond, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !189, !range !83, !noundef !84
  %24 = icmp eq i8 %i.ay, 0
  br i1 %24, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.az, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr @_ZN5boost9unit_test13basic_cstringIKcE4nullE, ptr %i.ba, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 0, ptr %i.bd, align 8, !tbaa !68
  store i8 0, ptr %i.bc, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime14invalid_cla_idE, i64 16), ptr %19, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.165)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull @.str.228)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime14invalid_cla_idEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %16) #32
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.aj
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ap:                                            ; preds = %bb.ak
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.al
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.am
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #30
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.ar ], [ %i.bg, %bb.aq ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.bf, %bb.ap ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ao
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.at ], [ %i.be, %bb.ao ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ax

bb.av:                                            ; preds = %_ZN5boost9unit_test13basic_cstringIKcE4trimES3_.exit, %bb.ai
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.bj = load <2 x ptr>, ptr %1, align 8, !tbaa !89
  store <2 x ptr> %i.bj, ptr %21, align 16, !tbaa !89
  %i.bk = load <2 x ptr>, ptr %2, align 8, !tbaa !89
  store <2 x ptr> %i.bk, ptr %22, align 16, !tbaa !89
  store ptr %i.au, ptr %23, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.av, ptr %i.bl, align 8, !tbaa !64
  call void @_ZN5boost7runtime16parameter_cla_idC2ENS_9unit_test13basic_cstringIKcEES5_S5_b(ptr noundef nonnull align 8 dereferenceable(97) %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, i1 noundef zeroext %4)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(97) %20)
          to label %_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EE9push_backEOS2_.exit unwind label %bb.aw ; 0 uses

_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.av
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EE9push_backEOS2_.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !69
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EE9push_backEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !69
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bz = load ptr, ptr %20, align 8, !tbaa !71   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN5boost7runtime16parameter_cla_idD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #34
  br label %_ZN5boost7runtime16parameter_cla_idD2Ev.exit

_ZN5boost7runtime16parameter_cla_idD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  ret void

bb.aw:                                            ; preds = %bb.av
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime16parameter_cla_idD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.ag, %bb.t, %bb.g
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.g ], [ %.pn22.pn.pn, %bb.t ], [ %.pn18.pn.pn, %bb.ag ], [ %i.ce, %bb.aw ], [ %.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime14invalid_cla_idEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #30 ; 3 uses
  invoke void @_ZN5boost7runtime14invalid_cla_idC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost7runtime14invalid_cla_idE, ptr nonnull @_ZN5boost7runtime11param_errorD2Ev) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNO5boost7runtime20specific_param_errorINS0_14invalid_cla_idENS0_10init_errorEElsEPKc(ptr dead_on_unwind noalias writable sret(%"class.boost::runtime::invalid_cla_id") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %2, i64 noundef %i.b) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime11param_errorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !89
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !66
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.o, ptr %i.a, align 8, !tbaa !96
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.e ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.q, ptr %i.l, align 8, !tbaa !71
end_hunk_3
begin_hunk_4_@_ZNO5boost7runtime20specific_param_errorINS0_18invalid_param_specENS0_10init_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_:bb.a
  %i.v = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.v, ptr %i.a, align 8, !tbaa !96
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.e ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.x, ptr %i.s, align 8, !tbaa !71
  %i.y = load i64, ptr %i.a, align 8, !tbaa !96
  store i64 %i.y, ptr %i.t, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = phi ptr [ %i.x, %.noexc.i.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN5boost7runtime18invalid_param_specC2EOS1_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !69
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !69
  br label %_ZN5boost7runtime18invalid_param_specC2EOS1_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZN5boost7runtime18invalid_param_specC2EOS1_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #30
  br label %common.resume

_ZN5boost7runtime18invalid_param_specC2EOS1_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c, %bb.d
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !68
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime18invalid_param_specE, i64 16), ptr %0, align 8, !tbaa !74
  ret void

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !69
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34, !inline_history !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !69
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34, !inline_history !174
  br label %_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EED2Ev.exit

_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(304) %0) #30, !inline_history !174
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 304) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #31 ; 6 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(304) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %1)
          to label %.noexc unwind label %bb.c, !inline_history !842

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke void @_ZN5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EEC2ERKS9_.exit unwind label %bb.b, !inline_history !842

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(304) %i.a) #30, !inline_history !842
  br label %.body

_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EEC2ERKS9_.exit: ; preds = %.noexc
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE0ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 304) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !89
  store <2 x ptr> %i.b, ptr %4, align 16, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store ptr %i.h, ptr %i.e, align 8, !tbaa !64
  call void @_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEESC_RNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE0ELb0EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_ZN5boost7runtime15arguments_store3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::function_n", align 8 ; 11 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr null, ptr %2, align 8, !tbaa !99
  %i.b = load ptr, ptr %0, align 8, !tbaa !99     ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !99
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #30 ; 0 uses
  store ptr null, ptr %2, align 8, !tbaa !99
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 1)
          to label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i: ; preds = %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !99
  br label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable

_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit: ; preds = %bb.b, %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !99     ; 4 uses
  %.not.i.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i6, label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit13, label %bb.j

bb.j:                                             ; preds = %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit
  store ptr %i.o, ptr %0, align 8, !tbaa !99
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.q, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i7

bb.l:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #30 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !99
  invoke void @__cxa_rethrow() #32
          to label %bb.p unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef 1)
          to label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i7 unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.o

_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i7: ; preds = %bb.m, %bb.k
  store ptr null, ptr %1, align 8, !tbaa !99
  br label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit13

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

bb.p:                                             ; preds = %bb.l
  unreachable

_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit13: ; preds = %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit, %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE5clearEv.exit.sink.split.i7
  %i.ab = load ptr, ptr %2, align 8, !tbaa !99    ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i14, label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit13
  store ptr %i.ab, ptr %1, align 8, !tbaa !99
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = trunc i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev.exit

bb.s:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #30 ; 0 uses
  store ptr null, ptr %1, align 8, !tbaa !99
  invoke void @__cxa_rethrow() #32
          to label %bb.w unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i32 noundef 1)
          to label %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev.exit unwind label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #29
  unreachable

bb.w:                                             ; preds = %bb.s
  unreachable

_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEE11move_assignERS5_.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.n, %bb.u, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.y, %bb.n ], [ %i.al, %bb.u ]
  call void @_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZN5boost6detail8function15functor_managerIZNS_9unit_test14runtime_config12_GLOBAL__N_119register_parametersERNS_7runtime16parameters_storeEE3$_0E6manageERKNS1_15function_bufferERSB_NS1_30functor_manager_operation_typeE"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) #22 align 2 {
bb.a:
  switch i32 %2, label %bb.e [
    i32 4, label %bb.b
end_hunk_4
begin_hunk_5_@_ZN5boost10shared_ptrINS_7runtime8argumentEEC2INS1_14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !853
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime8argumentENS2_14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !854
  br label %_ZN5boost6detail20sp_pointer_constructINS_7runtime8argumentENS2_14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

_ZN5boost6detail20sp_pointer_constructINS_7runtime8argumentENS2_14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost6detail12shared_countC2INS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_.exit.i
  ret void

.body:                                            ; preds = %bb.d
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #30
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5boost9unit_test14class_propertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZN5boost9unit_test14class_propertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5boost9unit_test14class_propertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34, !inline_history !855
  br label %_ZN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5boost7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost14checked_deleteINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #30, !inline_history !856
  br label %_ZN5boost14checked_deleteINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPT_.exit

_ZN5boost14checked_deleteINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterImLNS0_11args_amountE0ELb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterImLNS0_11args_amountE0ELb0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31 ; 5 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %1)
          to label %bb.b unwind label %bb.c, !inline_history !857

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterImLNS0_11args_amountE0ELb0EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !858
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterImLNS1_11args_amountE0ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 256) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterImLNS0_11args_amountE0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.f, ptr %4, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = icmp eq ptr %i.d, %i.b
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108
  br label %_ZNK5boost7runtime16argument_factoryImLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.f, ptr %5, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !64
  store ptr %i.b, ptr %6, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !64
  %i.q = call noundef i64 @_ZNK5boost7runtime17value_interpreterImLb0EE9interpretENS_9unit_test13basic_cstringIKcEES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZNK5boost7runtime16argument_factoryImLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit

_ZNK5boost7runtime16argument_factoryImLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  store i64 %i.r, ptr %i.a, align 8, !tbaa !96
  call void @_ZN5boost7runtime15arguments_store3setImEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterImLNS0_11args_amountE0ELb0EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @_ZN5boost7runtime15arguments_store3setImEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterImLNS1_11args_amountE0ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !186
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZN5boost6detail12shared_countC2INS_7runtime9parameterImLNS3_11args_amountE0ELb0EEEEEPT_.exit.i unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #30 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(256) %1) #30, !inline_history !859
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i

_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

bb.f:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i
  unreachable

_ZN5boost6detail12shared_countC2INS_7runtime9parameterImLNS3_11args_amountE0ELb0EEEEEPT_.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.m, align 4, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEEE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !260
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !78   ; 7 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterImLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost6detail12shared_countC2INS_7runtime9parameterImLNS3_11args_amountE0ELb0EEEEEPT_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterImLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !860
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterImLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !861
  br label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterImLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterImLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost6detail12shared_countC2INS_7runtime9parameterImLNS3_11args_amountE0ELb0EEEEEPT_.exit.i
  ret void

.body:                                            ; preds = %bb.d
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #30
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(256) %i.b) #30, !inline_history !862
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit

_ZN5boost14checked_deleteINS_7runtime9parameterImLNS1_11args_amountE0ELb0EEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterImLNS2_11args_amountE0ELb0EEEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7runtime15arguments_store3setImEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::shared_ptr.31", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_ZZN5boost4rtti11rtti_detail12rttid_holderImE4instEvE6s_inst to i64), ptr %i.b, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost7runtime14typed_argumentImEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.d, ptr %i.c, align 8, !tbaa !864
  call void @_ZN5boost10shared_ptrINS_7runtime8argumentEEC2INS1_14typed_argumentImEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN5boost9unit_test13basic_cstringIKcEENS0_10shared_ptrINS0_7runtime8argumentEEESt4lessIS4_ESaISt4pairIKS4_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load <2 x ptr>, ptr %3, align 16, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !78   ; 7 uses
  store <2 x ptr> %i.h, ptr %i.e, align 8, !tbaa !141
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !13
  br label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit
end_hunk_5
begin_hunk_6_@_ZN5boost9unit_test5utils9string_asImEEbNS0_13basic_cstringIKcEERT_:bb.a
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !264
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !74
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !69
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #34
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ao = and i32 %i.ab, 7
  %i.ap = icmp eq i32 %i.ao, 2
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #30
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !74
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !266
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ap

bb.g:                                             ; preds = %.noexc.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !69
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.az, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn5 = phi { ptr, i32 } [ %i.be, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34, !inline_history !177
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef %i.j)
          to label %_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EED2Ev.exit unwind label %bb.c, !inline_history !178

bb.c:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29, !inline_history !178
  unreachable

_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(312) %0) #30, !inline_history !178
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #31 ; 3 uses
  invoke void @_ZN5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_14enum_parameterINS_9unit_test13output_formatELNS1_11args_amountE0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EE16produce_argumentENS2_13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.f, ptr %4, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = icmp eq ptr %i.d, %i.b
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load i32, ptr %i.l, align 8, !tbaa !131
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.f, ptr %5, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !64
  store ptr %i.b, ptr %6, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !64
  %i.q = call noundef i32 @_ZNK5boost7runtime17value_interpreterINS_9unit_test13output_formatELb1EE9interpretENS2_13basic_cstringIKcEES7_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

_ZNK5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  store i32 %i.r, ptr %i.a, align 4, !tbaa !86
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test13output_formatEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test13output_formatEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test13output_formatELNS0_11args_amountE0EE10value_helpERSo(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.241, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !89, !noalias !874
  store <2 x ptr> %i.k, ptr %2, align 16, !tbaa !89, !alias.scope !874
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.c, %bb.f
  %.sroa.022.026 = phi ptr [ %i.y, %bb.f ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.o = load <2 x ptr>, ptr %.sroa.022.026, align 8, !tbaa !89, !noalias !875
  store <2 x ptr> %i.o, ptr %2, align 16, !tbaa !89, !alias.scope !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 124, ptr %i.a, align 1, !tbaa !69
  %i.p = load ptr, ptr %1, align 8, !tbaa !74
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !199
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.peel.next
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 124) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %.critedge, label %.peel.next, !llvm.loop !873

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.242, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ac, i64 noundef %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZN5boost7runtime17value_interpreterINS_9unit_test13output_formatELb1EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZN5boost7runtime17value_interpreterINS_9unit_test13output_formatELb1EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5boost7runtime16argument_factoryINS_9unit_test13output_formatELb1ELb0EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EED2Ev.exit unwind label %bb.b, !inline_history !223

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !223
  unreachable

_ZN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(288) %0) #30, !inline_history !223
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<boost::unit_test::basic_cstring<const char>, std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::output_format>, std::_Select1st<std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::output_format>>, std::less<boost::unit_test::basic_cstring<const char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #31 ; 12 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %1)
          to label %.noexc unwind label %bb.g, !inline_history !25

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test13output_formatELNS0_11args_amountE0ELb1EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.i, ptr %2, align 8, !tbaa !123
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !inline_history !25 ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_13output_formatEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !26

end_hunk_6
begin_hunk_7_@_ZNK5boost7runtime17value_interpreterINS_9unit_test13output_formatELb1EE9interpretENS2_13basic_cstringIKcEES7_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.as, align 8, !tbaa !68
  store i8 0, ptr %i.ar, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime12format_errorE, i64 16), ptr %7, align 8, !tbaa !74
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNKSt3mapIN5boost9unit_test13basic_cstringIKcEENS1_13output_formatESt4lessIS4_ESaISt4pairIKS4_S5_EEE4findERS9_.exit.thread
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull @.str.240)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_12format_errorENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::format_error") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.239)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime12format_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(56) %3) #32
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %_ZNKSt3mapIN5boost9unit_test13basic_cstringIKcEENS1_13output_formatESt4lessIS4_ESaISt4pairIKS4_S5_EEE4findERS9_.exit.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.aw, %bb.o ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.av, %bb.n ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.au, %bb.m ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.s ], [ %i.at, %bb.l ]
  call void @_ZN5boost7runtime11param_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn

_ZNKSt3mapIN5boost9unit_test13basic_cstringIKcEENS1_13output_formatESt4lessIS4_ESaISt4pairIKS4_S5_EEE4findERS9_.exit: ; preds = %bb.f, %bb.e, %_ZNKSt4lessIN5boost9unit_test13basic_cstringIKcEEEclERKS4_S7_.exit.i.i, %.split.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !121
  ret i32 %i.az
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34, !inline_history !179
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef %i.j)
          to label %_ZN5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EED2Ev.exit unwind label %bb.c, !inline_history !180

bb.c:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29, !inline_history !180
  unreachable

_ZN5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(312) %0) #30, !inline_history !180
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #31 ; 3 uses
  invoke void @_ZN5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_14enum_parameterINS_9unit_test9log_levelELNS1_11args_amountE0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EE16produce_argumentENS2_13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.f, ptr %4, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = icmp eq ptr %i.d, %i.b
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load i32, ptr %i.l, align 8, !tbaa !157
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test9log_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.f, ptr %5, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !64
  store ptr %i.b, ptr %6, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !64
  %i.q = call noundef i32 @_ZNK5boost7runtime17value_interpreterINS_9unit_test9log_levelELb1EE9interpretENS2_13basic_cstringIKcEES7_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test9log_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

_ZNK5boost7runtime16argument_factoryINS_9unit_test9log_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  store i32 %i.r, ptr %i.a, align 4, !tbaa !276
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test9log_levelEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test9log_levelEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test9log_levelELNS0_11args_amountE0EE10value_helpERSo(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.241, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !89, !noalias !893
  store <2 x ptr> %i.k, ptr %2, align 16, !tbaa !89, !alias.scope !893
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.c, %bb.f
  %.sroa.022.026 = phi ptr [ %i.y, %bb.f ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.o = load <2 x ptr>, ptr %.sroa.022.026, align 8, !tbaa !89, !noalias !894
  store <2 x ptr> %i.o, ptr %2, align 16, !tbaa !89, !alias.scope !894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 124, ptr %i.a, align 1, !tbaa !69
  %i.p = load ptr, ptr %1, align 8, !tbaa !74
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !199
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.peel.next
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 124) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %.critedge, label %.peel.next, !llvm.loop !892

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.242, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ac, i64 noundef %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime16argument_factoryINS_9unit_test9log_levelELb1ELb0EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5boost7runtime16argument_factoryINS_9unit_test9log_levelELb1ELb0EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EED2Ev.exit unwind label %bb.b, !inline_history !224

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !224
  unreachable

_ZN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(288) %0) #30, !inline_history !224
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<boost::unit_test::basic_cstring<const char>, std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::log_level>, std::_Select1st<std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::log_level>>, std::less<boost::unit_test::basic_cstring<const char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #31 ; 12 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %1)
          to label %.noexc unwind label %bb.g, !inline_history !29

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test9log_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.i, ptr %2, align 8, !tbaa !151
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !inline_history !29 ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !26

_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_9log_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !212  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !27

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  store i64 %i.p, ptr %i.f, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr %i.j, ptr %i.c, align 8, !tbaa !80
  br label %bb.f
end_hunk_7
begin_hunk_8_@_ZN5boost7runtime11basic_paramC2INS_3nfp23named_parameter_combineINS3_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS0_12_GLOBAL__N_16help_tERSA_EENS4_INS5_ISA_NSB_12value_hint_tESD_EENS4_INS5_ISA_NSB_9env_var_tESD_EENS5_ISA_NSB_13description_tESD_EEEEEEEEEES9_bbRKT_:bb.a

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

bb.w:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_ISE_NSG_12value_hint_tESI_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEENS0_13typed_keywordISD_SO_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKSW_SX_.exit.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.u
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.w
  %i.ea = load i64, ptr %i.u, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.sink.split

bb.x:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_ISE_NSG_12value_hint_tESI_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEENS0_13typed_keywordISD_SH_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKSW_SX_.exit.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.as
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.x
  %i.ee = load i64, ptr %i.as, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.sink.split

bb.y:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_ISE_NSG_12value_hint_tESI_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEENS0_13typed_keywordISD_SM_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKSW_SX_.exit.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i43
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.br
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.y
  %i.ei = load i64, ptr %i.br, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split

bb.z:                                             ; preds = %_ZN5boost3nfp10opt_assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_23named_parameter_combineINS0_15named_parameterIKNS_9unit_test13basic_cstringIKcEENS_7runtime12_GLOBAL__N_16help_tERSE_EENS8_INS9_ISE_NSG_12value_hint_tESI_EENS8_INS9_ISE_NSG_9env_var_tESI_EENS9_ISE_NSG_13description_tESI_EEEEEEEENS0_13typed_keywordISD_SK_Lb0EEEEENS_11enable_if_cIXsr9has_paramIT0_T1_EE5valueEvE4typeERT_RKSW_SX_.exit.i, %_ZN5boost3nfp3nil4instEv.exit.i.i.i.i52
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cq
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.z
  %i.em = load i64, ptr %i.cq, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.sink.split

bb.aa:                                            ; preds = %bb.u
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN5boost7runtime16parameter_cla_idESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dt) #30
  call void @_ZN5boost10function_nIvJNS_9unit_test13basic_cstringIKcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ds) #30
  %i.eo = load ptr, ptr %i.cp, align 8, !tbaa !71 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.df
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.aa
  %i.eq = load i64, ptr %i.df, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.sink2 = phi i64 [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ]
  %.sink = phi ptr [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ]
  %i.er = add i64 %.sink2, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.er) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.sink.split, %bb.aa, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.z ], [ %i.en, %bb.aa ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.sink.split ] ; 2 uses
  %i.es = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cg
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.eu = load i64, ptr %i.cg, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %.sink5 = phi i64 [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %.sink3 = phi ptr [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.ev = add i64 %.sink5, 1
  call void @_ZdlPvm(ptr noundef %.sink3, i64 noundef %i.ev) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.y ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.sink.split ] ; 2 uses
  %i.ew = load ptr, ptr %i.ar, align 8, !tbaa !71 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bh
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ey = load i64, ptr %i.bh, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %.sink8 = phi i64 [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %.sink6 = phi ptr [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.ez = add i64 %.sink8, 1
  call void @_ZdlPvm(ptr noundef %.sink6, i64 noundef %i.ez) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.x ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.sink.split ] ; 2 uses
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !71  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ai
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.fc = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %.sink11 = phi i64 [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %.sink9 = phi ptr [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.fd = add i64 %.sink11, 1
  call void @_ZdlPvm(ptr noundef %.sink9, i64 noundef %i.fd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.w ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn.pn.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.sink.split ]
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.g
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.fg = load i64, ptr %i.g, align 8, !tbaa !69
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE2ELb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE2ELb0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(233) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #31 ; 5 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(233) %i.a, ptr noundef nonnull align 8 dereferenceable(233) %1)
          to label %bb.b unwind label %bb.c, !inline_history !928

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE2ELb0EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load i8, ptr %i.c, align 8
  store i8 %i.d, ptr %i.b, align 8
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 240) #34
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE2ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 2 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !89
  store <2 x ptr> %i.b, ptr %4, align 16, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store ptr %i.h, ptr %i.e, align 8, !tbaa !64
  call void @_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EE16produce_argumentENS_9unit_test13basic_cstringIKcEESC_RNS0_15arguments_storeE(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11args_amountE2ELb0EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.306", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %4 = icmp eq i8 %i.b, 0
  br i1 %4, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7runtime15arguments_store3setISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !288    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !69
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !288
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EE15produce_defaultENS_9unit_test13basic_cstringIKcEERNS0_15arguments_storeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #34
  br label %_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EE15produce_defaultENS_9unit_test13basic_cstringIKcEERNS0_15arguments_storeE.exit

bb.e:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.x

_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EE15produce_defaultENS_9unit_test13basic_cstringIKcEERNS0_15arguments_storeE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK5boost7runtime16argument_factoryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EE15produce_defaultENS_9unit_test13basic_cstringIKcEERNS0_15arguments_storeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !186
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZN5boost6detail12shared_countC2INS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS3_11args_amountE2ELb0EEEEEPT_.exit.i unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #30 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(233) %1) #30, !inline_history !929
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit.i.i

_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

bb.f:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit.i.i
  unreachable

_ZN5boost6detail12shared_countC2INS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS3_11args_amountE2ELb0EEEEEPT_.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.m, align 4, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6detail17sp_counted_impl_pINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !293
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !78   ; 7 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost6detail12shared_countC2INS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS3_11args_amountE2ELb0EEEEEPT_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !930
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !931
  br label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost6detail12shared_countC2INS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS3_11args_amountE2ELb0EEEEEPT_.exit.i
  ret void

.body:                                            ; preds = %bb.d
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #30
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(233) %i.b) #30, !inline_history !932
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit

_ZN5boost14checked_deleteINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS1_11args_amountE2ELb0EEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS2_11args_amountE2ELb0EEEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}
end_hunk_8
begin_hunk_9_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
  store i64 %i.h, ptr %i.b, align 8, !tbaa !69
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !69
  store i8 %i.j, ptr %i.i, align 1, !tbaa !69
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !68
  %i.m = load ptr, ptr %.014, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !955

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #30 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost14checked_deleteINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #30, !inline_history !956
  br label %_ZN5boost14checked_deleteINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEvPT_.exit

_ZN5boost14checked_deleteINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime14typed_argumentISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterIjLNS0_11args_amountE0ELb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterIjLNS0_11args_amountE0ELb0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(244) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31 ; 5 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(244) %i.a, ptr noundef nonnull align 8 dereferenceable(244) %1)
          to label %bb.b unwind label %bb.c, !inline_history !957

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterIjLNS0_11args_amountE0ELb0EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !958
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterIjLNS1_11args_amountE0ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterIjLNS0_11args_amountE0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.f, ptr %4, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = icmp eq ptr %i.d, %i.b
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK5boost7runtime16argument_factoryIjLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.f, ptr %5, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !64
  store ptr %i.b, ptr %6, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !64
  %i.q = call noundef i32 @_ZNK5boost7runtime17value_interpreterIjLb0EE9interpretENS_9unit_test13basic_cstringIKcEES6_(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZNK5boost7runtime16argument_factoryIjLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit

_ZNK5boost7runtime16argument_factoryIjLb0ELb0EE16produce_argumentENS_9unit_test13basic_cstringIKcEES6_RNS0_15arguments_storeE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  store i32 %i.r, ptr %i.a, align 4, !tbaa !79
  call void @_ZN5boost7runtime15arguments_store3setIjEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterIjLNS0_11args_amountE0ELb0EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZN5boost7runtime15arguments_store3setIjEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_9parameterIjLNS1_11args_amountE0ELb0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !186
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZN5boost6detail12shared_countC2INS_7runtime9parameterIjLNS3_11args_amountE0ELb0EEEEEPT_.exit.i unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #30 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(244) %1) #30, !inline_history !959
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i

_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

bb.f:                                             ; preds = %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit.i.i
  unreachable

_ZN5boost6detail12shared_countC2INS_7runtime9parameterIjLNS3_11args_amountE0ELb0EEEEEPT_.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.m, align 4, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEEE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !299
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !78   ; 7 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterIjLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost6detail12shared_countC2INS_7runtime9parameterIjLNS3_11args_amountE0ELb0EEEEEPT_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterIjLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !960
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterIjLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !961
  br label %_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterIjLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit

_ZN5boost6detail20sp_pointer_constructINS_7runtime11basic_paramENS2_9parameterIjLNS2_11args_amountE0ELb0EEEEEvPNS_10shared_ptrIT_EEPT0_RNS0_12shared_countE.exit: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost6detail12shared_countC2INS_7runtime9parameterIjLNS3_11args_amountE0ELb0EEEEEPT_.exit.i
  ret void

.body:                                            ; preds = %bb.d
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #30
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(244) %i.b) #30, !inline_history !962
  br label %_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit

_ZN5boost14checked_deleteINS_7runtime9parameterIjLNS1_11args_amountE0ELb0EEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail17sp_counted_impl_pINS_7runtime9parameterIjLNS2_11args_amountE0ELb0EEEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7runtime15arguments_store3setIjEEvNS_9unit_test13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::shared_ptr.31", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_ZZN5boost4rtti11rtti_detail12rttid_holderIjE4instEvE6s_inst to i64), ptr %i.b, align 8, !tbaa !211
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost7runtime14typed_argumentIjEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %2, align 4, !tbaa !79
  store i32 %i.d, ptr %i.c, align 8, !tbaa !964
  call void @_ZN5boost10shared_ptrINS_7runtime8argumentEEC2INS1_14typed_argumentIjEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIN5boost9unit_test13basic_cstringIKcEENS0_10shared_ptrINS0_7runtime8argumentEEESt4lessIS4_ESaISt4pairIKS4_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load <2 x ptr>, ptr %3, align 16, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !78   ; 7 uses
  store <2 x ptr> %i.h, ptr %i.e, align 8, !tbaa !141
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !13
  br label %_ZN5boost10shared_ptrINS_7runtime8argumentEEaSEOS3_.exit
end_hunk_9
begin_hunk_10_@_ZN5boost9unit_test5utils9string_asIjEEbNS0_13basic_cstringIKcEERT_:bb.a
bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !74
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !264
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !74
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !69
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #34
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ao = and i32 %i.ab, 7
  %i.ap = icmp eq i32 %i.ao, 2
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #30
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !74
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !266
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.ap

bb.g:                                             ; preds = %.noexc.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !69
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.az, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn5 = phi { ptr, i32 } [ %i.be, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn5
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIjEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34, !inline_history !175
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef %i.j)
          to label %_ZN5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EED2Ev.exit unwind label %bb.c, !inline_history !176

bb.c:                                             ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29, !inline_history !176
  unreachable

_ZN5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit.i
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(312) %0) #30, !inline_history !176
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #31 ; 3 uses
  invoke void @_ZN5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost10shared_ptrINS_7runtime11basic_paramEEC2INS1_14enum_parameterINS_9unit_test12report_levelELNS1_11args_amountE0EEEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 312) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EE16produce_argumentENS2_13basic_cstringIKcEEbRNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef align 8 dead_on_return %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %6 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.f, ptr %4, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = icmp eq ptr %i.d, %i.b
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load i32, ptr %i.l, align 8, !tbaa !173
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test12report_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.f, ptr %5, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.o, align 8, !tbaa !64
  store ptr %i.b, ptr %6, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !64
  %i.q = call noundef i32 @_ZNK5boost7runtime17value_interpreterINS_9unit_test12report_levelELb1EE9interpretENS2_13basic_cstringIKcEES7_(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZNK5boost7runtime16argument_factoryINS_9unit_test12report_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit

_ZNK5boost7runtime16argument_factoryINS_9unit_test12report_levelELb1ELb0EE16produce_argumentENS2_13basic_cstringIKcEES7_RNS0_15arguments_storeE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.c ]
  store i32 %i.r, ptr %i.a, align 4, !tbaa !303
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test12report_levelEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EE15produce_defaultERNS0_15arguments_storeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.b = load i8, ptr %i.a, align 1, !tbaa !189, !range !83, !noundef !84
  %3 = icmp eq i8 %i.b, 0
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.d, ptr %2, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  call void @_ZN5boost7runtime15arguments_store3setINS_9unit_test12report_levelEEEvNS3_13basic_cstringIKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime14enum_parameterINS_9unit_test12report_levelELNS0_11args_amountE0EE10value_helpERSo(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.boost::unit_test::basic_cstring", align 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.241, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !89, !noalias !974
  store <2 x ptr> %i.k, ptr %2, align 16, !tbaa !89, !alias.scope !974
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %bb.c, %bb.f
  %.sroa.022.026 = phi ptr [ %i.y, %bb.f ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.o = load <2 x ptr>, ptr %.sroa.022.026, align 8, !tbaa !89, !noalias !975
  store <2 x ptr> %i.o, ptr %2, align 16, !tbaa !89, !alias.scope !975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 124, ptr %i.a, align 1, !tbaa !69
  %i.p = load ptr, ptr %1, align 8, !tbaa !74
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !199
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.peel.next
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 124) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_testlsIcSt11char_traitsIcEKcEERSt13basic_ostreamIT_T0_ES9_RKNS0_13basic_cstringIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %.critedge, label %.peel.next, !llvm.loop !973

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.b
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.242, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ac, i64 noundef %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime16argument_factoryINS_9unit_test12report_levelELb1ELb0EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5boost7runtime16argument_factoryINS_9unit_test12report_levelELb1ELb0EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.c)
          to label %_ZN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EED2Ev.exit unwind label %bb.b, !inline_history !222

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !222
  unreachable

_ZN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN5boost7runtime11basic_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(288) %0) #30, !inline_history !222
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<boost::unit_test::basic_cstring<const char>, std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::report_level>, std::_Select1st<std::pair<const boost::unit_test::basic_cstring<const char>, boost::unit_test::report_level>>, std::less<boost::unit_test::basic_cstring<const char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #31 ; 12 uses
  invoke void @_ZN5boost7runtime11basic_paramC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(288) %1)
          to label %.noexc unwind label %bb.g, !inline_history !31

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7runtime9parameterINS_9unit_test12report_levelELNS0_11args_amountE0ELb1EEE, i64 16), ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.i, ptr %2, align 8, !tbaa !167
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !inline_history !31 ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, !llvm.loop !26

_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeIN5boost9unit_test13basic_cstringIKcEESt4pairIKS4_NS1_12report_levelEESt10_Select1stIS8_ESt4lessIS4_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !212  ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !27

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  store i64 %i.p, ptr %i.f, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr %i.j, ptr %i.c, align 8, !tbaa !80
  br label %bb.f
end_hunk_10
