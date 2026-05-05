inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal9Assembler16movq_heap_numberENS0_8RegisterEd:bb.a
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal9Assembler4emitENS0_11Immediate64E.exit

_ZN2v88internal9Assembler4emitENS0_11Immediate64E.exit: ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.k = lshr i8 %1, 3
  %i.l = or disjoint i8 %i.k, 72
  store i8 %i.l, ptr %i.j, align 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Assembler2dqEPNS0_5LabelE:bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #27
  unreachable

_ZN2v88internal9Assembler4emitENS0_11Immediate64E.exit: ; preds = %bb.h, %bb.f
  %.0.i = phi i32 [ %i.af, %bb.f ], [ %i.ag, %bb.h ]
  %i.ah = zext nneg i32 %.0.i to i64
  %i.ai = add i64 %i.ah, %i.ac
end_hunk_1
