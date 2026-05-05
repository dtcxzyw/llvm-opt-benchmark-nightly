inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@str_utf8_nth:bb.a

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.e
  %lsr.iv = phi i64 [ %i.as, %.lr.ph39.preheader ], [ %lsr.iv.next, %bb.e ]
  %.238 = phi ptr [ %i.aw, %bb.e ], [ %.1, %.lr.ph39.preheader ] ; 3 uses
  %.437 = phi i64 [ %.5, %bb.e ], [ %.3, %.lr.ph39.preheader ] ; 3 uses
  %i.at = load i8, ptr %.238, align 1, !tbaa !20
  %.not = icmp slt i8 %i.at, -64
end_hunk_0
begin_hunk_1_@str_utf8_nth:bb.a
  br i1 %exitcond48.not, label %._crit_edge.loopexitsplit, label %.lr.ph39, !llvm.loop !86

._crit_edge.loopexitsplit:                        ; preds = %bb.e
  br label %._crit_edge.loopexit

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.c
  %.238.lcssa.a = phi ptr [ %.238, %bb.c ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.._crit_edge.loopexit_crit_edge
  %.4.lcssa.ph = phi i64 [ 0, %.._crit_edge.loopexit_crit_edge ], [ %.5, %._crit_edge.loopexitsplit ]
  %.2.lcssa.ph = phi ptr [ %.238.lcssa.a, %.._crit_edge.loopexit_crit_edge ], [ %scevgep47, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
end_hunk_1
begin_hunk_2_@str_utf8_offset:bb.a

.lr.ph39.i:                                       ; preds = %bb.e, %.lr.ph39.preheader.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %bb.e ], [ %i.ar, %.lr.ph39.preheader.i ]
  %.238.i = phi ptr [ %i.av, %bb.e ], [ %.1.i, %.lr.ph39.preheader.i ] ; 3 uses
  %.437.i = phi i64 [ %.5.i, %bb.e ], [ %.3.i, %.lr.ph39.preheader.i ] ; 3 uses
  %i.as = load i8, ptr %.238.i, align 1, !tbaa !20
  %.not.i = icmp slt i8 %i.as, -64
end_hunk_2
begin_hunk_3_@str_utf8_offset:bb.a
  br i1 %exitcond48.not.i, label %str_utf8_nth.exit.loopexitsplit, label %.lr.ph39.i, !llvm.loop !86

str_utf8_nth.exit.loopexitsplit:                  ; preds = %bb.e
  br label %str_utf8_nth.exit.loopexit

.str_utf8_nth.exit.loopexit_crit_edge:            ; preds = %bb.c
  %.238.i.lcssa.a = phi ptr [ %.238.i, %bb.c ]
  br label %str_utf8_nth.exit.loopexit

str_utf8_nth.exit.loopexit:                       ; preds = %str_utf8_nth.exit.loopexitsplit, %.str_utf8_nth.exit.loopexit_crit_edge
  %.2.lcssa.i.ph = phi ptr [ %.238.i.lcssa.a, %.str_utf8_nth.exit.loopexit_crit_edge ], [ %scevgep47.i, %str_utf8_nth.exit.loopexitsplit ]
  br label %str_utf8_nth.exit

str_utf8_nth.exit:                                ; preds = %str_utf8_nth.exit.loopexit, %.loopexit.i
end_hunk_3
begin_hunk_4_@str_succ:bb.a
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader, %bb.s
  %.06278.us.i.i = phi i64 [ %i.ch, %bb.s ], [ %i.bq, %.preheader.us.i.i.preheader ] ; 4 uses
  %i.cb = getelementptr i8, ptr %.us-phi230, i64 %.06278.us.i.i
  %i.cc = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.cb, ptr noundef nonnull %i.n) #28
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.s, label %.preheader.us.i.i.._crit_edge.us.i.i_crit_edge

._crit_edge.us.i.isplit:                          ; preds = %bb.s
  br label %._crit_edge.us.i.i

.preheader.us.i.i.._crit_edge.us.i.i_crit_edge:   ; preds = %.preheader.us.i.i
  %.06278.us.i.i.lcssa.a = phi i64 [ %.06278.us.i.i, %.preheader.us.i.i ]
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.isplit, %.preheader.us.i.i.._crit_edge.us.i.i_crit_edge
  %.062.lcssa.us.i.i = phi i64 [ %.06278.us.i.i.lcssa.a, %.preheader.us.i.i.._crit_edge.us.i.i_crit_edge ], [ 0, %._crit_edge.us.i.isplit ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.us-phi230, i64 %.062.lcssa.us.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 1
  %.neg.us.i.i = xor i64 %.062.lcssa.us.i.i, -1
end_hunk_4
begin_hunk_5_@enc_str_scrub:bb.a

rb_str_cat.exit:                                  ; preds = %rb_str_buf_new.exit, %bb.ag
  %i.dk = sub i64 %.pre-phi, %i.de
  %spec.select297 = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.ck) ; 2 uses
  %i.dl = icmp slt i64 %spec.select297, 3
  br i1 %i.dl, label %.loopexit, label %.preheader.preheader

