inline.NumInlined: 173
inline.NumDeleted: 95
begin_hunk_0_@_ZN6Assimp9LogStream19createDefaultStreamE18aiDefaultLogStreamPKcPNS_8IOSystemE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef nonnull @.str.8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  store ptr %i.ah, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.loopexit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE:bb.a
  %i.ae = phi ptr [ %i.v, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.af, %i.ae
  br i1 %.not13, label %.loopexit, label %.lr.ph, !llvm.loop !8

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %bb.d
  ret void
end_hunk_2
begin_hunk_3_@_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.011.019 = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #21, !inline_history !10
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.e, %bb.f
end_hunk_4
begin_hunk_5_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 8
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.aj, i1 false)
end_hunk_5
begin_hunk_6_@_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj:bb.a
bb.l:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.c, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ false, %bb.b ], [ false, %bb.l ]
end_hunk_6
begin_hunk_7_@_ZN6Assimp13DefaultLoggerD2Ev:bb.a
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #21, !inline_history !10
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.c, %bb.d
end_hunk_7
begin_hunk_8_@_ZN6Assimp13DefaultLoggerD2Ev:bb.a
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %_ZN6Assimp13LogStreamInfoD2Ev.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_8
begin_hunk_9_@_ZN6Assimp19StdOStreamLogStream5writeEPKc
define linkonce_odr hidden void @_ZN6Assimp19StdOStreamLogStream5writeEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !14 ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

end_hunk_9
begin_hunk_10_@_ZN6Assimp19StdOStreamLogStream5writeEPKc:bb.a
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !nonnull !7, !align !14
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 0 uses
  ret void
}
end_hunk_10
begin_hunk_11_@llvm.umin.i64
!3 = !{ptr @_ZN6Assimp13FileLogStreamD2Ev}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{null}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = !{i64 8}
end_hunk_11
