inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 47
begin_hunk_0_@mszip_inflate:bb.a
  %i.aeg = zext nneg i32 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.aeg
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !51 ; 2 uses
  %i.aej = icmp ugt i16 %i.aei, 31
  br i1 %i.aej, label %bb.gi, label %.loopexit

.loopexit:                                        ; preds = %bb.gj, %bb.gk, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %._crit_edge769
  %.3334 = phi i16 [ %i.zs, %._crit_edge769 ], [ %i.aac, %bb.gj ], [ %i.aam, %bb.gk ], [ %i.aaw, %bb.gl ], [ %i.abg, %bb.gm ], [ %i.abq, %bb.gn ], [ %i.aca, %bb.go ], [ %i.ack, %bb.gp ], [ %i.acu, %bb.gq ], [ %i.ade, %bb.gr ], [ %i.ado, %bb.gs ], [ %i.ady, %bb.gt ], [ %i.aei, %bb.gu ] ; 2 uses
  %i.aek = zext nneg i16 %.3334 to i64            ; 4 uses
  %i.ael = icmp eq i16 %.3334, 31
  br i1 %i.ael, label %.thread501, label %.preheader511

.preheader511:                                    ; preds = %.loopexit
  %i.aem = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aek
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !31
  %i.aeo = zext i8 %i.aen to i32                  ; 2 uses
  %i.aep = sub nsw i32 %.8343.lcssa, %i.aeo       ; 3 uses
  %i.aeq = lshr i32 %.8356.lcssa, %i.aeo          ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr @mszip_dist_extrabits, i64 %i.aek
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !31 ; 3 uses
  %i.aet = zext i8 %i.aes to i32                  ; 4 uses
  %i.aeu = icmp slt i32 %i.aep, %i.aet
  br i1 %i.aeu, label %.lr.ph778, label %._crit_edge779

.lr.ph778:                                        ; preds = %.preheader511, %bb.hf
  %.18777 = phi ptr [ %.19, %bb.hf ], [ %.16.lcssa, %.preheader511 ] ; 2 uses
  %.18326776 = phi ptr [ %i.afm, %bb.hf ], [ %.16324.lcssa, %.preheader511 ] ; 2 uses
  %.9344775 = phi i32 [ %i.afr, %bb.hf ], [ %i.aep, %.preheader511 ] ; 2 uses
  %.9357774 = phi i32 [ %i.afq, %bb.hf ], [ %i.aeq, %.preheader511 ]
  %.not412 = icmp ult ptr %.18326776, %.18777
  br i1 %.not412, label %bb.hf, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph778
  %i.aev = load ptr, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %.not.i469 = icmp eq ptr %i.aev, null
  %i.aew = load ptr, ptr %i.o, align 8, !tbaa !8  ; 2 uses
  %i.aex = load i32, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i469, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aey = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.aez = tail call i32 %i.aev(ptr noundef %i.aey, ptr noundef %i.aew, i32 noundef %i.aex) #11, !inline_history !30
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.afa = load i32, ptr %0, align 8, !tbaa !13
  %i.afb = tail call i32 @cli_readn(i32 noundef %i.afa, ptr noundef %i.aew, i32 noundef %i.aex) #11
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.afc = phi i32 [ %i.aez, %bb.gw ], [ %i.afb, %bb.gx ] ; 3 uses
  %i.afd = icmp slt i32 %i.afc, 0
  br i1 %i.afd, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -123, ptr %i.afe, align 8, !tbaa !17
  br label %.thread501

bb.ha:                                            ; preds = %bb.gy
  %i.aff = icmp eq i32 %i.afc, 0
  br i1 %i.aff, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.afg = load i32, ptr %i.q, align 4, !tbaa !20
  %.not23.i472 = icmp eq i32 %i.afg, 0
  br i1 %.not23.i472, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #11
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -123, ptr %i.afh, align 8, !tbaa !17
  br label %.thread501

bb.hd:                                            ; preds = %bb.hb
  %i.afi = load ptr, ptr %i.o, align 8, !tbaa !8
  store i8 0, ptr %i.afi, align 1, !tbaa !31
  store i32 1, ptr %i.q, align 4, !tbaa !20
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.0.i470 = phi i32 [ 1, %bb.hd ], [ %i.afc, %bb.ha ]
  %i.afj = load ptr, ptr %i.o, align 8, !tbaa !8  ; 3 uses
  store ptr %i.afj, ptr %i.e, align 8, !tbaa !22
  %i.afk = zext nneg i32 %.0.i470 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk ; 2 uses
  store ptr %i.afl, ptr %i.g, align 8, !tbaa !21
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph778
  %.19327 = phi ptr [ %i.afj, %bb.he ], [ %.18326776, %.lr.ph778 ] ; 2 uses
  %.19 = phi ptr [ %i.afl, %bb.he ], [ %.18777, %.lr.ph778 ] ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.19327, i64 1 ; 2 uses
  %i.afn = load i8, ptr %.19327, align 1, !tbaa !31
  %i.afo = zext i8 %i.afn to i32
  %i.afp = shl i32 %i.afo, %.9344775
  %i.afq = or i32 %i.afp, %.9357774               ; 2 uses
  %i.afr = add nsw i32 %.9344775, 8               ; 3 uses
  %i.afs = icmp slt i32 %i.afr, %i.aet
  br i1 %i.afs, label %.lr.ph778, label %._crit_edge779, !llvm.loop !67

._crit_edge779:                                   ; preds = %bb.hf, %.preheader511
  %.9357.lcssa = phi i32 [ %i.aeq, %.preheader511 ], [ %i.afq, %bb.hf ] ; 3 uses
  %.9344.lcssa = phi i32 [ %i.aep, %.preheader511 ], [ %i.afr, %bb.hf ]
  %.18326.lcssa = phi ptr [ %.16324.lcssa, %.preheader511 ], [ %i.afm, %bb.hf ] ; 3 uses
  %.18.lcssa = phi ptr [ %.16.lcssa, %.preheader511 ], [ %.19, %bb.hf ] ; 3 uses
  %i.aft = lshr i32 %.9357.lcssa, %i.aet          ; 3 uses
  %i.afu = sub nsw i32 %.9344.lcssa, %i.aet       ; 3 uses
  %i.afv = icmp samesign ult i32 %i.yp, 12
  br i1 %i.afv, label %.preheader, label %.preheader508.preheader

.preheader508.preheader:                          ; preds = %._crit_edge779
  %i.afw = zext i8 %i.aes to i64
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr @mszip_bit_mask_tab, i64 %i.afw
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !51
  %i.afz = zext i16 %i.afy to i32
  %i.aga = and i32 %.9357.lcssa, %i.afz
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr @mszip_dist_offsets, i64 %i.aek
  %i.agc = load i16, ptr %i.agb, align 2, !tbaa !51
  %i.agd = zext i16 %i.agc to i32
  %i.age = add nuw nsw i32 %i.aga, %i.agd         ; 2 uses
  %i.agf = icmp ugt i32 %i.age, %.0296.ph
  %i.agg = select i1 %i.agf, i32 32768, i32 0
  %i.agh = sub i32 %.0296.ph, %i.age
  %i.agi = add i32 %i.agh, %i.agg
  br label %.preheader508

.preheader:                                       ; preds = %._crit_edge779
  %.not410793 = icmp eq i32 %i.yp, 0
  br i1 %.not410793, label %.thread496, label %.lr.ph796.preheader

.lr.ph796.preheader:                              ; preds = %.preheader
  %i.agj = zext i8 %i.aes to i64
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr @mszip_bit_mask_tab, i64 %i.agj
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !51
  %i.agm = zext i16 %i.agl to i32
  %i.agn = and i32 %.9357.lcssa, %i.agm
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr @mszip_dist_offsets, i64 %i.aek
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !51
  %i.agq = zext i16 %i.agp to i32
  %i.agr = add nuw nsw i32 %i.agn, %i.agq         ; 2 uses
  %i.ags = icmp ugt i32 %i.agr, %.0296.ph
  %i.agt = select i1 %i.ags, i32 32768, i32 0
  %i.agu = sub i32 %.0296.ph, %i.agr
  %i.agv = add i32 %i.agu, %i.agt
  br label %.lr.ph796

.lr.ph796:                                        ; preds = %.lr.ph796.preheader, %bb.hh
  %.in = phi i32 [ %i.agw, %bb.hh ], [ %i.yp, %.lr.ph796.preheader ]
  %.0295795 = phi i32 [ %i.ahe, %bb.hh ], [ %i.agv, %.lr.ph796.preheader ] ; 2 uses
  %.1297794 = phi i32 [ %.2, %bb.hh ], [ %.0296.ph, %.lr.ph796.preheader ] ; 2 uses
  %i.agw = add nsw i32 %.in, -1                   ; 2 uses
  %i.agx = add i32 %.0295795, 1
  %i.agy = zext i32 %.0295795 to i64
  %i.agz = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.agy
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !31
  %i.ahb = add i32 %.1297794, 1                   ; 2 uses
  %i.ahc = zext i32 %.1297794 to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ahc
  store i8 %i.aha, ptr %i.ahd, align 1, !tbaa !31
  %i.ahe = and i32 %i.agx, 32767
  %i.ahf = icmp eq i32 %i.ahb, 32768
  br i1 %i.ahf, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.lr.ph796
  %i.ahg = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ahh = tail call i32 %i.ahg(ptr noundef nonnull %0, i32 noundef 32768) #11
  %.not411 = icmp eq i32 %i.ahh, 0
  br i1 %.not411, label %bb.hh, label %.thread501

bb.hh:                                            ; preds = %bb.hg, %.lr.ph796
  %.2 = phi i32 [ %i.ahb, %.lr.ph796 ], [ 0, %bb.hg ] ; 2 uses
  %.not410 = icmp eq i32 %i.agw, 0
  br i1 %.not410, label %.thread496.outer.backedge, label %.lr.ph796, !llvm.loop !68

.preheader508:                                    ; preds = %.preheader508.preheader, %bb.hj
  %.2377 = phi i32 [ %i.ahq, %bb.hj ], [ %i.yp, %.preheader508.preheader ] ; 3 uses
  %.3 = phi i32 [ %.4, %bb.hj ], [ %.0296.ph, %.preheader508.preheader ] ; 4 uses
  %.1 = phi i32 [ %spec.store.select, %bb.hj ], [ %i.agi, %.preheader508.preheader ] ; 4 uses
  %i.ahi = add i32 %.1, %.2377
  %i.ahj = icmp ugt i32 %i.ahi, 32768
  %i.ahk = sub i32 32768, %.1
  %spec.select436 = select i1 %i.ahj, i32 %i.ahk, i32 %.2377 ; 2 uses
  %i.ahl = add i32 %spec.select436, %.3
  %i.ahm = icmp ugt i32 %i.ahl, 32768
  %i.ahn = sub i32 32768, %.3
  %.3373 = select i1 %i.ahm, i32 %i.ahn, i32 %spec.select436 ; 10 uses
  %i.aho = add i32 %.3373, %.3                    ; 2 uses
  %i.ahp = add i32 %.3373, %.1                    ; 2 uses
  %i.ahq = sub i32 %.2377, %.3373                 ; 2 uses
  %.not407786 = icmp eq i32 %.3373, 0
  br i1 %.not407786, label %._crit_edge792, label %iter.check

iter.check:                                       ; preds = %.preheader508
  %i.ahr = zext i32 %.1 to i64                    ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ahr ; 5 uses
  %i.aht = zext i32 %.3 to i64                    ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aht ; 5 uses
  %i.ahv = zext i32 %.3373 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %.3373, 4
  %i.ahw = sub nsw i64 %i.ahr, %i.aht
  %diff.check = icmp ugt i64 %i.ahw, -32
  %or.cond1394 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1394, label %.lr.ph791.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1348 = icmp ult i32 %.3373, 32
  br i1 %min.iters.check1348, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ahv, 28
  %n.vec = and i64 %i.ahv, 4294967264             ; 6 uses
  %i.ahx = getelementptr i8, ptr %i.ahu, i64 %n.vec
  %i.ahy = getelementptr i8, ptr %i.ahs, i64 %n.vec
  %i.ahz = trunc nuw i64 %n.vec to i32
  %i.aia = sub i32 %.3373, %i.ahz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ahu, i64 %index ; 2 uses
  %next.gep1349 = getelementptr i8, ptr %i.ahs, i64 %index ; 2 uses
  %i.aib = getelementptr i8, ptr %next.gep1349, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1349, align 1, !tbaa !31
  %wide.load1350 = load <16 x i8>, ptr %i.aib, align 1, !tbaa !31
  %i.aic = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !31
  store <16 x i8> %wide.load1350, ptr %i.aic, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aid = icmp eq i64 %index.next, %n.vec
  br i1 %i.aid, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ahv
  br i1 %cmp.n, label %._crit_edge792, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph791.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1354 = and i64 %i.ahv, 4294967292         ; 5 uses
  %i.aie = getelementptr i8, ptr %i.ahu, i64 %n.vec1354
  %i.aif = getelementptr i8, ptr %i.ahs, i64 %n.vec1354
  %i.aig = trunc nuw i64 %n.vec1354 to i32
  %i.aih = sub i32 %.3373, %i.aig
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1355 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1359, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1356 = getelementptr i8, ptr %i.ahu, i64 %index1355
  %next.gep1357 = getelementptr i8, ptr %i.ahs, i64 %index1355
  %wide.load1358 = load <4 x i8>, ptr %next.gep1357, align 1, !tbaa !31
  store <4 x i8> %wide.load1358, ptr %next.gep1356, align 1, !tbaa !31
  %index.next1359 = add nuw i64 %index1355, 4     ; 2 uses
  %i.aii = icmp eq i64 %index.next1359, %n.vec1354
  br i1 %i.aii, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1360 = icmp eq i64 %n.vec1354, %i.ahv
  br i1 %cmp.n1360, label %._crit_edge792, label %.lr.ph791.preheader

.lr.ph791.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0789.ph = phi ptr [ %i.ahu, %iter.check ], [ %i.ahx, %vec.epilog.iter.check ], [ %i.aie, %vec.epilog.middle.block ] ; 2 uses
  %.0294788.ph = phi ptr [ %i.ahs, %iter.check ], [ %i.ahy, %vec.epilog.iter.check ], [ %i.aif, %vec.epilog.middle.block ] ; 2 uses
  %.4374787.ph = phi i32 [ %.3373, %iter.check ], [ %i.aia, %vec.epilog.iter.check ], [ %i.aih, %vec.epilog.middle.block ] ; 4 uses
  %i.aij = add i32 %.4374787.ph, -1
  %xtraiter1563 = and i32 %.4374787.ph, 7         ; 2 uses
  %lcmp.mod1564.not = icmp eq i32 %xtraiter1563, 0
  br i1 %lcmp.mod1564.not, label %.lr.ph791.prol.loopexit, label %.lr.ph791.prol

.lr.ph791.prol:                                   ; preds = %.lr.ph791.preheader, %.lr.ph791.prol
  %.0789.prol = phi ptr [ %i.ain, %.lr.ph791.prol ], [ %.0789.ph, %.lr.ph791.preheader ] ; 2 uses
  %.0294788.prol = phi ptr [ %i.ail, %.lr.ph791.prol ], [ %.0294788.ph, %.lr.ph791.preheader ] ; 2 uses
  %.4374787.prol = phi i32 [ %i.aik, %.lr.ph791.prol ], [ %.4374787.ph, %.lr.ph791.preheader ]
  %prol.iter1565 = phi i32 [ %prol.iter1565.next, %.lr.ph791.prol ], [ 0, %.lr.ph791.preheader ]
  %i.aik = add i32 %.4374787.prol, -1             ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0294788.prol, i64 1 ; 2 uses
  %i.aim = load i8, ptr %.0294788.prol, align 1, !tbaa !31
  %i.ain = getelementptr inbounds nuw i8, ptr %.0789.prol, i64 1 ; 2 uses
  store i8 %i.aim, ptr %.0789.prol, align 1, !tbaa !31
  %prol.iter1565.next = add i32 %prol.iter1565, 1 ; 2 uses
  %prol.iter1565.cmp.not = icmp eq i32 %prol.iter1565.next, %xtraiter1563
  br i1 %prol.iter1565.cmp.not, label %.lr.ph791.prol.loopexit, label %.lr.ph791.prol, !llvm.loop !72

.lr.ph791.prol.loopexit:                          ; preds = %.lr.ph791.prol, %.lr.ph791.preheader
  %.0789.unr = phi ptr [ %.0789.ph, %.lr.ph791.preheader ], [ %i.ain, %.lr.ph791.prol ]
  %.0294788.unr = phi ptr [ %.0294788.ph, %.lr.ph791.preheader ], [ %i.ail, %.lr.ph791.prol ]
  %.4374787.unr = phi i32 [ %.4374787.ph, %.lr.ph791.preheader ], [ %i.aik, %.lr.ph791.prol ]
  %i.aio = icmp ult i32 %i.aij, 7
  br i1 %i.aio, label %._crit_edge792, label %.lr.ph791

.lr.ph791:                                        ; preds = %.lr.ph791.prol.loopexit, %.lr.ph791
  %.0789 = phi ptr [ %i.ajn, %.lr.ph791 ], [ %.0789.unr, %.lr.ph791.prol.loopexit ] ; 9 uses
  %.0294788 = phi ptr [ %i.ajl, %.lr.ph791 ], [ %.0294788.unr, %.lr.ph791.prol.loopexit ] ; 9 uses
  %.4374787 = phi i32 [ %i.ajk, %.lr.ph791 ], [ %.4374787.unr, %.lr.ph791.prol.loopexit ]
  %i.aip = getelementptr inbounds nuw i8, ptr %.0294788, i64 1
  %i.aiq = load i8, ptr %.0294788, align 1, !tbaa !31
  %i.air = getelementptr inbounds nuw i8, ptr %.0789, i64 1
  store i8 %i.aiq, ptr %.0789, align 1, !tbaa !31
  %i.ais = getelementptr inbounds nuw i8, ptr %.0294788, i64 2
  %i.ait = load i8, ptr %i.aip, align 1, !tbaa !31
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0789, i64 2
  store i8 %i.ait, ptr %i.air, align 1, !tbaa !31
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0294788, i64 3
  %i.aiw = load i8, ptr %i.ais, align 1, !tbaa !31
  %i.aix = getelementptr inbounds nuw i8, ptr %.0789, i64 3
  store i8 %i.aiw, ptr %i.aiu, align 1, !tbaa !31
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0294788, i64 4
  %i.aiz = load i8, ptr %i.aiv, align 1, !tbaa !31
  %i.aja = getelementptr inbounds nuw i8, ptr %.0789, i64 4
  store i8 %i.aiz, ptr %i.aix, align 1, !tbaa !31
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0294788, i64 5
  %i.ajc = load i8, ptr %i.aiy, align 1, !tbaa !31
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0789, i64 5
  store i8 %i.ajc, ptr %i.aja, align 1, !tbaa !31
  %i.aje = getelementptr inbounds nuw i8, ptr %.0294788, i64 6
  %i.ajf = load i8, ptr %i.ajb, align 1, !tbaa !31
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0789, i64 6
  store i8 %i.ajf, ptr %i.ajd, align 1, !tbaa !31
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0294788, i64 7
  %i.aji = load i8, ptr %i.aje, align 1, !tbaa !31
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0789, i64 7
  store i8 %i.aji, ptr %i.ajg, align 1, !tbaa !31
  %i.ajk = add i32 %.4374787, -8                  ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0294788, i64 8
  %i.ajm = load i8, ptr %i.ajh, align 1, !tbaa !31
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0789, i64 8
  store i8 %i.ajm, ptr %i.ajj, align 1, !tbaa !31
  %.not407.7 = icmp eq i32 %i.ajk, 0
  br i1 %.not407.7, label %._crit_edge792, label %.lr.ph791, !llvm.loop !73

