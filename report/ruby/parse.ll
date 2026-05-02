inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@forwarding_arg_check:bb.a
.lr.ph:                                           ; preds = %bb.a, %vtable_included.exit.thread
  %.03586 = phi ptr [ %i.e, %vtable_included.exit.thread ], [ %.03582, %bb.a ]
  %.03485 = phi ptr [ %.034, %vtable_included.exit.thread ], [ %.03481, %bb.a ] ; 5 uses
  %.03684 = phi i1 [ %6, %vtable_included.exit.thread ], [ false, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.03586, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 4 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
end_hunk_0
begin_hunk_1_@forwarding_arg_check:bb.a
  br i1 %exitcond.not.i53, label %vtable_included.exit.thread, label %.lr.ph.i51, !llvm.loop !214

vtable_included.exit.thread:                      ; preds = %bb.d, %bb.e, %.lr.ph.i51, %.preheader.i, %bb.b
  %3 = phi i32 [ 1, %bb.e ], [ 0, %.preheader.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i51 ], [ 0, %bb.d ]
  %4 = zext i1 %.03684 to i32
  %5 = or i32 %3, %4
  %6 = icmp ne i32 %5, 0                          ; 2 uses
  %i.s = getelementptr i8, ptr %.03485, i64 16
  %.034 = load ptr, ptr %i.s, align 8, !tbaa !390 ; 2 uses
  %.not = icmp eq ptr %i.e, null
end_hunk_1
begin_hunk_2_@forwarding_arg_check:bb.a
  br i1 %.not41, label %.thread, label %.sink.split

.critedge46:                                      ; preds = %vtable_included.exit.thread, %bb.a, %.critedge
  %.03679 = phi i1 [ %.03684, %.critedge ], [ false, %bb.a ], [ %6, %vtable_included.exit.thread ]
  %.03476 = phi ptr [ %.03485, %.critedge ], [ %.03481, %bb.a ], [ %.034, %vtable_included.exit.thread ] ; 3 uses
  %i.y = icmp ult ptr %.03476, inttoptr (i64 2 to ptr)
  br i1 %i.y, label %.sink.split, label %.preheader.i55
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.bfe = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bff = and i32 %i.bfe, 48
  %i.bfg = icmp ne i32 %i.bff, 0
  %3 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond5 = select i1 %i.bfg, i1 %3, i1 false
  br i1 %or.cond5, label %bb.mh, label %bb.mi

end_hunk_3
begin_hunk_4_@parser_yylex:bb.a
  %i.bfr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bfs = and i32 %i.bfr, 48
  %i.bft = icmp ne i32 %i.bfs, 0
  %4 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond9 = select i1 %i.bft, i1 %4, i1 false
  br i1 %or.cond9, label %bb.mo, label %bb.mp

end_hunk_4
begin_hunk_5_@parser_yylex:bb.a
bb.od:                                            ; preds = %bb.oc
  %i.bjz = and i32 %.pre1968.a, 2048
  %i.bka = icmp ne i32 %i.bjz, 0
  %5 = icmp ne i32 %.0694, 0
  %or.cond13 = select i1 %i.bka, i1 true, i1 %5
  br i1 %or.cond13, label %bb.oe, label %bb.of

end_hunk_5
begin_hunk_6_@parser_yylex:bb.a
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkq)
  %i.bkx = and i32 %i.aiz, 904
  %i.bky = icmp eq i32 %i.bkx, 0
  %6 = icmp ne i32 %.0694, 0
  %or.cond15 = select i1 %i.bky, i1 %6, i1 false
  br i1 %or.cond15, label %bb.ot, label %pushback.exit1040

end_hunk_6
begin_hunk_7_@parser_yylex:bb.a
  %i.blr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bls = and i32 %i.blr, 1032
  %i.blt = icmp eq i32 %i.bls, 0
  %7 = icmp ne i32 %.0697, 0
  %or.cond17 = select i1 %i.blt, i1 true, i1 %7
  %i.blu = and i32 %i.blr, 48
  %.not819 = icmp eq i32 %i.blu, 0
