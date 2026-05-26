inline.NumInlined: 114
inline.NumDeleted: 19
begin_hunk_0_@_ZN17duckdb_libpgquery10core_yylexEPNS_12core_YYSTYPEEPiPv:bb.a
  %i.awh = load i32, ptr %i.awg, align 8, !tbaa !72 ; 2 uses
  %i.awi = icmp eq i32 %i.awh, 0
  br i1 %i.awi, label %bb.fp, label %._crit_edge1829

._crit_edge1829:                                  ; preds = %bb.fo
  %.pre = load i64, ptr %i.ba, align 8, !tbaa !29
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awf, i64 32
  %i.awk = load i64, ptr %i.awj, align 8, !tbaa !27 ; 2 uses
  store i64 %i.awk, ptr %i.ba, align 8, !tbaa !29
  %i.awl = load ptr, ptr %i.bb, align 8, !tbaa !26
  store ptr %i.awl, ptr %i.awf, align 8, !tbaa !33
  store i32 1, ptr %i.awg, align 8, !tbaa !72
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge1829, %bb.fp
  %i.awm = phi i32 [ %i.awh, %._crit_edge1829 ], [ 1, %bb.fp ]
  %i.awn = phi i64 [ %.pre, %._crit_edge1829 ], [ %i.awk, %bb.fp ] ; 2 uses
  %i.awo = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awf, i64 8
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !73 ; 8 uses
  %i.awr = ptrtoaddr ptr %i.awq to i64
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awn ; 2 uses
  %.not829 = icmp ugt ptr %i.awo, %i.aws
  br i1 %.not829, label %bb.gb, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.awt = ptrtoint ptr %.2786 to i64
  %i.awu = ptrtoint ptr %i.awa to i64
  %i.awv = sub i64 %i.awt, %i.awu                 ; 2 uses
  %i.aww = trunc i64 %i.awv to i32
  %i.awx = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 5 uses
  %i.awy = shl i64 %i.awv, 32
  %sext2200 = add i64 %i.awy, -4294967296
  %i.awz = ashr exact i64 %sext2200, 32
  %i.axa = getelementptr inbounds i8, ptr %i.awx, i64 %i.awz ; 4 uses
  store ptr %i.axa, ptr %i.ar, align 8, !tbaa !31
  %i.axb = load i32, ptr %i.at, align 4, !tbaa !20 ; 2 uses
  %i.axc = icmp sgt i32 %i.aww, 1
  br i1 %i.axc, label %.lr.ph32.i, label %_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit

