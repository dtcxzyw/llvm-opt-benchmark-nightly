inline.NumInlined: 154
inline.NumDeleted: 26
begin_hunk_0_@match_at:bb.a
bb.uf:                                            ; preds = %.backedge
  %i.bwg = load i16, ptr %.25, align 2, !tbaa !96 ; 3 uses
  %i.bwh = getelementptr i8, ptr %.25, i64 2
  %i.bwi = load ptr, ptr %i.o, align 8, !tbaa !59 ; 5 uses
  %i.bwj = load ptr, ptr %i.n, align 8, !tbaa !59 ; 8 uses
  %i.bwk = icmp ugt ptr %i.bwi, %i.bwj
  br i1 %i.bwk, label %.lr.ph4019, label %._crit_edge4020
end_hunk_0
begin_hunk_1_@match_at:bb.a
  br label %bb.ug

bb.ug:                                            ; preds = %.lr.ph4019, %.thread
  %lsr.iv7286 = phi ptr [ %scevgep7285, %.lr.ph4019 ], [ %scevgep7287, %.thread ] ; 6 uses
  %.022484016 = phi i32 [ 0, %.lr.ph4019 ], [ %.12249, %.thread ] ; 5 uses
  %i.bwm = load i32, ptr %lsr.iv7286, align 8, !tbaa !63 ; 2 uses
  %i.bwn = and i32 %i.bwm, 32768
  %.not2648 = icmp eq i32 %i.bwn, 0
  br i1 %.not2648, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %scevgep7289 = getelementptr i8, ptr %lsr.iv7286, i64 16
  %i.bwo = load i32, ptr %scevgep7289, align 8, !tbaa !66
  %i.bwp = icmp eq i32 %i.bwo, %i.bwl
  %i.bwq = zext i1 %i.bwp to i32
end_hunk_1
begin_hunk_2_@match_at:bb.a
  br i1 %i.bwr, label %bb.uj, label %.thread

bb.uj:                                            ; preds = %bb.ui
  %scevgep7290.a = getelementptr i8, ptr %lsr.iv7286, i64 16
  %i.bws = load i32, ptr %scevgep7290.a, align 8, !tbaa !66
  %i.bwt = icmp eq i32 %i.bws, %i.bwl
  br i1 %i.bwt, label %bb.uk, label %.thread
end_hunk_2
begin_hunk_3_@match_at:bb.a

.thread:                                          ; preds = %bb.uh, %bb.ui, %bb.uj, %bb.ul
  %.12249 = phi i32 [ %spec.select3486, %bb.uh ], [ %i.bwv, %bb.ul ], [ %.022484016, %bb.uj ], [ %.022484016, %bb.ui ]
  %scevgep7287 = getelementptr i8, ptr %lsr.iv7286, i64 -48 ; 2 uses
  %scevgep7288 = getelementptr i8, ptr %scevgep7287, i64 48
  %i.bww = icmp ugt ptr %scevgep7288, %i.bwj
  br i1 %i.bww, label %bb.ug, label %.thread.._crit_edge4020.loopexit_crit_edge, !llvm.loop !98

._crit_edge4020.loopexitsplit:                    ; preds = %bb.uk
  %lsr.iv7286.lcssa = phi ptr [ %lsr.iv7286, %bb.uk ]
  br label %._crit_edge4020.loopexit

.thread.._crit_edge4020.loopexit_crit_edge:       ; preds = %.thread
  %lsr.iv7286.lcssa7291 = phi ptr [ %lsr.iv7286, %.thread ]
  br label %._crit_edge4020.loopexit, !llvm.loop !98

._crit_edge4020.loopexit:                         ; preds = %._crit_edge4020.loopexitsplit, %.thread.._crit_edge4020.loopexit_crit_edge
  %.lcssa6889 = phi ptr [ %lsr.iv7286.lcssa7291, %.thread.._crit_edge4020.loopexit_crit_edge ], [ %lsr.iv7286.lcssa, %._crit_edge4020.loopexitsplit ]
  br label %._crit_edge4020

._crit_edge4020:                                  ; preds = %._crit_edge4020.loopexit, %bb.uf
end_hunk_3
begin_hunk_4_@match_at:bb.a
  %i.bzq = sext i16 %i.bzm to i64                 ; 2 uses
  %i.bzr = getelementptr [8 x i8], ptr %i.bt, i64 %i.bzq
  store i64 %i.bzp, ptr %i.bzr, align 8, !tbaa !20
  %i.bzs = load ptr, ptr %i.o, align 8, !tbaa !59 ; 5 uses
  %i.bzt = load ptr, ptr %i.n, align 8, !tbaa !59 ; 9 uses
  %i.bzu = icmp ugt ptr %i.bzs, %i.bzt
  %i.bzv = sext i16 %i.bzm to i32                 ; 4 uses