._crit_edge792:                                   ; preds = %.lr.ph791.prol.loopexit, %.lr.ph791, %middle.block, %vec.epilog.middle.block, %.preheader508
  %i.ajo = icmp eq i32 %i.aho, 32768
  br i1 %i.ajo, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %._crit_edge792
  %i.ajp = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ajq = tail call i32 %i.ajp(ptr noundef nonnull %0, i32 noundef 32768) #11
  %.not408 = icmp eq i32 %i.ajq, 0
  br i1 %.not408, label %bb.hj, label %.thread501

bb.hj:                                            ; preds = %bb.hi, %._crit_edge792
  %.4 = phi i32 [ %i.aho, %._crit_edge792 ], [ 0, %bb.hi ] ; 2 uses
  %i.ajr = icmp eq i32 %i.ahp, 32768
  %spec.store.select = select i1 %i.ajr, i32 0, i32 %i.ahp
  %.not409 = icmp eq i32 %i.ahq, 0
  br i1 %.not409, label %.thread496.outer.backedge, label %.preheader508, !llvm.loop !74

bb.hk:                                            ; preds = %bb.fk
  store i32 %.0296.ph, ptr %i.v, align 4, !tbaa !35
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %._crit_edge819
  %.12360 = phi i32 [ %.3351.lcssa1086, %._crit_edge819 ], [ %i.wp, %bb.hk ] ; 2 uses
  %.12347 = phi i32 [ 0, %._crit_edge819 ], [ %i.wq, %bb.hk ] ; 2 uses
  %.22330 = phi ptr [ %.7315.lcssa, %._crit_edge819 ], [ %.12320.lcssa, %bb.hk ] ; 2 uses
  %.22 = phi ptr [ %.7.lcssa, %._crit_edge819 ], [ %.12.lcssa, %bb.hk ] ; 2 uses
  %.not429 = icmp eq i32 %i.ba, 0
  br i1 %.not429, label %bb.b, label %bb.hm, !llvm.loop !75

bb.hm:                                            ; preds = %bb.hl
  %i.ajs = load i32, ptr %i.v, align 4, !tbaa !35 ; 2 uses
  %.not430 = icmp eq i32 %i.ajs, 0
  br i1 %.not430, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajt = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.aju = tail call i32 %i.ajt(ptr noundef nonnull %0, i32 noundef %i.ajs) #11
  %.not431 = icmp eq i32 %i.aju, 0
  br i1 %.not431, label %bb.ho, label %.thread501

bb.ho:                                            ; preds = %bb.hm, %bb.hn
  store ptr %.22330, ptr %i.e, align 8, !tbaa !22
  store ptr %.22, ptr %i.g, align 8, !tbaa !21
  store i32 %.12360, ptr %i.i, align 8, !tbaa !28
  store i32 %.12347, ptr %i.k, align 4, !tbaa !29
  br label %.thread501

.thread501:                                       ; preds = %bb.el, %.loopexit521, %._crit_edge724, %.loopexit, %bb.fl, %bb.fj, %bb.hi, %bb.hg, %bb.hc, %bb.gz, %bb.ge, %bb.gb, %bb.ft, %bb.fq, %bb.eu, %bb.er, %bb.u, %bb.r, %bb.j, %bb.g, %split973, %bb.gi, %split, %bb.ey, %mszip_read_lens.exit.thread, %.thread, %bb.hn, %bb.ho
  %.7385 = phi i32 [ -3, %bb.hi ], [ -123, %bb.j ], [ -14, %split ], [ 0, %bb.ho ], [ %.1379.ph, %.thread ], [ -3, %bb.hn ], [ -3, %bb.fj ], [ %.0227.i.ph, %mszip_read_lens.exit.thread ], [ -123, %bb.u ], [ -123, %bb.ge ], [ -14, %bb.ey ], [ -14, %split973 ], [ -14, %bb.gi ], [ -123, %bb.ft ], [ -123, %bb.eu ], [ -3, %bb.hg ], [ -123, %bb.hc ], [ -123, %bb.g ], [ -123, %bb.r ], [ -123, %bb.er ], [ -123, %bb.fq ], [ -123, %bb.gb ], [ -123, %bb.gz ], [ -11, %bb.fl ], [ -12, %.loopexit ], [ -7, %.loopexit521 ], [ -1, %._crit_edge724 ], [ -8, %bb.el ]
  ret i32 %.7385
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mszip_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.b) #11
  tail call void @free(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@lzx_decompress:bb.a
  %i.aha = lshr i16 %i.agz, 3
  %i.ahb = and i16 %i.aha, 1
  %i.ahc = or disjoint i16 %i.agx, %i.ahb
  %i.ahd = zext nneg i16 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ahd
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !51 ; 3 uses
  %i.ahg = icmp ugt i16 %i.ahf, 249
  br i1 %i.ahg, label %.preheader.17, label %.loopexit1329

.preheader.17:                                    ; preds = %bb.hk
  %i.ahh = shl i16 %i.ahf, 1                      ; 2 uses
  %i.ahi = icmp ugt i16 %i.ahh, 4595
  br i1 %i.ahi, label %split3332, label %bb.hl

bb.hl:                                            ; preds = %.preheader.17
  %i.ahj = trunc i32 %.17.lcssa to i16
  %i.ahk = lshr i16 %i.ahj, 2
  %i.ahl = and i16 %i.ahk, 1
  %i.ahm = or disjoint i16 %i.ahh, %i.ahl
  %i.ahn = zext nneg i16 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ahn
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !51 ; 3 uses
  %i.ahq = icmp ugt i16 %i.ahp, 249
  br i1 %i.ahq, label %.preheader.18, label %.loopexit1329

.preheader.18:                                    ; preds = %bb.hl
  %i.ahr = shl i16 %i.ahp, 1                      ; 2 uses
  %i.ahs = icmp ugt i16 %i.ahr, 4595
  br i1 %i.ahs, label %split3332, label %bb.hm

bb.hm:                                            ; preds = %.preheader.18
  %i.aht = trunc i32 %.17.lcssa to i16
  %i.ahu = lshr i16 %i.aht, 1
  %i.ahv = and i16 %i.ahu, 1
  %i.ahw = or disjoint i16 %i.ahr, %i.ahv
  %i.ahx = zext nneg i16 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ahx
  %i.ahz = load i16, ptr %i.ahy, align 2, !tbaa !51 ; 3 uses
  %i.aia = icmp ugt i16 %i.ahz, 249
  br i1 %i.aia, label %.preheader.19, label %.loopexit1329

.preheader.19:                                    ; preds = %bb.hm
  %i.aib = shl i16 %i.ahz, 1                      ; 2 uses
  %i.aic = icmp ugt i16 %i.aib, 4595
  br i1 %i.aic, label %split3332, label %bb.hn

bb.hn:                                            ; preds = %.preheader.19
  %.not1220.19 = trunc i32 %.17.lcssa to i16
  %i.aid = and i16 %.not1220.19, 1
  %i.aie = or disjoint i16 %i.aib, %i.aid
  %i.aif = zext nneg i16 %i.aie to i64
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.aif
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !51 ; 2 uses
  %i.aii = icmp ugt i16 %i.aih, 249
  br i1 %i.aii, label %bb.gt, label %.loopexit1329

.loopexit1329:                                    ; preds = %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %._crit_edge3053
  %.3987 = phi i16 [ %i.aas, %._crit_edge3053 ], [ %i.abc, %bb.gu ], [ %i.abm, %bb.gv ], [ %i.abw, %bb.gw ], [ %i.acg, %bb.gx ], [ %i.acp, %bb.gy ], [ %i.acz, %bb.gz ], [ %i.adj, %bb.ha ], [ %i.adt, %bb.hb ], [ %i.aed, %bb.hc ], [ %i.aen, %bb.hd ], [ %i.aex, %bb.he ], [ %i.afh, %bb.hf ], [ %i.afr, %bb.hg ], [ %i.agb, %bb.hh ], [ %i.agl, %bb.hi ], [ %i.agv, %bb.hj ], [ %i.ahf, %bb.hk ], [ %i.ahp, %bb.hl ], [ %i.ahz, %bb.hm ], [ %i.aih, %bb.hn ] ; 2 uses
  %i.aij = zext nneg i16 %.3987 to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !31
  %i.aim = zext i8 %i.ail to i32                  ; 2 uses
  %i.ain = shl i32 %.17.lcssa, %i.aim
  %i.aio = sub nsw i32 %.17886.lcssa, %i.aim
  %narrow3872 = add nuw nsw i16 %.3987, 7
  %i.aip = zext nneg i16 %narrow3872 to i32
  br label %bb.ho

bb.ho:                                            ; preds = %.loopexit1329, %bb.gi
  %.331080 = phi ptr [ %.311078.lcssa, %.loopexit1329 ], [ %.291076.lcssa, %bb.gi ] ; 6 uses
  %.321042 = phi ptr [ %.301040.lcssa, %.loopexit1329 ], [ %.281038.lcssa, %bb.gi ] ; 6 uses
  %.01008 = phi i32 [ %i.aip, %.loopexit1329 ], [ %i.zm, %bb.gi ] ; 4 uses
  %.18887 = phi i32 [ %i.aio, %.loopexit1329 ], [ %i.zd, %bb.gi ] ; 7 uses
  %.18 = phi i32 [ %i.ain, %.loopexit1329 ], [ %i.zc, %bb.gi ] ; 6 uses
  %i.aiq = add nuw nsw i32 %.01008, 2             ; 8 uses
  %i.air = lshr i32 %i.zl, 3                      ; 2 uses
  switch i32 %i.air, label %bb.hs [
    i32 0, label %bb.hx
    i32 1, label %bb.hp
    i32 2, label %bb.hq
    i32 3, label %bb.hr
  ]

bb.hp:                                            ; preds = %bb.ho
  br label %bb.hx

bb.hq:                                            ; preds = %bb.ho
  br label %bb.hx

bb.hr:                                            ; preds = %bb.ho
  br label %bb.hx

bb.hs:                                            ; preds = %bb.ho
  %i.ais = zext nneg i32 %i.air to i64            ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !31
  %i.aiv = zext i8 %i.aiu to i32                  ; 5 uses
  %i.aiw = icmp slt i32 %.18887, %i.aiv
  br i1 %i.aiw, label %.lr.ph3063, label %._crit_edge3064

.lr.ph3063:                                       ; preds = %bb.hs, %bb.hw
  %.193061 = phi i32 [ %i.ajg, %bb.hw ], [ %.18, %bb.hs ]
  %.198883060 = phi i32 [ %i.ajh, %bb.hw ], [ %.18887, %bb.hs ] ; 2 uses
  %.3310433059 = phi ptr [ %.341044, %bb.hw ], [ %.321042, %bb.hs ] ; 2 uses
  %.3410813058 = phi ptr [ %i.aji, %bb.hw ], [ %.331080, %bb.hs ] ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.3410813058, i64 1
  %.not1221 = icmp ult ptr %i.aix, %.3310433059
  br i1 %.not1221, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph3063
  %i.aiy = tail call fastcc i32 @lzx_read_input(ptr noundef %0)
  %.not1222 = icmp eq i32 %i.aiy, 0
  br i1 %.not1222, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aiz = load i32, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.hv:                                            ; preds = %bb.ht
  %i.aja = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ajb = load ptr, ptr %i.ab, align 8, !tbaa !100
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.lr.ph3063
  %.351082 = phi ptr [ %i.aja, %bb.hv ], [ %.3410813058, %.lr.ph3063 ] ; 2 uses
  %.341044 = phi ptr [ %i.ajb, %bb.hv ], [ %.3310433059, %.lr.ph3063 ] ; 2 uses
  %i.ajc = load i16, ptr %.351082, align 1
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = sub i32 16, %.198883060
  %i.ajf = shl i32 %i.ajd, %i.aje
  %i.ajg = or i32 %i.ajf, %.193061                ; 2 uses
  %i.ajh = add nsw i32 %.198883060, 16            ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.351082, i64 2 ; 2 uses
  %i.ajj = icmp slt i32 %i.ajh, %i.aiv
  br i1 %i.ajj, label %.lr.ph3063, label %._crit_edge3064, !llvm.loop !126

._crit_edge3064:                                  ; preds = %bb.hw, %bb.hs
  %.341081.lcssa = phi ptr [ %.331080, %bb.hs ], [ %i.aji, %bb.hw ]
  %.331043.lcssa = phi ptr [ %.321042, %bb.hs ], [ %.341044, %bb.hw ]
  %.19888.lcssa = phi i32 [ %.18887, %bb.hs ], [ %i.ajh, %bb.hw ]
  %.19.lcssa = phi i32 [ %.18, %bb.hs ], [ %i.ajg, %bb.hw ] ; 2 uses
  %i.ajk = sub nsw i32 32, %i.aiv
  %i.ajl = lshr i32 %.19.lcssa, %i.ajk
  %i.ajm = shl i32 %.19.lcssa, %i.aiv
  %i.ajn = sub nsw i32 %.19888.lcssa, %i.aiv
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ais
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !4
  %i.ajq = add i32 %i.ajl, -2
  %i.ajr = add i32 %i.ajq, %i.ajp
  br label %bb.hx

bb.hx:                                            ; preds = %bb.ho, %._crit_edge3064, %bb.hr, %bb.hq, %bb.hp
  %.361083 = phi ptr [ %.341081.lcssa, %._crit_edge3064 ], [ %.331080, %bb.hr ], [ %.331080, %bb.hp ], [ %.331080, %bb.hq ], [ %.331080, %bb.ho ]
  %.351045 = phi ptr [ %.331043.lcssa, %._crit_edge3064 ], [ %.321042, %bb.hr ], [ %.321042, %bb.hp ], [ %.321042, %bb.hq ], [ %.321042, %bb.ho ]
  %.4931 = phi i32 [ %i.ajr, %._crit_edge3064 ], [ 1, %bb.hr ], [ %.39203090, %bb.hp ], [ %.39103091, %bb.hq ], [ %.39303089, %bb.ho ] ; 5 uses
  %.4921 = phi i32 [ %.39303089, %._crit_edge3064 ], [ %.39303089, %bb.hr ], [ %.39303089, %bb.hp ], [ %.39203090, %bb.hq ], [ %.39203090, %bb.ho ]
  %.4911 = phi i32 [ %.39203090, %._crit_edge3064 ], [ %.39203090, %bb.hr ], [ %.39103091, %bb.hp ], [ %.39303089, %bb.hq ], [ %.39103091, %bb.ho ]
  %.20889 = phi i32 [ %i.ajn, %._crit_edge3064 ], [ %.18887, %bb.hr ], [ %.18887, %bb.hp ], [ %.18887, %bb.hq ], [ %.18887, %bb.ho ]
  %.20 = phi i32 [ %i.ajm, %._crit_edge3064 ], [ %.18, %bb.hr ], [ %.18, %bb.hp ], [ %.18, %bb.hq ], [ %.18, %bb.ho ]
  %i.ajs = add i32 %i.aiq, %.29393088             ; 2 uses
  %i.ajt = load i32, ptr %i.bz, align 8, !tbaa !89 ; 3 uses
  %i.aju = icmp ugt i32 %i.ajs, %i.ajt
  br i1 %i.aju, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.hz:                                            ; preds = %bb.hx
  %i.ajv = zext i32 %.29393088 to i64             ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ajv ; 28 uses
  %i.ajx = icmp ugt i32 %.4931, %.29393088
  br i1 %i.ajx, label %bb.ia, label %iter.check4120

bb.ia:                                            ; preds = %bb.hz
  %i.ajy = sub nuw i32 %.4931, %.29393088         ; 11 uses
  %i.ajz = icmp sgt i32 %i.ajy, %i.ajt
  br i1 %i.ajz, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.ic:                                            ; preds = %bb.ia
  %i.aka = sub i32 %i.ajt, %i.ajy
  %i.akb = zext i32 %i.aka to i64                 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.akb ; 6 uses
  %i.akd = icmp slt i32 %i.ajy, %i.aiq
  br i1 %i.akd, label %bb.id, label %.loopexit1327

bb.id:                                            ; preds = %bb.ic
  %i.ake = sub nsw i32 %i.aiq, %i.ajy             ; 4 uses
  %i.akf = icmp sgt i32 %i.ajy, 0
  br i1 %i.akf, label %iter.check4082, label %.loopexit1327

iter.check4082:                                   ; preds = %bb.id
  %i.akg = zext nneg i32 %i.ajy to i64            ; 5 uses
  %min.iters.check4064 = icmp ult i32 %i.ajy, 4
  %i.akh = sub nsw i64 %i.akb, %i.ajv
  %diff.check4063 = icmp ugt i64 %i.akh, -32
  %or.cond4256 = select i1 %min.iters.check4064, i1 true, i1 %diff.check4063
  br i1 %or.cond4256, label %.lr.ph3078.preheader, label %vector.main.loop.iter.check4065

vector.main.loop.iter.check4065:                  ; preds = %iter.check4082
  %min.iters.check4066 = icmp ult i32 %i.ajy, 32
  br i1 %min.iters.check4066, label %vec.epilog.ph4086, label %vector.ph4067

vector.ph4067:                                    ; preds = %vector.main.loop.iter.check4065
  %n.mod.vf4068 = and i64 %i.akg, 28
  %n.vec4069 = and i64 %i.akg, 2147483616         ; 6 uses
  %i.aki = getelementptr i8, ptr %i.ajw, i64 %n.vec4069 ; 2 uses
  %i.akj = getelementptr i8, ptr %i.akc, i64 %n.vec4069
  %i.akk = trunc nuw nsw i64 %n.vec4069 to i32
  %i.akl = sub nsw i32 %i.ajy, %i.akk
  br label %vector.body4070

vector.body4070:                                  ; preds = %vector.body4070, %vector.ph4067
  %index4071 = phi i64 [ 0, %vector.ph4067 ], [ %index.next4076, %vector.body4070 ] ; 3 uses
  %next.gep4072 = getelementptr i8, ptr %i.ajw, i64 %index4071 ; 2 uses
  %next.gep4073 = getelementptr i8, ptr %i.akc, i64 %index4071 ; 2 uses
  %i.akm = getelementptr i8, ptr %next.gep4073, i64 16
  %wide.load4074 = load <16 x i8>, ptr %next.gep4073, align 1, !tbaa !31
  %wide.load4075 = load <16 x i8>, ptr %i.akm, align 1, !tbaa !31
  %i.akn = getelementptr i8, ptr %next.gep4072, i64 16
  store <16 x i8> %wide.load4074, ptr %next.gep4072, align 1, !tbaa !31
  store <16 x i8> %wide.load4075, ptr %i.akn, align 1, !tbaa !31
  %index.next4076 = add nuw i64 %index4071, 32    ; 2 uses
  %i.ako = icmp eq i64 %index.next4076, %n.vec4069
  br i1 %i.ako, label %middle.block4077, label %vector.body4070, !llvm.loop !127

middle.block4077:                                 ; preds = %vector.body4070
  %cmp.n4078 = icmp eq i64 %n.vec4069, %i.akg
  br i1 %cmp.n4078, label %.loopexit1327, label %vec.epilog.iter.check4084

vec.epilog.iter.check4084:                        ; preds = %middle.block4077
  %min.epilog.iters.check4085 = icmp eq i64 %n.mod.vf4068, 0
  br i1 %min.epilog.iters.check4085, label %.lr.ph3078.preheader, label %vec.epilog.ph4086, !prof !70

vec.epilog.ph4086:                                ; preds = %vector.main.loop.iter.check4065, %vec.epilog.iter.check4084
  %vec.epilog.resume.val4079 = phi i64 [ %n.vec4069, %vec.epilog.iter.check4084 ], [ 0, %vector.main.loop.iter.check4065 ]
  %n.vec4088 = and i64 %i.akg, 2147483644         ; 5 uses
  %i.akp = getelementptr i8, ptr %i.ajw, i64 %n.vec4088 ; 2 uses
  %i.akq = getelementptr i8, ptr %i.akc, i64 %n.vec4088
  %i.akr = trunc nuw nsw i64 %n.vec4088 to i32
  %i.aks = sub nsw i32 %i.ajy, %i.akr
  br label %vec.epilog.vector.body4089

vec.epilog.vector.body4089:                       ; preds = %vec.epilog.vector.body4089, %vec.epilog.ph4086
  %index4090 = phi i64 [ %vec.epilog.resume.val4079, %vec.epilog.ph4086 ], [ %index.next4094, %vec.epilog.vector.body4089 ] ; 3 uses
  %next.gep4091 = getelementptr i8, ptr %i.ajw, i64 %index4090
  %next.gep4092 = getelementptr i8, ptr %i.akc, i64 %index4090
  %wide.load4093 = load <4 x i8>, ptr %next.gep4092, align 1, !tbaa !31
  store <4 x i8> %wide.load4093, ptr %next.gep4091, align 1, !tbaa !31
  %index.next4094 = add nuw i64 %index4090, 4     ; 2 uses
  %i.akt = icmp eq i64 %index.next4094, %n.vec4088
  br i1 %i.akt, label %vec.epilog.middle.block4095, label %vec.epilog.vector.body4089, !llvm.loop !128

vec.epilog.middle.block4095:                      ; preds = %vec.epilog.vector.body4089
  %cmp.n4096 = icmp eq i64 %n.vec4088, %i.akg
  br i1 %cmp.n4096, label %.loopexit1327, label %.lr.ph3078.preheader

.lr.ph3078.preheader:                             ; preds = %iter.check4082, %vec.epilog.iter.check4084, %vec.epilog.middle.block4095
  %.19663076.ph = phi ptr [ %i.ajw, %iter.check4082 ], [ %i.aki, %vec.epilog.iter.check4084 ], [ %i.akp, %vec.epilog.middle.block4095 ]
  %.09763075.ph = phi ptr [ %i.akc, %iter.check4082 ], [ %i.akj, %vec.epilog.iter.check4084 ], [ %i.akq, %vec.epilog.middle.block4095 ]
  %.19973074.ph = phi i32 [ %i.ajy, %iter.check4082 ], [ %i.akl, %vec.epilog.iter.check4084 ], [ %i.aks, %vec.epilog.middle.block4095 ]
  br label %.lr.ph3078

.lr.ph3078:                                       ; preds = %.lr.ph3078.preheader, %.lr.ph3078
  %.19663076 = phi ptr [ %i.akx, %.lr.ph3078 ], [ %.19663076.ph, %.lr.ph3078.preheader ] ; 2 uses
  %.09763075 = phi ptr [ %i.akv, %.lr.ph3078 ], [ %.09763075.ph, %.lr.ph3078.preheader ] ; 2 uses
  %.19973074 = phi i32 [ %i.aku, %.lr.ph3078 ], [ %.19973074.ph, %.lr.ph3078.preheader ] ; 2 uses
  %i.aku = add nsw i32 %.19973074, -1
  %i.akv = getelementptr inbounds nuw i8, ptr %.09763075, i64 1
  %i.akw = load i8, ptr %.09763075, align 1, !tbaa !31
  %i.akx = getelementptr inbounds nuw i8, ptr %.19663076, i64 1 ; 2 uses
  store i8 %i.akw, ptr %.19663076, align 1, !tbaa !31
  %i.aky = icmp samesign ugt i32 %.19973074, 1
  br i1 %i.aky, label %.lr.ph3078, label %.loopexit1327, !llvm.loop !129

.loopexit1327:                                    ; preds = %.lr.ph3078, %middle.block4077, %vec.epilog.middle.block4095, %bb.id, %bb.ic
  %.1977 = phi ptr [ %i.akc, %bb.ic ], [ %i.af, %bb.id ], [ %i.af, %middle.block4077 ], [ %i.af, %vec.epilog.middle.block4095 ], [ %i.af, %.lr.ph3078 ] ; 6 uses
  %.2967 = phi ptr [ %i.ajw, %bb.ic ], [ %i.ajw, %bb.id ], [ %i.aki, %middle.block4077 ], [ %i.akp, %vec.epilog.middle.block4095 ], [ %i.akx, %.lr.ph3078 ] ; 6 uses
  %.6953 = phi i32 [ %i.aiq, %bb.ic ], [ %i.ake, %bb.id ], [ %i.ake, %middle.block4077 ], [ %i.ake, %vec.epilog.middle.block4095 ], [ %i.ake, %.lr.ph3078 ] ; 7 uses
  %i.akz = icmp sgt i32 %.6953, 0
  br i1 %i.akz, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.loopexit1327
  %.19774045 = ptrtoaddr ptr %.1977 to i64
  %.29674044 = ptrtoaddr ptr %.2967 to i64
  %i.ala = zext nneg i32 %.6953 to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %.6953, 4
  %i.alb = sub i64 %.19774045, %.29674044
  %diff.check = icmp ugt i64 %i.alb, -32
  %or.cond4257 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond4257, label %.lr.ph3084.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4046 = icmp ult i32 %.6953, 32
  br i1 %min.iters.check4046, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ala, 28
  %n.vec = and i64 %i.ala, 2147483616             ; 6 uses
  %i.alc = trunc nuw nsw i64 %n.vec to i32
  %i.ald = sub nsw i32 %.6953, %i.alc
  %i.ale = getelementptr i8, ptr %.2967, i64 %n.vec
  %i.alf = getelementptr i8, ptr %.1977, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.2967, i64 %index ; 2 uses
  %next.gep4047 = getelementptr i8, ptr %.1977, i64 %index ; 2 uses
  %i.alg = getelementptr i8, ptr %next.gep4047, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep4047, align 1, !tbaa !31
  %wide.load4048 = load <16 x i8>, ptr %i.alg, align 1, !tbaa !31
  %i.alh = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !31
  store <16 x i8> %wide.load4048, ptr %i.alh, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ali = icmp eq i64 %index.next, %n.vec
  br i1 %i.ali, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ala
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph3084.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4052 = and i64 %i.ala, 2147483644         ; 5 uses
  %i.alj = trunc nuw nsw i64 %n.vec4052 to i32
  %i.alk = sub nsw i32 %.6953, %i.alj
  %i.all = getelementptr i8, ptr %.2967, i64 %n.vec4052
  %i.alm = getelementptr i8, ptr %.1977, i64 %n.vec4052
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4053 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4057, %vec.epilog.vector.body ] ; 3 uses
  %next.gep4054 = getelementptr i8, ptr %.2967, i64 %index4053
  %next.gep4055 = getelementptr i8, ptr %.1977, i64 %index4053
  %wide.load4056 = load <4 x i8>, ptr %next.gep4055, align 1, !tbaa !31
  store <4 x i8> %wide.load4056, ptr %next.gep4054, align 1, !tbaa !31
  %index.next4057 = add nuw i64 %index4053, 4     ; 2 uses
  %i.aln = icmp eq i64 %index.next4057, %n.vec4052
  br i1 %i.aln, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4058 = icmp eq i64 %n.vec4052, %i.ala
  br i1 %cmp.n4058, label %.loopexit, label %.lr.ph3084.preheader

