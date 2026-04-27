begin_hunk_0_@initialize_sources
define dso_local noalias noundef ptr @initialize_sources(ptr noundef readonly byval(%struct.Input) align 8 captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 25 uses
  %i.c = mul i64 %i.b, 48                         ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #8 ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@initialize_sources:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge258
  %i.ec = shl i64 %i.b, 3                         ; 3 uses
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.ec) #8 ; 10 uses
  %i.ee = load i64, ptr %1, align 8, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !33 ; 11 uses
  %i.eh = sext i32 %i.eg to i64                   ; 15 uses
  %i.ei = mul i64 %i.b, %i.eh                     ; 4 uses
  %i.ej = shl i64 %i.ei, 3                        ; 2 uses
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ej) #8 ; 5 uses
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ec) #8 ; 10 uses
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.ej) #8 ; 5 uses
  %i.en = tail call noalias ptr @malloc(i64 noundef %i.ec) #8 ; 6 uses
  %i.eo = shl nsw i32 %i.eg, 1
  %i.ep = or disjoint i32 %i.eo, 1
end_hunk_1
begin_hunk_2_@initialize_sources:bb.a
  %i.et = mul i64 %i.es, %i.eq
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.et) #8 ; 7 uses
  %i.ev = mul i64 %i.q, %i.ei
  %2 = add i64 %i.b, %i.ei
  %op.rdx = shl i64 %2, 4
  %op.rdx448 = add i64 %op.rdx, %i.ev
  %i.ew = add i64 %op.rdx448, %i.ee
  store i64 %i.ew, ptr %1, align 8, !tbaa !15
  %i.ex = icmp sgt i64 %i.b, 0
  br i1 %i.ex, label %.lr.ph261.preheader, label %._crit_edge300

.lr.ph261.preheader:                              ; preds = %bb.f
  %i.ey = add nsw i64 %i.b, -1                    ; 2 uses
  %xtraiter455 = and i64 %i.b, 3                  ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 3
  br i1 %i.ez, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
end_hunk_2
