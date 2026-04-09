inline.NumInlined: 1072
inline.NumDeleted: 640
begin_hunk_0_@main:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i52.preheader

.lr.ph.i.i.i.i52.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %11 = add i64 %i.cu, -8
  %12 = sub i64 %11, %i.cv                        ; 2 uses
  %i.dh = lshr i64 %12, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i52.preheader285, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i52.preheader
  %scevgep = getelementptr i8, ptr %i.de, i64 8
  %13 = add i64 %i.cu, -8
  %i.dj = sub i64 %13, %i.cv
  %i.dk = and i64 %i.dj, -8                       ; 2 uses
  %scevgep253 = getelementptr i8, ptr %scevgep, i64 %i.dk
  %scevgep254 = getelementptr i8, ptr %.sroa.054.087, i64 8
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.dk
  %bound0 = icmp ult ptr %i.de, %scevgep255
  %bound1 = icmp ult ptr %.sroa.054.087, %scevgep253
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i52.preheader285, label %vector.ph

end_hunk_0
begin_hunk_1_@main:bb.a

.lr.ph.i.i.i.i.i333.i.preheader:                  ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.akc = ptrtoaddr ptr %i.ajz to i64
  %14 = add i64 %i.ajp, -8
  %15 = sub i64 %14, %i.ajq                       ; 2 uses
  %i.akd = lshr i64 %15, 3
  %i.ake = add nuw nsw i64 %i.akd, 1              ; 2 uses
  %min.iters.check262 = icmp ult i64 %15, 24
  %i.akf = sub i64 %i.akc, %i.ajq
  %diff.check = icmp ult i64 %i.akf, 32
  %or.cond279 = or i1 %min.iters.check262, %diff.check
end_hunk_1
