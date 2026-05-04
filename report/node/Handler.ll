inline.NumInlined: 723
inline.NumDeleted: 412
begin_hunk_0_@_ZN4LIEF3ELF11DataHandler7Handler11from_streamERSt10unique_ptrINS_12BinaryStreamESt14default_deleteIS4_EE:bb.a
  store i8 %i.ag, ptr %i.ae, align 1, !noalias !8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i, %bb.d, %bb.e
  %.sroa.035.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ]
  %.sroa.9.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.af, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
