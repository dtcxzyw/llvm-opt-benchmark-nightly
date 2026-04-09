inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
bb.an:                                            ; preds = %.lr.ph1058, %bb.de
  %i.qp = phi i32 [ %i.qe, %.lr.ph1058 ], [ %i.ahi, %bb.de ]
  %indvars.iv1183 = phi i64 [ 0, %.lr.ph1058 ], [ %indvars.iv.next1184, %bb.de ] ; 2 uses
  %.41056 = phi i32 [ %.31070, %.lr.ph1058 ], [ %.5, %bb.de ] ; 18 uses
  %.sroa.26.11052 = phi float [ %.sroa.26.01066, %.lr.ph1058 ], [ %.sroa.26.3, %bb.de ] ; 2 uses
  %i.qq = phi <2 x float> [ %i.py, %.lr.ph1058 ], [ %i.ahj, %bb.de ] ; 2 uses
  %i.qr = load ptr, ptr %i.qf, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
          to label %bb.bz unwind label %bb.ca     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.abu = add nsw i32 %.41056, 15                ; 4 uses
  %i.abv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit671.peel unwind label %.loopexit.split-lp1146 ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit756
  %i.agi = mul nuw nsw i32 %i.qt, 5
  %4 = add i32 %.41056, %i.agi
  %i.agj = add i32 %4, 15
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.qy) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef %i.qw) #23
  %.pre1192 = load i32, ptr %i.qd, align 8
end_hunk_2