.lr.ph3084.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.79543082.ph = phi i32 [ %.6953, %iter.check ], [ %i.ald, %vec.epilog.iter.check ], [ %i.alk, %vec.epilog.middle.block ]
  %.39683081.ph = phi ptr [ %.2967, %iter.check ], [ %i.ale, %vec.epilog.iter.check ], [ %i.all, %vec.epilog.middle.block ]
  %.29783080.ph = phi ptr [ %.1977, %iter.check ], [ %i.alf, %vec.epilog.iter.check ], [ %i.alm, %vec.epilog.middle.block ]
  br label %.lr.ph3084

.lr.ph3084:                                       ; preds = %.lr.ph3084.preheader, %.lr.ph3084
  %.79543082 = phi i32 [ %i.alo, %.lr.ph3084 ], [ %.79543082.ph, %.lr.ph3084.preheader ] ; 2 uses
  %.39683081 = phi ptr [ %i.alr, %.lr.ph3084 ], [ %.39683081.ph, %.lr.ph3084.preheader ] ; 2 uses
  %.29783080 = phi ptr [ %i.alp, %.lr.ph3084 ], [ %.29783080.ph, %.lr.ph3084.preheader ] ; 2 uses
  %i.alo = add nsw i32 %.79543082, -1
  %i.alp = getelementptr inbounds nuw i8, ptr %.29783080, i64 1
  %i.alq = load i8, ptr %.29783080, align 1, !tbaa !31
  %i.alr = getelementptr inbounds nuw i8, ptr %.39683081, i64 1
  store i8 %i.alq, ptr %.39683081, align 1, !tbaa !31
  %i.als = icmp samesign ugt i32 %.79543082, 1
  br i1 %i.als, label %.lr.ph3084, label %.loopexit, !llvm.loop !132

iter.check4120:                                   ; preds = %bb.hz
  %i.alt = zext i32 %.4931 to i64
  %i.alu = sub nsw i64 0, %i.alt
  %i.alv = getelementptr inbounds i8, ptr %i.ajw, i64 %i.alu ; 20 uses
  %narrow4255 = add nuw nsw i32 %.01008, 2
  %i.alw = zext nneg i32 %narrow4255 to i64       ; 5 uses
  %min.iters.check4102 = icmp samesign ult i32 %.01008, 2
  %2 = add i32 %.4931, -1
  %diff.check4101 = icmp ult i32 %2, 31
  %or.cond4258 = select i1 %min.iters.check4102, i1 true, i1 %diff.check4101
  br i1 %or.cond4258, label %.lr.ph3073.preheader, label %vector.main.loop.iter.check4103

vector.main.loop.iter.check4103:                  ; preds = %iter.check4120
  %min.iters.check4104 = icmp samesign ult i32 %.01008, 30
  br i1 %min.iters.check4104, label %vec.epilog.ph4124, label %vector.ph4105

vector.ph4105:                                    ; preds = %vector.main.loop.iter.check4103
  %n.mod.vf4106 = and i64 %i.alw, 28
  %n.vec4107 = and i64 %i.alw, 65504              ; 12 uses
  %i.alx = trunc nuw nsw i64 %n.vec4107 to i32
  %i.aly = sub nsw i32 %i.aiq, %i.alx
  %i.alz = getelementptr i8, ptr %i.ajw, i64 %n.vec4107
  %i.ama = getelementptr i8, ptr %i.alv, i64 %n.vec4107
  %i.amb = getelementptr i8, ptr %i.alv, i64 16
  %wide.load4112 = load <16 x i8>, ptr %i.alv, align 1, !tbaa !31
  %wide.load4113 = load <16 x i8>, ptr %i.amb, align 1, !tbaa !31
  %i.amc = getelementptr i8, ptr %i.ajw, i64 16
  store <16 x i8> %wide.load4112, ptr %i.ajw, align 1, !tbaa !31
  store <16 x i8> %wide.load4113, ptr %i.amc, align 1, !tbaa !31
  %i.amd = icmp eq i64 %n.vec4107, 32
  br i1 %i.amd, label %middle.block4115, label %vector.body4108.1

vector.body4108.1:                                ; preds = %vector.ph4105
  %next.gep4110.1 = getelementptr i8, ptr %i.ajw, i64 32
  %next.gep4111.1 = getelementptr i8, ptr %i.alv, i64 32
  %i.ame = getelementptr i8, ptr %i.alv, i64 48
  %wide.load4112.1 = load <16 x i8>, ptr %next.gep4111.1, align 1, !tbaa !31
  %wide.load4113.1 = load <16 x i8>, ptr %i.ame, align 1, !tbaa !31
  %i.amf = getelementptr i8, ptr %i.ajw, i64 48
  store <16 x i8> %wide.load4112.1, ptr %next.gep4110.1, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.1, ptr %i.amf, align 1, !tbaa !31
  %i.amg = icmp eq i64 %n.vec4107, 64
  br i1 %i.amg, label %middle.block4115, label %vector.body4108.2

vector.body4108.2:                                ; preds = %vector.body4108.1
  %next.gep4110.2 = getelementptr i8, ptr %i.ajw, i64 64
  %next.gep4111.2 = getelementptr i8, ptr %i.alv, i64 64
  %i.amh = getelementptr i8, ptr %i.alv, i64 80
  %wide.load4112.2 = load <16 x i8>, ptr %next.gep4111.2, align 1, !tbaa !31
  %wide.load4113.2 = load <16 x i8>, ptr %i.amh, align 1, !tbaa !31
  %i.ami = getelementptr i8, ptr %i.ajw, i64 80
  store <16 x i8> %wide.load4112.2, ptr %next.gep4110.2, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.2, ptr %i.ami, align 1, !tbaa !31
  %i.amj = icmp eq i64 %n.vec4107, 96
  br i1 %i.amj, label %middle.block4115, label %vector.body4108.3

vector.body4108.3:                                ; preds = %vector.body4108.2
  %next.gep4110.3 = getelementptr i8, ptr %i.ajw, i64 96
  %next.gep4111.3 = getelementptr i8, ptr %i.alv, i64 96
  %i.amk = getelementptr i8, ptr %i.alv, i64 112
  %wide.load4112.3 = load <16 x i8>, ptr %next.gep4111.3, align 1, !tbaa !31
  %wide.load4113.3 = load <16 x i8>, ptr %i.amk, align 1, !tbaa !31
  %i.aml = getelementptr i8, ptr %i.ajw, i64 112
  store <16 x i8> %wide.load4112.3, ptr %next.gep4110.3, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.3, ptr %i.aml, align 1, !tbaa !31
  %i.amm = icmp eq i64 %n.vec4107, 128
  br i1 %i.amm, label %middle.block4115, label %vector.body4108.4

vector.body4108.4:                                ; preds = %vector.body4108.3
  %next.gep4110.4 = getelementptr i8, ptr %i.ajw, i64 128
  %next.gep4111.4 = getelementptr i8, ptr %i.alv, i64 128
  %i.amn = getelementptr i8, ptr %i.alv, i64 144
  %wide.load4112.4 = load <16 x i8>, ptr %next.gep4111.4, align 1, !tbaa !31
  %wide.load4113.4 = load <16 x i8>, ptr %i.amn, align 1, !tbaa !31
  %i.amo = getelementptr i8, ptr %i.ajw, i64 144
  store <16 x i8> %wide.load4112.4, ptr %next.gep4110.4, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.4, ptr %i.amo, align 1, !tbaa !31
  %i.amp = icmp eq i64 %n.vec4107, 160
  br i1 %i.amp, label %middle.block4115, label %vector.body4108.5

vector.body4108.5:                                ; preds = %vector.body4108.4
  %next.gep4110.5 = getelementptr i8, ptr %i.ajw, i64 160
  %next.gep4111.5 = getelementptr i8, ptr %i.alv, i64 160
  %i.amq = getelementptr i8, ptr %i.alv, i64 176
  %wide.load4112.5 = load <16 x i8>, ptr %next.gep4111.5, align 1, !tbaa !31
  %wide.load4113.5 = load <16 x i8>, ptr %i.amq, align 1, !tbaa !31
  %i.amr = getelementptr i8, ptr %i.ajw, i64 176
  store <16 x i8> %wide.load4112.5, ptr %next.gep4110.5, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.5, ptr %i.amr, align 1, !tbaa !31
  %i.ams = icmp eq i64 %n.vec4107, 192
  br i1 %i.ams, label %middle.block4115, label %vector.body4108.6

vector.body4108.6:                                ; preds = %vector.body4108.5
  %next.gep4110.6 = getelementptr i8, ptr %i.ajw, i64 192
  %next.gep4111.6 = getelementptr i8, ptr %i.alv, i64 192
  %i.amt = getelementptr i8, ptr %i.alv, i64 208
  %wide.load4112.6 = load <16 x i8>, ptr %next.gep4111.6, align 1, !tbaa !31
  %wide.load4113.6 = load <16 x i8>, ptr %i.amt, align 1, !tbaa !31
  %i.amu = getelementptr i8, ptr %i.ajw, i64 208
  store <16 x i8> %wide.load4112.6, ptr %next.gep4110.6, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.6, ptr %i.amu, align 1, !tbaa !31
  %i.amv = icmp eq i64 %n.vec4107, 224
  br i1 %i.amv, label %middle.block4115, label %vector.body4108.7