end_hunk_5
begin_hunk_6_@enc_str_scrub:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ah
  %lsr.iv.a = phi i64 [ %i.dm, %.preheader.preheader ], [ %lsr.iv.next, %bb.ah ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.1260563.lcssa583, i64 %lsr.iv.a
  %i.dn = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.1260563.lcssa583, ptr noundef %scevgep, ptr noundef %0) #28 ; 2 uses
  %i.do = icmp slt i32 %i.dn, -1
  br i1 %i.do, label %.preheader..loopexit.loopexit_crit_edge, label %bb.ah
end_hunk_6
begin_hunk_7_@enc_str_scrub:bb.a
bb.ah:                                            ; preds = %.preheader
  %i.dp = icmp eq i32 %i.dn, -1
  tail call void @llvm.assume(i1 %i.dp)
  %lsr.iv.next = add i64 %lsr.iv.a, -1            ; 2 uses
  %i.dq = add i64 %lsr.iv.next, 2
  %i.dr = icmp samesign ugt i64 %i.dq, 3
  br i1 %i.dr, label %.preheader, label %.loopexit.loopexitsplit, !llvm.loop !169

.loopexit.loopexitsplit:                          ; preds = %bb.ah
  br label %.loopexit.loopexit

.preheader..loopexit.loopexit_crit_edge:          ; preds = %.preheader
  %lsr.iv.lcssa.a = phi i64 [ %lsr.iv.a, %.preheader ]
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %.preheader..loopexit.loopexit_crit_edge
  %.2230.ph = phi i64 [ %lsr.iv.lcssa.a, %.preheader..loopexit.loopexit_crit_edge ], [ 1, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %rb_str_cat.exit
end_hunk_7
begin_hunk_8_@enc_str_scrub:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ci
  %.1438 = phi i64 [ %.1, %bb.ci ], [ %.1437, %.lr.ph.preheader ] ; 3 uses
  %i.jp = getelementptr i8, ptr %.6265441, i64 %.1438
  %i.jq = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.6265441, ptr noundef %i.jp, ptr noundef %0) #28 ; 2 uses
  %i.jr = icmp slt i32 %i.jq, -1
end_hunk_8
begin_hunk_9_@enc_str_scrub:bb.a
  br label %.loopexit417.loopexit

.lr.ph..loopexit417.loopexit_crit_edge:           ; preds = %.lr.ph
  %.1438.lcssa.a = phi i64 [ %.1438, %.lr.ph ]
  br label %.loopexit417.loopexit

.loopexit417.loopexit:                            ; preds = %.loopexit417.loopexitsplit, %.lr.ph..loopexit417.loopexit_crit_edge
  %.2.ph = phi i64 [ %.1438.lcssa.a, %.lr.ph..loopexit417.loopexit_crit_edge ], [ %.1.lcssa, %.loopexit417.loopexitsplit ]
  br label %.loopexit417

.loopexit417:                                     ; preds = %.loopexit417.loopexit, %.preheader416, %rb_str_cat.exit357
end_hunk_9
begin_hunk_10_@rb_str_strip:bb.a

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.critedge2.i
  %lsr.iv = phi i64 [ %i.t, %.lr.ph41.i.preheader ], [ %lsr.iv.next, %.critedge2.i ]
  %.02440.i = phi ptr [ %i.az, %.critedge2.i ], [ %i.r, %.lr.ph41.i.preheader ] ; 3 uses
  %i.au = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.critedge2.i, label %bb.h
