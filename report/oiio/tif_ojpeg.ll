inline.NumInlined: 64
inline.NumDeleted: 29
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %i.ks = add i16 %i.ko, -1                       ; 3 uses
  store i16 %i.ks, ptr %i.jy, align 8, !tbaa !95
  %i.kt = zext i8 %i.kq to i16
  %i.ku = or disjoint i16 %i.kk, %i.kt            ; 3 uses
  %i.kv = icmp ult i16 %i.ku, 11
  br i1 %i.kv, label %bb.cq, label %bb.cr

end_hunk_0
begin_hunk_1_@OJPEGReadHeaderInfoSec:bb.a
  br i1 %i.kx, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.ky = add i16 %i.ku, -8                       ; 2 uses
  %i.kz = urem i16 %i.ky, 3
  %i.la = udiv i16 %i.ky, 3                       ; 3 uses
  %.not79.i = icmp eq i16 %i.kz, 0
end_hunk_1
begin_hunk_2_@OJPEGReadHeaderInfoSec:bb.a
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %exitcond.peel.not.i = icmp ult i16 %i.ku, 14
  br i1 %exitcond.peel.not.i, label %._crit_edge.i112, label %.peel.next.i

bb.dw:                                            ; preds = %bb.di
end_hunk_2
