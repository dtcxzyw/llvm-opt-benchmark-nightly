inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_expand_path_internal:bb.a
  br label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %bb.al, %.lr.ph.preheader.i
  %.01.i = phi ptr [ %i.dm, %bb.al ], [ %.0250, %.lr.ph.preheader.i ] ; 4 uses
  %i.dk = load i8, ptr %.01.i, align 1, !tbaa !36
  %i.dl = icmp eq i8 %i.dk, 47
  br i1 %i.dl, label %bb.al, label %.lr.ph.i336.skiproot.exit.loopexit_crit_edge
end_hunk_0
begin_hunk_1_@rb_file_expand_path_internal:bb.a
  br i1 %exitcond.not.i, label %skiproot.exit.loopexitsplit, label %.lr.ph.i336, !llvm.loop !94

skiproot.exit.loopexitsplit:                      ; preds = %bb.al
  %.0.lcssa.i335.ph.ph = phi ptr [ %scevgep.i, %bb.al ]
  br label %skiproot.exit.loopexit

.lr.ph.i336.skiproot.exit.loopexit_crit_edge:     ; preds = %.lr.ph.i336
  %.01.i.lcssa = phi ptr [ %.01.i, %.lr.ph.i336 ]
  %.01.i.lcssa.a = phi ptr [ %.01.i, %.lr.ph.i336 ] ; 0 uses
  br label %skiproot.exit.loopexit

skiproot.exit.loopexit:                           ; preds = %skiproot.exit.loopexitsplit, %.lr.ph.i336.skiproot.exit.loopexit_crit_edge
  %.0.lcssa.i335.ph = phi ptr [ %.01.i.lcssa, %.lr.ph.i336.skiproot.exit.loopexit_crit_edge ], [ %.0.lcssa.i335.ph.ph, %skiproot.exit.loopexitsplit ]
  br label %skiproot.exit

skiproot.exit:                                    ; preds = %skiproot.exit.loopexit, %bb.ak
end_hunk_1
begin_hunk_2_@rb_file_expand_path_internal:bb.a
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %bb.bv, %.lr.ph.preheader.i362
  %.01.i365 = phi ptr [ %i.io, %bb.bv ], [ %.11, %.lr.ph.preheader.i362 ] ; 4 uses
  %i.im = load i8, ptr %.01.i365, align 1, !tbaa !36
  %i.in = icmp eq i8 %i.im, 47
  br i1 %i.in, label %bb.bv, label %.lr.ph.i364.skiproot.exit367.loopexit_crit_edge
end_hunk_2
begin_hunk_3_@rb_file_expand_path_internal:bb.a
  br i1 %exitcond.not.i366, label %skiproot.exit367.loopexitsplit, label %.lr.ph.i364, !llvm.loop !94

skiproot.exit367.loopexitsplit:                   ; preds = %bb.bv
  %.0.lcssa.i361.ph.ph = phi ptr [ %scevgep.i363, %bb.bv ]
  br label %skiproot.exit367.loopexit

.lr.ph.i364.skiproot.exit367.loopexit_crit_edge:  ; preds = %.lr.ph.i364
  %.01.i365.lcssa = phi ptr [ %.01.i365, %.lr.ph.i364 ]
  %.01.i365.lcssa.a = phi ptr [ %.01.i365, %.lr.ph.i364 ] ; 0 uses
  br label %skiproot.exit367.loopexit

skiproot.exit367.loopexit:                        ; preds = %skiproot.exit367.loopexitsplit, %.lr.ph.i364.skiproot.exit367.loopexit_crit_edge
  %.0.lcssa.i361.ph = phi ptr [ %.01.i365.lcssa, %.lr.ph.i364.skiproot.exit367.loopexit_crit_edge ], [ %.0.lcssa.i361.ph.ph, %skiproot.exit367.loopexitsplit ]
  br label %skiproot.exit367

skiproot.exit367:                                 ; preds = %skiproot.exit367.loopexit, %.skiproot.exit367_crit_edge
end_hunk_3
begin_hunk_4_@ruby_enc_find_basename:bb.a
  br label %rb_enc_path_last_separator.exit.thread

rb_enc_path_last_separator.exit.thread:           ; preds = %rb_enc_path_last_separator.exit.thread.loopexit, %bb.h, %rb_enc_path_last_separator.exit
  %.150 = phi ptr [ %.045.lcssa, %bb.h ], [ %.045.lcssa, %rb_enc_path_last_separator.exit ], [ %.049.lcssa, %rb_enc_path_last_separator.exit.thread.loopexit ] ; 12 uses
  %i.u = icmp ult ptr %.150, %i.d
  br i1 %i.u, label %.lr.ph.i60.preheader, label %chompdirsep.exit

