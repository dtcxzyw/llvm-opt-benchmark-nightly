inline.NumInlined: 409
inline.NumDeleted: 213
begin_hunk_0_@_ZN4geos5index7strtree17SimpleSTRdistance16isWithinDistanceEPNS1_13SimpleSTRpairEd:_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRpairESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %3 = alloca %"class.std::priority_queue", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %5, ptr %3, align 8, !tbaa !47
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  store ptr %i.b, ptr %4, align 8, !tbaa !50
  store ptr %1, ptr %5, align 8, !tbaa !32
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRpairESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k
  %i.c = phi ptr [ %i.bx, %bb.k ], [ %i.b, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRpairESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 3 uses
  %i.d = phi ptr [ %i.bw, %bb.k ], [ %5, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRpairESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  %.01639 = phi double [ %.218, %bb.k ], [ 0x7FF0000000000000, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRpairESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
end_hunk_0