end_hunk_4
begin_hunk_5_@match_at:bb.a
  br label %.lr.ph4009

.lr.ph4009:                                       ; preds = %.lr.ph4009.preheader, %.thread3378
  %lsr.iv7279.a = phi ptr [ %scevgep7278, %.lr.ph4009.preheader ], [ %scevgep7280, %.thread3378 ] ; 6 uses
  %.022504006 = phi i32 [ %.12251, %.thread3378 ], [ 0, %.lr.ph4009.preheader ] ; 5 uses
  %i.bzw = load i32, ptr %lsr.iv7279.a, align 8, !tbaa !63 ; 2 uses
  %i.bzx = and i32 %i.bzw, 32768
  %.not2643 = icmp eq i32 %i.bzx, 0
  br i1 %.not2643, label %bb.vd, label %bb.vc

bb.vc:                                            ; preds = %.lr.ph4009
  %scevgep7282.a = getelementptr i8, ptr %lsr.iv7279.a, i64 16
  %i.bzy = load i32, ptr %scevgep7282.a, align 8, !tbaa !66
  %i.bzz = icmp eq i32 %i.bzy, %i.bzv
  %i.caa = zext i1 %i.bzz to i32
end_hunk_5
begin_hunk_6_@match_at:bb.a
  br i1 %i.cab, label %bb.ve, label %.thread3378

bb.ve:                                            ; preds = %bb.vd
  %scevgep7283 = getelementptr i8, ptr %lsr.iv7279.a, i64 16
  %i.cac = load i32, ptr %scevgep7283, align 8, !tbaa !66
  %i.cad = icmp eq i32 %i.cac, %i.bzv
  br i1 %i.cad, label %bb.vf, label %.thread3378
end_hunk_6
begin_hunk_7_@match_at:bb.a

.thread3378:                                      ; preds = %bb.vc, %bb.vd, %bb.ve, %bb.vg
  %.12251 = phi i32 [ %spec.select3487, %bb.vc ], [ %i.caf, %bb.vg ], [ %.022504006, %bb.ve ], [ %.022504006, %bb.vd ]
  %scevgep7280 = getelementptr i8, ptr %lsr.iv7279.a, i64 -48 ; 2 uses
  %scevgep7281 = getelementptr i8, ptr %scevgep7280, i64 48
  %i.cag = icmp ugt ptr %scevgep7281, %i.bzt
  br i1 %i.cag, label %.lr.ph4009, label %.thread3378.._crit_edge4010.loopexit_crit_edge, !llvm.loop !99

._crit_edge4010.loopexitsplit:                    ; preds = %bb.vf
  %lsr.iv7279.lcssa = phi ptr [ %lsr.iv7279.a, %bb.vf ]
  br label %._crit_edge4010.loopexit

.thread3378.._crit_edge4010.loopexit_crit_edge:   ; preds = %.thread3378
  %lsr.iv7279.lcssa7284 = phi ptr [ %lsr.iv7279.a, %.thread3378 ]
  br label %._crit_edge4010.loopexit, !llvm.loop !99

._crit_edge4010.loopexit:                         ; preds = %._crit_edge4010.loopexitsplit, %.thread3378.._crit_edge4010.loopexit_crit_edge
  %.lcssa6888 = phi ptr [ %lsr.iv7279.lcssa7284, %.thread3378.._crit_edge4010.loopexit_crit_edge ], [ %lsr.iv7279.lcssa, %._crit_edge4010.loopexitsplit ]
  br label %._crit_edge4010

._crit_edge4010:                                  ; preds = %._crit_edge4010.loopexit, %bb.vb
end_hunk_7
begin_hunk_8_@onig_scan:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.039 = phi i64 [ 0, %bb.a ], [ %7, %bb.k ]     ; 5 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.k ]     ; 6 uses
  %i.d = tail call i64 @onig_search_gpos(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0, ptr noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
end_hunk_8
begin_hunk_9_@onig_scan:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %5(i64 noundef %.039, i64 noundef %i.d, ptr noundef %3, ptr noundef %6) #21 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

end_hunk_9
begin_hunk_10_@onig_scan:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %i.v, %bb.i ], [ %i.w, %bb.j ]  ; 2 uses
  %i.x = icmp ugt ptr %.1, %2
  %7 = add i64 %.039, 1
  br i1 %i.x, label %..loopexit.loopexit_crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@onig_scan:bb.a
  br label %.loopexit

.loopexit.loopexitsplit:                          ; preds = %bb.f
  %8 = add i64 %.039, 1
  br label %.loopexit.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %bb.k
  %i.z = add i64 %.039, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
  %.lcssa108 = phi i64 [ %i.z, %..loopexit.loopexit_crit_edge ], [ %8, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.l, %bb.d
end_hunk_11
