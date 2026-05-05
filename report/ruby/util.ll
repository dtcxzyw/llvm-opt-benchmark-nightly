inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_scan_oct:bb.a
.critedge.outer.i:                                ; preds = %bb.b, %.critedge.outer.preheader.i
  %.031.ph.i = phi i64 [ %i.t, %bb.b ], [ 0, %.critedge.outer.preheader.i ] ; 3 uses
  %.030.ph.i = phi i64 [ %i.u, %bb.b ], [ %1, %.critedge.outer.preheader.i ] ; 2 uses
  %.029.ph.i = phi ptr [ %i.q, %bb.b ], [ %0, %.critedge.outer.preheader.i ] ; 5 uses
  %i.a = icmp slt i64 %.030.ph.i, 0
  %i.b = load i8, ptr %.029.ph.i, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i64
end_hunk_0
begin_hunk_1_@ruby_scan_oct:bb.a
  br label %.loopexit.i

.loopexit.i.loopexit43split:                      ; preds = %bb.b
  %.144.i.ph.ph = phi ptr [ %scevgep.i, %bb.b ]
  %.13242.i.ph.ph = phi i64 [ %i.t, %bb.b ]
  br label %.loopexit.i.loopexit43

.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge: ; preds = %.critedge.outer.split.i
  %.029.ph.i.lcssa52 = phi ptr [ %.029.ph.i, %.critedge.outer.split.i ]
  %.029.ph.i.lcssa51 = phi ptr [ %.029.ph.i, %.critedge.outer.split.i ] ; 0 uses
  %split50 = phi i64 [ %.031.ph.i, %.critedge.outer.split.i ]
  br label %.loopexit.i.loopexit43

.loopexit.i.loopexit43:                           ; preds = %.loopexit.i.loopexit43split, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge
  %.144.i.ph = phi ptr [ %.029.ph.i.lcssa52, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge ], [ %.144.i.ph.ph, %.loopexit.i.loopexit43split ]
  %.13242.i.ph = phi i64 [ %split50, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge ], [ %.13242.i.ph.ph, %.loopexit.i.loopexit43split ]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit43, %.loopexit.i.loopexit, %.critedge.us.i.preheader
end_hunk_1
begin_hunk_2_@ruby_scan_digits:bb.a
.critedge.outer:                                  ; preds = %.critedge.outer.preheader, %bb.e
  %.031.ph = phi i64 [ %i.ae, %bb.e ], [ 0, %.critedge.outer.preheader ] ; 4 uses
  %.030.ph = phi i64 [ %i.ah, %bb.e ], [ %1, %.critedge.outer.preheader ] ; 2 uses
  %.029.ph = phi ptr [ %i.v, %bb.e ], [ %0, %.critedge.outer.preheader ] ; 5 uses
  %i.b = icmp slt i64 %.030.ph, 0
  br i1 %i.b, label %.critedge.us.preheader, label %.critedge.outer.split

end_hunk_2
begin_hunk_3_@ruby_scan_digits:bb.a
  br label %.loopexit

.loopexit.loopexit79split:                        ; preds = %bb.e
  %.144.ph.ph = phi ptr [ %scevgep, %bb.e ]
  %.13242.ph.ph = phi i64 [ %i.ae, %bb.e ]
  br label %.loopexit.loopexit79

.critedge.outer.split..loopexit.loopexit79_crit_edge: ; preds = %.critedge.outer.split
  %.029.ph.lcssa85 = phi ptr [ %.029.ph, %.critedge.outer.split ]
  %.029.ph.lcssa84 = phi ptr [ %.029.ph, %.critedge.outer.split ] ; 0 uses
  %split83 = phi i64 [ %.031.ph, %.critedge.outer.split ]
  br label %.loopexit.loopexit79

