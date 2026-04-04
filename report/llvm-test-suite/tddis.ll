begin_hunk_0
  br i1 %i.z, label %.preheader92.us.preheader, label %.preheader89.thread159

.preheader92.us.preheader:                        ; preds = %.preheader93
  %wide.trip.count130 = zext nneg i32 %7 to i64   ; 16 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count130, 3  ; 2 uses
  %scevgep173 = getelementptr i8, ptr %3, i64 %i.aa
  %min.iters.check178 = icmp ult i32 %7, 6
end_hunk_0
begin_hunk_1
  %i.br = zext nneg i32 %i.bp to i64              ; 4 uses
  %wide.trip.count138 = zext nneg i32 %7 to i64
  %i.bs = shl nuw nsw i64 %wide.trip.count130, 3  ; 3 uses
  %i.bt = add nuw nsw i64 %wide.trip.count130, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.br)
  %i.bu = shl nuw nsw i64 %umax, 3                ; 2 uses
  %scevgep193 = getelementptr i8, ptr %3, i64 %i.bs
  %i.bv = sub nsw i64 %i.bu, %i.bs
  %scevgep194 = getelementptr i8, ptr %4, i64 %i.bv
  %9 = add nuw nsw i64 %wide.trip.count130, 1
  %umax201 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.br)
  %i.bw = sub nsw i64 %umax201, %wide.trip.count130 ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.bw, 4
  %n.vec206 = and i64 %i.bw, -4                   ; 3 uses
end_hunk_1
begin_hunk_2

.preheader.us.preheader:                          ; preds = %._crit_edge.us108, %.preheader89.thread159
  %.pre-phi158168 = phi i32 [ %.pre, %.preheader89.thread159 ], [ %i.bp, %._crit_edge.us108 ]
  %i.ej = sext i32 %7 to i64                      ; 11 uses
  %i.ek = sext i32 %.pre-phi158168 to i64         ; 4 uses
  %i.el = shl nsw i64 %i.ej, 3                    ; 2 uses
  %i.em = add nsw i64 %i.ej, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.em, i64 %i.ek)
  %i.en = shl nsw i64 %smax, 3                    ; 2 uses
  %i.eo = sub i64 %i.en, %i.el
  %scevgep247 = getelementptr i8, ptr %4, i64 %i.eo
  %10 = add nsw i64 %i.ej, 1
  %smax254 = tail call i64 @llvm.smax.i64(i64 %10, i64 %i.ek)
  %i.ep = sub i64 %smax254, %i.ej                 ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.ep, 4
  %n.vec259 = and i64 %i.ep, -4                   ; 3 uses
end_hunk_2
