inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_Z8wavModelR5Mixer:bb.a
  %i.fp = add nsw i32 %i.fn, %i.cg
  store i32 %i.fp, ptr @_ZZ8wavModelR5MixerE3eof, align 4, !tbaa !4
  %i.fq = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 2 uses
  %.b287 = load i1, ptr @_ZL1D, align 4           ; 2 uses
  %i.fr = select i1 %.b287, i32 12, i32 0
  %i.fs = add nuw nsw i32 %i.fr, %i.fq
  %.not299518 = icmp slt i32 %i.fs, 0
  br i1 %.not299518, label %.preheader510.us.preheader, label %.preheader510.preheader

.preheader510.preheader:                          ; preds = %.preheader510.lr.ph
  %1 = select i1 %.b287, i32 13, i32 1
  %i.ft = add i32 %1, %i.fq
  %i.fu = shl nuw nsw i8 %i.eh, 2
  %i.fv = zext nneg i8 %i.fu to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_Z8wavModelR5Mixer:bb.a
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv708 ; 5 uses
  store double %i.oa, ptr %i.oc, align 8, !tbaa !186
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1
  %i.od = load i32, ptr @_ZL1S, align 4, !tbaa !4 ; 5 uses
  %.b278 = load i1, ptr @_ZL1D, align 4           ; 4 uses
  %i.oe = select i1 %.b278, i32 12, i32 0
  %i.of = add nuw nsw i32 %i.oe, %i.od            ; 2 uses
  %invariant.gep585 = getelementptr [8 x i8], ptr %i.mu, i64 %i.kh ; 4 uses
  %invariant.gep587 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv708 ; 4 uses
end_hunk_1
begin_hunk_2_@_Z8wavModelR5Mixer:bb.a
  br i1 %.not315589.not, label %.lr.ph592, label %.thread

.lr.ph592:                                        ; preds = %bb.cg
  %2 = select i1 %.b278, i32 13, i32 1            ; 2 uses
  %i.oh = add i32 %2, %i.od                       ; 2 uses
  br i1 %i.my, label %.lr.ph582.us.preheader, label %.lr.ph592.split.preheader

.lr.ph592.split.preheader:                        ; preds = %.lr.ph592
  %i.oi = add i32 %2, %i.od                       ; 2 uses
  %reass.sub887 = sub i32 %i.oi, %i.ms
  %i.oj = sub i32 %i.oi, %i.mt
  %i.ok = and i32 %reass.sub887, 1
  %lcmp.mod867.not.not = icmp eq i32 %i.ok, 0
  br i1 %lcmp.mod867.not.not, label %.lr.ph592.split.prol.loopexit, label %.lr.ph592.split.prol

.lr.ph592.split.prol:                             ; preds = %.lr.ph592.split.preheader
  %gep586.prol = getelementptr [16 x i8], ptr %invariant.gep585, i64 %indvars.iv692
end_hunk_2
begin_hunk_3_@_Z8wavModelR5Mixer:bb.a

.lr.ph592.split.prol.loopexit:                    ; preds = %.lr.ph592.split.prol, %.lr.ph592.split.preheader
  %indvars.iv694.unr = phi i64 [ %indvars.iv692, %.lr.ph592.split.preheader ], [ %indvars.iv.next695.prol, %.lr.ph592.split.prol ]
  %i.oo = icmp eq i32 %i.oj, 3
  br i1 %i.oo, label %.loopexit496, label %.lr.ph592.split

.lr.ph582.us.preheader:                           ; preds = %.lr.ph592
end_hunk_3
