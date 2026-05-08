inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@ov_pcm_seek:bb.a
bb.ad:                                            ; preds = %.lr.ph191, %bb.ah
  %i.id = phi i64 [ %i.hz, %.lr.ph191 ], [ %i.it, %bb.ah ] ; 2 uses
  %i.ie = sub nsw i64 %1, %i.id                   ; 2 uses
  %i.if = load i32, ptr %i.ib, align 8            ; 5 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %vorbis_synthesis_pcmout.exit.a, label %vorbis_synthesis_pcmout.exit

vorbis_synthesis_pcmout.exit.a:                   ; preds = %bb.ad
  %i.ih = load i32, ptr %i.ic, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@ov_pcm_seek:bb.a
  %i.ij = sub nsw i32 %i.ih, %i.if
  %spec.select168 = select i1 %i.ii, i32 %i.ij, i32 0
  %i.ik = sext i32 %spec.select168 to i64
  br label %vorbis_synthesis_pcmout.exit

vorbis_synthesis_pcmout.exit:                     ; preds = %vorbis_synthesis_pcmout.exit.a, %bb.ad
  %.017.i = phi i64 [ 0, %bb.ad ], [ %i.ik, %vorbis_synthesis_pcmout.exit.a ] ; 2 uses
  %spec.select107 = call i64 @llvm.smin.i64(i64 %i.ie, i64 %.017.i) ; 2 uses
  %4 = trunc i64 %spec.select107 to i32           ; 2 uses
  %.not.i146 = icmp eq i32 %4, 0
  br i1 %.not.i146, label %._crit_edge.i148, label %bb.ae

bb.ae:                                            ; preds = %vorbis_synthesis_pcmout.exit
  %i.il = add nsw i32 %i.if, %4                   ; 2 uses
  %i.im = load i32, ptr %i.ic, align 4
  %i.in = icmp sgt i32 %i.il, %i.im
  br i1 %i.in, label %vorbis_synthesis_read.exit, label %._crit_edge.i148

._crit_edge.i148:                                 ; preds = %bb.ae, %vorbis_synthesis_pcmout.exit
  %.pre-phi.i = phi i32 [ %i.il, %bb.ae ], [ %i.if, %vorbis_synthesis_pcmout.exit ]
  store i32 %.pre-phi.i, ptr %i.ib, align 8
  br label %vorbis_synthesis_read.exit

vorbis_synthesis_read.exit:                       ; preds = %bb.ae, %._crit_edge.i148
  %i.io = add nsw i64 %spec.select107, %i.id      ; 2 uses
  store i64 %i.io, ptr %i.ae, align 8
  %i.ip = icmp slt i64 %.017.i, %i.ie
  br i1 %i.ip, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %vorbis_synthesis_read.exit
end_hunk_1