.lr.ph32.i:                                       ; preds = %bb.fr, %._crit_edge.i986
  %.02130.i = phi i32 [ %i.ayk, %._crit_edge.i986 ], [ %i.axb, %bb.fr ] ; 3 uses
  %.02329.i = phi ptr [ %i.ayl, %._crit_edge.i986 ], [ %i.awx, %bb.fr ] ; 3 uses
  %i.axd = load i8, ptr %.02329.i, align 1, !tbaa !34 ; 2 uses
  %.not.i985 = icmp eq i8 %i.axd, 0
  br i1 %.not.i985, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph32.i
  %i.axe = zext i8 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr @_ZN17duckdb_libpgqueryL5yy_ecE, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !34
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph32.i
  %i.axh = phi i8 [ %i.axg, %bb.fs ], [ 1, %.lr.ph32.i ] ; 2 uses
  %i.axi = sext i32 %.02130.i to i64              ; 3 uses
  %i.axj = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL9yy_acceptE, i64 %i.axi
  %i.axk = load i16, ptr %i.axj, align 2, !tbaa !36
  %.not25.i = icmp eq i16 %i.axk, 0
  br i1 %.not25.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  store i32 %.02130.i, ptr %i.au, align 8, !tbaa !38
  store ptr %.02329.i, ptr %i.av, align 8, !tbaa !39
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.axl = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL7yy_baseE, i64 %i.axi
  %i.axm = load i16, ptr %i.axl, align 2, !tbaa !36
  %i.axn = sext i16 %i.axm to i64
  %i.axo = zext i8 %i.axh to i64                  ; 2 uses
  %i.axp = add nsw i64 %i.axn, %i.axo             ; 2 uses
  %i.axq = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_chkE, i64 %i.axp
  %i.axr = load i16, ptr %i.axq, align 2, !tbaa !36
  %i.axs = sext i16 %i.axr to i32
  %.not2627.i = icmp eq i32 %.02130.i, %i.axs
  br i1 %.not2627.i, label %._crit_edge.i986, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fv, %bb.fx
  %i.axt = phi i64 [ %i.aye, %bb.fx ], [ %i.axo, %bb.fv ]
  %i.axu = phi i64 [ %i.aya, %bb.fx ], [ %i.axi, %bb.fv ]
  %.028.i = phi i8 [ %.1.i, %bb.fx ], [ %i.axh, %bb.fv ]
  %i.axv = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_defE, i64 %i.axu
  %i.axw = load i16, ptr %i.axv, align 2, !tbaa !36 ; 3 uses
  %i.axx = icmp sgt i16 %i.axw, 308
  br i1 %i.axx, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.lr.ph.i
  %i.axy = getelementptr inbounds nuw i8, ptr @_ZN17duckdb_libpgqueryL7yy_metaE, i64 %i.axt
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !34
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.i
  %.1.i = phi i8 [ %i.axz, %bb.fw ], [ %.028.i, %.lr.ph.i ] ; 2 uses
  %i.aya = sext i16 %i.axw to i64                 ; 2 uses
  %i.ayb = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL7yy_baseE, i64 %i.aya
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !36
  %i.ayd = sext i16 %i.ayc to i64
  %i.aye = zext i8 %.1.i to i64                   ; 2 uses
  %i.ayf = add nsw i64 %i.ayd, %i.aye             ; 2 uses
  %i.ayg = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_chkE, i64 %i.ayf
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !36
  %.not26.i = icmp eq i16 %i.axw, %i.ayh
  br i1 %.not26.i, label %._crit_edge.i986, label %.lr.ph.i, !llvm.loop !74

._crit_edge.i986:                                 ; preds = %bb.fx, %bb.fv
  %.lcssa.i = phi i64 [ %i.axp, %bb.fv ], [ %i.ayf, %bb.fx ]
  %i.ayi = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_nxtE, i64 %.lcssa.i
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !36
  %i.ayk = sext i16 %i.ayj to i32                 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %.02329.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ayl, %i.axa
  br i1 %exitcond.not.i, label %_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit, label %.lr.ph32.i, !llvm.loop !75

_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit: ; preds = %._crit_edge.i986, %bb.fr
  %.021.lcssa.i = phi i32 [ %i.axb, %bb.fr ], [ %i.ayk, %._crit_edge.i986 ] ; 3 uses
  %i.aym = sext i32 %.021.lcssa.i to i64          ; 3 uses
  %i.ayn = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL9yy_acceptE, i64 %i.aym
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !36
  %.not.i987 = icmp eq i16 %i.ayo, 0
  br i1 %.not.i987, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit
  store i32 %.021.lcssa.i, ptr %i.au, align 8, !tbaa !38
  store ptr %i.axa, ptr %i.av, align 8, !tbaa !39
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit
  %i.ayp = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL7yy_baseE, i64 %i.aym
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !36
  %i.ayr = sext i16 %i.ayq to i64
  %i.ays = add nsw i64 %i.ayr, 1                  ; 2 uses
  %i.ayt = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_chkE, i64 %i.ays
  %i.ayu = load i16, ptr %i.ayt, align 2, !tbaa !36
  %i.ayv = sext i16 %i.ayu to i32
  %.not1819.i = icmp eq i32 %.021.lcssa.i, %i.ayv
  br i1 %.not1819.i, label %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit, label %.lr.ph.i988