end_hunk_10
begin_hunk_11_@rb_str_strip:bb.a
  br i1 %i.be, label %.lr.ph.i, label %.critedge.i.loopexit61

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.h
  %.02440.i.lcssa.a = phi ptr [ %.02440.i, %bb.h ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.3.i.ph = phi ptr [ %.02440.i.lcssa.a, %..critedge.i.loopexit_crit_edge ], [ %i.ar, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit61:                           ; preds = %bb.i
end_hunk_11
begin_hunk_12_@rb_str_lstrip:bb.a

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.critedge2.i
  %lsr.iv = phi i64 [ %i.m, %.lr.ph41.i.preheader ], [ %lsr.iv.next, %.critedge2.i ]
  %.02440.i = phi ptr [ %i.bb, %.critedge2.i ], [ %i.k, %.lr.ph41.i.preheader ] ; 3 uses
  %i.aw = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.critedge2.i, label %bb.i
end_hunk_12
begin_hunk_13_@rb_str_lstrip:bb.a
  br i1 %i.bg, label %.lr.ph.i, label %.critedge.i.loopexit48

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.i
  %.02440.i.lcssa.a = phi ptr [ %.02440.i, %bb.i ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.3.i.ph = phi ptr [ %.02440.i.lcssa.a, %..critedge.i.loopexit_crit_edge ], [ %i.an, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit48:                           ; preds = %bb.j
end_hunk_13
begin_hunk_14_@rb_str_strip_bang:bb.a

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.critedge2.i
  %lsr.iv = phi i64 [ %i.t, %.lr.ph41.i.preheader ], [ %lsr.iv.next, %.critedge2.i ]
  %.02440.i = phi ptr [ %i.az, %.critedge2.i ], [ %i.r, %.lr.ph41.i.preheader ] ; 3 uses
  %i.au = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.critedge2.i, label %bb.h
end_hunk_14
begin_hunk_15_@rb_str_strip_bang:bb.a
  br i1 %i.be, label %.lr.ph.i, label %.critedge.i.loopexit77

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.h
  %.02440.i.lcssa.a = phi ptr [ %.02440.i, %bb.h ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.3.i.ph = phi ptr [ %.02440.i.lcssa.a, %..critedge.i.loopexit_crit_edge ], [ %i.ar, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit77:                           ; preds = %bb.i
end_hunk_15
begin_hunk_16_@rb_str_lstrip_bang:bb.a

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.critedge2.i
  %lsr.iv = phi i64 [ %i.t, %.lr.ph41.i.preheader ], [ %lsr.iv.next, %.critedge2.i ]
  %.02440.i = phi ptr [ %i.av, %.critedge2.i ], [ %i.r, %.lr.ph41.i.preheader ] ; 3 uses
  %i.aq = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.critedge2.i, label %bb.h
end_hunk_16
begin_hunk_17_@rb_str_lstrip_bang:bb.a
  br i1 %i.ba, label %.lr.ph.i, label %.critedge.i.loopexit60

.critedge.i.loopexitsplit:                        ; preds = %.critedge2.i
  br label %.critedge.i.loopexit

..critedge.i.loopexit_crit_edge:                  ; preds = %bb.h
  %.02440.i.lcssa.a = phi ptr [ %.02440.i, %bb.h ]
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %.critedge.i.loopexitsplit, %..critedge.i.loopexit_crit_edge
  %.3.i.ph = phi ptr [ %.02440.i.lcssa.a, %..critedge.i.loopexit_crit_edge ], [ %i.an, %.critedge.i.loopexitsplit ]
  br label %.critedge.i

.critedge.i.loopexit60:                           ; preds = %bb.i
end_hunk_17
begin_hunk_18_@enc_succ_char:bb.a
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.06074.us = phi i64 [ %i.t, %bb.c ], [ %i.c, %.preheader.us.preheader ] ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 %.06074.us
  %i.o = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef %2) #28
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.c, label %.preheader.us.._crit_edge.us_crit_edge

._crit_edge.ussplit:                              ; preds = %bb.c
  br label %._crit_edge.us

.preheader.us.._crit_edge.us_crit_edge:           ; preds = %.preheader.us
  %.06074.us.lcssa.a = phi i64 [ %.06074.us, %.preheader.us ]
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.ussplit, %.preheader.us.._crit_edge.us_crit_edge
  %.060.lcssa.us = phi i64 [ %.06074.us.lcssa.a, %.preheader.us.._crit_edge.us_crit_edge ], [ 0, %._crit_edge.ussplit ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %.060.lcssa.us
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %.neg.us = xor i64 %.060.lcssa.us, -1
end_hunk_18
begin_hunk_19_@rstrip_offset:bb.a
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.critedge2
  %.02849 = phi ptr [ %i.ah, %.critedge2 ], [ %2, %.lr.ph50.preheader ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.02849, i64 -1   ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
end_hunk_19
begin_hunk_20_@rstrip_offset:bb.a
  br i1 %.not35, label %.critedge.loopexit70, label %.lr.ph

.critedge.loopexitsplit:                          ; preds = %.critedge2
  br label %.critedge.loopexit

..critedge.loopexit_crit_edge:                    ; preds = %bb.i
  %.02849.lcssa.a = phi ptr [ %.02849, %bb.i ]
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %..critedge.loopexit_crit_edge
  %.4.ph = phi ptr [ %.02849.lcssa.a, %..critedge.loopexit_crit_edge ], [ %scevgep, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge.loopexit70:                             ; preds = %.lr.ph, %bb.j
end_hunk_20
begin_hunk_21_@rb_str_each_grapheme_cluster_size:bb.a

bb.m:                                             ; preds = %bb.n, %RSTRING_END.exit
  %.026 = phi ptr [ %i.ar, %RSTRING_END.exit ], [ %i.az, %bb.n ] ; 4 uses
  %.025 = phi i64 [ 0, %RSTRING_END.exit ], [ %i.ay, %bb.n ] ; 3 uses
  %i.av = icmp ult ptr %.026, %i.au
  br i1 %i.av, label %bb.n, label %split.a

end_hunk_21
begin_hunk_22_@rb_str_each_grapheme_cluster_size:bb.a
  br label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.025.lcssa54 = phi i64 [ %.025, %bb.n ]
  br label %bb.o

bb.o:                                             ; preds = %split.a, %._crit_edge
  %.025.lcssa = phi i64 [ %.025.lcssa54, %._crit_edge ], [ %.025.lcssa53, %split.a ] ; 3 uses
  br i1 %.not31.not40, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_22
