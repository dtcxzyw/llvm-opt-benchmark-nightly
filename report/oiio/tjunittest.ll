inline.NumInlined: 62
inline.NumDeleted: 12
begin_hunk_0_@checkBufYUV:bb.a
  %i.p = sdiv i32 %i.k, %i.d                      ; 7 uses
  %i.q = sdiv i32 %i.o, %i.g                      ; 9 uses
  %.b = load i1, ptr @yuvAlign, align 4           ; 2 uses
  %.neg = select i1 %.b, i32 0, i32 3             ; 2 uses
  %5 = add i32 %.neg, %i.k
  %6 = select i1 %.b, i32 -1, i32 -4              ; 2 uses
  %i.r = and i32 %5, %6                           ; 5 uses
  %i.s = add i32 %.neg, %i.p
  %i.t = and i32 %i.s, %6                         ; 4 uses
  %i.u = shl nsw i32 %.sroa.0.0.extract.trunc, 4
  %i.v = sdiv i32 %i.u, %.sroa.4.0.extract.trunc
  %i.w = shl nsw i32 %.sroa.0.0.extract.trunc, 3
end_hunk_0
