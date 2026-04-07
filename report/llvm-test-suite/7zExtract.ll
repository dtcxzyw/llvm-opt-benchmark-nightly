begin_hunk_0_@_ZN8NArchive3N7z8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
  %.13 = phi i32 [ %i.kb, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit ], [ %i.am, %bb.ab ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE, i64 16), ptr %5, align 8, !tbaa !8
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.thread339 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #18
  unreachable

.thread339:                                       ; preds = %bb.cg
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.thread344

end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

bb.cm:                                            ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit
  %i.lf = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr %i.le, ptr %i.lf, align 16, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.lf, ptr nonnull @_ZTIPKc, ptr null) #15
          to label %bb.cq unwind label %bb.co

end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE3AddERKS2_:bb.a
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22, !range !85, !noundef !86
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc4.i.i unwind label %.loopexit.i.i

end_hunk_2
begin_hunk_3_@_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE3AddERKS2_:bb.a
  store i32 %i.u, ptr %i.h, align 4, !tbaa !21
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %bb.b, !llvm.loop !87

.loopexit.i.i:                                    ; preds = %bb.b
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN8NArchive3N7z8CDecoderD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE, i64 16), ptr %i.a, align 8, !tbaa !8
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #18
  unreachable

_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit, label %bb.c

end_hunk_4
begin_hunk_5_@_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE, i64 16), ptr %0, align 8, !tbaa !8
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable

_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}
end_hunk_5
begin_hunk_6_@_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !91   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN9CMyComPtrI8IUnknownED2Ev.exit, label %bb.c

end_hunk_6
begin_hunk_7_@_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
bb.e:                                             ; preds = %bb.a, %_ZN9CMyComPtrI8IUnknownED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %bb.a, label %._crit_edge, !llvm.loop !94
}

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2
end_hunk_7
begin_hunk_8_@_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE, i64 16), ptr %0, align 8, !tbaa !8
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable

_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.p, label %bb.a, label %._crit_edge, !llvm.loop !95
}

; Function Attrs: nounwind
end_hunk_9
begin_hunk_10_@llvm.vector.reduce.add.v2i64
!80 = !{!"p1 _ZTS23IArchiveExtractCallback", !12, i64 0}
!81 = !{!71, !78, i64 48}
!82 = distinct !{!82, !28}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 omnipotent char", !12, i64 0}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = distinct !{!87, !28}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !90, i64 0}
!90 = !{!"p1 _ZTS15ICompressCoder2", !12, i64 0}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTS9CMyComPtrI8IUnknownE", !93, i64 0}
!93 = !{!"p1 _ZTS8IUnknown", !12, i64 0}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
end_hunk_10
