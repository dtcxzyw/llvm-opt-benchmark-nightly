inline.NumInlined: 244
inline.NumDeleted: 101
begin_hunk_0_@_ZN2v88internal8compiler21RedundancyElimination15ReduceEffectPhiEPNS1_4NodeE:bb.a
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = icmp slt i32 %.049, %i.dt
  br i1 %i.du, label %bb.q, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.dr) #15
  %i.dy = load ptr, ptr %1, align 8
  %i.dz = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.dy) #15
  %i.ea = load i32, ptr %i.m, align 4
  %i.eb = and i32 %i.ea, 251658240
  %.not.i.i.i33 = icmp eq i32 %i.eb, 251658240
  br i1 %.not.i.i.i33, label %bb.r, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit35

bb.r:                                             ; preds = %bb.q
  %i.ec = load ptr, ptr %i.r, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = add i64 %i.ed, 16
  %i.ef = inttoptr i64 %i.ee to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit35

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit35: ; preds = %bb.q, %bb.r
  %.sink.i.i.i34 = phi ptr [ %i.ef, %bb.r ], [ %i.r, %bb.q ]
  %i.eg = zext i1 %i.dx to i32
  %i.eh = zext i1 %i.dz to i32
  %i.ei = add i32 %i.dw, %.049
  %i.ej = add i32 %i.ei, %i.eg
  %i.ek = add i32 %i.ej, %i.eh
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i34, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 16777215
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = load ptr, ptr %i.cv, align 8
  %i.et = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = icmp ugt i64 %i.ex, %i.er
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8            ; 11 uses
  %i.fd = load i64, ptr %i.dp, align 8            ; 11 uses
  %.0810.i = load ptr, ptr %i.fa, align 8         ; 5 uses
  %i.fe = icmp ugt i64 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph.i.preheader, label %.preheader9.i

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit35
  %i.ff = sub nuw i64 %i.fc, %i.fd
  %xtraiter64 = and i64 %i.ff, 7                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0812.i.prol = phi ptr [ %.08.i.prol, %.lr.ph.i.prol ], [ %.0810.i, %.lr.ph.i.preheader ]
  %.011.i.prol = phi i64 [ %i.fh, %.lr.ph.i.prol ], [ %i.fc, %.lr.ph.i.preheader ]
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0812.i.prol, i64 8
  %i.fh = add i64 %.011.i.prol, -1                ; 2 uses
  %.08.i.prol = load ptr, ptr %i.fg, align 8      ; 3 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !13

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0812.i.unr = phi ptr [ %.0810.i, %.lr.ph.i.preheader ], [ %.08.i.prol, %.lr.ph.i.prol ]
  %.011.i.unr = phi i64 [ %i.fc, %.lr.ph.i.preheader ], [ %i.fh, %.lr.ph.i.prol ]
  %.08.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.08.i.prol, %.lr.ph.i.prol ]
  %i.fi = sub i64 %i.fd, %i.fc
  %i.fj = icmp ugt i64 %i.fi, -8
  br i1 %i.fj, label %.preheader9.thread.i, label %.lr.ph.i

.preheader9.i:                                    ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit35
  %.promoted14.i = load ptr, ptr %i.dn, align 8   ; 3 uses
  %i.fk = icmp ugt i64 %i.fd, %i.fc
  br i1 %i.fk, label %.lr.ph15.i.preheader, label %.preheader.i

.lr.ph15.i.preheader:                             ; preds = %.preheader9.i
  %i.fl = sub nuw i64 %i.fd, %i.fc
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph15.i.prol.loopexit, label %.lr.ph15.i.prol