.lr.ph.i988:                                      ; preds = %bb.fz, %.lr.ph.i988
  %i.ayw = phi i64 [ %i.ayz, %.lr.ph.i988 ], [ %i.aym, %bb.fz ]
  %i.ayx = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_defE, i64 %i.ayw
  %i.ayy = load i16, ptr %i.ayx, align 2, !tbaa !36 ; 2 uses
  %i.ayz = sext i16 %i.ayy to i64                 ; 2 uses
  %i.aza = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL7yy_baseE, i64 %i.ayz
  %i.azb = load i16, ptr %i.aza, align 2, !tbaa !36
  %i.azc = sext i16 %i.azb to i64
  %i.azd = add nsw i64 %i.azc, 1                  ; 2 uses
  %i.aze = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_chkE, i64 %i.azd
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !36
  %.not18.i = icmp eq i16 %i.ayy, %i.azf
  br i1 %.not18.i, label %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit, label %.lr.ph.i988, !llvm.loop !76

_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit: ; preds = %.lr.ph.i988, %bb.fz
  %.lcssa.i990 = phi i64 [ %i.ays, %bb.fz ], [ %i.azd, %.lr.ph.i988 ]
  %i.azg = getelementptr inbounds [2 x i8], ptr @_ZN17duckdb_libpgqueryL6yy_nxtE, i64 %.lcssa.i990
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !36 ; 2 uses
  switch i16 %i.azh, label %bb.ga [
    i16 308, label %.backedge.sink.split2467.backedge
    i16 0, label %.backedge.sink.split2467.backedge
  ]

.backedge.sink.split2467.backedge:                ; preds = %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit, %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit, %bb.s
  %.1791.ph.be = phi ptr [ %i.awx, %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit ], [ %.1791, %bb.s ], [ %i.awx, %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit ]
  br label %.backedge.sink.split2467

bb.ga:                                            ; preds = %_ZN17duckdb_libpgqueryL16yy_try_NUL_transEiPv.exit
  %i.azi = sext i16 %i.azh to i32
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axa, i64 1 ; 2 uses
  store ptr %i.azj, ptr %i.ar, align 8, !tbaa !31
  br label %.loopexit1068.backedge

.loopexit1068.backedge:                           ; preds = %._crit_edge.i1011, %bb.ga, %bb.hc
  %.0790.be = phi ptr [ %i.awx, %bb.ga ], [ %i.bfp, %bb.hc ], [ %i.bfp, %._crit_edge.i1011 ]
  %.0784.be = phi ptr [ %i.azj, %bb.ga ], [ %i.bfw, %bb.hc ], [ %i.bfw, %._crit_edge.i1011 ]
  %.0780.be = phi i32 [ %i.azi, %bb.ga ], [ %i.bfx, %bb.hc ], [ %i.bhg, %._crit_edge.i1011 ]
  br label %.loopexit1068

bb.gb:                                            ; preds = %bb.fq
  %i.azk = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 8 uses
  %i.azl = getelementptr i8, ptr %i.aws, i64 1
  %i.azm = icmp ugt ptr %i.awo, %i.azl
  br i1 %i.azm, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  tail call fastcc void @_ZN17duckdb_libpgqueryL14yy_fatal_errorEPKcPv(ptr noundef nonnull @.str.36) #18
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.azn = getelementptr inbounds nuw i8, ptr %i.awf, i64 60
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !77
  %i.azp = icmp eq i32 %i.azo, 0
  %i.azq = ptrtoint ptr %i.awo to i64             ; 2 uses
  %i.azr = ptrtoint ptr %i.azk to i64             ; 3 uses
  br i1 %i.azp, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.azs = sub i64 %i.azq, %i.azr
  %i.azt = icmp eq i64 %i.azs, 1
  br i1 %i.azt, label %_ZN17duckdb_libpgqueryL21yy_get_previous_stateEPv.exit1014, label %_ZN17duckdb_libpgqueryL18yy_get_next_bufferEPv.exit.thread1046