vector.body4108.7:                                ; preds = %vector.body4108.6
  %next.gep4110.7 = getelementptr i8, ptr %i.ajw, i64 224
  %next.gep4111.7 = getelementptr i8, ptr %i.alv, i64 224
  %i.amw = getelementptr i8, ptr %i.alv, i64 240
  %wide.load4112.7 = load <16 x i8>, ptr %next.gep4111.7, align 1, !tbaa !31
  %wide.load4113.7 = load <16 x i8>, ptr %i.amw, align 1, !tbaa !31
  %i.amx = getelementptr i8, ptr %i.ajw, i64 240
  store <16 x i8> %wide.load4112.7, ptr %next.gep4110.7, align 1, !tbaa !31
  store <16 x i8> %wide.load4113.7, ptr %i.amx, align 1, !tbaa !31
  br label %middle.block4115

middle.block4115:                                 ; preds = %vector.body4108.7, %vector.body4108.6, %vector.body4108.5, %vector.body4108.4, %vector.body4108.3, %vector.body4108.2, %vector.body4108.1, %vector.ph4105
  %cmp.n4116 = icmp eq i64 %n.vec4107, %i.alw
  br i1 %cmp.n4116, label %.loopexit, label %vec.epilog.iter.check4122

vec.epilog.iter.check4122:                        ; preds = %middle.block4115
  %min.epilog.iters.check4123 = icmp eq i64 %n.mod.vf4106, 0
  br i1 %min.epilog.iters.check4123, label %.lr.ph3073.preheader, label %vec.epilog.ph4124, !prof !70

vec.epilog.ph4124:                                ; preds = %vector.main.loop.iter.check4103, %vec.epilog.iter.check4122
  %vec.epilog.resume.val4117 = phi i64 [ %n.vec4107, %vec.epilog.iter.check4122 ], [ 0, %vector.main.loop.iter.check4103 ]
  %n.vec4126 = and i64 %i.alw, 65532              ; 5 uses
  %i.amy = trunc nuw nsw i64 %n.vec4126 to i32
  %i.amz = sub nsw i32 %i.aiq, %i.amy
  %i.ana = getelementptr i8, ptr %i.ajw, i64 %n.vec4126
  %i.anb = getelementptr i8, ptr %i.alv, i64 %n.vec4126
  br label %vec.epilog.vector.body4127

vec.epilog.vector.body4127:                       ; preds = %vec.epilog.vector.body4127, %vec.epilog.ph4124
  %index4128 = phi i64 [ %vec.epilog.resume.val4117, %vec.epilog.ph4124 ], [ %index.next4132, %vec.epilog.vector.body4127 ] ; 3 uses
  %next.gep4129 = getelementptr i8, ptr %i.ajw, i64 %index4128
  %next.gep4130 = getelementptr i8, ptr %i.alv, i64 %index4128
  %wide.load4131 = load <4 x i8>, ptr %next.gep4130, align 1, !tbaa !31
  store <4 x i8> %wide.load4131, ptr %next.gep4129, align 1, !tbaa !31
  %index.next4132 = add nuw i64 %index4128, 4     ; 2 uses
  %i.anc = icmp eq i64 %index.next4132, %n.vec4126
  br i1 %i.anc, label %vec.epilog.middle.block4133, label %vec.epilog.vector.body4127, !llvm.loop !133

vec.epilog.middle.block4133:                      ; preds = %vec.epilog.vector.body4127
  %cmp.n4134 = icmp eq i64 %n.vec4126, %i.alw
  br i1 %cmp.n4134, label %.loopexit, label %.lr.ph3073.preheader

.lr.ph3073.preheader:                             ; preds = %iter.check4120, %vec.epilog.iter.check4122, %vec.epilog.middle.block4133
  %.89553071.ph = phi i32 [ %i.aiq, %iter.check4120 ], [ %i.aly, %vec.epilog.iter.check4122 ], [ %i.amz, %vec.epilog.middle.block4133 ]
  %.49693070.ph = phi ptr [ %i.ajw, %iter.check4120 ], [ %i.alz, %vec.epilog.iter.check4122 ], [ %i.ana, %vec.epilog.middle.block4133 ]
  %.39793069.ph = phi ptr [ %i.alv, %iter.check4120 ], [ %i.ama, %vec.epilog.iter.check4122 ], [ %i.anb, %vec.epilog.middle.block4133 ]
  br label %.lr.ph3073

.lr.ph3073:                                       ; preds = %.lr.ph3073.preheader, %.lr.ph3073
  %.89553071 = phi i32 [ %i.and, %.lr.ph3073 ], [ %.89553071.ph, %.lr.ph3073.preheader ] ; 2 uses
  %.49693070 = phi ptr [ %i.ang, %.lr.ph3073 ], [ %.49693070.ph, %.lr.ph3073.preheader ] ; 2 uses
  %.39793069 = phi ptr [ %i.ane, %.lr.ph3073 ], [ %.39793069.ph, %.lr.ph3073.preheader ] ; 2 uses
  %i.and = add nsw i32 %.89553071, -1
  %i.ane = getelementptr inbounds nuw i8, ptr %.39793069, i64 1
  %i.anf = load i8, ptr %.39793069, align 1, !tbaa !31
  %i.ang = getelementptr inbounds nuw i8, ptr %.49693070, i64 1
  store i8 %i.anf, ptr %.49693070, align 1, !tbaa !31
  %i.anh = icmp sgt i32 %.89553071, 1
  br i1 %i.anh, label %.lr.ph3073, label %.loopexit, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph3073, %.lr.ph3084, %middle.block4115, %vec.epilog.middle.block4133, %middle.block, %vec.epilog.middle.block, %.loopexit1327
  %i.ani = sub nsw i32 %.110003087, %i.aiq
  br label %bb.ie

bb.ie:                                            ; preds = %.loopexit, %bb.gh
  %.371084 = phi ptr [ %.291076.lcssa, %bb.gh ], [ %.361083, %.loopexit ] ; 2 uses
  %.361046 = phi ptr [ %.281038.lcssa, %bb.gh ], [ %.351045, %.loopexit ] ; 2 uses
  %.21001 = phi i32 [ %i.zj, %bb.gh ], [ %i.ani, %.loopexit ] ; 3 uses
  %.3940 = phi i32 [ %i.zg, %bb.gh ], [ %i.ajs, %.loopexit ] ; 2 uses
  %.5932 = phi i32 [ %.39303089, %bb.gh ], [ %.4931, %.loopexit ] ; 2 uses
  %.5922 = phi i32 [ %.39203090, %bb.gh ], [ %.4921, %.loopexit ] ; 2 uses
  %.5912 = phi i32 [ %.39103091, %bb.gh ], [ %.4911, %.loopexit ] ; 2 uses
  %.21890 = phi i32 [ %i.zd, %bb.gh ], [ %.20889, %.loopexit ] ; 2 uses
  %.21 = phi i32 [ %i.zc, %bb.gh ], [ %.20, %.loopexit ] ; 2 uses
  %i.anj = icmp sgt i32 %.21001, 0
  br i1 %i.anj, label %.preheader1334, label %.loopexit1356, !llvm.loop !135

.preheader1351:                                   ; preds = %.preheader1357, %bb.mb
  %.223028 = phi i32 [ %.32, %bb.mb ], [ %.14, %.preheader1357 ] ; 2 uses
  %.228913027 = phi i32 [ %.32901, %bb.mb ], [ %.14883, %.preheader1357 ] ; 3 uses
  %.69133026 = phi i32 [ %.8915, %bb.mb ], [ %.2909, %.preheader1357 ] ; 4 uses
  %.69233025 = phi i32 [ %.8925, %bb.mb ], [ %.2919, %.preheader1357 ] ; 8 uses
  %.69333024 = phi i32 [ %.8935, %bb.mb ], [ %.2929, %.preheader1357 ] ; 8 uses
  %.49413023 = phi i32 [ %.5942, %bb.mb ], [ %.19383107, %.preheader1357 ] ; 6 uses
  %.310023022 = phi i32 [ %.41003, %bb.mb ], [ %spec.select1237, %.preheader1357 ] ; 2 uses
  %.373021 = phi ptr [ %.53, %bb.mb ], [ %.261036, %.preheader1357 ] ; 2 uses
  %.3810853020 = phi ptr [ %.541101, %bb.mb ], [ %.271074, %.preheader1357 ] ; 2 uses
  %i.ank = icmp slt i32 %.228913027, 16
  br i1 %i.ank, label %.lr.ph2930, label %._crit_edge2931

.lr.ph2930:                                       ; preds = %.preheader1351, %bb.io
  %.232929 = phi i32 [ %i.aoh, %bb.io ], [ %.223028, %.preheader1351 ]
  %.238922928 = phi i32 [ %i.aoi, %bb.io ], [ %.228913027, %.preheader1351 ] ; 3 uses
  %.382927 = phi ptr [ %.39, %bb.io ], [ %.373021, %.preheader1351 ] ; 2 uses
  %.3910862926 = phi ptr [ %i.aoj, %bb.io ], [ %.3810853020, %.preheader1351 ] ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.3910862926, i64 1
  %.not1217 = icmp ult ptr %i.anl, %.382927
  br i1 %.not1217, label %bb.io, label %bb.if

bb.if:                                            ; preds = %.lr.ph2930
  %i.anm = load ptr, ptr %i.bh, align 8, !tbaa !87 ; 2 uses
  %.not.i1285 = icmp eq ptr %i.anm, null
  %i.ann = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.ano = load i32, ptr %i.bk, align 8, !tbaa !88 ; 2 uses
  br i1 %.not.i1285, label %bb.ih, label %bb.ig
end_hunk_1
begin_hunk_2_@lzx_decompress:bb.a
  %.not1208 = icmp eq i32 %i.bja, 0
  br i1 %.not1208, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bjb = load i32, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.lk:                                            ; preds = %bb.li
  %i.bjc = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.bjd = load ptr, ptr %i.ab, align 8, !tbaa !100
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.lr.ph2950
  %.491096 = phi ptr [ %i.bjc, %bb.lk ], [ %.4810952946, %.lr.ph2950 ] ; 2 uses
  %.48 = phi ptr [ %i.bjd, %bb.lk ], [ %.472947, %.lr.ph2950 ] ; 2 uses
  %i.bje = load i16, ptr %.491096, align 1
  %i.bjf = zext i16 %i.bje to i32
  %i.bjg = sub i32 16, %.288972948
  %i.bjh = shl i32 %i.bjf, %i.bjg
  %i.bji = or i32 %i.bjh, %.282949                ; 2 uses
  %i.bjj = add nsw i32 %.288972948, 16            ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %.491096, i64 2 ; 2 uses
  %i.bjl = icmp slt i32 %.288972948, 0
  br i1 %i.bjl, label %.lr.ph2950, label %._crit_edge2951, !llvm.loop !140

._crit_edge2951:                                  ; preds = %bb.ll, %.preheader1344
  %.481095.lcssa = phi ptr [ %.431090, %.preheader1344 ], [ %i.bjk, %bb.ll ]
  %.47.lcssa = phi ptr [ %.42, %.preheader1344 ], [ %.48, %bb.ll ]
  %.28897.lcssa = phi i32 [ %.25894, %.preheader1344 ], [ %i.bjj, %bb.ll ]
  %.28.lcssa = phi i32 [ %.25, %.preheader1344 ], [ %i.bji, %bb.ll ] ; 4 uses
  %i.bjm = lshr i32 %.28.lcssa, 25
  %i.bjn = zext nneg i32 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bjn
  %i.bjp = load i16, ptr %i.bjo, align 2, !tbaa !51 ; 3 uses
  %i.bjq = icmp ugt i16 %i.bjp, 7
  br i1 %i.bjq, label %.preheader1342.preheader, label %.loopexit1343

.preheader1342:                                   ; preds = %bb.lp
  %i.bjr = lshr i32 %i.bkd, 1                     ; 2 uses
  %i.bjs = icmp eq i32 %i.bjr, 0
  br i1 %i.bjs, label %bb.ln, label %.preheader1342.preheader.1

.preheader1342.preheader.1:                       ; preds = %.preheader1342
  %i.bjt = shl i16 %i.bkl, 1                      ; 2 uses
  %i.bju = icmp ugt i16 %i.bjt, 143
  br i1 %i.bju, label %bb.lo, label %bb.lm

bb.lm:                                            ; preds = %.preheader1342.preheader.1
  %i.bjv = and i32 %i.bjr, %.28.lcssa
  %.not1206.1 = icmp ne i32 %i.bjv, 0
  %i.bjw = zext i1 %.not1206.1 to i16
  %i.bjx = or disjoint i16 %i.bjt, %i.bjw
  %i.bjy = zext nneg i16 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bjy
  %i.bka = load i16, ptr %i.bjz, align 2, !tbaa !51 ; 3 uses
  %i.bkb = icmp ugt i16 %i.bka, 7
  br i1 %i.bkb, label %.preheader1342.1, label %.loopexit1343, !llvm.loop !141

.preheader1342.1:                                 ; preds = %bb.lm
  %i.bkc = lshr i32 %i.bkd, 2
  br label %.preheader1342.preheader

bb.ln:                                            ; preds = %.preheader1342
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

.preheader1342.preheader:                         ; preds = %._crit_edge2951, %.preheader1342.1
  %i.bkd = phi i32 [ %i.bkc, %.preheader1342.1 ], [ 16777216, %._crit_edge2951 ] ; 3 uses
  %.109944042 = phi i16 [ %i.bka, %.preheader1342.1 ], [ %i.bjp, %._crit_edge2951 ]
  %i.bke = shl i16 %.109944042, 1                 ; 2 uses
  %i.bkf = icmp ugt i16 %i.bke, 143
  br i1 %i.bkf, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %.preheader1342.preheader.1, %.preheader1342.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.lp:                                            ; preds = %.preheader1342.preheader
  %i.bkg = and i32 %i.bkd, %.28.lcssa
  %.not1206 = icmp ne i32 %i.bkg, 0
  %i.bkh = zext i1 %.not1206 to i16
  %i.bki = or disjoint i16 %i.bke, %i.bkh
  %i.bkj = zext nneg i16 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bkj
  %i.bkl = load i16, ptr %i.bkk, align 2, !tbaa !51 ; 3 uses
  %i.bkm = icmp ugt i16 %i.bkl, 7
  br i1 %i.bkm, label %.preheader1342, label %.loopexit1343, !llvm.loop !141

.loopexit1343:                                    ; preds = %bb.lp, %bb.lm, %._crit_edge2951
  %.11995 = phi i16 [ %i.bjp, %._crit_edge2951 ], [ %i.bkl, %bb.lp ], [ %i.bka, %bb.lm ] ; 2 uses
  %i.bkn = zext nneg i16 %.11995 to i32
  %i.bko = zext nneg i16 %.11995 to i64
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bko
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !31
  %i.bkr = zext i8 %i.bkq to i32                  ; 2 uses
  %i.bks = shl i32 %.28.lcssa, %i.bkr
  %i.bkt = sub nsw i32 %.28897.lcssa, %i.bkr
  %i.bku = add i32 %i.bgf, %i.bkn
  br label %bb.lu

.lr.ph2960:                                       ; preds = %.preheader1341, %bb.lt
  %.292959 = phi i32 [ %i.ble, %bb.lt ], [ %.25, %.preheader1341 ]
  %.298982958 = phi i32 [ %i.blf, %bb.lt ], [ %.25894, %.preheader1341 ] ; 2 uses
  %.492957 = phi ptr [ %.50, %bb.lt ], [ %.42, %.preheader1341 ] ; 2 uses
  %.5010972956 = phi ptr [ %i.blg, %bb.lt ], [ %.431090, %.preheader1341 ] ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %.5010972956, i64 1
  %.not1204 = icmp ult ptr %i.bkv, %.492957
  br i1 %.not1204, label %bb.lt, label %bb.lq

bb.lq:                                            ; preds = %.lr.ph2960
  %i.bkw = tail call fastcc i32 @lzx_read_input(ptr noundef %0)
  %.not1205 = icmp eq i32 %i.bkw, 0
  br i1 %.not1205, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bkx = load i32, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.ls:                                            ; preds = %bb.lq
  %i.bky = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.bkz = load ptr, ptr %i.ab, align 8, !tbaa !100
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %.lr.ph2960
  %.511098 = phi ptr [ %i.bky, %bb.ls ], [ %.5010972956, %.lr.ph2960 ] ; 2 uses
  %.50 = phi ptr [ %i.bkz, %bb.ls ], [ %.492957, %.lr.ph2960 ] ; 2 uses
  %i.bla = load i16, ptr %.511098, align 1
  %i.blb = zext i16 %i.bla to i32
  %i.blc = sub i32 16, %.298982958
  %i.bld = shl i32 %i.blb, %i.blc
  %i.ble = or i32 %i.bld, %.292959                ; 2 uses
  %i.blf = add nsw i32 %.298982958, 16            ; 3 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %.511098, i64 2 ; 2 uses
  %i.blh = icmp slt i32 %i.blf, %i.bgc
  br i1 %i.blh, label %.lr.ph2960, label %._crit_edge2961, !llvm.loop !142

._crit_edge2961:                                  ; preds = %bb.lt, %.preheader1341
  %.501097.lcssa = phi ptr [ %.431090, %.preheader1341 ], [ %i.blg, %bb.lt ]
  %.49.lcssa = phi ptr [ %.42, %.preheader1341 ], [ %.50, %bb.lt ]
  %.29898.lcssa = phi i32 [ %.25894, %.preheader1341 ], [ %i.blf, %bb.lt ]
  %.29.lcssa = phi i32 [ %.25, %.preheader1341 ], [ %i.ble, %bb.lt ] ; 2 uses
  %narrow1203 = sub nuw nsw i8 32, %i.bgb
  %i.bli = zext nneg i8 %narrow1203 to i32
  %i.blj = lshr i32 %.29.lcssa, %i.bli
  %i.blk = shl i32 %.29.lcssa, %i.bgc
  %i.bll = sub nsw i32 %.29898.lcssa, %i.bgc
  %i.blm = add i32 %i.blj, %i.bgf
  br label %bb.lu

