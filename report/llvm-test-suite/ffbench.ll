begin_hunk_0_@fourn
define internal fastcc void @fourn(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 -1, 2) %1) unnamed_addr #3 {
.preheader6:
  %.b = load i1, ptr @main.nsize.0, align 4
  %i.a = select i1 %.b, i32 256, i32 0            ; 2 uses
  %.b1 = load i1, ptr @main.nsize.1, align 4      ; 3 uses
  %i.b = select i1 %.b1, i32 256, i32 0           ; 2 uses
  %i.c = mul nuw nsw i32 %i.b, %i.a               ; 2 uses
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, f0x401921FB54442D1C ; 2 uses
  %2 = select i1 %.b1, i32 512, i32 0             ; 4 uses
  %i.f = mul nuw nsw i32 %2, %i.a                 ; 2 uses
  br i1 %.b1, label %.lr.ph19, label %._crit_edge33

end_hunk_0
begin_hunk_1_@fourn:.preheader6
  br i1 %.not151, label %.loopexit, label %.preheader1, !llvm.loop !25

._crit_edge33.loopexit:                           ; preds = %.loopexit
  %.pre.b = load i1, ptr @main.nsize.0, align 4   ; 2 uses
  %.pre = select i1 %.pre.b, i32 256, i32 0
  %.pre63 = mul nuw nsw i32 %.pre, %i.b
  %3 = select i1 %.pre.b, i32 131072, i32 0
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %.preheader6, %._crit_edge33.loopexit
  %.pre-phi.a = phi i32 [ 512, %._crit_edge33.loopexit ], [ 0, %.preheader6 ] ; 7 uses
  %i.bp = phi i32 [ %.pre63, %._crit_edge33.loopexit ], [ %i.c, %.preheader6 ]
  %4 = phi i32 [ %3, %._crit_edge33.loopexit ], [ 0, %.preheader6 ] ; 7 uses
  %5 = sdiv i32 %i.c, %i.bp
  %i.bq = mul nsw i32 %4, %5                      ; 4 uses
  %.not13.1 = icmp eq i32 %4, 0
  br i1 %.not13.1, label %.preheader5.1, label %.lr.ph19.1

.lr.ph19.1:                                       ; preds = %._crit_edge33
  %i.br = add nsw i32 %.pre-phi.a, -2
  %i.bs = zext nneg i32 %.pre-phi.a to i64
  %i.bt = zext nneg i32 %4 to i64
  %i.bu = sext i32 %i.bq to i64
  br label %bb.c

end_hunk_1
begin_hunk_2_@fourn:.preheader6
  br label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.loopexit4.1.preheader, %.loopexit4.1
  %.0145.in.1 = phi i32 [ %.0145.1, %.loopexit4.1 ], [ %4, %.loopexit4.1.preheader ]
  %.1141.1 = phi i32 [ %i.cm, %.loopexit4.1 ], [ %.014014.1, %.loopexit4.1.preheader ] ; 3 uses
  %.0145.1 = lshr i32 %.0145.in.1, 1              ; 5 uses
  %i.cj = icmp samesign uge i32 %.0145.1, %.pre-phi.a
  %i.ck = icmp sgt i32 %.1141.1, %.0145.1
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cm = sub nsw i32 %.1141.1, %.0145.1
end_hunk_2
begin_hunk_3_@fourn:.preheader6
  %i.cn = add nsw i32 %.1141.1, %.0145.1
  %indvars.iv.next.1 = add i64 %indvars.iv.1, %i.bs ; 2 uses
  %indvars43.1 = trunc i64 %indvars.iv.next.1 to i32
  %.not.1 = icmp slt i32 %4, %indvars43.1
  br i1 %.not.1, label %.preheader5.1, label %bb.c, !llvm.loop !22

.preheader5.1:                                    ; preds = %bb.d, %._crit_edge33
  %i.co = icmp samesign ult i32 %.pre-phi.a, %4
  br i1 %i.co, label %.lr.ph32.preheader.1, label %._crit_edge33.1

.lr.ph32.preheader.1:                             ; preds = %.preheader5.1
  %i.cp = zext nneg i32 %.pre-phi.a to i64
  %i.cq = sext i32 %i.bq to i64
  br label %.lr.ph32.1

.lr.ph32.1:                                       ; preds = %.loopexit.1, %.lr.ph32.preheader.1
  %.014331.1 = phi i32 [ %i.cr, %.loopexit.1 ], [ %.pre-phi.a, %.lr.ph32.preheader.1 ] ; 4 uses
  %i.cr = shl i32 %.014331.1, 1                   ; 4 uses
  %i.cs = sdiv i32 %i.cr, %.pre-phi.a
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fdiv double %i.e, %i.ct                 ; 2 uses
  %i.cv = fmul double %i.cu, 5.000000e-01
end_hunk_3
begin_hunk_4_@fourn:.preheader6
  br i1 %.not151.1, label %.loopexit.1, label %.preheader1.1, !llvm.loop !25

.loopexit.1:                                      ; preds = %._crit_edge26.1, %.lr.ph32.1
  %i.eb = icmp slt i32 %i.cr, %4
  br i1 %i.eb, label %.lr.ph32.1, label %._crit_edge33.1, !llvm.loop !23

._crit_edge33.1:                                  ; preds = %.loopexit.1, %.preheader5.1
end_hunk_4