bb.gf:                                            ; preds = %bb.gd
  %i.azu = xor i64 %i.azr, -1
  %i.azv = add i64 %i.azu, %i.azq                 ; 7 uses
  %i.azw = trunc i64 %i.azv to i32                ; 3 uses
  %i.azx = icmp sgt i32 %i.azw, 0
  br i1 %i.azx, label %iter.check, label %._crit_edge.i991

iter.check:                                       ; preds = %bb.gf
  %i.azy = and i64 %i.azv, 2147483647             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.azy, 4
  %i.azz = sub i64 %i.awr, %i.azr
  %diff.check = icmp ult i64 %i.azz, 32
  %or.cond2466 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2466, label %.lr.ph.i996.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2450 = icmp samesign ult i64 %i.azy, 32
  br i1 %min.iters.check2450, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.azv, 28
  %n.vec = and i64 %i.azv, 2147483616             ; 6 uses
  %i.baa = getelementptr i8, ptr %i.awq, i64 %n.vec
  %i.bab = getelementptr i8, ptr %i.azk, i64 %n.vec
  %i.bac = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.awq, i64 %index ; 2 uses
  %next.gep2451 = getelementptr i8, ptr %i.azk, i64 %index ; 2 uses
  %i.bad = getelementptr i8, ptr %next.gep2451, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep2451, align 1, !tbaa !34
  %wide.load2452 = load <16 x i8>, ptr %i.bad, align 1, !tbaa !34
  %i.bae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %wide.load2452, ptr %i.bae, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.baf = icmp eq i64 %index.next, %n.vec
  br i1 %i.baf, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.azy, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i996.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2456 = and i64 %i.azv, 2147483644         ; 5 uses
  %i.bag = getelementptr i8, ptr %i.awq, i64 %n.vec2456
  %i.bah = getelementptr i8, ptr %i.azk, i64 %n.vec2456
  %i.bai = trunc nuw nsw i64 %n.vec2456 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2457 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2461, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2458 = getelementptr i8, ptr %i.awq, i64 %index2457
  %next.gep2459 = getelementptr i8, ptr %i.azk, i64 %index2457
  %wide.load2460 = load <4 x i8>, ptr %next.gep2459, align 1, !tbaa !34
  store <4 x i8> %wide.load2460, ptr %next.gep2458, align 1, !tbaa !34
  %index.next2461 = add nuw i64 %index2457, 4     ; 2 uses
  %i.baj = icmp eq i64 %index.next2461, %n.vec2456
  br i1 %i.baj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2462 = icmp eq i64 %i.azy, %n.vec2456
  br i1 %cmp.n2462, label %._crit_edge.loopexit.i, label %.lr.ph.i996.preheader

.lr.ph.i996.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0131168.i.ph = phi ptr [ %i.awq, %iter.check ], [ %i.baa, %vec.epilog.iter.check ], [ %i.bag, %vec.epilog.middle.block ]
  %.0132167.i.ph = phi ptr [ %i.azk, %iter.check ], [ %i.bab, %vec.epilog.iter.check ], [ %i.bah, %vec.epilog.middle.block ]
  %.0133166.i.ph = phi i32 [ 0, %iter.check ], [ %i.bac, %vec.epilog.iter.check ], [ %i.bai, %vec.epilog.middle.block ]
  br label %.lr.ph.i996