bb.lu:                                            ; preds = %.loopexit1340, %._crit_edge2961, %.loopexit1343, %bb.lh, %bb.kr, %bb.kt, %bb.ks
  %.531100 = phi ptr [ %.431090, %bb.kr ], [ %.431090, %bb.kt ], [ %.431090, %bb.ks ], [ %.461093.lcssa, %.loopexit1340 ], [ %.481095.lcssa, %.loopexit1343 ], [ %.501097.lcssa, %._crit_edge2961 ], [ %.431090, %bb.lh ]
  %.52 = phi ptr [ %.42, %bb.kr ], [ %.42, %bb.kt ], [ %.42, %bb.ks ], [ %.45.lcssa, %.loopexit1340 ], [ %.47.lcssa, %.loopexit1343 ], [ %.49.lcssa, %._crit_edge2961 ], [ %.42, %bb.lh ]
  %.7934 = phi i32 [ %.69333024, %bb.kr ], [ %.69133026, %bb.kt ], [ %.69233025, %bb.ks ], [ %i.biw, %.loopexit1340 ], [ %i.bku, %.loopexit1343 ], [ %i.blm, %._crit_edge2961 ], [ 1, %bb.lh ] ; 5 uses
  %.7924 = phi i32 [ %.69233025, %bb.kr ], [ %.69233025, %bb.kt ], [ %.69333024, %bb.ks ], [ %.69333024, %.loopexit1340 ], [ %.69333024, %.loopexit1343 ], [ %.69333024, %._crit_edge2961 ], [ %.69333024, %bb.lh ]
  %.7914 = phi i32 [ %.69133026, %bb.kr ], [ %.69333024, %bb.kt ], [ %.69133026, %bb.ks ], [ %.69233025, %.loopexit1340 ], [ %.69233025, %.loopexit1343 ], [ %.69233025, %._crit_edge2961 ], [ %.69233025, %bb.lh ]
  %.31900 = phi i32 [ %.25894, %bb.kr ], [ %.25894, %bb.kt ], [ %.25894, %bb.ks ], [ %i.biv, %.loopexit1340 ], [ %i.bkt, %.loopexit1343 ], [ %i.bll, %._crit_edge2961 ], [ %.25894, %bb.lh ]
  %.31 = phi i32 [ %.25, %bb.kr ], [ %.25, %bb.kt ], [ %.25, %bb.ks ], [ %i.biu, %.loopexit1340 ], [ %i.bks, %.loopexit1343 ], [ %i.blk, %._crit_edge2961 ], [ %.25, %bb.lh ]
  %i.bln = add i32 %i.bfx, %.49413023             ; 2 uses
  %i.blo = load i32, ptr %i.bz, align 8, !tbaa !89 ; 3 uses
  %i.blp = icmp ugt i32 %i.bln, %i.blo
  br i1 %i.blp, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.lw:                                            ; preds = %bb.lu
  %i.blq = zext i32 %.49413023 to i64             ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.blq ; 28 uses
  %i.bls = icmp ugt i32 %.7934, %.49413023
  br i1 %i.bls, label %bb.lx, label %iter.check4236

bb.lx:                                            ; preds = %bb.lw
  %i.blt = sub nuw i32 %.7934, %.49413023         ; 11 uses
  %i.blu = icmp sgt i32 %i.blt, %i.blo
  br i1 %i.blu, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !99
  br label %bb.nr

bb.lz:                                            ; preds = %bb.lx
  %i.blv = sub i32 %i.blo, %i.blt
  %i.blw = zext i32 %i.blv to i64                 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.blw ; 6 uses
  %i.bly = icmp slt i32 %i.blt, %i.bfx
  br i1 %i.bly, label %bb.ma, label %.loopexit1337

bb.ma:                                            ; preds = %bb.lz
  %i.blz = sub nsw i32 %i.bfx, %i.blt             ; 4 uses
  %i.bma = icmp sgt i32 %i.blt, 0
  br i1 %i.bma, label %iter.check4198, label %.loopexit1337

iter.check4198:                                   ; preds = %bb.ma
  %i.bmb = zext nneg i32 %i.blt to i64            ; 5 uses
  %min.iters.check4180 = icmp ult i32 %i.blt, 4
  %i.bmc = sub nsw i64 %i.blw, %i.blq
  %diff.check4179 = icmp ugt i64 %i.bmc, -32
  %or.cond4259 = select i1 %min.iters.check4180, i1 true, i1 %diff.check4179
  br i1 %or.cond4259, label %.lr.ph3013.preheader, label %vector.main.loop.iter.check4181

vector.main.loop.iter.check4181:                  ; preds = %iter.check4198
  %min.iters.check4182 = icmp ult i32 %i.blt, 32
  br i1 %min.iters.check4182, label %vec.epilog.ph4202, label %vector.ph4183

vector.ph4183:                                    ; preds = %vector.main.loop.iter.check4181
  %n.mod.vf4184 = and i64 %i.bmb, 28
  %n.vec4185 = and i64 %i.bmb, 2147483616         ; 6 uses
  %i.bmd = getelementptr i8, ptr %i.blr, i64 %n.vec4185 ; 2 uses
  %i.bme = getelementptr i8, ptr %i.blx, i64 %n.vec4185
  %i.bmf = trunc nuw nsw i64 %n.vec4185 to i32
  %i.bmg = sub nsw i32 %i.blt, %i.bmf
  br label %vector.body4186

vector.body4186:                                  ; preds = %vector.body4186, %vector.ph4183
  %index4187 = phi i64 [ 0, %vector.ph4183 ], [ %index.next4192, %vector.body4186 ] ; 3 uses
  %next.gep4188 = getelementptr i8, ptr %i.blr, i64 %index4187 ; 2 uses
  %next.gep4189 = getelementptr i8, ptr %i.blx, i64 %index4187 ; 2 uses
  %i.bmh = getelementptr i8, ptr %next.gep4189, i64 16
  %wide.load4190 = load <16 x i8>, ptr %next.gep4189, align 1, !tbaa !31
  %wide.load4191 = load <16 x i8>, ptr %i.bmh, align 1, !tbaa !31
  %i.bmi = getelementptr i8, ptr %next.gep4188, i64 16
  store <16 x i8> %wide.load4190, ptr %next.gep4188, align 1, !tbaa !31
  store <16 x i8> %wide.load4191, ptr %i.bmi, align 1, !tbaa !31
  %index.next4192 = add nuw i64 %index4187, 32    ; 2 uses
  %i.bmj = icmp eq i64 %index.next4192, %n.vec4185
  br i1 %i.bmj, label %middle.block4193, label %vector.body4186, !llvm.loop !143

middle.block4193:                                 ; preds = %vector.body4186
  %cmp.n4194 = icmp eq i64 %n.vec4185, %i.bmb
  br i1 %cmp.n4194, label %.loopexit1337, label %vec.epilog.iter.check4200

vec.epilog.iter.check4200:                        ; preds = %middle.block4193
  %min.epilog.iters.check4201 = icmp eq i64 %n.mod.vf4184, 0
  br i1 %min.epilog.iters.check4201, label %.lr.ph3013.preheader, label %vec.epilog.ph4202, !prof !70

vec.epilog.ph4202:                                ; preds = %vector.main.loop.iter.check4181, %vec.epilog.iter.check4200
  %vec.epilog.resume.val4195 = phi i64 [ %n.vec4185, %vec.epilog.iter.check4200 ], [ 0, %vector.main.loop.iter.check4181 ]
  %n.vec4204 = and i64 %i.bmb, 2147483644         ; 5 uses
  %i.bmk = getelementptr i8, ptr %i.blr, i64 %n.vec4204 ; 2 uses
  %i.bml = getelementptr i8, ptr %i.blx, i64 %n.vec4204
  %i.bmm = trunc nuw nsw i64 %n.vec4204 to i32
  %i.bmn = sub nsw i32 %i.blt, %i.bmm
  br label %vec.epilog.vector.body4205

vec.epilog.vector.body4205:                       ; preds = %vec.epilog.vector.body4205, %vec.epilog.ph4202
  %index4206 = phi i64 [ %vec.epilog.resume.val4195, %vec.epilog.ph4202 ], [ %index.next4210, %vec.epilog.vector.body4205 ] ; 3 uses
  %next.gep4207 = getelementptr i8, ptr %i.blr, i64 %index4206
  %next.gep4208 = getelementptr i8, ptr %i.blx, i64 %index4206
  %wide.load4209 = load <4 x i8>, ptr %next.gep4208, align 1, !tbaa !31
  store <4 x i8> %wide.load4209, ptr %next.gep4207, align 1, !tbaa !31
  %index.next4210 = add nuw i64 %index4206, 4     ; 2 uses
  %i.bmo = icmp eq i64 %index.next4210, %n.vec4204
  br i1 %i.bmo, label %vec.epilog.middle.block4211, label %vec.epilog.vector.body4205, !llvm.loop !144

vec.epilog.middle.block4211:                      ; preds = %vec.epilog.vector.body4205
  %cmp.n4212 = icmp eq i64 %n.vec4204, %i.bmb
  br i1 %cmp.n4212, label %.loopexit1337, label %.lr.ph3013.preheader

.lr.ph3013.preheader:                             ; preds = %iter.check4198, %vec.epilog.iter.check4200, %vec.epilog.middle.block4211
  %.59703011.ph = phi ptr [ %i.blr, %iter.check4198 ], [ %i.bmd, %vec.epilog.iter.check4200 ], [ %i.bmk, %vec.epilog.middle.block4211 ]
  %.49803010.ph = phi ptr [ %i.blx, %iter.check4198 ], [ %i.bme, %vec.epilog.iter.check4200 ], [ %i.bml, %vec.epilog.middle.block4211 ]
  %.29983009.ph = phi i32 [ %i.blt, %iter.check4198 ], [ %i.bmg, %vec.epilog.iter.check4200 ], [ %i.bmn, %vec.epilog.middle.block4211 ]
  br label %.lr.ph3013

.lr.ph3013:                                       ; preds = %.lr.ph3013.preheader, %.lr.ph3013
  %.59703011 = phi ptr [ %i.bms, %.lr.ph3013 ], [ %.59703011.ph, %.lr.ph3013.preheader ] ; 2 uses
  %.49803010 = phi ptr [ %i.bmq, %.lr.ph3013 ], [ %.49803010.ph, %.lr.ph3013.preheader ] ; 2 uses
  %.29983009 = phi i32 [ %i.bmp, %.lr.ph3013 ], [ %.29983009.ph, %.lr.ph3013.preheader ] ; 2 uses
  %i.bmp = add nsw i32 %.29983009, -1
  %i.bmq = getelementptr inbounds nuw i8, ptr %.49803010, i64 1
  %i.bmr = load i8, ptr %.49803010, align 1, !tbaa !31
  %i.bms = getelementptr inbounds nuw i8, ptr %.59703011, i64 1 ; 2 uses
  store i8 %i.bmr, ptr %.59703011, align 1, !tbaa !31
  %i.bmt = icmp samesign ugt i32 %.29983009, 1
  br i1 %i.bmt, label %.lr.ph3013, label %.loopexit1337, !llvm.loop !145

.loopexit1337:                                    ; preds = %.lr.ph3013, %middle.block4193, %vec.epilog.middle.block4211, %bb.ma, %bb.lz
  %.5981 = phi ptr [ %i.blx, %bb.lz ], [ %i.af, %bb.ma ], [ %i.af, %middle.block4193 ], [ %i.af, %vec.epilog.middle.block4211 ], [ %i.af, %.lr.ph3013 ] ; 6 uses
  %.6971 = phi ptr [ %i.blr, %bb.lz ], [ %i.blr, %bb.ma ], [ %i.bmd, %middle.block4193 ], [ %i.bmk, %vec.epilog.middle.block4211 ], [ %i.bms, %.lr.ph3013 ] ; 6 uses
  %.13960 = phi i32 [ %i.bfx, %bb.lz ], [ %i.blz, %bb.ma ], [ %i.blz, %middle.block4193 ], [ %i.blz, %vec.epilog.middle.block4211 ], [ %i.blz, %.lr.ph3013 ] ; 7 uses
  %i.bmu = icmp sgt i32 %.13960, 0
  br i1 %i.bmu, label %iter.check4160, label %.loopexit1336

iter.check4160:                                   ; preds = %.loopexit1337
  %.59814140 = ptrtoaddr ptr %.5981 to i64
  %.69714139 = ptrtoaddr ptr %.6971 to i64
  %i.bmv = zext nneg i32 %.13960 to i64           ; 5 uses
  %min.iters.check4142 = icmp ult i32 %.13960, 4
  %i.bmw = sub i64 %.59814140, %.69714139
  %diff.check4141 = icmp ugt i64 %i.bmw, -32
  %or.cond4260 = select i1 %min.iters.check4142, i1 true, i1 %diff.check4141
  br i1 %or.cond4260, label %.lr.ph3019.preheader, label %vector.main.loop.iter.check4143

vector.main.loop.iter.check4143:                  ; preds = %iter.check4160
  %min.iters.check4144 = icmp ult i32 %.13960, 32
  br i1 %min.iters.check4144, label %vec.epilog.ph4164, label %vector.ph4145

vector.ph4145:                                    ; preds = %vector.main.loop.iter.check4143
  %n.mod.vf4146 = and i64 %i.bmv, 28
  %n.vec4147 = and i64 %i.bmv, 2147483616         ; 6 uses
  %i.bmx = trunc nuw nsw i64 %n.vec4147 to i32
  %i.bmy = sub nsw i32 %.13960, %i.bmx
  %i.bmz = getelementptr i8, ptr %.6971, i64 %n.vec4147
  %i.bna = getelementptr i8, ptr %.5981, i64 %n.vec4147
  br label %vector.body4148

vector.body4148:                                  ; preds = %vector.body4148, %vector.ph4145
  %index4149 = phi i64 [ 0, %vector.ph4145 ], [ %index.next4154, %vector.body4148 ] ; 3 uses
  %next.gep4150 = getelementptr i8, ptr %.6971, i64 %index4149 ; 2 uses
  %next.gep4151 = getelementptr i8, ptr %.5981, i64 %index4149 ; 2 uses
  %i.bnb = getelementptr i8, ptr %next.gep4151, i64 16
  %wide.load4152 = load <16 x i8>, ptr %next.gep4151, align 1, !tbaa !31
  %wide.load4153 = load <16 x i8>, ptr %i.bnb, align 1, !tbaa !31
  %i.bnc = getelementptr i8, ptr %next.gep4150, i64 16
  store <16 x i8> %wide.load4152, ptr %next.gep4150, align 1, !tbaa !31
  store <16 x i8> %wide.load4153, ptr %i.bnc, align 1, !tbaa !31
  %index.next4154 = add nuw i64 %index4149, 32    ; 2 uses
  %i.bnd = icmp eq i64 %index.next4154, %n.vec4147
  br i1 %i.bnd, label %middle.block4155, label %vector.body4148, !llvm.loop !146

middle.block4155:                                 ; preds = %vector.body4148
  %cmp.n4156 = icmp eq i64 %n.vec4147, %i.bmv
  br i1 %cmp.n4156, label %.loopexit1336, label %vec.epilog.iter.check4162

vec.epilog.iter.check4162:                        ; preds = %middle.block4155
  %min.epilog.iters.check4163 = icmp eq i64 %n.mod.vf4146, 0
  br i1 %min.epilog.iters.check4163, label %.lr.ph3019.preheader, label %vec.epilog.ph4164, !prof !70

vec.epilog.ph4164:                                ; preds = %vector.main.loop.iter.check4143, %vec.epilog.iter.check4162
  %vec.epilog.resume.val4157 = phi i64 [ %n.vec4147, %vec.epilog.iter.check4162 ], [ 0, %vector.main.loop.iter.check4143 ]
  %n.vec4166 = and i64 %i.bmv, 2147483644         ; 5 uses
  %i.bne = trunc nuw nsw i64 %n.vec4166 to i32
  %i.bnf = sub nsw i32 %.13960, %i.bne
  %i.bng = getelementptr i8, ptr %.6971, i64 %n.vec4166
  %i.bnh = getelementptr i8, ptr %.5981, i64 %n.vec4166
  br label %vec.epilog.vector.body4167

vec.epilog.vector.body4167:                       ; preds = %vec.epilog.vector.body4167, %vec.epilog.ph4164
  %index4168 = phi i64 [ %vec.epilog.resume.val4157, %vec.epilog.ph4164 ], [ %index.next4172, %vec.epilog.vector.body4167 ] ; 3 uses
  %next.gep4169 = getelementptr i8, ptr %.6971, i64 %index4168
  %next.gep4170 = getelementptr i8, ptr %.5981, i64 %index4168
  %wide.load4171 = load <4 x i8>, ptr %next.gep4170, align 1, !tbaa !31
  store <4 x i8> %wide.load4171, ptr %next.gep4169, align 1, !tbaa !31
  %index.next4172 = add nuw i64 %index4168, 4     ; 2 uses
  %i.bni = icmp eq i64 %index.next4172, %n.vec4166
  br i1 %i.bni, label %vec.epilog.middle.block4173, label %vec.epilog.vector.body4167, !llvm.loop !147

vec.epilog.middle.block4173:                      ; preds = %vec.epilog.vector.body4167
  %cmp.n4174 = icmp eq i64 %n.vec4166, %i.bmv
  br i1 %cmp.n4174, label %.loopexit1336, label %.lr.ph3019.preheader

.lr.ph3019.preheader:                             ; preds = %iter.check4160, %vec.epilog.iter.check4162, %vec.epilog.middle.block4173
  %.149613017.ph = phi i32 [ %.13960, %iter.check4160 ], [ %i.bmy, %vec.epilog.iter.check4162 ], [ %i.bnf, %vec.epilog.middle.block4173 ]
  %.79723016.ph = phi ptr [ %.6971, %iter.check4160 ], [ %i.bmz, %vec.epilog.iter.check4162 ], [ %i.bng, %vec.epilog.middle.block4173 ]
  %.69823015.ph = phi ptr [ %.5981, %iter.check4160 ], [ %i.bna, %vec.epilog.iter.check4162 ], [ %i.bnh, %vec.epilog.middle.block4173 ]
  br label %.lr.ph3019

.lr.ph3019:                                       ; preds = %.lr.ph3019.preheader, %.lr.ph3019
  %.149613017 = phi i32 [ %i.bnj, %.lr.ph3019 ], [ %.149613017.ph, %.lr.ph3019.preheader ] ; 2 uses
  %.79723016 = phi ptr [ %i.bnm, %.lr.ph3019 ], [ %.79723016.ph, %.lr.ph3019.preheader ] ; 2 uses
  %.69823015 = phi ptr [ %i.bnk, %.lr.ph3019 ], [ %.69823015.ph, %.lr.ph3019.preheader ] ; 2 uses
  %i.bnj = add nsw i32 %.149613017, -1
  %i.bnk = getelementptr inbounds nuw i8, ptr %.69823015, i64 1
  %i.bnl = load i8, ptr %.69823015, align 1, !tbaa !31
  %i.bnm = getelementptr inbounds nuw i8, ptr %.79723016, i64 1
  store i8 %i.bnl, ptr %.79723016, align 1, !tbaa !31
  %i.bnn = icmp samesign ugt i32 %.149613017, 1
  br i1 %i.bnn, label %.lr.ph3019, label %.loopexit1336, !llvm.loop !148