.lr.ph15.i.prol:                                  ; preds = %.lr.ph15.i.preheader, %.lr.ph15.i.prol
  %i.fm = phi i64 [ %i.fq, %.lr.ph15.i.prol ], [ %i.fd, %.lr.ph15.i.preheader ]
  %i.fn = phi ptr [ %i.fp, %.lr.ph15.i.prol ], [ %.promoted14.i, %.lr.ph15.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph15.i.prol ], [ 0, %.lr.ph15.i.preheader ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 4 uses
  store ptr %i.fp, ptr %i.dn, align 8
  %i.fq = add i64 %i.fm, -1                       ; 3 uses
  store i64 %i.fq, ptr %i.dp, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph15.i.prol.loopexit, label %.lr.ph15.i.prol, !llvm.loop !15

.lr.ph15.i.prol.loopexit:                         ; preds = %.lr.ph15.i.prol, %.lr.ph15.i.preheader
  %.unr = phi i64 [ %i.fd, %.lr.ph15.i.preheader ], [ %i.fq, %.lr.ph15.i.prol ]
  %.unr63 = phi ptr [ %.promoted14.i, %.lr.ph15.i.preheader ], [ %i.fp, %.lr.ph15.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph15.i.preheader ], [ %i.fp, %.lr.ph15.i.prol ]
  %i.fr = sub i64 %i.fc, %i.fd
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %.preheader.i, label %.lr.ph15.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0812.i = phi ptr [ %.08.i.7, %.lr.ph.i ], [ %.0812.i.unr, %.lr.ph.i.prol.loopexit ]
  %.011.i = phi i64 [ %i.gb, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0812.i, i64 8
  %.08.i = load ptr, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.08.i.1 = load ptr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.08.i.1, i64 8
  %.08.i.2 = load ptr, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.08.i.2, i64 8
  %.08.i.3 = load ptr, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.08.i.3, i64 8
  %.08.i.4 = load ptr, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.08.i.4, i64 8
  %.08.i.5 = load ptr, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.08.i.5, i64 8
  %.08.i.6 = load ptr, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.08.i.6, i64 8
  %i.gb = add i64 %.011.i, -8                     ; 2 uses
  %.08.i.7 = load ptr, ptr %i.ga, align 8         ; 2 uses
  %i.gc = icmp ugt i64 %i.gb, %i.fd
  br i1 %i.gc, label %.lr.ph.i, label %.preheader9.thread.i, !llvm.loop !16

.preheader9.thread.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.08.i.lcssa = phi ptr [ %.08.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.08.i.7, %.lr.ph.i ]
  %.promoted1429.i = load ptr, ptr %i.dn, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph15.i.prol.loopexit, %.lr.ph15.i, %.preheader9.thread.i, %.preheader9.i
  %.08.lcssa30.i = phi ptr [ %.08.i.lcssa, %.preheader9.thread.i ], [ %.0810.i, %.preheader9.i ], [ %.0810.i, %.lr.ph15.i ], [ %.0810.i, %.lr.ph15.i.prol.loopexit ] ; 2 uses
  %.promoted17.i = phi i64 [ %i.fd, %.preheader9.thread.i ], [ %i.fd, %.preheader9.i ], [ %i.fc, %.lr.ph15.i ], [ %i.fc, %.lr.ph15.i.prol.loopexit ]
  %.promoted16.i = phi ptr [ %.promoted1429.i, %.preheader9.thread.i ], [ %.promoted14.i, %.preheader9.i ], [ %.lcssa.unr, %.lr.ph15.i.prol.loopexit ], [ %i.gp, %.lr.ph15.i ] ; 2 uses
  %.not18.i = icmp eq ptr %.promoted16.i, %.08.lcssa30.i
  br i1 %.not18.i, label %_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5MergeEPKS3_.exit, label %.lr.ph20.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.prol.loopexit, %.lr.ph15.i
  %i.gd = phi i64 [ %i.gq, %.lr.ph15.i ], [ %.unr, %.lr.ph15.i.prol.loopexit ] ; 4 uses
  %i.ge = phi ptr [ %i.gp, %.lr.ph15.i ], [ %.unr63, %.lr.ph15.i.prol.loopexit ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  store ptr %i.gg, ptr %i.dn, align 8
  %i.gh = add i64 %i.gd, -1
  store i64 %i.gh, ptr %i.dp, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  store ptr %i.gj, ptr %i.dn, align 8
  %i.gk = add i64 %i.gd, -2
  store i64 %i.gk, ptr %i.dp, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  store ptr %i.gm, ptr %i.dn, align 8
  %i.gn = add i64 %i.gd, -3
  store i64 %i.gn, ptr %i.dp, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load ptr, ptr %i.go, align 8            ; 3 uses
  store ptr %i.gp, ptr %i.dn, align 8
  %i.gq = add i64 %i.gd, -4                       ; 3 uses
  store i64 %i.gq, ptr %i.dp, align 8
  %i.gr = icmp ugt i64 %i.gq, %i.fc
  br i1 %i.gr, label %.lr.ph15.i, label %.preheader.i, !llvm.loop !17

.lr.ph20.i:                                       ; preds = %.preheader.i, %.lr.ph20.i
  %.119.i = phi ptr [ %i.gy, %.lr.ph20.i ], [ %.08.lcssa30.i, %.preheader.i ]
  %i.gs = phi ptr [ %i.gw, %.lr.ph20.i ], [ %.promoted16.i, %.preheader.i ]
  %i.gt = phi i64 [ %i.gu, %.lr.ph20.i ], [ %.promoted17.i, %.preheader.i ]
  %i.gu = add i64 %i.gt, -1                       ; 2 uses
  store i64 %i.gu, ptr %i.dp, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  store ptr %i.gw, ptr %i.dn, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.119.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not.i, label %_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5MergeEPKS3_.exit, label %.lr.ph20.i, !llvm.loop !18

_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5MergeEPKS3_.exit: ; preds = %.lr.ph20.i, %.preheader.i
  %i.gz = add nuw nsw i32 %.049, 1                ; 2 uses
  %exitcond53.not = icmp eq i32 %i.gz, %i.l
  br i1 %exitcond53.not, label %._crit_edge51, label %bb.o, !llvm.loop !19

.thread44:                                        ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler21RedundancyElimination24PathChecksForEffectNodes3GetEPNS1_4NodeE.exit, %._crit_edge51, %bb.e
  %.sroa.0.4 = phi ptr [ %i.ak, %bb.e ], [ %i.dq, %._crit_edge51 ], [ null, %_ZNK2v88internal8compiler21RedundancyElimination24PathChecksForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.0.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21RedundancyElimination11ReduceStartEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef captures(ret: address, provenance) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 16
  br i1 %i.h, label %bb.b, label %_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5EmptyEPNS0_4ZoneE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 16) #15
  %.pre.i.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5EmptyEPNS0_4ZoneE.exit

_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5EmptyEPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = add i64 %i.i, 16
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = tail call ptr @_ZN2v88internal8compiler21RedundancyElimination12UpdateChecksEPNS1_4NodeEPKNS2_16EffectPathChecksE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull %i.j)
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21RedundancyElimination15ReduceOtherNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @_ZN2v88internal8compiler21RedundancyElimination25TakeChecksFromFirstEffectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks4CopyEPNS0_4ZoneEPKS3_(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJRKS5_EEEPT_DpOT0_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 16) #15
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 16
  store i64 %i.i, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5EmptyEPNS0_4ZoneE(ptr noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJDniEEEPT_DpOT0_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 16) #15
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJDniEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler21RedundancyElimination16EffectPathChecksEJDniEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add i64 %i.g, 16
  store i64 %i.i, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler21RedundancyElimination16EffectPathChecks6EqualsEPKS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.014 = load ptr, ptr %1, align 8               ; 2 uses
  %.01015 = load ptr, ptr %0, align 8             ; 2 uses
  %.not1216 = icmp eq ptr %.01015, %.014
  br i1 %.not1216, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.01018 = phi ptr [ %.010, %bb.b ], [ %.01015, %.preheader ] ; 2 uses
  %.017 = phi ptr [ %.0, %bb.b ], [ %.014, %.preheader ] ; 2 uses
  %i.e = load ptr, ptr %.01018, align 8
  %i.f = load ptr, ptr %.017, align 8
  %.not13 = icmp eq ptr %i.e, %i.f                ; 3 uses
  br i1 %.not13, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.01018, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %.0 = load ptr, ptr %i.h, align 8               ; 2 uses
  %.010 = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not12 = icmp eq ptr %.010, %.0
  br i1 %.not12, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not13, %.lr.ph ], [ %.not13, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler21RedundancyElimination16EffectPathChecks5MergeEPKS3_(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8              ; 11 uses
  %.0810 = load ptr, ptr %1, align 8              ; 5 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader9

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = sub nuw i64 %i.b, %i.d
  %xtraiter35 = and i64 %i.f, 7                   ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0812.prol = phi ptr [ %.08.prol, %.lr.ph.prol ], [ %.0810, %.lr.ph.preheader ]
  %.011.prol = phi i64 [ %i.h, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0812.prol, i64 8
  %i.h = add i64 %.011.prol, -1                   ; 2 uses
  %.08.prol = load ptr, ptr %i.g, align 8         ; 3 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0812.unr = phi ptr [ %.0810, %.lr.ph.preheader ], [ %.08.prol, %.lr.ph.prol ]
  %.011.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.08.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.08.prol, %.lr.ph.prol ]
  %i.i = sub i64 %i.d, %i.b
  %i.j = icmp ugt i64 %i.i, -8
  br i1 %i.j, label %.preheader9.thread, label %.lr.ph

.preheader9:                                      ; preds = %bb.a
  %.promoted14 = load ptr, ptr %0, align 8        ; 3 uses
  %i.k = icmp ugt i64 %i.d, %i.b
  br i1 %i.k, label %.lr.ph15.preheader, label %.preheader

.lr.ph15.preheader:                               ; preds = %.preheader9
  %i.l = sub nuw i64 %i.d, %i.b
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph15.prol.loopexit, label %.lr.ph15.prol

.lr.ph15.prol:                                    ; preds = %.lr.ph15.preheader, %.lr.ph15.prol
  %i.m = phi i64 [ %i.q, %.lr.ph15.prol ], [ %i.d, %.lr.ph15.preheader ]
  %i.n = phi ptr [ %i.p, %.lr.ph15.prol ], [ %.promoted14, %.lr.ph15.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph15.prol ], [ 0, %.lr.ph15.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = add i64 %i.m, -1                         ; 4 uses
  store i64 %i.q, ptr %i.c, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
