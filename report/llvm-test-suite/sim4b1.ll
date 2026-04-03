begin_hunk_0
  %.not211.i = icmp eq ptr %.0184.i, null
  br i1 %.not211.i, label %._crit_edge.i510, label %.lr.ph246.i, !llvm.loop !153

._crit_edge.i510:                                 ; preds = %.loopexit.i508, %bb.hz
  %i.bzy = phi i32 [ %i.bxr, %bb.hz ], [ %i.bxs, %.loopexit.i508 ]
  %i.bzz = phi i32 [ %i.bxq, %bb.hz ], [ %i.bxt, %.loopexit.i508 ]
end_hunk_0
begin_hunk_1
  store i32 %i.caa, ptr %i.cbn, align 8, !tbaa !145
  br label %pluri_align.exit

pluri_align.exit.thread:                          ; preds = %.critedge.i504, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.if

pluri_align.exit:                                 ; preds = %slide_intron.exit, %bb.id, %.thread306.sink.split.i
  %.0194.lcssa298.i = phi i32 [ %.1195.lcssa.i, %bb.id ], [ 0, %slide_intron.exit ], [ %.1195.lcssa.i, %.thread306.sink.split.i ]
  store i32 %.0194.lcssa298.i, ptr %i.bg, align 4, !tbaa !4
end_hunk_1
begin_hunk_2

combine_msps.exit.thread:                         ; preds = %trim_small_repeated_msps.exit
  %i.jf = icmp eq ptr %8, null
  br i1 %i.jf, label %._crit_edge248, label %bb.aw

.preheader:                                       ; preds = %combine_msps.exit
  %.not270 = icmp eq i32 %i.jc, 0
  br i1 %.not270, label %._crit_edge248, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.jg = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
end_hunk_2
begin_hunk_3
  %.1164.epil = call i32 @llvm.umax.i32(i32 %i.ka, i32 %.0163241.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ] ; 2 uses
  %.1164.lcssa = phi i32 [ %.1164.1, %._crit_edge.unr-lcssa ], [ %.1164.epil, %.epil.preheader ] ; 3 uses
  %i.kb = add i32 %.1164.lcssa, 1
  %i.kc = sub i32 %i.kb, %spec.select.lcssa
  %i.kd = lshr i32 %i.kc, 2                       ; 3 uses
  %i.ke = add i32 %i.kd, %spec.select.lcssa
  %i.kf = icmp ugt i32 %.1164.lcssa, %i.kd
  %i.kg = select i1 %i.kf, i32 %i.kd, i32 0
  %spec.select193 = sub nuw i32 %.1164.lcssa, %i.kg
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %._crit_edge, %.lr.ph247
  %indvars.iv293 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next294, %.lr.ph247 ] ; 2 uses
  %i.kh = load ptr, ptr %6, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv293
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !31 ; 3 uses
end_hunk_3
begin_hunk_4
  %i.kz = icmp samesign ult i64 %indvars.iv.next294, %i.ky
  br i1 %i.kz, label %.lr.ph247, label %._crit_edge248, !llvm.loop !174

._crit_edge248:                                   ; preds = %.lr.ph247, %.preheader, %combine_msps.exit.thread
  %.lcssa227 = phi i32 [ 0, %.preheader ], [ 0, %combine_msps.exit.thread ], [ %i.kx, %.lr.ph247 ]
  %i.la = call fastcc i32 @link_msps(ptr noundef %6, i32 noundef 0, i32 noundef %.lcssa227) ; 4 uses
  %i.lb = icmp sgt i32 %i.la, -1
  br i1 %i.lb, label %bb.ab, label %.critedge

end_hunk_4
begin_hunk_5
  %.pre9.i218 = load i32, ptr %i.rt, align 8, !tbaa !19
  br label %add_col_elt.exit219

add_col_elt.exit219:                              ; preds = %._crit_edge260.thread, %bb.av
  %i.rz = phi i32 [ %.pre9.i218, %bb.av ], [ %i.ru, %._crit_edge260.thread ] ; 2 uses
  %i.sa = phi ptr [ %i.ry, %bb.av ], [ %.pre.i217, %._crit_edge260.thread ]
  %i.sb = add i32 %i.rz, 1
end_hunk_5
begin_hunk_6
..loopexit_crit_edge:                             ; preds = %bb.h
  %i.h = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.i = icmp ugt i32 %i.bd, %i.h
  br i1 %i.i, label %.preheader.backedge, label %._crit_edge

.preheader.backedge:                              ; preds = %bb.c, %..loopexit_crit_edge, %.backedge.loopexit
  %.133.be = phi ptr [ %i.ae, %..loopexit_crit_edge ], [ %i.ae, %.backedge.loopexit ], [ %i.r, %bb.c ]
  %.128.be = phi i32 [ %i.h, %..loopexit_crit_edge ], [ %i.j, %.backedge.loopexit ], [ %i.w, %bb.c ]
  br label %.preheader, !llvm.loop !194

.backedge.loopexit:                               ; preds = %bb.e
end_hunk_6
begin_hunk_7
  br i1 %exitcond67.not, label %.critedge, label %bb.b, !llvm.loop !195

.critedge:                                        ; preds = %bb.b, %bb.d, %.preheader
  %.234.lcssa = phi ptr [ %.133, %.preheader ], [ %scevgep66, %bb.d ], [ %.23448, %bb.b ]
  %.229.lcssa = phi i32 [ %.128, %.preheader ], [ %i.q, %bb.d ], [ %umax, %bb.b ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.z, %bb.d ], [ %.051, %bb.b ]
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !8
  %i.ac = icmp ult i32 %.229.lcssa, %i.ab
  br i1 %i.ac, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.critedge
  %i.ad = zext i32 %.229.lcssa to i64
end_hunk_7
begin_hunk_8
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.e, label %..loopexit_crit_edge

._crit_edge:                                      ; preds = %..loopexit_crit_edge, %.critedge, %bb.a
  ret void
}

end_hunk_8
