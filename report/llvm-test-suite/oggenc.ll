inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@ov_pcm_seek:bb.a
bb.ad:                                            ; preds = %.lr.ph191, %bb.ah
  %i.id = phi i64 [ %i.hz, %.lr.ph191 ], [ %i.it, %bb.ah ] ; 2 uses
  %i.ie = sub nsw i64 %1, %i.id                   ; 2 uses
  %i.if = load i32, ptr %i.ib, align 8            ; 6 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %vorbis_synthesis_pcmout.exit.a, label %._crit_edge.i148

vorbis_synthesis_pcmout.exit.a:                   ; preds = %bb.ad
  %i.ih = load i32, ptr %i.ic, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@ov_pcm_seek:bb.a
  %i.ij = sub nsw i32 %i.ih, %i.if
  %spec.select168 = select i1 %i.ii, i32 %i.ij, i32 0
  %i.ik = sext i32 %spec.select168 to i64
  %4 = call i64 @llvm.smin.i64(i64 %i.ie, i64 %i.ik) ; 4 uses
  %5 = trunc i64 %4 to i32                        ; 2 uses
  %.not.i146 = icmp eq i32 %5, 0
  br i1 %.not.i146, label %._crit_edge.i148, label %bb.ae

bb.ae:                                            ; preds = %vorbis_synthesis_pcmout.exit.a
  %i.il = add nsw i32 %i.if, %5                   ; 2 uses
  %i.im = load i32, ptr %i.ic, align 4
  %i.in = icmp sgt i32 %i.il, %i.im
  br i1 %i.in, label %vorbis_synthesis_read.exit, label %._crit_edge.i148

._crit_edge.i148:                                 ; preds = %bb.ad, %bb.ae, %vorbis_synthesis_pcmout.exit.a
  %.017.i232 = phi i64 [ %4, %bb.ae ], [ %4, %vorbis_synthesis_pcmout.exit.a ], [ 0, %bb.ad ]
  %.pre-phi.i = phi i32 [ %i.il, %bb.ae ], [ %i.if, %vorbis_synthesis_pcmout.exit.a ], [ %i.if, %bb.ad ]
  store i32 %.pre-phi.i, ptr %i.ib, align 8
  br label %vorbis_synthesis_read.exit

vorbis_synthesis_read.exit:                       ; preds = %bb.ae, %._crit_edge.i148
  %.017.i231 = phi i64 [ %4, %bb.ae ], [ %.017.i232, %._crit_edge.i148 ] ; 2 uses
  %i.io = add nsw i64 %.017.i231, %i.id           ; 2 uses
  store i64 %i.io, ptr %i.ae, align 8
  %i.ip = icmp slt i64 %.017.i231, %i.ie
  br i1 %i.ip, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %vorbis_synthesis_read.exit
end_hunk_1
