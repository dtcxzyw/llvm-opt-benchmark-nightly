begin_hunk_0

bb.ak:                                            ; preds = %bb.aj
  %i.ej = icmp ugt i64 %i.ee, -844424930131969
  br i1 %i.ej, label %10, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread

10:                                               ; preds = %bb.ak
  %11 = and i64 %i.ee, 281474976710655
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1140850688
  %15 = icmp ult i32 %14, 150994944
  br i1 %15, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %10, %bb.ak
  store i64 -281474976710656, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  br label %_ZN6hermes2vm11TwineChar16C2EPKc.exit138

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit: ; preds = %10
  %i.ek = or i64 %i.ee, -281474976710656          ; 2 uses
  store i64 %i.ek, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %.not226 = icmp eq i64 %i.ek, -281474976710656
  br i1 %.not226, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit138, label %.thread, !prof !186

_ZN6hermes2vm11TwineChar16C2EPKc.exit138:         ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread, %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
end_hunk_0
begin_hunk_1

bb.ap:                                            ; preds = %bb.ao
  %i.fg = icmp ugt i64 %i.fb, -844424930131969
  br i1 %i.fg, label %16, label %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread

16:                                               ; preds = %bb.ap
  %17 = and i64 %i.fb, 281474976710655
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1140850688
  %21 = icmp ult i32 %20, 150994944
  br i1 %21, label %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit, label %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread

_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread: ; preds = %16, %bb.ap
  store i64 -281474976710656, ptr %.0.i.i.i.i.i.i139, align 8, !tbaa !7
  br label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151

_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit: ; preds = %16
  %i.fh = or i64 %i.fb, -281474976710656          ; 2 uses
  store i64 %i.fh, ptr %.0.i.i.i.i.i.i139, align 8, !tbaa !7
  %.not227 = icmp eq i64 %i.fh, -281474976710656
  br i1 %.not227, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151, label %.thread215, !prof !186

_ZN6hermes2vm11TwineChar16C2EPKc.exit151:         ; preds = %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread, %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit
end_hunk_1