.lr.ph.i996:                                      ; preds = %.lr.ph.i996.preheader, %.lr.ph.i996
  %.0131168.i = phi ptr [ %i.bam, %.lr.ph.i996 ], [ %.0131168.i.ph, %.lr.ph.i996.preheader ] ; 2 uses
  %.0132167.i = phi ptr [ %i.bak, %.lr.ph.i996 ], [ %.0132167.i.ph, %.lr.ph.i996.preheader ] ; 2 uses
  %.0133166.i = phi i32 [ %i.ban, %.lr.ph.i996 ], [ %.0133166.i.ph, %.lr.ph.i996.preheader ]
  %i.bak = getelementptr inbounds nuw i8, ptr %.0132167.i, i64 1
  %i.bal = load i8, ptr %.0132167.i, align 1, !tbaa !34
  %i.bam = getelementptr inbounds nuw i8, ptr %.0131168.i, i64 1
  store i8 %i.bal, ptr %.0131168.i, align 1, !tbaa !34
  %i.ban = add nuw nsw i32 %.0133166.i, 1         ; 2 uses
  %exitcond.not.i997 = icmp eq i32 %i.ban, %i.azw
  br i1 %exitcond.not.i997, label %._crit_edge.loopexit.i, label %.lr.ph.i996, !llvm.loop !83

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i996, %vec.epilog.middle.block, %middle.block
  %.pre.i998 = load ptr, ptr %i.ay, align 8, !tbaa !21
  %.pre185.i = load i64, ptr %i.az, align 8, !tbaa !22
  %.phi.trans.insert.i999 = getelementptr inbounds nuw [8 x i8], ptr %.pre.i998, i64 %.pre185.i
  %.pre186.i = load ptr, ptr %.phi.trans.insert.i999, align 8, !tbaa !23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre186.i, i64 64
  %.pre1830 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %._crit_edge.i991

._crit_edge.i991:                                 ; preds = %._crit_edge.loopexit.i, %bb.gf
  %i.bao = phi i32 [ %.pre1830, %._crit_edge.loopexit.i ], [ %i.awm, %bb.gf ]
  %i.bap = phi ptr [ %.pre186.i, %._crit_edge.loopexit.i ], [ %i.awf, %bb.gf ] ; 4 uses
  %i.baq = icmp eq i32 %i.bao, 2
  br i1 %i.baq, label %.thread160.i, label %bb.gg

.thread160.i:                                     ; preds = %._crit_edge.i991
  store i64 0, ptr %i.ba, align 8, !tbaa !29
  br label %.sink.split.i

bb.gg:                                            ; preds = %._crit_edge.i991
  %sext.i = shl i64 %i.azv, 32
  %i.bar = ashr exact i64 %sext.i, 32             ; 5 uses
  %i.bas = xor i64 %i.bar, -1                     ; 2 uses
  %.pn.in169.i = getelementptr inbounds nuw i8, ptr %i.bap, i64 24
  %.pn170.i = load i64, ptr %.pn.in169.i, align 8, !tbaa !84 ; 2 uses
  %.0134171.i = add i64 %.pn170.i, %i.bas         ; 2 uses
  %i.bat = icmp eq i64 %.0134171.i, 0
  br i1 %i.bat, label %.lr.ph173.preheader.i, label %._crit_edge174.i

.lr.ph173.preheader.i:                            ; preds = %bb.gg
  %.pre187.i = load ptr, ptr %i.ar, align 8, !tbaa !31
  br label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %bb.gk, %.lr.ph173.preheader.i
  %i.bau = phi i64 [ %.pn170.i, %.lr.ph173.preheader.i ], [ %.pn.i, %bb.gk ] ; 3 uses
  %i.bav = phi ptr [ %.pre187.i, %.lr.ph173.preheader.i ], [ %i.bbn, %bb.gk ]
  %i.baw = phi ptr [ %i.bap, %.lr.ph173.preheader.i ], [ %i.bbr, %bb.gk ] ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 8 ; 3 uses
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !73 ; 3 uses
  %i.baz = ptrtoint ptr %i.bav to i64
  %i.bba = ptrtoint ptr %i.bay to i64
  %i.bbb = sub i64 %i.baz, %i.bba
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.baw, i64 40
  %i.bbd = load i32, ptr %i.bbc, align 8, !tbaa !85
  %.not146.i = icmp eq i32 %i.bbd, 0
  br i1 %.not146.i, label %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.thread.i, label %bb.gh

