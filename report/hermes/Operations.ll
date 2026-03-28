begin_hunk_0

bb.ak:                                            ; preds = %bb.aj
  %i.ej = icmp ugt i64 %i.ee, -844424930131969
  br i1 %i.ej, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %bb.ak
  store i64 -281474976710656, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  br label %_ZN6hermes2vm11TwineChar16C2EPKc.exit138

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.ak
  %10 = and i64 %i.ee, 281474976710655
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1140850688
  %14 = icmp ult i32 %13, 150994944
  %i.ek = or i64 %i.ee, -281474976710656
  %15 = select i1 %14, i64 %i.ek, i64 -281474976710656 ; 2 uses
  store i64 %15, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !7
  %16 = and i64 %15, 281474976710655
  %.not226 = icmp eq i64 %16, 0
  br i1 %.not226, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit138, label %.thread, !prof !186

_ZN6hermes2vm11TwineChar16C2EPKc.exit138:         ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.thread, %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
end_hunk_0
begin_hunk_1

bb.ap:                                            ; preds = %bb.ao
  %i.fg = icmp ugt i64 %i.fb, -844424930131969
  br i1 %i.fg, label %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit, label %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread

_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread: ; preds = %bb.ap
  store i64 -281474976710656, ptr %.0.i.i.i.i.i.i139, align 8, !tbaa !7
  br label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151

_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit: ; preds = %bb.ap
  %17 = and i64 %i.fb, 281474976710655
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1140850688
  %21 = icmp ult i32 %20, 150994944
  %i.fh = or i64 %i.fb, -281474976710656
  %22 = select i1 %21, i64 %i.fh, i64 -281474976710656 ; 2 uses
  store i64 %22, ptr %.0.i.i.i.i.i.i139, align 8, !tbaa !7
  %23 = and i64 %22, 281474976710655
  %.not227 = icmp eq i64 %23, 0
  br i1 %.not227, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151, label %.thread215, !prof !186

_ZN6hermes2vm11TwineChar16C2EPKc.exit151:         ; preds = %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit.thread, %_ZN6hermes2vm12PseudoHandleINS0_8CallableEE10dyn_vmcastINS0_11HermesValueEEES3_ONS1_IT_EE.exit
end_hunk_1