iter.check4236:                                   ; preds = %bb.lw
  %i.bno = zext i32 %.7934 to i64
  %i.bnp = sub nsw i64 0, %i.bno
  %i.bnq = getelementptr inbounds i8, ptr %i.blr, i64 %i.bnp ; 20 uses
  %narrow4254 = add nuw nsw i32 %.11009, 2
  %i.bnr = zext nneg i32 %narrow4254 to i64       ; 5 uses
  %min.iters.check4218 = icmp samesign ult i32 %.11009, 2
  %3 = add i32 %.7934, -1
  %diff.check4217 = icmp ult i32 %3, 31
  %or.cond4261 = select i1 %min.iters.check4218, i1 true, i1 %diff.check4217
  br i1 %or.cond4261, label %.lr.ph3008.preheader, label %vector.main.loop.iter.check4219

vector.main.loop.iter.check4219:                  ; preds = %iter.check4236
  %min.iters.check4220 = icmp samesign ult i32 %.11009, 30
  br i1 %min.iters.check4220, label %vec.epilog.ph4240, label %vector.ph4221

vector.ph4221:                                    ; preds = %vector.main.loop.iter.check4219
  %n.mod.vf4222 = and i64 %i.bnr, 28
  %n.vec4223 = and i64 %i.bnr, 65504              ; 12 uses
  %i.bns = trunc nuw nsw i64 %n.vec4223 to i32
  %i.bnt = sub nsw i32 %i.bfx, %i.bns
  %i.bnu = getelementptr i8, ptr %i.blr, i64 %n.vec4223
  %i.bnv = getelementptr i8, ptr %i.bnq, i64 %n.vec4223
  %i.bnw = getelementptr i8, ptr %i.bnq, i64 16
  %wide.load4228 = load <16 x i8>, ptr %i.bnq, align 1, !tbaa !31
  %wide.load4229 = load <16 x i8>, ptr %i.bnw, align 1, !tbaa !31
  %i.bnx = getelementptr i8, ptr %i.blr, i64 16
  store <16 x i8> %wide.load4228, ptr %i.blr, align 1, !tbaa !31
  store <16 x i8> %wide.load4229, ptr %i.bnx, align 1, !tbaa !31
  %i.bny = icmp eq i64 %n.vec4223, 32
  br i1 %i.bny, label %middle.block4231, label %vector.body4224.1

vector.body4224.1:                                ; preds = %vector.ph4221
  %next.gep4226.1 = getelementptr i8, ptr %i.blr, i64 32
  %next.gep4227.1 = getelementptr i8, ptr %i.bnq, i64 32
  %i.bnz = getelementptr i8, ptr %i.bnq, i64 48
  %wide.load4228.1 = load <16 x i8>, ptr %next.gep4227.1, align 1, !tbaa !31
  %wide.load4229.1 = load <16 x i8>, ptr %i.bnz, align 1, !tbaa !31
  %i.boa = getelementptr i8, ptr %i.blr, i64 48
  store <16 x i8> %wide.load4228.1, ptr %next.gep4226.1, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.1, ptr %i.boa, align 1, !tbaa !31
  %i.bob = icmp eq i64 %n.vec4223, 64
  br i1 %i.bob, label %middle.block4231, label %vector.body4224.2

vector.body4224.2:                                ; preds = %vector.body4224.1
  %next.gep4226.2 = getelementptr i8, ptr %i.blr, i64 64
  %next.gep4227.2 = getelementptr i8, ptr %i.bnq, i64 64
  %i.boc = getelementptr i8, ptr %i.bnq, i64 80
  %wide.load4228.2 = load <16 x i8>, ptr %next.gep4227.2, align 1, !tbaa !31
  %wide.load4229.2 = load <16 x i8>, ptr %i.boc, align 1, !tbaa !31
  %i.bod = getelementptr i8, ptr %i.blr, i64 80
  store <16 x i8> %wide.load4228.2, ptr %next.gep4226.2, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.2, ptr %i.bod, align 1, !tbaa !31
  %i.boe = icmp eq i64 %n.vec4223, 96
  br i1 %i.boe, label %middle.block4231, label %vector.body4224.3

vector.body4224.3:                                ; preds = %vector.body4224.2
  %next.gep4226.3 = getelementptr i8, ptr %i.blr, i64 96
  %next.gep4227.3 = getelementptr i8, ptr %i.bnq, i64 96
  %i.bof = getelementptr i8, ptr %i.bnq, i64 112
  %wide.load4228.3 = load <16 x i8>, ptr %next.gep4227.3, align 1, !tbaa !31
  %wide.load4229.3 = load <16 x i8>, ptr %i.bof, align 1, !tbaa !31
  %i.bog = getelementptr i8, ptr %i.blr, i64 112
  store <16 x i8> %wide.load4228.3, ptr %next.gep4226.3, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.3, ptr %i.bog, align 1, !tbaa !31
  %i.boh = icmp eq i64 %n.vec4223, 128
  br i1 %i.boh, label %middle.block4231, label %vector.body4224.4

vector.body4224.4:                                ; preds = %vector.body4224.3
  %next.gep4226.4 = getelementptr i8, ptr %i.blr, i64 128
  %next.gep4227.4 = getelementptr i8, ptr %i.bnq, i64 128
  %i.boi = getelementptr i8, ptr %i.bnq, i64 144
  %wide.load4228.4 = load <16 x i8>, ptr %next.gep4227.4, align 1, !tbaa !31
  %wide.load4229.4 = load <16 x i8>, ptr %i.boi, align 1, !tbaa !31
  %i.boj = getelementptr i8, ptr %i.blr, i64 144
  store <16 x i8> %wide.load4228.4, ptr %next.gep4226.4, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.4, ptr %i.boj, align 1, !tbaa !31
  %i.bok = icmp eq i64 %n.vec4223, 160
  br i1 %i.bok, label %middle.block4231, label %vector.body4224.5

vector.body4224.5:                                ; preds = %vector.body4224.4
  %next.gep4226.5 = getelementptr i8, ptr %i.blr, i64 160
  %next.gep4227.5 = getelementptr i8, ptr %i.bnq, i64 160
  %i.bol = getelementptr i8, ptr %i.bnq, i64 176
  %wide.load4228.5 = load <16 x i8>, ptr %next.gep4227.5, align 1, !tbaa !31
  %wide.load4229.5 = load <16 x i8>, ptr %i.bol, align 1, !tbaa !31
  %i.bom = getelementptr i8, ptr %i.blr, i64 176
  store <16 x i8> %wide.load4228.5, ptr %next.gep4226.5, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.5, ptr %i.bom, align 1, !tbaa !31
  %i.bon = icmp eq i64 %n.vec4223, 192
  br i1 %i.bon, label %middle.block4231, label %vector.body4224.6

vector.body4224.6:                                ; preds = %vector.body4224.5
  %next.gep4226.6 = getelementptr i8, ptr %i.blr, i64 192
  %next.gep4227.6 = getelementptr i8, ptr %i.bnq, i64 192
  %i.boo = getelementptr i8, ptr %i.bnq, i64 208
  %wide.load4228.6 = load <16 x i8>, ptr %next.gep4227.6, align 1, !tbaa !31
  %wide.load4229.6 = load <16 x i8>, ptr %i.boo, align 1, !tbaa !31
  %i.bop = getelementptr i8, ptr %i.blr, i64 208
  store <16 x i8> %wide.load4228.6, ptr %next.gep4226.6, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.6, ptr %i.bop, align 1, !tbaa !31
  %i.boq = icmp eq i64 %n.vec4223, 224
  br i1 %i.boq, label %middle.block4231, label %vector.body4224.7

vector.body4224.7:                                ; preds = %vector.body4224.6
  %next.gep4226.7 = getelementptr i8, ptr %i.blr, i64 224
  %next.gep4227.7 = getelementptr i8, ptr %i.bnq, i64 224
  %i.bor = getelementptr i8, ptr %i.bnq, i64 240
  %wide.load4228.7 = load <16 x i8>, ptr %next.gep4227.7, align 1, !tbaa !31
  %wide.load4229.7 = load <16 x i8>, ptr %i.bor, align 1, !tbaa !31
  %i.bos = getelementptr i8, ptr %i.blr, i64 240
  store <16 x i8> %wide.load4228.7, ptr %next.gep4226.7, align 1, !tbaa !31
  store <16 x i8> %wide.load4229.7, ptr %i.bos, align 1, !tbaa !31
  br label %middle.block4231

middle.block4231:                                 ; preds = %vector.body4224.7, %vector.body4224.6, %vector.body4224.5, %vector.body4224.4, %vector.body4224.3, %vector.body4224.2, %vector.body4224.1, %vector.ph4221
  %cmp.n4232 = icmp eq i64 %n.vec4223, %i.bnr
  br i1 %cmp.n4232, label %.loopexit1336, label %vec.epilog.iter.check4238

vec.epilog.iter.check4238:                        ; preds = %middle.block4231
  %min.epilog.iters.check4239 = icmp eq i64 %n.mod.vf4222, 0
  br i1 %min.epilog.iters.check4239, label %.lr.ph3008.preheader, label %vec.epilog.ph4240, !prof !70

vec.epilog.ph4240:                                ; preds = %vector.main.loop.iter.check4219, %vec.epilog.iter.check4238
  %vec.epilog.resume.val4233 = phi i64 [ %n.vec4223, %vec.epilog.iter.check4238 ], [ 0, %vector.main.loop.iter.check4219 ]
  %n.vec4242 = and i64 %i.bnr, 65532              ; 5 uses
  %i.bot = trunc nuw nsw i64 %n.vec4242 to i32
  %i.bou = sub nsw i32 %i.bfx, %i.bot
  %i.bov = getelementptr i8, ptr %i.blr, i64 %n.vec4242
  %i.bow = getelementptr i8, ptr %i.bnq, i64 %n.vec4242
  br label %vec.epilog.vector.body4243

vec.epilog.vector.body4243:                       ; preds = %vec.epilog.vector.body4243, %vec.epilog.ph4240
  %index4244 = phi i64 [ %vec.epilog.resume.val4233, %vec.epilog.ph4240 ], [ %index.next4248, %vec.epilog.vector.body4243 ] ; 3 uses
  %next.gep4245 = getelementptr i8, ptr %i.blr, i64 %index4244
  %next.gep4246 = getelementptr i8, ptr %i.bnq, i64 %index4244
  %wide.load4247 = load <4 x i8>, ptr %next.gep4246, align 1, !tbaa !31
  store <4 x i8> %wide.load4247, ptr %next.gep4245, align 1, !tbaa !31
  %index.next4248 = add nuw i64 %index4244, 4     ; 2 uses
  %i.box = icmp eq i64 %index.next4248, %n.vec4242
  br i1 %i.box, label %vec.epilog.middle.block4249, label %vec.epilog.vector.body4243, !llvm.loop !149

vec.epilog.middle.block4249:                      ; preds = %vec.epilog.vector.body4243
  %cmp.n4250 = icmp eq i64 %n.vec4242, %i.bnr
  br i1 %cmp.n4250, label %.loopexit1336, label %.lr.ph3008.preheader

.lr.ph3008.preheader:                             ; preds = %iter.check4236, %vec.epilog.iter.check4238, %vec.epilog.middle.block4249
  %.159623006.ph = phi i32 [ %i.bfx, %iter.check4236 ], [ %i.bnt, %vec.epilog.iter.check4238 ], [ %i.bou, %vec.epilog.middle.block4249 ]
  %.89733005.ph = phi ptr [ %i.blr, %iter.check4236 ], [ %i.bnu, %vec.epilog.iter.check4238 ], [ %i.bov, %vec.epilog.middle.block4249 ]
  %.79833004.ph = phi ptr [ %i.bnq, %iter.check4236 ], [ %i.bnv, %vec.epilog.iter.check4238 ], [ %i.bow, %vec.epilog.middle.block4249 ]
  br label %.lr.ph3008

.lr.ph3008:                                       ; preds = %.lr.ph3008.preheader, %.lr.ph3008
  %.159623006 = phi i32 [ %i.boy, %.lr.ph3008 ], [ %.159623006.ph, %.lr.ph3008.preheader ] ; 2 uses
  %.89733005 = phi ptr [ %i.bpb, %.lr.ph3008 ], [ %.89733005.ph, %.lr.ph3008.preheader ] ; 2 uses
  %.79833004 = phi ptr [ %i.boz, %.lr.ph3008 ], [ %.79833004.ph, %.lr.ph3008.preheader ] ; 2 uses
  %i.boy = add nsw i32 %.159623006, -1
  %i.boz = getelementptr inbounds nuw i8, ptr %.79833004, i64 1
  %i.bpa = load i8, ptr %.79833004, align 1, !tbaa !31
  %i.bpb = getelementptr inbounds nuw i8, ptr %.89733005, i64 1
  store i8 %i.bpa, ptr %.89733005, align 1, !tbaa !31
  %i.bpc = icmp sgt i32 %.159623006, 1
  br i1 %i.bpc, label %.lr.ph3008, label %.loopexit1336, !llvm.loop !150

.loopexit1336:                                    ; preds = %.lr.ph3008, %.lr.ph3019, %middle.block4231, %vec.epilog.middle.block4249, %middle.block4155, %vec.epilog.middle.block4173, %.loopexit1337
  %i.bpd = sub nsw i32 %.310023022, %i.bfx
  br label %bb.mb

bb.mb:                                            ; preds = %.loopexit1336, %bb.jk
  %.541101 = phi ptr [ %.391086.lcssa, %bb.jk ], [ %.531100, %.loopexit1336 ] ; 2 uses
  %.53 = phi ptr [ %.38.lcssa, %bb.jk ], [ %.52, %.loopexit1336 ] ; 2 uses
  %.41003 = phi i32 [ %i.awq, %bb.jk ], [ %i.bpd, %.loopexit1336 ] ; 3 uses
  %.5942 = phi i32 [ %i.awn, %bb.jk ], [ %i.bln, %.loopexit1336 ] ; 2 uses
  %.8935 = phi i32 [ %.69333024, %bb.jk ], [ %.7934, %.loopexit1336 ] ; 2 uses
  %.8925 = phi i32 [ %.69233025, %bb.jk ], [ %.7924, %.loopexit1336 ] ; 2 uses
  %.8915 = phi i32 [ %.69133026, %bb.jk ], [ %.7914, %.loopexit1336 ] ; 2 uses
  %.32901 = phi i32 [ %i.awk, %bb.jk ], [ %.31900, %.loopexit1336 ] ; 2 uses
  %.32 = phi i32 [ %i.awj, %bb.jk ], [ %.31, %.loopexit1336 ] ; 2 uses
  %i.bpe = icmp sgt i32 %.41003, 0
  br i1 %i.bpe, label %.preheader1351, label %.loopexit1356, !llvm.loop !151

bb.mc:                                            ; preds = %bb.fb
  %i.bpf = add i32 %spec.select1237, %.19383107   ; 2 uses
  %i.bpg = icmp sgt i32 %i.px, 0
  br i1 %i.bpg, label %.lr.ph2922.preheader, label %.loopexit1356

.lr.ph2922.preheader:                             ; preds = %bb.mc
  %i.bph = zext i32 %.19383107 to i64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bph
  br label %.lr.ph2922

.lr.ph2922:                                       ; preds = %.lr.ph2922.preheader, %bb.mn
  %.99742920 = phi ptr [ %.10975, %bb.mn ], [ %i.bpi, %.lr.ph2922.preheader ] ; 3 uses
  %.510042919 = phi i32 [ %.61005, %bb.mn ], [ %spec.select1237, %.lr.ph2922.preheader ] ; 3 uses
  %.542918 = phi ptr [ %.55, %bb.mn ], [ %.261036, %.lr.ph2922.preheader ] ; 2 uses
  %.5511022917 = phi ptr [ %.561103, %bb.mn ], [ %.271074, %.lr.ph2922.preheader ] ; 3 uses
  %i.bpj = ptrtoint ptr %.542918 to i64
  %i.bpk = ptrtoint ptr %.5511022917 to i64
  %i.bpl = sub i64 %i.bpj, %i.bpk
  %i.bpm = trunc i64 %i.bpl to i32                ; 2 uses
  %.not1198 = icmp eq i32 %i.bpm, 0
  br i1 %.not1198, label %bb.me, label %bb.md

bb.md:                                            ; preds = %.lr.ph2922
  %spec.select1238 = tail call i32 @llvm.smin.i32(i32 %.510042919, i32 %i.bpm) ; 2 uses
  %i.bpn = sext i32 %spec.select1238 to i64       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.99742920, ptr align 1 %.5511022917, i64 %i.bpn, i1 false)
  %i.bpo = getelementptr inbounds i8, ptr %.99742920, i64 %i.bpn
  %i.bpp = getelementptr inbounds i8, ptr %.5511022917, i64 %i.bpn
end_hunk_2
begin_hunk_3_@qtm_decompress:bb.a

bb.fa:                                            ; preds = %bb.ez
  %i.abr = and i32 %i.abo, 16384
  %.not974 = icmp ne i32 %i.abr, 0
  %i.abs = and i32 %i.abp, 16384
  %.not975 = icmp eq i32 %i.abs, 0
  %or.cond1021 = and i1 %.not975, %.not974
  br i1 %or.cond1021, label %bb.fb, label %bb.fm

bb.fb:                                            ; preds = %bb.fa
  %i.abt = xor i16 %.15746, 16384
  %i.abu = and i16 %.14764, 16383
  %i.abv = or i16 %.14782, 16384
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %.15783 = phi i16 [ %i.abv, %bb.fb ], [ %.14782, %bb.ez ]
  %.15765 = phi i16 [ %i.abu, %bb.fb ], [ %.14764, %bb.ez ]
  %.16747 = phi i16 [ %i.abt, %bb.fb ], [ %.15746, %bb.ez ]
  %i.abw = shl i16 %.15765, 1
  %i.abx = shl i16 %.15783, 1
  %i.aby = or disjoint i16 %i.abx, 1
  %i.abz = zext i8 %.21 to i32
  %i.aca = icmp ult i8 %.21, 17
  br i1 %i.aca, label %bb.fd, label %bb.fl