_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.thread.i: ; preds = %.lr.ph173.i
  store ptr null, ptr %i.bax, align 8, !tbaa !73
  br label %.loopexit162.i

bb.gh:                                            ; preds = %.lr.ph173.i
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baw, i64 24
  %i.bbf = shl i64 %i.bau, 1                      ; 2 uses
  %i.bbg = icmp eq i64 %i.bbf, 0
  %i.bbh = lshr exact i64 %i.bau, 3
  %i.bbi = or disjoint i64 %i.bbh, %i.bau
  %storemerge147.i = select i1 %i.bbg, i64 %i.bbi, i64 %i.bbf ; 2 uses
  store i64 %storemerge147.i, ptr %i.bbe, align 8, !tbaa !84
  %i.bbj = add i64 %storemerge147.i, 2            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bay, null
  br i1 %.not.i.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.bbk = tail call noundef ptr @_ZN17duckdb_libpgquery8repallocEPvm(ptr noundef nonnull %i.bay, i64 noundef %i.bbj)
  br label %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.i995

bb.gj:                                            ; preds = %bb.gh
  %i.bbl = tail call noundef ptr @_ZN17duckdb_libpgquery6pallocEm(i64 noundef %i.bbj)
  br label %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.i995

_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.i995: ; preds = %bb.gj, %bb.gi
  %storemerge.i = phi ptr [ %i.bbl, %bb.gj ], [ %i.bbk, %bb.gi ] ; 3 uses
  store ptr %storemerge.i, ptr %i.bax, align 8, !tbaa !73
  %.not148.i = icmp eq ptr %storemerge.i, null
  br i1 %.not148.i, label %.loopexit162.i, label %bb.gk

.loopexit162.i:                                   ; preds = %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.i995, %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.thread.i
  tail call fastcc void @_ZN17duckdb_libpgqueryL14yy_fatal_errorEPKcPv(ptr noundef nonnull @.str.37) #18
  unreachable

bb.gk:                                            ; preds = %_ZN17duckdb_libpgquery14core_yyreallocEPvmS0_.exit.i995
  %sext149.i = shl i64 %i.bbb, 32
  %i.bbm = ashr exact i64 %sext149.i, 32
  %i.bbn = getelementptr inbounds i8, ptr %storemerge.i, i64 %i.bbm ; 2 uses
  store ptr %i.bbn, ptr %i.ar, align 8, !tbaa !31
  %i.bbo = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.bbp = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %i.bbp
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !23 ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.bbr, i64 24
  %.pn.i = load i64, ptr %.pn.in.i, align 8, !tbaa !84 ; 2 uses
  %.0134.i = add i64 %.pn.i, %i.bas               ; 2 uses
  %i.bbs = icmp eq i64 %.0134.i, 0
  br i1 %i.bbs, label %.lr.ph173.i, label %._crit_edge174.i, !llvm.loop !86

._crit_edge174.i:                                 ; preds = %bb.gk, %bb.gg
  %i.bbt = phi ptr [ %i.bap, %bb.gg ], [ %i.bbr, %bb.gk ] ; 2 uses
  %.0134.lcssa.i = phi i64 [ %.0134171.i, %bb.gg ], [ %.0134.i, %bb.gk ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.0134.lcssa.i, i64 8192) ; 4 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 44
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !87
  %.not.i992 = icmp eq i32 %i.bbv, 0
  br i1 %.not.i992, label %bb.gp, label %.preheader.i993

.preheader.i993:                                  ; preds = %._crit_edge174.i, %bb.gl
  %.0128175.i = phi i64 [ %i.bch, %bb.gl ], [ 0, %._crit_edge174.i ] ; 4 uses
  %i.bbw = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bbx = tail call i32 @getc(ptr noundef %i.bbw) ; 3 uses
end_hunk_0
