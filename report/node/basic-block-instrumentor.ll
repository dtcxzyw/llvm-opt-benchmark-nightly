inline.NumInlined: 286
inline.NumDeleted: 217
begin_hunk_0_@_ZN2v88internal8compiler22BasicBlockInstrumentor10InstrumentEPNS0_24OptimizedCompilationInfoEPNS1_7TFGraphEPNS1_8ScheduleEPNS0_7IsolateE:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 48
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler22BasicBlockInstrumentor10InstrumentEPNS0_24OptimizedCompilationInfoEPNS1_7TFGraphEPNS1_8ScheduleEPNS0_7IsolateE:bb.a
  store ptr %i.dq, ptr %i.cu, align 8
  store ptr %i.ds, ptr %i.cv, align 16
  store ptr %i.dv, ptr %i.cw, align 8
  %i.dw = icmp eq i64 %.094117, 0                 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8            ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 80 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler22BasicBlockInstrumentor10InstrumentEPNS0_24OptimizedCompilationInfoEPNS1_7TFGraphEPNS1_8ScheduleEPNS0_7IsolateE:bb.a

_ZN2v88internal8compilerL18FindInsertionPointEPNS1_10BasicBlockE.exit: ; preds = %bb.l, %bb.m, %bb.k
  %.08.lcssa.i = phi ptr [ %i.dy, %bb.k ], [ %i.eg, %bb.m ], [ %.0811.i, %bb.l ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %gepdiff = select i1 %i.dw, i64 80, i64 56
  %15 = select i1 %i.dw, i64 10, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ej = call noundef ptr @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE19PrepareForInsertionEPKS4_mPm(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef %.08.lcssa.i, i64 noundef %15, ptr noundef nonnull %i.a)
  %.idx.sroa.sel = select i1 %i.dw, ptr %i.b, ptr %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %.idx.sroa.sel, i64 %gepdiff, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %16 = select i1 %i.dw, i64 0, i64 3
  br label %bb.o

bb.n:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler22BasicBlockInstrumentor10InstrumentEPNS0_24OptimizedCompilationInfoEPNS1_7TFGraphEPNS1_8ScheduleEPNS0_7IsolateE:bb.a
  br i1 %i.em, label %bb.p, label %bb.s

bb.o:                                             ; preds = %_ZN2v88internal8compilerL18FindInsertionPointEPNS1_10BasicBlockE.exit, %bb.o
  %indvars.iv = phi i64 [ %16, %_ZN2v88internal8compilerL18FindInsertionPointEPNS1_10BasicBlockE.exit ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.eo = load ptr, ptr %i.en, align 8
  call void @_ZN2v88internal8compiler8Schedule15SetBlockForNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull %i.cx, ptr noundef %i.eo) #10
end_hunk_3