end_hunk_4
begin_hunk_5_@ruby_enc_find_basename:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %lsr.iv146 = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.k ] ; 3 uses
  %.04773 = phi ptr [ %4, %bb.k ], [ %.150, %.lr.ph.preheader ] ; 2 uses
  %scevgep148.a = getelementptr i8, ptr %.150, i64 %lsr.iv146
  %i.aj = load i8, ptr %scevgep148.a, align 1, !tbaa !36
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.k, label %.lr.ph..critedge.loopexit_crit_edge

bb.k:                                             ; preds = %.lr.ph
  %4 = getelementptr i8, ptr %.04773, i64 1
  %lsr.iv.next = add nuw nsw i64 %lsr.iv146, 1    ; 2 uses
  %i.al = icmp slt i64 %lsr.iv.next, %i.ah
  br i1 %i.al, label %.lr.ph, label %.critedge.loopexitsplit, !llvm.loop !105

.critedge.loopexitsplit:                          ; preds = %bb.k
  %.047.lcssa.ph.ph = phi ptr [ %scevgep, %bb.k ]
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %lsr.iv146.lcssa = phi i64 [ %lsr.iv146, %.lr.ph ]
  %split = phi ptr [ %.04773, %.lr.ph ]           ; 0 uses
  %scevgep147 = getelementptr i8, ptr %.150, i64 %lsr.iv146.lcssa
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.047.lcssa.ph = phi ptr [ %scevgep147, %.lr.ph..critedge.loopexit_crit_edge ], [ %.047.lcssa.ph.ph, %.critedge.loopexitsplit ] ; 2 uses
  %.pre = ptrtoint ptr %.047.lcssa.ph to i64
  br label %.critedge

end_hunk_5
begin_hunk_6_@rb_file_dirname_n:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %lsr.iv = phi i64 [ %i.w, %.lr.ph.i.preheader ], [ %lsr.iv.next, %bb.d ]
  %.01.i = phi ptr [ %i.ac, %bb.d ], [ %i.s, %.lr.ph.i.preheader ] ; 4 uses
  %i.aa = load i8, ptr %.01.i, align 1, !tbaa !36
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %bb.d, label %.lr.ph.i.skiproot.exit.loopexit_crit_edge
end_hunk_6
begin_hunk_7_@rb_file_dirname_n:bb.a
  br i1 %exitcond.not.i, label %skiproot.exit.loopexitsplit, label %.lr.ph.i, !llvm.loop !94

skiproot.exit.loopexitsplit:                      ; preds = %bb.d
  %.0.lcssa.i.ph.ph = phi ptr [ %i.x, %bb.d ]
  br label %skiproot.exit.loopexit

.lr.ph.i.skiproot.exit.loopexit_crit_edge:        ; preds = %.lr.ph.i
  %.01.i.lcssa = phi ptr [ %.01.i, %.lr.ph.i ]
  %.01.i.lcssa.a = phi ptr [ %.01.i, %.lr.ph.i ]  ; 0 uses
  br label %skiproot.exit.loopexit

skiproot.exit.loopexit:                           ; preds = %skiproot.exit.loopexitsplit, %.lr.ph.i.skiproot.exit.loopexit_crit_edge
  %.0.lcssa.i.ph = phi ptr [ %.01.i.lcssa, %.lr.ph.i.skiproot.exit.loopexit_crit_edge ], [ %.0.lcssa.i.ph.ph, %skiproot.exit.loopexitsplit ]
  br label %skiproot.exit

skiproot.exit:                                    ; preds = %skiproot.exit.loopexit, %rb_get_path.exit
end_hunk_7
begin_hunk_8_@rb_check_realpath_emulate:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.e
  %lsr.iv = phi i64 [ %i.aj, %.lr.ph.i.i.preheader ], [ %lsr.iv.next, %bb.e ]
  %.01.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.an = load i8, ptr %.01.i.i, align 1, !tbaa !36
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.e, label %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge
end_hunk_8
begin_hunk_9_@rb_check_realpath_emulate:bb.a
  br i1 %exitcond.not.i.i, label %skipprefixroot.exit.loopexitsplit, label %.lr.ph.i.i, !llvm.loop !94

skipprefixroot.exit.loopexitsplit:                ; preds = %bb.e
  %.0.lcssa.i.i.ph.ph = phi ptr [ %i.ak, %bb.e ]
  br label %skipprefixroot.exit.loopexit

