inline.NumInlined: 123
inline.NumDeleted: 46
begin_hunk_0_@display_source_line:bb.a

PyUnicode_READ.exit.us:                           ; preds = %PyUnicode_READ.exit.us.preheader, %bb.cy
  %i.fp = phi i64 [ %i.ft, %bb.cy ], [ 0, %PyUnicode_READ.exit.us.preheader ] ; 2 uses
  %.177207.us = phi i32 [ %i.fs, %bb.cy ], [ 0, %PyUnicode_READ.exit.us.preheader ] ; 2 uses
  %i.fq = getelementptr i8, ptr %.0.i196, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18
  switch i8 %i.fr, label %PyUnicode_READ.exit.us.PyUnicode_READ.exit._crit_edge.loopexit323_crit_edge [
end_hunk_0
begin_hunk_1_@display_source_line:bb.a

PyUnicode_READ.exit.us222:                        ; preds = %PyUnicode_READ.exit.us222.preheader, %bb.cz
  %i.fv = phi i64 [ %i.fz, %bb.cz ], [ 0, %PyUnicode_READ.exit.us222.preheader ] ; 2 uses
  %.177207.us221 = phi i32 [ %i.fy, %bb.cz ], [ 0, %PyUnicode_READ.exit.us222.preheader ] ; 2 uses
  %i.fw = getelementptr [2 x i8], ptr %.0.i196, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !49
  switch i16 %i.fx, label %PyUnicode_READ.exit.us222.PyUnicode_READ.exit._crit_edge.loopexit326_crit_edge [
end_hunk_1
begin_hunk_2_@display_source_line:bb.a

PyUnicode_READ.exit:                              ; preds = %PyUnicode_READ.exit.preheader, %bb.da
  %i.gb = phi i64 [ %i.gf, %bb.da ], [ 0, %PyUnicode_READ.exit.preheader ] ; 2 uses
  %.177207 = phi i32 [ %i.ge, %bb.da ], [ 0, %PyUnicode_READ.exit.preheader ] ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %.0.i196, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7
  switch i32 %i.gd, label %PyUnicode_READ.exit.PyUnicode_READ.exit._crit_edge.loopexit_crit_edge [
end_hunk_2
begin_hunk_3_@display_source_line:bb.a

PyUnicode_READ.exit._crit_edge.loopexitsplit:     ; preds = %bb.da
  %.lcssa335 = phi i32 [ %i.ge, %bb.da ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit

PyUnicode_READ.exit.PyUnicode_READ.exit._crit_edge.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit
  %.177207.lcssa.a = phi i32 [ %.177207, %PyUnicode_READ.exit ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit

PyUnicode_READ.exit._crit_edge.loopexit:          ; preds = %PyUnicode_READ.exit._crit_edge.loopexitsplit, %PyUnicode_READ.exit.PyUnicode_READ.exit._crit_edge.loopexit_crit_edge
  %.177.lcssa.ph = phi i32 [ %.177207.lcssa.a, %PyUnicode_READ.exit.PyUnicode_READ.exit._crit_edge.loopexit_crit_edge ], [ %.lcssa335, %PyUnicode_READ.exit._crit_edge.loopexitsplit ]
  %.lcssa.ph = phi i64 [ %i.gb, %PyUnicode_READ.exit.PyUnicode_READ.exit._crit_edge.loopexit_crit_edge ], [ %i.gf, %PyUnicode_READ.exit._crit_edge.loopexitsplit ]
  br label %PyUnicode_READ.exit._crit_edge

PyUnicode_READ.exit._crit_edge.loopexit323split:  ; preds = %bb.cy
  %.lcssa333 = phi i32 [ %i.fs, %bb.cy ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit323

PyUnicode_READ.exit.us.PyUnicode_READ.exit._crit_edge.loopexit323_crit_edge: ; preds = %PyUnicode_READ.exit.us
  %.177207.us.lcssa.a = phi i32 [ %.177207.us, %PyUnicode_READ.exit.us ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit323

PyUnicode_READ.exit._crit_edge.loopexit323:       ; preds = %PyUnicode_READ.exit._crit_edge.loopexit323split, %PyUnicode_READ.exit.us.PyUnicode_READ.exit._crit_edge.loopexit323_crit_edge
  %.177.lcssa.ph324 = phi i32 [ %.177207.us.lcssa.a, %PyUnicode_READ.exit.us.PyUnicode_READ.exit._crit_edge.loopexit323_crit_edge ], [ %.lcssa333, %PyUnicode_READ.exit._crit_edge.loopexit323split ]
  %.lcssa.ph325 = phi i64 [ %i.fp, %PyUnicode_READ.exit.us.PyUnicode_READ.exit._crit_edge.loopexit323_crit_edge ], [ %i.ft, %PyUnicode_READ.exit._crit_edge.loopexit323split ]
  br label %PyUnicode_READ.exit._crit_edge

PyUnicode_READ.exit._crit_edge.loopexit326split:  ; preds = %bb.cz
  %.lcssa331 = phi i32 [ %i.fy, %bb.cz ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit326

PyUnicode_READ.exit.us222.PyUnicode_READ.exit._crit_edge.loopexit326_crit_edge: ; preds = %PyUnicode_READ.exit.us222
  %.177207.us221.lcssa.a = phi i32 [ %.177207.us221, %PyUnicode_READ.exit.us222 ]
  br label %PyUnicode_READ.exit._crit_edge.loopexit326

PyUnicode_READ.exit._crit_edge.loopexit326:       ; preds = %PyUnicode_READ.exit._crit_edge.loopexit326split, %PyUnicode_READ.exit.us222.PyUnicode_READ.exit._crit_edge.loopexit326_crit_edge
  %.177.lcssa.ph327 = phi i32 [ %.177207.us221.lcssa.a, %PyUnicode_READ.exit.us222.PyUnicode_READ.exit._crit_edge.loopexit326_crit_edge ], [ %.lcssa331, %PyUnicode_READ.exit._crit_edge.loopexit326split ]
  %.lcssa.ph328 = phi i64 [ %i.fv, %PyUnicode_READ.exit.us222.PyUnicode_READ.exit._crit_edge.loopexit326_crit_edge ], [ %i.fz, %PyUnicode_READ.exit._crit_edge.loopexit326split ]
  br label %PyUnicode_READ.exit._crit_edge

PyUnicode_READ.exit._crit_edge:                   ; preds = %PyUnicode_READ.exit._crit_edge.loopexit326, %PyUnicode_READ.exit._crit_edge.loopexit323, %PyUnicode_READ.exit._crit_edge.loopexit
end_hunk_3
begin_hunk_4_@_PyTraceBack_Print:bb.a
  br label %.preheader

.preheader118.i:                                  ; preds = %.preheader
  %.lcssa93 = phi i64 [ %i.aa, %.preheader ]
  %i.z = icmp sgt i64 %.lcssa93, %.227
  br i1 %i.z, label %.lr.ph.i.preheader, label %.lr.ph132.i.preheader
end_hunk_4
begin_hunk_5_@_PyTraceBack_Print:bb.a
  br i1 %.not75126.i, label %tb_printinternal.exit, label %.lr.ph132.i.preheader

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %lsr.iv = phi i64 [ %.059122.i, %.lr.ph.i.preheader ], [ %lsr.iv.next, %.lr.ph.i ] ; 2 uses
  %.044125.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ]
  %i.ad = getelementptr i8, ptr %.044125.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
end_hunk_5
