begin_hunk_0
  br i1 %.not89, label %.preheader.preheader, label %FT_Stream_Seek.exit.thread

.preheader.preheader:                             ; preds = %bb.u
  %i.dp = load <16 x i8>, ptr %i.c, align 16, !tbaa !227 ; 2 uses
  %i.dq = icmp ne <16 x i8> %i.dp, zeroinitializer
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  %i.dt = load <16 x i8>, ptr %i.b, align 16, !tbaa !227
  %i.du = icmp ne <16 x i8> %i.dp, %i.dt
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp eq i16 %i.dv, 0
  %or.cond13 = select i1 %i.ds, i1 true, i1 %i.dw
  br i1 %or.cond13, label %bb.v, label %FT_Stream_Seek.exit.thread

bb.v:                                             ; preds = %.preheader.preheader
end_hunk_0
