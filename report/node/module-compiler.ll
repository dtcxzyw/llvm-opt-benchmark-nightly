begin_hunk_0_@_ZNK2v88internal4wasm16CompilationState32EstimateCurrentMemoryConsumptionEv:bb.a
  %.val25.i.i = load ptr, ptr %i.ag, align 8
  %i.ah = ptrtoint ptr %.val25.i.i to i64
  %i.ai = ptrtoint ptr %.val24.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val22.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val23.i.i = load ptr, ptr %i.ak, align 8
  %i.al = ptrtoint ptr %.val23.i.i to i64
  %i.am = ptrtoint ptr %.val22.i.i to i64
  %1 = add i64 %i.ai, %i.am
  %i.an = sub i64 %i.ah, %1
  %2 = add i64 %i.an, %i.al
  %i.ao = and i64 %2, -16
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aq = load i32, ptr %i.ap, align 4
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm16CompilationState32EstimateCurrentMemoryConsumptionEv:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add i64 %.0.lcssa.i.i, 480
  %i.az = add i64 %i.ay, %i.ar
  %i.ba = add i64 %i.az, %i.ao
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 712), align 8, !range !58, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
end_hunk_1