bb.fd:                                            ; preds = %bb.fc
  %.not976 = icmp ult ptr %.30883, %.30851
  br i1 %.not976, label %bb.fk, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acb = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1046 = icmp eq ptr %i.acb, null
  %i.acc = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.acd = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1046, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ace = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.acf = tail call i32 %i.acb(ptr noundef %i.ace, ptr noundef %i.acc, i32 noundef %i.acd) #11, !inline_history !221
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.acg = load i32, ptr %0, align 8, !tbaa !192
  %i.ach = tail call i32 @cli_readn(i32 noundef %i.acg, ptr noundef %i.acc, i32 noundef %i.acd) #11
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.aci = phi i32 [ %i.acf, %bb.ff ], [ %i.ach, %bb.fg ] ; 2 uses
  %i.acj = icmp slt i32 %i.aci, 0
  br i1 %i.acj, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.fj:                                            ; preds = %bb.fh
  %i.ack = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.ack, ptr %i.y, align 8, !tbaa !202
  %i.acl = zext nneg i32 %i.aci to i64
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acl ; 2 uses
  store ptr %i.acm, ptr %i.aa, align 8, !tbaa !201
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fd
  %.31884 = phi ptr [ %i.ack, %bb.fj ], [ %.30883, %bb.fd ] ; 3 uses
  %.31852 = phi ptr [ %i.acm, %bb.fj ], [ %.30851, %bb.fd ]
  %i.acn = load i8, ptr %.31884, align 1, !tbaa !31
  %i.aco = zext i8 %i.acn to i32
  %i.acp = shl nuw nsw i32 %i.aco, 8
  %i.acq = getelementptr inbounds nuw i8, ptr %.31884, i64 1
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !31
  %i.acs = zext i8 %i.acr to i32
  %i.act = or disjoint i32 %i.acp, %i.acs
  %i.acu = sub nuw nsw i32 16, %i.abz
  %i.acv = shl nuw i32 %i.act, %i.acu
  %i.acw = or i32 %i.acv, %.21720
  %narrow978 = add nuw nsw i8 %.21, 16
  %i.acx = getelementptr inbounds nuw i8, ptr %.31884, i64 2
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fc
  %.32885 = phi ptr [ %i.acx, %bb.fk ], [ %.30883, %bb.fc ]
  %.32 = phi ptr [ %.31852, %bb.fk ], [ %.30851, %bb.fc ]
  %.22721 = phi i32 [ %i.acw, %bb.fk ], [ %.21720, %bb.fc ] ; 2 uses
  %.22 = phi i8 [ %narrow978, %bb.fk ], [ %.21, %bb.fc ]
  %i.acy = zext i16 %.16747 to i32
  %i.acz = tail call i32 @llvm.fshl.i32(i32 %i.acy, i32 %.22721, i32 1)
  %i.ada = trunc i32 %i.acz to i16
  %i.adb = shl i32 %.22721, 1
  %i.adc = add i8 %.22, -1
  br label %bb.ez

bb.fm:                                            ; preds = %bb.fa
  %i.add = zext i16 %i.aap to i64                 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !31 ; 2 uses
  %.not9791480 = icmp eq i8 %i.adf, 0
  br i1 %.not9791480, label %._crit_edge1533, label %.lr.ph1488

.lr.ph1488:                                       ; preds = %bb.fm, %bb.fv
  %.46921486 = phi i8 [ %i.aen, %bb.fv ], [ %i.adf, %bb.fm ] ; 2 uses
  %.231485 = phi i8 [ %i.aem, %bb.fv ], [ %.21, %bb.fm ] ; 4 uses
  %.237221484 = phi i32 [ %i.ael, %bb.fv ], [ %.21720, %bb.fm ] ; 2 uses
  %.37901483 = phi i32 [ %i.aek, %bb.fv ], [ 0, %bb.fm ]
  %.331482 = phi ptr [ %.35, %bb.fv ], [ %.30851, %bb.fm ] ; 3 uses
  %.338861481 = phi ptr [ %.35888, %bb.fv ], [ %.30883, %bb.fm ] ; 3 uses
  %i.adg = zext i8 %.231485 to i32
  %i.adh = icmp ult i8 %.231485, 17
  br i1 %i.adh, label %bb.fn, label %bb.fv

bb.fn:                                            ; preds = %.lr.ph1488
  %.not980 = icmp ult ptr %.338861481, %.331482
  br i1 %.not980, label %bb.fu, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.adi = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1049 = icmp eq ptr %i.adi, null
  %i.adj = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.adk = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1049, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.adl = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.adm = tail call i32 %i.adi(ptr noundef %i.adl, ptr noundef %i.adj, i32 noundef %i.adk) #11, !inline_history !221
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.adn = load i32, ptr %0, align 8, !tbaa !192
  %i.ado = tail call i32 @cli_readn(i32 noundef %i.adn, ptr noundef %i.adj, i32 noundef %i.adk) #11
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.adp = phi i32 [ %i.adm, %bb.fp ], [ %i.ado, %bb.fq ] ; 2 uses
  %i.adq = icmp slt i32 %i.adp, 0
  br i1 %i.adq, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.ft:                                            ; preds = %bb.fr
  %i.adr = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.adr, ptr %i.y, align 8, !tbaa !202
  %i.ads = zext nneg i32 %i.adp to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ads ; 2 uses
  store ptr %i.adt, ptr %i.aa, align 8, !tbaa !201
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fn
  %.34887 = phi ptr [ %i.adr, %bb.ft ], [ %.338861481, %bb.fn ] ; 3 uses
  %.34 = phi ptr [ %i.adt, %bb.ft ], [ %.331482, %bb.fn ]
  %i.adu = load i8, ptr %.34887, align 1, !tbaa !31
  %i.adv = zext i8 %i.adu to i32
  %i.adw = shl nuw nsw i32 %i.adv, 8
  %i.adx = getelementptr inbounds nuw i8, ptr %.34887, i64 1
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !31
  %i.adz = zext i8 %i.ady to i32
  %i.aea = or disjoint i32 %i.adw, %i.adz
  %i.aeb = sub nuw nsw i32 16, %i.adg
  %i.aec = shl nuw i32 %i.aea, %i.aeb
  %i.aed = or i32 %i.aec, %.237221484
  %narrow982 = add nuw nsw i8 %.231485, 16
  %i.aee = getelementptr inbounds nuw i8, ptr %.34887, i64 2
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.lr.ph1488
  %.35888 = phi ptr [ %i.aee, %bb.fu ], [ %.338861481, %.lr.ph1488 ] ; 2 uses
  %.35 = phi ptr [ %.34, %bb.fu ], [ %.331482, %.lr.ph1488 ] ; 2 uses
  %.24723 = phi i32 [ %i.aed, %bb.fu ], [ %.237221484, %.lr.ph1488 ] ; 2 uses
  %.24 = phi i8 [ %narrow982, %bb.fu ], [ %.231485, %.lr.ph1488 ] ; 2 uses
  %i.aef = tail call i8 @llvm.umin.i8(i8 %.24, i8 %.46921486) ; 3 uses
  %i.aeg = zext i8 %i.aef to i32                  ; 3 uses
  %i.aeh = shl i32 %.37901483, %i.aeg
  %i.aei = sub nsw i32 32, %i.aeg
  %i.aej = lshr i32 %.24723, %i.aei
  %i.aek = or disjoint i32 %i.aej, %i.aeh         ; 2 uses
  %i.ael = shl i32 %.24723, %i.aeg                ; 2 uses
  %i.aem = sub i8 %.24, %i.aef                    ; 2 uses
  %i.aen = sub i8 %.46921486, %i.aef              ; 2 uses
  %.not979 = icmp eq i8 %i.aen, 0
  br i1 %.not979, label %._crit_edge1533, label %.lr.ph1488, !llvm.loop !248

bb.fw:                                            ; preds = %bb.bk
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

._crit_edge1533:                                  ; preds = %bb.fv, %bb.dq, %bb.cn, %bb.fm, %bb.dh, %bb.ce
  %.sink = phi i64 [ %i.ti, %bb.dh ], [ %i.on, %bb.ce ], [ %i.add, %bb.fm ], [ %i.ti, %bb.dq ], [ %i.on, %bb.cn ], [ %i.add, %bb.fv ]
  %.3790.lcssa.sink = phi i32 [ 0, %bb.dh ], [ 0, %bb.ce ], [ 0, %bb.fm ], [ %i.up, %bb.dq ], [ %i.pu, %bb.cn ], [ %i.aek, %bb.fv ]
  %.36889 = phi ptr [ %.18871, %bb.dh ], [ %.12865, %bb.ce ], [ %.30883, %bb.fm ], [ %.23876, %bb.dq ], [ %.17870, %bb.cn ], [ %.35888, %bb.fv ]
  %.36 = phi ptr [ %.18839, %bb.dh ], [ %.12833, %bb.ce ], [ %.30851, %bb.fm ], [ %.23844, %bb.dq ], [ %.17838, %bb.cn ], [ %.35, %bb.fv ]
  %.0786 = phi i32 [ 4, %bb.dh ], [ 3, %bb.ce ], [ %i.zs, %bb.fm ], [ 4, %bb.dq ], [ 3, %bb.cn ], [ %i.zs, %bb.fv ] ; 11 uses
  %.16784 = phi i16 [ %.10778, %bb.dh ], [ %.8776, %bb.ce ], [ %.14782, %bb.fm ], [ %.10778, %bb.dq ], [ %.8776, %bb.cn ], [ %.14782, %bb.fv ]
  %.16766 = phi i16 [ %.10760, %bb.dh ], [ %.8758, %bb.ce ], [ %.14764, %bb.fm ], [ %.10760, %bb.dq ], [ %.8758, %bb.cn ], [ %.14764, %bb.fv ]
  %.17748 = phi i16 [ %.11742, %bb.dh ], [ %.9740, %bb.ce ], [ %.15746, %bb.fm ], [ %.11742, %bb.dq ], [ %.9740, %bb.cn ], [ %.15746, %bb.fv ]
  %.25724 = phi i32 [ %.13712, %bb.dh ], [ %.9708, %bb.ce ], [ %.21720, %bb.fm ], [ %i.uq, %bb.dq ], [ %i.pv, %bb.cn ], [ %i.ael, %bb.fv ]
  %.25 = phi i8 [ %.13, %bb.dh ], [ %.9, %bb.ce ], [ %.21, %bb.fm ], [ %i.ur, %bb.dq ], [ %i.pw, %bb.cn ], [ %i.aem, %bb.fv ]
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sink
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !4
  %i.aeq = add i32 %i.aep, %.3790.lcssa.sink      ; 2 uses
  %.0898 = add i32 %i.aeq, 1                      ; 3 uses
  %i.aer = zext i32 %.19001562 to i64             ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aer ; 13 uses
  %i.aet = icmp ugt i32 %.0898, %.19001562
  br i1 %i.aet, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %._crit_edge1533
  %i.aeu = sub nuw i32 %.0898, %.19001562         ; 11 uses
  %i.aev = load i32, ptr %i.bv, align 8, !tbaa !196 ; 2 uses
  %i.aew = icmp sgt i32 %i.aeu, %i.aev
  br i1 %i.aew, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #11
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.fz:                                            ; preds = %bb.fx
  %i.aex = sub i32 %i.aev, %i.aeu
  %i.aey = zext i32 %i.aex to i64                 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aey ; 6 uses
  %i.afa = icmp slt i32 %i.aeu, %.0786
  br i1 %i.afa, label %bb.ga, label %.loopexit1089

bb.ga:                                            ; preds = %bb.fz
  %i.afb = sub nsw i32 %.0786, %i.aeu             ; 4 uses
  %i.afc = icmp sgt i32 %i.aeu, 0
  br i1 %i.afc, label %iter.check2006, label %.loopexit1089

iter.check2006:                                   ; preds = %bb.ga
  %i.afd = zext nneg i32 %i.aeu to i64            ; 5 uses
  %min.iters.check1988 = icmp ult i32 %i.aeu, 4
  %i.afe = sub nsw i64 %i.aey, %i.aer
  %diff.check1987 = icmp ugt i64 %i.afe, -32
  %or.cond2062 = select i1 %min.iters.check1988, i1 true, i1 %diff.check1987
  br i1 %or.cond2062, label %.lr.ph1548.preheader, label %vector.main.loop.iter.check1989

vector.main.loop.iter.check1989:                  ; preds = %iter.check2006
  %min.iters.check1990 = icmp ult i32 %i.aeu, 32
  br i1 %min.iters.check1990, label %vec.epilog.ph2010, label %vector.ph1991

vector.ph1991:                                    ; preds = %vector.main.loop.iter.check1989
  %n.mod.vf1992 = and i64 %i.afd, 28
  %n.vec1993 = and i64 %i.afd, 2147483616         ; 6 uses
  %i.aff = trunc nuw nsw i64 %n.vec1993 to i32
  %i.afg = sub nsw i32 %i.aeu, %i.aff
  %i.afh = getelementptr i8, ptr %i.aes, i64 %n.vec1993 ; 2 uses
  %i.afi = getelementptr i8, ptr %i.aez, i64 %n.vec1993
  br label %vector.body1994

vector.body1994:                                  ; preds = %vector.body1994, %vector.ph1991
  %index1995 = phi i64 [ 0, %vector.ph1991 ], [ %index.next2000, %vector.body1994 ] ; 3 uses
  %next.gep1996 = getelementptr i8, ptr %i.aes, i64 %index1995 ; 2 uses
  %next.gep1997 = getelementptr i8, ptr %i.aez, i64 %index1995 ; 2 uses
  %i.afj = getelementptr i8, ptr %next.gep1997, i64 16
  %wide.load1998 = load <16 x i8>, ptr %next.gep1997, align 1, !tbaa !31
  %wide.load1999 = load <16 x i8>, ptr %i.afj, align 1, !tbaa !31
  %i.afk = getelementptr i8, ptr %next.gep1996, i64 16
  store <16 x i8> %wide.load1998, ptr %next.gep1996, align 1, !tbaa !31
  store <16 x i8> %wide.load1999, ptr %i.afk, align 1, !tbaa !31
  %index.next2000 = add nuw i64 %index1995, 32    ; 2 uses
  %i.afl = icmp eq i64 %index.next2000, %n.vec1993
  br i1 %i.afl, label %middle.block2001, label %vector.body1994, !llvm.loop !249

middle.block2001:                                 ; preds = %vector.body1994
  %cmp.n2002 = icmp eq i64 %n.vec1993, %i.afd
  br i1 %cmp.n2002, label %.loopexit1089, label %vec.epilog.iter.check2008

vec.epilog.iter.check2008:                        ; preds = %middle.block2001
  %min.epilog.iters.check2009 = icmp eq i64 %n.mod.vf1992, 0
  br i1 %min.epilog.iters.check2009, label %.lr.ph1548.preheader, label %vec.epilog.ph2010, !prof !70

vec.epilog.ph2010:                                ; preds = %vector.main.loop.iter.check1989, %vec.epilog.iter.check2008
  %vec.epilog.resume.val2003 = phi i64 [ %n.vec1993, %vec.epilog.iter.check2008 ], [ 0, %vector.main.loop.iter.check1989 ]
  %n.vec2012 = and i64 %i.afd, 2147483644         ; 5 uses
  %i.afm = trunc nuw nsw i64 %n.vec2012 to i32
  %i.afn = sub nsw i32 %i.aeu, %i.afm
  %i.afo = getelementptr i8, ptr %i.aes, i64 %n.vec2012 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.aez, i64 %n.vec2012
  br label %vec.epilog.vector.body2013

vec.epilog.vector.body2013:                       ; preds = %vec.epilog.vector.body2013, %vec.epilog.ph2010
  %index2014 = phi i64 [ %vec.epilog.resume.val2003, %vec.epilog.ph2010 ], [ %index.next2018, %vec.epilog.vector.body2013 ] ; 3 uses
  %next.gep2015 = getelementptr i8, ptr %i.aes, i64 %index2014
  %next.gep2016 = getelementptr i8, ptr %i.aez, i64 %index2014
  %wide.load2017 = load <4 x i8>, ptr %next.gep2016, align 1, !tbaa !31
  store <4 x i8> %wide.load2017, ptr %next.gep2015, align 1, !tbaa !31
  %index.next2018 = add nuw i64 %index2014, 4     ; 2 uses
  %i.afq = icmp eq i64 %index.next2018, %n.vec2012
  br i1 %i.afq, label %vec.epilog.middle.block2019, label %vec.epilog.vector.body2013, !llvm.loop !250

vec.epilog.middle.block2019:                      ; preds = %vec.epilog.vector.body2013
  %cmp.n2020 = icmp eq i64 %n.vec2012, %i.afd
  br i1 %cmp.n2020, label %.loopexit1089, label %.lr.ph1548.preheader

.lr.ph1548.preheader:                             ; preds = %iter.check2006, %vec.epilog.iter.check2008, %vec.epilog.middle.block2019
  %.07951546.ph = phi i32 [ %i.aeu, %iter.check2006 ], [ %i.afg, %vec.epilog.iter.check2008 ], [ %i.afn, %vec.epilog.middle.block2019 ]
  %.08131545.ph = phi ptr [ %i.aes, %iter.check2006 ], [ %i.afh, %vec.epilog.iter.check2008 ], [ %i.afo, %vec.epilog.middle.block2019 ]
  %.08171544.ph = phi ptr [ %i.aez, %iter.check2006 ], [ %i.afi, %vec.epilog.iter.check2008 ], [ %i.afp, %vec.epilog.middle.block2019 ]
  br label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.lr.ph1548.preheader, %.lr.ph1548
  %.07951546 = phi i32 [ %i.afr, %.lr.ph1548 ], [ %.07951546.ph, %.lr.ph1548.preheader ] ; 2 uses
  %.08131545 = phi ptr [ %i.afu, %.lr.ph1548 ], [ %.08131545.ph, %.lr.ph1548.preheader ] ; 2 uses
  %.08171544 = phi ptr [ %i.afs, %.lr.ph1548 ], [ %.08171544.ph, %.lr.ph1548.preheader ] ; 2 uses
  %i.afr = add nsw i32 %.07951546, -1
  %i.afs = getelementptr inbounds nuw i8, ptr %.08171544, i64 1
  %i.aft = load i8, ptr %.08171544, align 1, !tbaa !31
  %i.afu = getelementptr inbounds nuw i8, ptr %.08131545, i64 1 ; 2 uses
  store i8 %i.aft, ptr %.08131545, align 1, !tbaa !31
  %i.afv = icmp samesign ugt i32 %.07951546, 1
  br i1 %i.afv, label %.lr.ph1548, label %.loopexit1089, !llvm.loop !251