.loopexit.loopexit79:                             ; preds = %.loopexit.loopexit79split, %.critedge.outer.split..loopexit.loopexit79_crit_edge
  %.144.ph = phi ptr [ %.029.ph.lcssa85, %.critedge.outer.split..loopexit.loopexit79_crit_edge ], [ %.144.ph.ph, %.loopexit.loopexit79split ]
  %.13242.ph = phi i64 [ %split83, %.critedge.outer.split..loopexit.loopexit79_crit_edge ], [ %.13242.ph.ph, %.loopexit.loopexit79split ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit79, %.loopexit.loopexit, %.critedge.us.preheader
end_hunk_3
begin_hunk_4_@ruby_scan_hex:bb.a
.critedge.outer.i:                                ; preds = %bb.b, %.critedge.outer.preheader.i
  %.031.ph.i = phi i64 [ %i.t, %bb.b ], [ 0, %.critedge.outer.preheader.i ] ; 3 uses
  %.030.ph.i = phi i64 [ %i.u, %bb.b ], [ %1, %.critedge.outer.preheader.i ] ; 2 uses
  %.029.ph.i = phi ptr [ %i.q, %bb.b ], [ %0, %.critedge.outer.preheader.i ] ; 5 uses
  %i.a = icmp slt i64 %.030.ph.i, 0
  %i.b = load i8, ptr %.029.ph.i, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i64
end_hunk_4
begin_hunk_5_@ruby_scan_hex:bb.a
  br label %.loopexit.i

.loopexit.i.loopexit43split:                      ; preds = %bb.b
  %.144.i.ph.ph = phi ptr [ %scevgep.i, %bb.b ]
  %.13242.i.ph.ph = phi i64 [ %i.t, %bb.b ]
  br label %.loopexit.i.loopexit43

.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge: ; preds = %.critedge.outer.split.i
  %.029.ph.i.lcssa52 = phi ptr [ %.029.ph.i, %.critedge.outer.split.i ]
  %.029.ph.i.lcssa51 = phi ptr [ %.029.ph.i, %.critedge.outer.split.i ] ; 0 uses
  %split50 = phi i64 [ %.031.ph.i, %.critedge.outer.split.i ]
  br label %.loopexit.i.loopexit43

.loopexit.i.loopexit43:                           ; preds = %.loopexit.i.loopexit43split, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge
  %.144.i.ph = phi ptr [ %.029.ph.i.lcssa52, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge ], [ %.144.i.ph.ph, %.loopexit.i.loopexit43split ]
  %.13242.i.ph = phi i64 [ %split50, %.critedge.outer.split.i..loopexit.i.loopexit43_crit_edge ], [ %.13242.i.ph.ph, %.loopexit.i.loopexit43split ]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit43, %.loopexit.i.loopexit, %.critedge.us.i.preheader
end_hunk_5
begin_hunk_6_@ruby_strtod:bb.a
  br i1 %i.aq, label %.preheader950.preheader, label %bb.p

.preheader950.preheader:                          ; preds = %bb.n
  %lsr.iv2092.lcssa2094 = phi ptr [ %lsr.iv2092, %bb.n ]
  %.lcssa2055 = phi double [ %i.ao, %bb.n ]       ; 2 uses
  br label %.preheader950

.preheader950:                                    ; preds = %.preheader950.preheader, %bb.o
  %lsr.iv2094 = phi ptr [ %lsr.iv2092.lcssa2094, %.preheader950.preheader ], [ %scevgep2095, %bb.o ] ; 3 uses
  %i.ar = load i8, ptr %lsr.iv2094, align 1, !tbaa !11 ; 3 uses
  %.not701 = icmp eq i8 %i.ar, 0
  br i1 %.not701, label %.critedge4.thread.loopexit, label %bb.o
end_hunk_6
begin_hunk_7_@ruby_strtod:bb.a
  br i1 %.not665, label %Bclear.exit740.thread.sink.split.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.4786 = phi ptr [ %i.ng, %bb.cs ], [ %.3785, %bb.cr ] ; 14 uses
  %i.nh = tail call fastcc ptr @diff(ptr noundef nonnull %.4800, ptr noundef nonnull %.3794) ; 13 uses
  %.not666 = icmp eq ptr %i.nh, null
  br i1 %.not666, label %Bclear.exit740.thread.sink.split.loopexit, label %bb.cu
end_hunk_7
begin_hunk_8_@ruby_strtod:bb.a
  br label %.thread845

cmp.exit.thread839:                               ; preds = %bb.cx, %cmp.exit
  %.4786.lcssa2130 = phi ptr [ %.4786, %bb.cx ], [ %.4786, %cmp.exit ]
  %.lcssa2011 = phi i32 [ %i.nj, %bb.cx ], [ %i.nj, %cmp.exit ]
  %.lcssa2007 = phi i32 [ %i.nl, %bb.cx ], [ %i.nl, %cmp.exit ]
  %.4786.lcssa = phi ptr [ %.4786, %bb.cx ], [ %.4786, %cmp.exit ] ; 10 uses
end_hunk_8
begin_hunk_9_@ruby_strtod:bb.a
  %i.op = getelementptr [4 x i8], ptr %i.on, i64 %i.oo
  %i.oq = shl nsw i64 %i.oo, 2
  %i.or = add nsw i64 %i.oq, 20
  %scevgep2128 = getelementptr i8, ptr %.4786.lcssa2130, i64 %i.or
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %bb.dd
end_hunk_9
begin_hunk_10_@mult:bb.a

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %bb.j
  %lsr.iv = phi ptr [ %scevgep, %.lr.ph94.preheader ], [ %scevgep113, %bb.j ] ; 2 uses
  %.07192 = phi i32 [ %i.cb, %bb.j ], [ %i.w, %.lr.ph94.preheader ] ; 4 uses
  %i.ca = load i32, ptr %lsr.iv, align 4, !tbaa !7
  %.not80 = icmp eq i32 %i.ca, 0
  br i1 %.not80, label %bb.j, label %.lr.ph94..critedge.loopexit_crit_edge
end_hunk_10
begin_hunk_11_@mult:bb.a
  br i1 %i.cc, label %.lr.ph94, label %.critedge.loopexitsplit, !llvm.loop !58

.critedge.loopexitsplit:                          ; preds = %bb.j
  %.071.lcssa.ph.ph = phi i32 [ 0, %bb.j ]
  br label %.critedge.loopexit

.lr.ph94..critedge.loopexit_crit_edge:            ; preds = %.lr.ph94
  %.07192.lcssa = phi i32 [ %.07192, %.lr.ph94 ]
  %.07192.lcssa.a = phi i32 [ %.07192, %.lr.ph94 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph94..critedge.loopexit_crit_edge
  %.071.lcssa.ph = phi i32 [ %.07192.lcssa, %.lr.ph94..critedge.loopexit_crit_edge ], [ %.071.lcssa.ph.ph, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
end_hunk_11
begin_hunk_12_@quorem:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.ai = phi ptr [ %i.al, %bb.e ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.07194 = phi i32 [ %i.ak, %bb.e ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %.not79 = icmp eq i32 %i.aj, 0
  br i1 %.not79, label %bb.e, label %.lr.ph..critedge.loopexit_crit_edge
end_hunk_12
begin_hunk_13_@quorem:bb.a
  br label %.critedge.loopexit

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.07194.lcssa = phi i32 [ %.07194, %.lr.ph ]
  %.07194.lcssa.a = phi i32 [ %.07194, %.lr.ph ]  ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph..critedge.loopexit_crit_edge
  %.071.lcssa.ph = phi i32 [ %.07194.lcssa, %.lr.ph..critedge.loopexit_crit_edge ], [ %.lcssa133, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader89
end_hunk_13
begin_hunk_14_@quorem:bb.a

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.lr.ph98.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.172, %.lr.ph98.preheader ] ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.lr.ph98..critedge2.loopexit_crit_edge
end_hunk_14
begin_hunk_15_@quorem:bb.a
  br label %.critedge2.loopexit

.lr.ph98..critedge2.loopexit_crit_edge:           ; preds = %.lr.ph98
  %.297.lcssa = phi i32 [ %.297, %.lr.ph98 ]
  %.297.lcssa.a = phi i32 [ %.297, %.lr.ph98 ]    ; 0 uses
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %.lr.ph98..critedge2.loopexit_crit_edge
  %.2.lcssa.ph = phi i32 [ %.297.lcssa, %.lr.ph98..critedge2.loopexit_crit_edge ], [ %.lcssa136, %.critedge2.loopexitsplit ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader
end_hunk_15
