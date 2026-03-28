begin_hunk_0
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, -1140850688
  %i.z = icmp ult i32 %i.y, 150994944
  %8 = or i64 %.sroa.0.0.copyload.i, -281474976710656
  %9 = select i1 %i.z, i64 %8, i64 -281474976710656 ; 2 uses
  store i64 %9, ptr %i.e, align 8, !tbaa !8
  %10 = and i64 %9, 281474976710655
  %.not330 = icmp eq i64 %10, 0
  br i1 %.not330, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.a, !prof !112

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit129, %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !49
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread323

bb.a:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit.a
  %.not331 = icmp eq i32 %i.m, 2
  br i1 %.not331, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit132

end_hunk_1