end_hunk_7
begin_hunk_8_@parser_yylex:bb.a
  %i.bmr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bms = and i32 %i.bmr, 1032
  %i.bmt = icmp eq i32 %i.bms, 0
  %8 = icmp ne i32 %.0697, 0
  %or.cond19 = select i1 %i.bmt, i1 true, i1 %8
  %i.bmu = and i32 %i.bmr, 48
  %.not815 = icmp eq i32 %i.bmu, 0
end_hunk_8
begin_hunk_9_@parser_yylex:bb.a
  %i.boa = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bob = and i32 %i.boa, 48
  %i.boc = icmp ne i32 %i.bob, 0
  %9 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond21 = select i1 %i.boc, i1 %9, i1 false
  br i1 %or.cond21, label %bb.qb, label %bb.qg

end_hunk_9
begin_hunk_10_@parser_yylex:bb.a
bb.rh:                                            ; preds = %bb.rg
  %i.brc = and i32 %i.bqn, 48
  %i.brd = icmp ne i32 %i.brc, 0
  %10 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond27 = select i1 %i.brd, i1 %10, i1 false
  br i1 %or.cond27, label %bb.ri, label %bb.rn

end_hunk_10
begin_hunk_11_@parser_yylex:bb.a
bb.sb:                                            ; preds = %bb.sa
  %i.bss = and i32 %i.brw, 48
  %i.bst = icmp ne i32 %i.bss, 0
  %11 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond31 = select i1 %i.bst, i1 %11, i1 false
  br i1 %or.cond31, label %bb.sc, label %bb.sg

end_hunk_11
begin_hunk_12_@parser_yylex:bb.a
  %i.buy = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.buz = and i32 %i.buy, 1032
  %i.bva = icmp eq i32 %i.buz, 0
  %12 = icmp ne i32 %.0697, 0
  %or.cond35 = select i1 %i.bva, i1 true, i1 %12
  %i.bvb = and i32 %i.buy, 48
  %.not792 = icmp eq i32 %i.bvb, 0
end_hunk_12
begin_hunk_13_@parser_yylex:bb.a
bb.ul:                                            ; preds = %bb.uk
  %i.cah = and i32 %i.cad, 48
  %i.cai = icmp ne i32 %i.cah, 0
  %13 = icmp ne i32 %.0694, 0
  %or.cond37 = select i1 %i.cai, i1 %13, i1 false
  br i1 %or.cond37, label %bb.um, label %bb.uo

end_hunk_13
begin_hunk_14_@parser_yylex:bb.a
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cab)
  %i.cas = and i32 %i.aiz, 904
  %i.cat = icmp eq i32 %i.cas, 0
  %14 = icmp ne i32 %.0694, 0
  %or.cond41 = select i1 %i.cat, i1 %14, i1 false
  br i1 %or.cond41, label %bb.ut, label %bb.uv

end_hunk_14
begin_hunk_15_@parser_yylex:bb.a
  %i.ccd = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.cce = and i32 %i.ccd, 48
  %i.ccf = icmp ne i32 %i.cce, 0
  %15 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond43 = select i1 %i.ccf, i1 %15, i1 false
  br i1 %or.cond43, label %bb.vi, label %bb.vk

end_hunk_15
begin_hunk_16_@parse_percent:bb.a
  %i.fp = load i32, ptr %i.d, align 8, !tbaa !67  ; 4 uses
  %i.fq = and i32 %i.fp, 48
  %i.fr = icmp ne i32 %i.fq, 0
  %4 = icmp ne i32 %1, 0                          ; 2 uses
  %or.cond = and i1 %4, %i.fr
  br i1 %or.cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %nextc0.exit124.thread
end_hunk_16
begin_hunk_17_@parse_percent:bb.a
pushback.exit130:                                 ; preds = %parser_set_lex_state.exit129, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %i.go = and i32 %2, 904
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond5 = and i1 %4, %i.gp
  br i1 %or.cond5, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %pushback.exit130
end_hunk_17
begin_hunk_18_@parse_ident:bb.a
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.cz = and i32 %i.cy, 1032
  %i.da = icmp eq i32 %i.cz, 0
  %3 = icmp ne i32 %2, 0                          ; 2 uses
  %or.cond3 = or i1 %3, %i.da
  %i.db = and i32 %i.cy, 48
  %.not162 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %.not162, %or.cond3
end_hunk_18
