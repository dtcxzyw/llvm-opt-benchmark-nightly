inline.NumInlined: 8841
inline.NumDeleted: 3443
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface18MemoryOutputStream17InsertShiftedInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmRNS0_17GeneratedCodeInfoE:bb.a

bb.b:                                             ; preds = %.lr.ph49, %.critedge
  %.02848 = phi i64 [ %i.n, %.lr.ph49 ], [ %i.ba, %.critedge ] ; 2 uses
  %.03047 = phi i64 [ 0, %.lr.ph49 ], [ %.131.lcssa, %.critedge ] ; 3 uses
  %.sroa.032.046 = phi ptr [ %i.i, %.lr.ph49 ], [ %i.bg, %.critedge ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.032.046, align 8, !tbaa !179 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !68   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler20CommandLineInterface18MemoryOutputStream17InsertShiftedInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmRNS0_17GeneratedCodeInfoE:bb.a
  %i.ai = add i64 %i.ah, -1
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.038 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ]  ; 4 uses
  %.12937 = phi i64 [ %.02848, %.lr.ph ], [ %.2, %bb.j ] ; 4 uses
  %.13136 = phi i64 [ %.03047, %.lr.ph ], [ %i.as, %bb.j ] ; 5 uses
  %5 = icmp ult i64 %.13136, %i.ai
  br i1 %5, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.13136
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler20CommandLineInterface18MemoryOutputStream17InsertShiftedInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmRNS0_17GeneratedCodeInfoE:bb.a
bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h
  %.2 = phi i64 [ %.12937, %bb.h ], [ %i.ar, %bb.i ], [ %.12937, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.aq, %bb.h ], [ %.038, %bb.i ], [ %.038, %bb.f ] ; 2 uses
  %i.as = add nuw i64 %.13136, 1                  ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.as, %i.af
  br i1 %exitcond.not.a, label %.critedge.loopexit, label %bb.e, !llvm.loop !180

.critedge.loopexit:                               ; preds = %bb.j, %bb.e
  %.131.lcssa.ph = phi i64 [ %.13136, %bb.e ], [ %i.af, %bb.j ]
  %.129.lcssa.ph = phi i64 [ %.12937, %bb.e ], [ %.2, %bb.j ]
  %.0.lcssa.ph = phi i32 [ %.038, %bb.e ], [ %.1, %bb.j ]
  %i.at = zext i32 %.0.lcssa.ph to i64
end_hunk_2
