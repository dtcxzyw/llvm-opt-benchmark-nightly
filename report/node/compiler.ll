inline.NumInlined: 6502
inline.NumDeleted: 2740
begin_hunk_0_@_ZN2v88internal14FeedbackVector30RecomputeOptimizedOsrCodeFlagsEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEE:bb.a
bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.am, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %.031 = phi i8 [ 0, %.lr.ph ], [ %.3, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 4 uses
  %.0730 = phi i8 [ 0, %.lr.ph ], [ %.310, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 4 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not = icmp eq i8 %i.h, -107
  br i1 %.not, label %bb.c, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN2v88internal14FeedbackVector30RecomputeOptimizedOsrCodeFlagsEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load atomic volatile i32, ptr %i.o monotonic, align 4
  %4 = and i32 %i.r, 16
  %5 = icmp ne i32 %4, 0
  %6 = trunc nuw i8 %.031 to i1
  %7 = or i1 %5, %6
  %8 = zext i1 %7 to i8
  %i.s = load atomic volatile i32, ptr %i.o monotonic, align 4
  %i.t = and i32 %i.s, 15
  %i.u = icmp eq i32 %i.t, 11
  %9 = trunc nuw i8 %.0730 to i1
  %i.v = or i1 %i.u, %9
  %10 = zext i1 %i.v to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.310 = phi i8 [ %.0730, %bb.b ], [ %.0730, %bb.d ], [ %10, %bb.e ], [ %.0730, %bb.c ] ; 2 uses
  %.3 = phi i8 [ %.031, %bb.b ], [ %.031, %bb.d ], [ %8, %bb.e ], [ %.031, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %i.e, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal14FeedbackVector30RecomputeOptimizedOsrCodeFlagsEPNS0_7IsolateENS0_6HandleINS0_13BytecodeArrayEEE:bb.a
  br i1 %.not23, label %bb.b, label %._crit_edge, !llvm.loop !230

._crit_edge:                                      ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %11 = trunc nuw i8 %.310 to i1
  %i.an = trunc nuw i8 %.3 to i1                  ; 2 uses
  br i1 %11, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa40 = phi i1 [ %i.an, %._crit_edge ], [ false, %bb.a ] ; 2 uses
end_hunk_2
