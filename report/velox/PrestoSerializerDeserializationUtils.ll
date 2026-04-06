begin_hunk_0
inline.NumInlined: 14589
inline.NumDeleted: 3684
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readLengthPrefixedStringB5cxx11EPNS0_15ByteInputStreamE:bb.a
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %.0.copyload.i.i, %bb.b ], [ %i.n, %bb.c ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !255
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !86
  store i8 0, ptr %i.o, align 8, !tbaa !39
  %i.q = sext i32 %.0.i to i64                    ; 4 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readLengthPrefixedStringB5cxx11EPNS0_15ByteInputStreamE:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread: ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readLengthPrefixedStringB5cxx11EPNS0_15ByteInputStreamE:bb.a
  br i1 %cond.i.i.i.i, label %.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.s = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.q, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.g
  %i.t = phi ptr [ %.pre, %bb.g ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.q, ptr %i.p, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !39
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readLengthPrefixedStringB5cxx11EPNS0_15ByteInputStreamE:bb.a
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.v, i32 noundef %.0.i)
          to label %_ZN8facebook5velox15ByteInputStream9readBytesIcEEvPT_i.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
end_hunk_4
