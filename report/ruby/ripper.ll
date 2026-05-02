inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@forwarding_arg_check:bb.a
.lr.ph:                                           ; preds = %bb.a, %vtable_included.exit.thread
  %.03592 = phi ptr [ %i.e, %vtable_included.exit.thread ], [ %.03588, %bb.a ]
  %.03491 = phi ptr [ %.034, %vtable_included.exit.thread ], [ %.03487, %bb.a ] ; 5 uses
  %.03690 = phi i1 [ %3, %vtable_included.exit.thread ], [ false, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.03592, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 4 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
end_hunk_0
begin_hunk_1_@forwarding_arg_check:bb.a
  br i1 %exitcond.not.i55, label %vtable_included.exit.thread, label %.lr.ph.i51, !llvm.loop !205

vtable_included.exit.thread:                      ; preds = %bb.d, %bb.e, %.lr.ph.i51, %.preheader.i, %bb.b
  %3 = phi i1 [ true, %bb.e ], [ %.03690, %.preheader.i ], [ %.03690, %bb.b ], [ %.03690, %.lr.ph.i51 ], [ %.03690, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03491, i64 16
  %.034 = load ptr, ptr %i.r, align 8, !tbaa !382 ; 2 uses
  %.not = icmp eq ptr %i.e, null
end_hunk_1
begin_hunk_2_@forwarding_arg_check:bb.a
  br i1 %.not41, label %.thread, label %.sink.split

.critedge46:                                      ; preds = %vtable_included.exit.thread, %bb.a, %.critedge
  %.03685 = phi i1 [ %.03690, %.critedge ], [ false, %bb.a ], [ %3, %vtable_included.exit.thread ]
  %.03482 = phi ptr [ %.03491, %.critedge ], [ %.03487, %bb.a ], [ %.034, %vtable_included.exit.thread ] ; 3 uses
  %i.x = icmp ult ptr %.03482, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %.sink.split, label %.preheader.i57
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.bea = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.beb = and i32 %i.bea, 48
  %i.bec = icmp ne i32 %i.beb, 0
  %4 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond5 = select i1 %i.bec, i1 %4, i1 false
  br i1 %or.cond5, label %bb.lo, label %bb.lq

end_hunk_3
begin_hunk_4_@parser_yylex:bb.a
  %i.beu = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bev = and i32 %i.beu, 48
  %i.bew = icmp ne i32 %i.bev, 0
  %5 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond9 = select i1 %i.bew, i1 %5, i1 false
  br i1 %or.cond9, label %bb.lx, label %bb.lz

end_hunk_4
begin_hunk_5_@parser_yylex:bb.a
bb.ns:                                            ; preds = %bb.nr
  %i.bkq = and i32 %.pre2136.a, 2048
  %i.bkr = icmp ne i32 %i.bkq, 0
  %6 = trunc nuw i32 %.0660 to i1
  %or.cond13 = select i1 %i.bkr, i1 true, i1 %6
  br i1 %or.cond13, label %bb.nt, label %bb.nu

end_hunk_5
begin_hunk_6_@parser_yylex:bb.a
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blh)
  %i.blo = and i32 %i.agm, 904
  %i.blp = icmp eq i32 %i.blo, 0
  %7 = trunc nuw i32 %.0660 to i1
  %or.cond15 = select i1 %i.blp, i1 %7, i1 false
  br i1 %or.cond15, label %bb.oi, label %pushback.exit1061

end_hunk_6
begin_hunk_7_@parser_yylex:bb.a
  %i.bos = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bot = and i32 %i.bos, 48
  %i.bou = icmp ne i32 %i.bot, 0
  %8 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond21 = select i1 %i.bou, i1 %8, i1 false
  br i1 %or.cond21, label %bb.pq, label %bb.pv

end_hunk_7
begin_hunk_8_@parser_yylex:bb.a
bb.qw:                                            ; preds = %bb.qv
  %i.brx = and i32 %i.bri, 48
  %i.bry = icmp ne i32 %i.brx, 0
  %9 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond27 = select i1 %i.bry, i1 %9, i1 false
  br i1 %or.cond27, label %bb.qx, label %bb.rc

end_hunk_8
begin_hunk_9_@parser_yylex:bb.a
bb.rq:                                            ; preds = %bb.rp
  %i.btk = and i32 %i.bso, 48
  %i.btl = icmp ne i32 %i.btk, 0
  %10 = trunc nuw i32 %.0660 to i1                ; 2 uses
  %or.cond31 = select i1 %i.btl, i1 %10, i1 false
  br i1 %or.cond31, label %bb.rr, label %bb.rv

end_hunk_9
begin_hunk_10_@parser_yylex:bb.a
bb.tz:                                            ; preds = %bb.ty
  %i.cap = and i32 %i.cal, 48
  %i.caq = icmp ne i32 %i.cap, 0
  %11 = trunc nuw i32 %.0660 to i1
  %or.cond37 = select i1 %i.caq, i1 %11, i1 false
  br i1 %or.cond37, label %bb.ua, label %bb.uc

end_hunk_10
begin_hunk_11_@parser_yylex:bb.a
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.caj)
  %i.cba = and i32 %i.agm, 904
  %i.cbb = icmp eq i32 %i.cba, 0
  %12 = trunc nuw i32 %.0660 to i1
  %or.cond41 = select i1 %i.cbb, i1 %12, i1 false
  br i1 %or.cond41, label %bb.uh, label %bb.uj

end_hunk_11
begin_hunk_12_@parser_yylex:bb.a
  %i.cck = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.ccl = and i32 %i.cck, 48
  %i.ccm = icmp ne i32 %i.ccl, 0
  %13 = trunc nuw i32 %.0660 to i1                ; 2 uses
  %or.cond43 = select i1 %i.ccm, i1 %13, i1 false
  br i1 %or.cond43, label %bb.uw, label %bb.uy

end_hunk_12
begin_hunk_13_@parse_percent:bb.a
  %i.fb = load i32, ptr %i.d, align 8, !tbaa !60  ; 4 uses
  %i.fc = and i32 %i.fb, 48
  %i.fd = icmp ne i32 %i.fc, 0
  %3 = trunc nuw i32 %1 to i1                     ; 2 uses
  %or.cond = select i1 %i.fd, i1 %3, i1 false
  br i1 %or.cond, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %nextc0.exit124.thread
end_hunk_13
begin_hunk_14_@parse_percent:bb.a
pushback.exit132:                                 ; preds = %parser_set_lex_state.exit131, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %i.ga = and i32 %2, 904
  %i.gb = icmp eq i32 %i.ga, 0
  %or.cond5 = select i1 %i.gb, i1 %3, i1 false
  br i1 %or.cond5, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %pushback.exit132
end_hunk_14
begin_hunk_15_@parse_ident:bb.a
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.cz = and i32 %i.cy, 1032
  %i.da = icmp eq i32 %i.cz, 0
  %3 = trunc nuw i32 %2 to i1                     ; 2 uses
  %or.cond3 = select i1 %i.da, i1 true, i1 %3
  %i.db = and i32 %i.cy, 48
  %.not137 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %.not137, %or.cond3
end_hunk_15