.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  %.01.i.i.lcssa = phi ptr [ %.01.i.i, %.lr.ph.i.i ]
  %.01.i.i.lcssa.a = phi ptr [ %.01.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %skipprefixroot.exit.loopexit

skipprefixroot.exit.loopexit:                     ; preds = %skipprefixroot.exit.loopexitsplit, %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge
  %.0.lcssa.i.i.ph = phi ptr [ %.01.i.i.lcssa, %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge ], [ %.0.lcssa.i.i.ph.ph, %skipprefixroot.exit.loopexitsplit ]
  br label %skipprefixroot.exit

skipprefixroot.exit:                              ; preds = %skipprefixroot.exit.loopexit, %RSTRING_PTR.exit
end_hunk_9
begin_hunk_10_@rb_check_realpath_emulate:bb.a

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69.preheader, %bb.i
  %lsr.iv132 = phi i64 [ %i.az, %.lr.ph.i.i69.preheader ], [ %lsr.iv.next133, %bb.i ]
  %.01.i.i70 = phi ptr [ %i.bf, %bb.i ], [ %i.ax, %.lr.ph.i.i69.preheader ] ; 4 uses
  %i.bd = load i8, ptr %.01.i.i70, align 1, !tbaa !36
  %i.be = icmp eq i8 %i.bd, 47
  br i1 %i.be, label %bb.i, label %.lr.ph.i.i69.skipprefixroot.exit72.loopexit_crit_edge
end_hunk_10
begin_hunk_11_@rb_check_realpath_emulate:bb.a
  br i1 %exitcond.not.i.i71, label %skipprefixroot.exit72.loopexitsplit, label %.lr.ph.i.i69, !llvm.loop !94

skipprefixroot.exit72.loopexitsplit:              ; preds = %bb.i
  %.0.lcssa.i.i67.ph.ph = phi ptr [ %i.ba, %bb.i ]
  br label %skipprefixroot.exit72.loopexit

.lr.ph.i.i69.skipprefixroot.exit72.loopexit_crit_edge: ; preds = %.lr.ph.i.i69
  %.01.i.i70.lcssa = phi ptr [ %.01.i.i70, %.lr.ph.i.i69 ]
  %.01.i.i70.lcssa.a = phi ptr [ %.01.i.i70, %.lr.ph.i.i69 ] ; 0 uses
  br label %skipprefixroot.exit72.loopexit

skipprefixroot.exit72.loopexit:                   ; preds = %skipprefixroot.exit72.loopexitsplit, %.lr.ph.i.i69.skipprefixroot.exit72.loopexit_crit_edge
  %.0.lcssa.i.i67.ph = phi ptr [ %.01.i.i70.lcssa, %.lr.ph.i.i69.skipprefixroot.exit72.loopexit_crit_edge ], [ %.0.lcssa.i.i67.ph.ph, %skipprefixroot.exit72.loopexitsplit ]
  br label %skipprefixroot.exit72

skipprefixroot.exit72:                            ; preds = %skipprefixroot.exit72.loopexit, %RSTRING_PTR.exit66
end_hunk_11
begin_hunk_12_@rb_check_realpath_emulate:bb.a
  br label %RSTRING_PTR.exit74

RSTRING_PTR.exit74:                               ; preds = %bb.k, %bb.l
  %i.bn = phi ptr [ %i.bm, %bb.l ], [ %i.bl, %bb.k ] ; 9 uses
  %i.bo = getelementptr i8, ptr %i.bi, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !90 ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr
end_hunk_12
begin_hunk_13_@rb_check_realpath_emulate:bb.a

.lr.ph.i.i77:                                     ; preds = %.lr.ph.i.i77.preheader, %bb.m
  %lsr.iv136 = phi i64 [ 0, %.lr.ph.i.i77.preheader ], [ %lsr.iv.next137, %bb.m ] ; 3 uses
  %.01.i.i78 = phi ptr [ %4, %bb.m ], [ %i.bn, %.lr.ph.i.i77.preheader ] ; 3 uses
  %scevgep138 = getelementptr i8, ptr %i.bn, i64 %lsr.iv136
  %i.bu = load i8, ptr %scevgep138, align 1, !tbaa !36
  %i.bv = icmp eq i8 %i.bu, 47
  br i1 %i.bv, label %bb.m, label %.lr.ph.i.i77.skipprefixroot.exit80.loopexit_crit_edge

bb.m:                                             ; preds = %.lr.ph.i.i77
  %4 = getelementptr i8, ptr %.01.i.i78, i64 1
  %lsr.iv.next137 = add i64 %lsr.iv136, 1         ; 2 uses
  %tmp = inttoptr i64 %lsr.iv.next137 to ptr
  %exitcond.not.i.i79 = icmp eq ptr %i.bq, %tmp
  br i1 %exitcond.not.i.i79, label %skipprefixroot.exit80.loopexitsplit, label %.lr.ph.i.i77, !llvm.loop !94

skipprefixroot.exit80.loopexitsplit:              ; preds = %bb.m
  %.0.lcssa.i.i75.sink.ph.ph = phi ptr [ %i.br, %bb.m ]
  %.048.ph.ph = phi ptr [ %i.br, %bb.m ]
  br label %skipprefixroot.exit80.loopexit

.lr.ph.i.i77.skipprefixroot.exit80.loopexit_crit_edge: ; preds = %.lr.ph.i.i77
  %lsr.iv139.lcssa = phi i64 [ %lsr.iv136, %.lr.ph.i.i77 ]
  %split137 = phi ptr [ %.01.i.i78, %.lr.ph.i.i77 ]
  %split138 = phi ptr [ %.01.i.i78, %.lr.ph.i.i77 ] ; 0 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 %lsr.iv139.lcssa
  br label %skipprefixroot.exit80.loopexit

skipprefixroot.exit80.loopexit:                   ; preds = %skipprefixroot.exit80.loopexitsplit, %.lr.ph.i.i77.skipprefixroot.exit80.loopexit_crit_edge
  %.0.lcssa.i.i75.sink.ph = phi ptr [ %split137, %.lr.ph.i.i77.skipprefixroot.exit80.loopexit_crit_edge ], [ %.0.lcssa.i.i75.sink.ph.ph, %skipprefixroot.exit80.loopexitsplit ]
  %.048.ph = phi ptr [ %scevgep, %.lr.ph.i.i77.skipprefixroot.exit80.loopexit_crit_edge ], [ %.048.ph.ph, %skipprefixroot.exit80.loopexitsplit ]
  br label %skipprefixroot.exit80

skipprefixroot.exit80:                            ; preds = %RSTRING_PTR.exit74.skipprefixroot.exit80_crit_edge, %skipprefixroot.exit80.loopexit, %skipprefixroot.exit, %bb.j
end_hunk_13
begin_hunk_14_@realpath_rec:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.d ]
  %.0124164 = phi ptr [ %i.ah, %bb.d ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 4 uses
  %i.af = load i8, ptr %.0124164, align 1, !tbaa !36
  %i.ag = icmp eq i8 %i.af, 47
  br i1 %i.ag, label %bb.d, label %.lr.ph..critedge.loopexit_crit_edge
end_hunk_14
begin_hunk_15_@realpath_rec:bb.a
  br i1 %exitcond.not, label %.critedge.loopexitsplit, label %.lr.ph, !llvm.loop !218

.critedge.loopexitsplit:                          ; preds = %bb.d
  %.0124.lcssa.ph.ph = phi ptr [ %scevgep176, %bb.d ]
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.0124164.lcssa = phi ptr [ %.0124164, %.lr.ph ]
  %.0124164.lcssa.a = phi ptr [ %.0124164, %.lr.ph ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.0124.lcssa.ph = phi ptr [ %.0124164.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.0124.lcssa.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %rb_enc_path_next.exit
end_hunk_15
begin_hunk_16_@realpath_rec:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ah
  %lsr.iv246 = phi i64 [ %i.du, %.lr.ph.i.i.preheader ], [ %lsr.iv.next247, %bb.ah ]
  %.01.i.i = phi ptr [ %i.ea, %bb.ah ], [ %i.ds, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.dy = load i8, ptr %.01.i.i, align 1, !tbaa !36
  %i.dz = icmp eq i8 %i.dy, 47
  br i1 %i.dz, label %bb.ah, label %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge
end_hunk_16
begin_hunk_17_@realpath_rec:bb.a
  br i1 %exitcond.not.i.i, label %skipprefixroot.exit.loopexitsplit, label %.lr.ph.i.i, !llvm.loop !94

skipprefixroot.exit.loopexitsplit:                ; preds = %bb.ah
  %.0.lcssa.i.i.ph.ph = phi ptr [ %i.dv, %bb.ah ]
  br label %skipprefixroot.exit.loopexit

.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  %.01.i.i.lcssa = phi ptr [ %.01.i.i, %.lr.ph.i.i ]
  %.01.i.i.lcssa.a = phi ptr [ %.01.i.i, %.lr.ph.i.i ] ; 0 uses
  br label %skipprefixroot.exit.loopexit

skipprefixroot.exit.loopexit:                     ; preds = %skipprefixroot.exit.loopexitsplit, %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge
  %.0.lcssa.i.i.ph = phi ptr [ %.01.i.i.lcssa, %.lr.ph.i.i.skipprefixroot.exit.loopexit_crit_edge ], [ %.0.lcssa.i.i.ph.ph, %skipprefixroot.exit.loopexitsplit ]
  br label %skipprefixroot.exit

skipprefixroot.exit:                              ; preds = %skipprefixroot.exit.loopexit, %RSTRING_PTR.exit154
end_hunk_17
