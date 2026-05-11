inline.NumInlined: 2957
inline.NumDeleted: 1420
begin_hunk_0_@_ZN4node9inspector12NetworkAgent18getRequestPostDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_:bb.a
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.node::inspector::protocol::Binary", align 8 ; 5 uses
  %8 = alloca %"class.std::vector.204", align 8   ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4node9inspector12NetworkAgent18getRequestPostDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i, label %bb.h

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr null, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %8, align 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !120
  br label %_ZNK4node9inspector12RequestEntry18request_data_blobsEv.exit

end_hunk_1
begin_hunk_2_@_ZN4node9inspector12NetworkAgent18getRequestPostDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_:bb.a
  unreachable

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %bb.h
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24, !noalias !120 ; 3 uses
  store ptr %i.bo, ptr %8, align 8, !alias.scope !120
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !120
end_hunk_2
begin_hunk_3_@_ZN4node9inspector12NetworkAgent18getRequestPostDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_:bb.a
  br i1 %i.cc, label %_ZNK4node9inspector12RequestEntry18request_data_blobsEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !123

_ZNK4node9inspector12RequestEntry18request_data_blobsEv.exit: ; preds = %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.a = phi ptr [ null, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i ], [ %i.cb, %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.a, ptr %10, align 8, !alias.scope !120
  call void @_ZN4node9inspector8protocol6Binary6concatERKSt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.node::inspector::protocol::Binary") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #22
  %i.cd = load ptr, ptr %8, align 8               ; 3 uses
  %i.ce = load ptr, ptr %10, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4node9inspector8protocol6BinaryEEvT_S5_.exit.i, label %.lr.ph.i.i.i

end_hunk_3
begin_hunk_4_@_ZN4node9inspector12NetworkAgent15getResponseBodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_Pb:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.node::inspector::protocol::Binary", align 8 ; 6 uses
  %9 = alloca %"class.std::vector.204", align 8   ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
end_hunk_4
begin_hunk_5_@_ZN4node9inspector12NetworkAgent15getResponseBodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_Pb:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i, label %bb.g

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i: ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr null, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %9, align 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !128
  br label %_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit

end_hunk_5
begin_hunk_6_@_ZN4node9inspector12NetworkAgent15getResponseBodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_Pb:bb.a
  unreachable

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %bb.g
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24, !noalias !128 ; 3 uses
  store ptr %i.bq, ptr %9, align 8, !alias.scope !128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !128
end_hunk_6
begin_hunk_7_@_ZN4node9inspector12NetworkAgent15getResponseBodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_Pb:bb.a
  br i1 %i.ce, label %_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !123

_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit: ; preds = %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.a = phi ptr [ null, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i ], [ %i.cd, %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.a, ptr %12, align 8, !alias.scope !128
  call void @_ZN4node9inspector8protocol6Binary6concatERKSt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.node::inspector::protocol::Binary") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #22
  %i.cf = load ptr, ptr %9, align 8               ; 3 uses
  %i.cg = load ptr, ptr %12, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4node9inspector8protocol6BinaryEEvT_S5_.exit.i, label %.lr.ph.i.i.i

end_hunk_7
begin_hunk_8_@_ZN4node9inspector12NetworkAgent21streamResourceContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_8protocol6BinaryE:bb.a
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %5 = alloca %"class.node::inspector::protocol::Binary", align 16 ; 6 uses
  %6 = alloca %"class.std::vector.204", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !noalias !131 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4node9inspector12NetworkAgent21streamResourceContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_8protocol6BinaryE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i, label %bb.e

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i: ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr null, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %6, align 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !134
  br label %_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit

end_hunk_9
begin_hunk_10_@_ZN4node9inspector12NetworkAgent21streamResourceContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_8protocol6BinaryE:bb.a
  unreachable

_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %bb.e
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #24, !noalias !134 ; 3 uses
  store ptr %i.az, ptr %6, align 8, !alias.scope !134
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !134
end_hunk_10
begin_hunk_11_@_ZN4node9inspector12NetworkAgent21streamResourceContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_8protocol6BinaryE:bb.a
  br i1 %i.bn, label %_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !123

_ZNK4node9inspector12RequestEntry19response_data_blobsEv.exit: ; preds = %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.a = phi ptr [ null, %_ZNSt12_Vector_baseIN4node9inspector8protocol6BinaryESaIS3_EEC2EmRKS4_.exit.i.thread.i ], [ %i.bm, %_ZSt10_ConstructIN4node9inspector8protocol6BinaryEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.a, ptr %7, align 8, !alias.scope !134
  call void @_ZN4node9inspector8protocol6Binary6concatERKSt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.node::inspector::protocol::Binary") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_11
begin_hunk_12_@_ZN4node9inspector12NetworkAgent21streamResourceContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_8protocol6BinaryE:bb.a

_ZN4node9inspector8protocol6BinaryD2Ev.exit:      ; preds = %_ZN4node9inspector8protocol6BinaryaSEOS2_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  %i.cx = load ptr, ptr %6, align 8               ; 3 uses
  %i.cy = load ptr, ptr %7, align 8               ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4node9inspector8protocol6BinaryEEvT_S5_.exit.i, label %.lr.ph.i.i.i

end_hunk_12
