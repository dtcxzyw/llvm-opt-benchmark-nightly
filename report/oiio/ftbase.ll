begin_hunk_0
  br i1 %.not89, label %.preheader.preheader, label %FT_Stream_Seek.exit.thread

.preheader.preheader:                             ; preds = %bb.u
  %i.dp = load <16 x i8>, ptr %i.c, align 16, !tbaa !227
  %.fr = freeze <16 x i8> %i.dp                   ; 2 uses
  %i.dq = icmp ne <16 x i8> %.fr, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  %i.dt = load <16 x i8>, ptr %i.b, align 16, !tbaa !227
  %.fr158 = freeze <16 x i8> %i.dt
  %i.du = icmp ne <16 x i8> %.fr, %.fr158
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp eq i16 %i.dv, 0
  %or.cond13 = or i1 %i.ds, %i.dw
  br i1 %or.cond13, label %bb.v, label %FT_Stream_Seek.exit.thread

bb.v:                                             ; preds = %.preheader.preheader
end_hunk_0