.loopexit1089:                                    ; preds = %.lr.ph1548, %middle.block2001, %vec.epilog.middle.block2019, %bb.ga, %bb.fz
  %.1818 = phi ptr [ %i.aez, %bb.fz ], [ %i.ah, %bb.ga ], [ %i.ah, %middle.block2001 ], [ %i.ah, %vec.epilog.middle.block2019 ], [ %i.ah, %.lr.ph1548 ] ; 6 uses
  %.1814 = phi ptr [ %i.aes, %bb.fz ], [ %i.aes, %bb.ga ], [ %i.afh, %middle.block2001 ], [ %i.afo, %vec.epilog.middle.block2019 ], [ %i.afu, %.lr.ph1548 ] ; 6 uses
  %.13809 = phi i32 [ %.0786, %bb.fz ], [ %i.afb, %bb.ga ], [ %i.afb, %middle.block2001 ], [ %i.afb, %vec.epilog.middle.block2019 ], [ %i.afb, %.lr.ph1548 ] ; 7 uses
  %i.afw = icmp sgt i32 %.13809, 0
  br i1 %i.afw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.loopexit1089
  %.18181969 = ptrtoaddr ptr %.1818 to i64
  %.18141968 = ptrtoaddr ptr %.1814 to i64
  %i.afx = zext nneg i32 %.13809 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %.13809, 4
  %i.afy = sub i64 %.18181969, %.18141968
  %diff.check = icmp ugt i64 %i.afy, -32
  %or.cond2063 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2063, label %.lr.ph1554.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1970 = icmp ult i32 %.13809, 32
  br i1 %min.iters.check1970, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.afx, 28
  %n.vec = and i64 %i.afx, 2147483616             ; 6 uses
  %i.afz = trunc nuw nsw i64 %n.vec to i32
  %i.aga = sub nsw i32 %.13809, %i.afz
  %i.agb = getelementptr i8, ptr %.1814, i64 %n.vec
  %i.agc = getelementptr i8, ptr %.1818, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1814, i64 %index ; 2 uses
  %next.gep1971 = getelementptr i8, ptr %.1818, i64 %index ; 2 uses
  %i.agd = getelementptr i8, ptr %next.gep1971, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1971, align 1, !tbaa !31
  %wide.load1972 = load <16 x i8>, ptr %i.agd, align 1, !tbaa !31
  %i.age = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !31
  store <16 x i8> %wide.load1972, ptr %i.age, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.agf = icmp eq i64 %index.next, %n.vec
  br i1 %i.agf, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.afx
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1554.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1976 = and i64 %i.afx, 2147483644         ; 5 uses
  %i.agg = trunc nuw nsw i64 %n.vec1976 to i32
  %i.agh = sub nsw i32 %.13809, %i.agg
  %i.agi = getelementptr i8, ptr %.1814, i64 %n.vec1976
  %i.agj = getelementptr i8, ptr %.1818, i64 %n.vec1976
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1977 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1981, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1978 = getelementptr i8, ptr %.1814, i64 %index1977
  %next.gep1979 = getelementptr i8, ptr %.1818, i64 %index1977
  %wide.load1980 = load <4 x i8>, ptr %next.gep1979, align 1, !tbaa !31
  store <4 x i8> %wide.load1980, ptr %next.gep1978, align 1, !tbaa !31
  %index.next1981 = add nuw i64 %index1977, 4     ; 2 uses
  %i.agk = icmp eq i64 %index.next1981, %n.vec1976
  br i1 %i.agk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1982 = icmp eq i64 %n.vec1976, %i.afx
  br i1 %cmp.n1982, label %.loopexit, label %.lr.ph1554.preheader

.lr.ph1554.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.148101552.ph = phi i32 [ %.13809, %iter.check ], [ %i.aga, %vec.epilog.iter.check ], [ %i.agh, %vec.epilog.middle.block ]
  %.28151551.ph = phi ptr [ %.1814, %iter.check ], [ %i.agb, %vec.epilog.iter.check ], [ %i.agi, %vec.epilog.middle.block ]
  %.28191550.ph = phi ptr [ %.1818, %iter.check ], [ %i.agc, %vec.epilog.iter.check ], [ %i.agj, %vec.epilog.middle.block ]
  br label %.lr.ph1554

.lr.ph1554:                                       ; preds = %.lr.ph1554.preheader, %.lr.ph1554
  %.148101552 = phi i32 [ %i.agl, %.lr.ph1554 ], [ %.148101552.ph, %.lr.ph1554.preheader ] ; 2 uses
  %.28151551 = phi ptr [ %i.ago, %.lr.ph1554 ], [ %.28151551.ph, %.lr.ph1554.preheader ] ; 2 uses
  %.28191550 = phi ptr [ %i.agm, %.lr.ph1554 ], [ %.28191550.ph, %.lr.ph1554.preheader ] ; 2 uses
  %i.agl = add nsw i32 %.148101552, -1
  %i.agm = getelementptr inbounds nuw i8, ptr %.28191550, i64 1
  %i.agn = load i8, ptr %.28191550, align 1, !tbaa !31
  %i.ago = getelementptr inbounds nuw i8, ptr %.28151551, i64 1
  store i8 %i.agn, ptr %.28151551, align 1, !tbaa !31
  %i.agp = icmp samesign ugt i32 %.148101552, 1
  br i1 %i.agp, label %.lr.ph1554, label %.loopexit, !llvm.loop !254

bb.gb:                                            ; preds = %._crit_edge1533
  %i.agq = icmp sgt i32 %.0786, 0
  br i1 %i.agq, label %iter.check2044, label %.loopexit

iter.check2044:                                   ; preds = %bb.gb
  %i.agr = zext i32 %.0898 to i64
  %i.ags = sub nsw i64 0, %i.agr
  %i.agt = getelementptr inbounds i8, ptr %i.aes, i64 %i.ags ; 5 uses
  %i.agu = zext nneg i32 %.0786 to i64            ; 5 uses
  %min.iters.check2026 = icmp ult i32 %.0786, 4
  %diff.check2025 = icmp ult i32 %i.aeq, 31
  %or.cond2064 = or i1 %min.iters.check2026, %diff.check2025
  br i1 %or.cond2064, label %.lr.ph1543.preheader, label %vector.main.loop.iter.check2027

vector.main.loop.iter.check2027:                  ; preds = %iter.check2044
  %min.iters.check2028 = icmp ult i32 %.0786, 32
  br i1 %min.iters.check2028, label %vec.epilog.ph2048, label %vector.ph2029

vector.ph2029:                                    ; preds = %vector.main.loop.iter.check2027
  %n.mod.vf2030 = and i64 %i.agu, 28
  %n.vec2031 = and i64 %i.agu, 2147483616         ; 6 uses
  %i.agv = trunc nuw nsw i64 %n.vec2031 to i32
  %i.agw = sub nsw i32 %.0786, %i.agv
  %i.agx = getelementptr i8, ptr %i.aes, i64 %n.vec2031
  %i.agy = getelementptr i8, ptr %i.agt, i64 %n.vec2031
  br label %vector.body2032

vector.body2032:                                  ; preds = %vector.body2032, %vector.ph2029
  %index2033 = phi i64 [ 0, %vector.ph2029 ], [ %index.next2038, %vector.body2032 ] ; 3 uses
  %next.gep2034 = getelementptr i8, ptr %i.aes, i64 %index2033 ; 2 uses
  %next.gep2035 = getelementptr i8, ptr %i.agt, i64 %index2033 ; 2 uses
  %i.agz = getelementptr i8, ptr %next.gep2035, i64 16
  %wide.load2036 = load <16 x i8>, ptr %next.gep2035, align 1, !tbaa !31
  %wide.load2037 = load <16 x i8>, ptr %i.agz, align 1, !tbaa !31
  %i.aha = getelementptr i8, ptr %next.gep2034, i64 16
  store <16 x i8> %wide.load2036, ptr %next.gep2034, align 1, !tbaa !31
  store <16 x i8> %wide.load2037, ptr %i.aha, align 1, !tbaa !31
  %index.next2038 = add nuw i64 %index2033, 32    ; 2 uses
  %i.ahb = icmp eq i64 %index.next2038, %n.vec2031
  br i1 %i.ahb, label %middle.block2039, label %vector.body2032, !llvm.loop !255

middle.block2039:                                 ; preds = %vector.body2032
  %cmp.n2040 = icmp eq i64 %n.vec2031, %i.agu
  br i1 %cmp.n2040, label %.loopexit, label %vec.epilog.iter.check2046

vec.epilog.iter.check2046:                        ; preds = %middle.block2039
  %min.epilog.iters.check2047 = icmp eq i64 %n.mod.vf2030, 0
  br i1 %min.epilog.iters.check2047, label %.lr.ph1543.preheader, label %vec.epilog.ph2048, !prof !70

vec.epilog.ph2048:                                ; preds = %vector.main.loop.iter.check2027, %vec.epilog.iter.check2046
  %vec.epilog.resume.val2041 = phi i64 [ %n.vec2031, %vec.epilog.iter.check2046 ], [ 0, %vector.main.loop.iter.check2027 ]
  %n.vec2050 = and i64 %i.agu, 2147483644         ; 5 uses
  %i.ahc = trunc nuw nsw i64 %n.vec2050 to i32
  %i.ahd = sub nsw i32 %.0786, %i.ahc
  %i.ahe = getelementptr i8, ptr %i.aes, i64 %n.vec2050
  %i.ahf = getelementptr i8, ptr %i.agt, i64 %n.vec2050
  br label %vec.epilog.vector.body2051

vec.epilog.vector.body2051:                       ; preds = %vec.epilog.vector.body2051, %vec.epilog.ph2048
  %index2052 = phi i64 [ %vec.epilog.resume.val2041, %vec.epilog.ph2048 ], [ %index.next2056, %vec.epilog.vector.body2051 ] ; 3 uses
  %next.gep2053 = getelementptr i8, ptr %i.aes, i64 %index2052
  %next.gep2054 = getelementptr i8, ptr %i.agt, i64 %index2052
  %wide.load2055 = load <4 x i8>, ptr %next.gep2054, align 1, !tbaa !31
  store <4 x i8> %wide.load2055, ptr %next.gep2053, align 1, !tbaa !31
  %index.next2056 = add nuw i64 %index2052, 4     ; 2 uses
  %i.ahg = icmp eq i64 %index.next2056, %n.vec2050
  br i1 %i.ahg, label %vec.epilog.middle.block2057, label %vec.epilog.vector.body2051, !llvm.loop !256

vec.epilog.middle.block2057:                      ; preds = %vec.epilog.vector.body2051
  %cmp.n2058 = icmp eq i64 %n.vec2050, %i.agu
  br i1 %cmp.n2058, label %.loopexit, label %.lr.ph1543.preheader

.lr.ph1543.preheader:                             ; preds = %iter.check2044, %vec.epilog.iter.check2046, %vec.epilog.middle.block2057
  %.158111541.ph = phi i32 [ %.0786, %iter.check2044 ], [ %i.agw, %vec.epilog.iter.check2046 ], [ %i.ahd, %vec.epilog.middle.block2057 ]
  %.38161540.ph = phi ptr [ %i.aes, %iter.check2044 ], [ %i.agx, %vec.epilog.iter.check2046 ], [ %i.ahe, %vec.epilog.middle.block2057 ]
  %.38201539.ph = phi ptr [ %i.agt, %iter.check2044 ], [ %i.agy, %vec.epilog.iter.check2046 ], [ %i.ahf, %vec.epilog.middle.block2057 ]
  br label %.lr.ph1543

.lr.ph1543:                                       ; preds = %.lr.ph1543.preheader, %.lr.ph1543
  %.158111541 = phi i32 [ %i.ahh, %.lr.ph1543 ], [ %.158111541.ph, %.lr.ph1543.preheader ] ; 2 uses
  %.38161540 = phi ptr [ %i.ahk, %.lr.ph1543 ], [ %.38161540.ph, %.lr.ph1543.preheader ] ; 2 uses
  %.38201539 = phi ptr [ %i.ahi, %.lr.ph1543 ], [ %.38201539.ph, %.lr.ph1543.preheader ] ; 2 uses
  %i.ahh = add nsw i32 %.158111541, -1
  %i.ahi = getelementptr inbounds nuw i8, ptr %.38201539, i64 1
  %i.ahj = load i8, ptr %.38201539, align 1, !tbaa !31
  %i.ahk = getelementptr inbounds nuw i8, ptr %.38161540, i64 1
  store i8 %i.ahj, ptr %.38161540, align 1, !tbaa !31
  %i.ahl = icmp samesign ugt i32 %.158111541, 1
  br i1 %i.ahl, label %.lr.ph1543, label %.loopexit, !llvm.loop !257

.loopexit:                                        ; preds = %.lr.ph1543, %.lr.ph1554, %middle.block2039, %vec.epilog.middle.block2057, %middle.block, %vec.epilog.middle.block, %bb.gb, %.loopexit1089
  %i.ahm = add i32 %.0786, %.19001562
  br label %bb.gc

bb.gc:                                            ; preds = %.thread, %.loopexit
  %.3902 = phi i32 [ %i.la, %.thread ], [ %i.ahm, %.loopexit ] ; 3 uses
  %.37890 = phi ptr [ %.9862, %.thread ], [ %.36889, %.loopexit ] ; 2 uses
  %.37 = phi ptr [ %.9830, %.thread ], [ %.36, %.loopexit ] ; 2 uses
  %.17785 = phi i16 [ %.5773, %.thread ], [ %.16784, %.loopexit ] ; 2 uses
  %.17767 = phi i16 [ %.5755, %.thread ], [ %.16766, %.loopexit ] ; 2 uses
  %.18749 = phi i16 [ %.6737, %.thread ], [ %.17748, %.loopexit ] ; 2 uses
  %.26725 = phi i32 [ %.7706, %.thread ], [ %.25724, %.loopexit ] ; 2 uses
  %.26 = phi i8 [ %.7, %.thread ], [ %.25, %.loopexit ] ; 2 uses
  %i.ahn = icmp ult i32 %.3902, %spec.select1015
  br i1 %i.ahn, label %.lr.ph1571, label %._crit_edge1572, !llvm.loop !258

._crit_edge1572:                                  ; preds = %bb.gc, %bb.u
  %.1900.lcssa = phi i32 [ %.08991586, %bb.u ], [ %.3902, %bb.gc ] ; 6 uses
  %.5858.lcssa = phi ptr [ %.4857, %bb.u ], [ %.37890, %bb.gc ] ; 2 uses
  %.5826.lcssa = phi ptr [ %.4825, %bb.u ], [ %.37, %bb.gc ] ; 2 uses
  %.2770.lcssa = phi i16 [ %.1769, %bb.u ], [ %.17785, %bb.gc ] ; 2 uses
  %.2752.lcssa = phi i16 [ %.1751, %bb.u ], [ %.17767, %bb.gc ] ; 2 uses
  %.3734.lcssa = phi i16 [ %.2733, %bb.u ], [ %.18749, %bb.gc ] ; 2 uses
  %.4703.lcssa = phi i32 [ %.3702, %bb.u ], [ %.26725, %bb.gc ] ; 2 uses
  %.4697.lcssa = phi i8 [ %.3696, %bb.u ], [ %.26, %bb.gc ] ; 3 uses
  %i.aho = zext i32 %.1900.lcssa to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aho ; 2 uses
  store ptr %i.ahp, ptr %i.e, align 8, !tbaa !203
  %i.ahq = sub i32 %.1900.lcssa, %.08961587       ; 2 uses
  %i.ahr = icmp ugt i32 %i.ahq, 32767
  br i1 %i.ahr, label %bb.gd, label %._crit_edge1572._crit_edge

._crit_edge1572._crit_edge:                       ; preds = %._crit_edge1572
  %.pre1740 = load ptr, ptr %i.g, align 8, !tbaa !204
  br label %bb.gw

bb.gd:                                            ; preds = %._crit_edge1572
  %.not947 = icmp eq i32 %i.ahq, 32768
  br i1 %.not947, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #11
  store i32 -124, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.gf:                                            ; preds = %bb.gd
  %i.ahs = and i8 %.4697.lcssa, 7
  %i.aht = zext nneg i8 %i.ahs to i32
  %i.ahu = shl i32 %.4703.lcssa, %i.aht
  %i.ahv = and i8 %.4697.lcssa, -8
  br label %bb.gg

bb.gg:                                            ; preds = %.backedge, %bb.gf
  %i.ahw = phi i32 [ 8, %bb.gf ], [ %.be, %.backedge ] ; 2 uses
  %.291585 = phi i8 [ %i.ahv, %bb.gf ], [ %i.ajd, %.backedge ] ; 4 uses
  %.297281584 = phi i32 [ %i.ahu, %bb.gf ], [ %i.ajb, %.backedge ] ; 2 uses
  %.168121583 = phi i32 [ 0, %bb.gf ], [ %.168121583.be, %.backedge ]
  %.391582 = phi ptr [ %.5826.lcssa, %bb.gf ], [ %.41, %.backedge ] ; 3 uses
  %.398921581 = phi ptr [ %.5858.lcssa, %bb.gf ], [ %.41894, %.backedge ] ; 3 uses
  %i.ahx = zext i8 %.291585 to i32                ; 2 uses
  %i.ahy = icmp ult i8 %.291585, 17
  br i1 %i.ahy, label %bb.gh, label %bb.gp

bb.gh:                                            ; preds = %bb.gg
  %.not954 = icmp ult ptr %.398921581, %.391582
  br i1 %.not954, label %bb.go, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ahz = load ptr, ptr %i.ay, align 8, !tbaa !217 ; 2 uses
  %.not.i1052 = icmp eq ptr %i.ahz, null
  %i.aia = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 2 uses
  %i.aib = load i32, ptr %i.bb, align 4, !tbaa !195 ; 2 uses
  br i1 %.not.i1052, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aic = load ptr, ptr %i.az, align 8, !tbaa !216
  %i.aid = tail call i32 %i.ahz(ptr noundef %i.aic, ptr noundef %i.aia, i32 noundef %i.aib) #11, !inline_history !221
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.aie = load i32, ptr %0, align 8, !tbaa !192
  %i.aif = tail call i32 @cli_readn(i32 noundef %i.aie, ptr noundef %i.aia, i32 noundef %i.aib) #11
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aig = phi i32 [ %i.aid, %bb.gj ], [ %i.aif, %bb.gk ] ; 2 uses
  %i.aih = icmp slt i32 %i.aig, 0
  br i1 %i.aih, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 -123, ptr %i.c, align 4, !tbaa !200
  br label %bb.hc

bb.gn:                                            ; preds = %bb.gl
  %i.aii = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  store ptr %i.aii, ptr %i.y, align 8, !tbaa !202
  %i.aij = zext nneg i32 %i.aig to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aij ; 2 uses
  store ptr %i.aik, ptr %i.aa, align 8, !tbaa !201
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gh
  %.40893 = phi ptr [ %i.aii, %bb.gn ], [ %.398921581, %bb.gh ] ; 3 uses
  %.40 = phi ptr [ %i.aik, %bb.gn ], [ %.391582, %bb.gh ]
  %i.ail = load i8, ptr %.40893, align 1, !tbaa !31
  %i.aim = zext i8 %i.ail to i32
  %i.ain = shl nuw nsw i32 %i.aim, 8
  %i.aio = getelementptr inbounds nuw i8, ptr %.40893, i64 1
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !31
  %i.aiq = zext i8 %i.aip to i32
  %i.air = or disjoint i32 %i.ain, %i.aiq
  %i.ais = sub nuw nsw i32 16, %i.ahx
  %i.ait = shl nuw i32 %i.air, %i.ais
  %i.aiu = or i32 %i.ait, %.297281584
  %narrow956 = add nuw nsw i8 %.291585, 16        ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.40893, i64 2
  %.pre1745 = zext nneg i8 %narrow956 to i32
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gg
  %.pre-phi1746 = phi i32 [ %.pre1745, %bb.go ], [ %i.ahx, %bb.gg ]
end_hunk_3
