inline.NumInlined: 782
inline.NumDeleted: 476
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data20lockedSetFrameBufferERKNS_11FrameBufferE:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc54
  %4 = sub i64 %i.cu, %i.cv
  %5 = add i64 %4, -8                             ; 2 uses
  %i.dh = lshr i64 %5, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader137, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dj = sub i64 %i.cu, %i.cv
  %i.dk = and i64 %i.dj, -8                       ; 2 uses
  %scevgep131 = getelementptr i8, ptr %i.de, i64 %i.dk
  %scevgep132 = getelementptr i8, ptr %i.ct, i64 %i.dk
  %bound0 = icmp ult ptr %i.de, %scevgep132
  %bound1 = icmp ult ptr %i.ct, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader137, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFile4Data10fillBufferENS_11FrameBuffer13ConstIteratorEiiiii:bb.a
  %.not.i.i = trunc i32 %i.y to i16
  %i.ae = icmp samesign ugt i32 %i.m, 2139095039
  %i.af = icmp samesign ugt i32 %i.m, 1199566847
  %7 = lshr i32 %i.m, 13                          ; 2 uses
  %8 = and i32 %7, 1
  %9 = add nuw i32 %8, %i.m
  %i.ag = add i32 %9, 134221823
  %i.ah = lshr i32 %i.ag, 13
  %i.ai = or i32 %i.ah, %i.z
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = or disjoint i16 %i.p, 31744
  %i.al = icmp eq i32 %i.m, 2139095040
  %i.am = and i32 %7, 1023                        ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = zext i1 %i.an to i16
  %i.ap = trunc nuw nsw i32 %i.am to i16
end_hunk_1
