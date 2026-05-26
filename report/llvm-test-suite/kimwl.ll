inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@_ZN12_GLOBAL__N_15countEb:bb.a
  %i.f = add nsw i32 %i.b, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = srem i32 %i.c, 8
  %reass.sub = add i32 %i.c, 8
  %i.h = sub i32 %reass.sub, %i.g                 ; 2 uses
  store i32 %i.h, ptr @pg_column, align 4, !tbaa !4
  %i.i = srem i32 %i.b, 8
  %reass.sub6 = add i32 %i.b, 8
  %i.j = sub i32 %reass.sub6, %i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.k, ptr @pg_column, align 4, !tbaa !4
  %i.l = add nsw i32 %i.b, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sink = phi i32 [ %i.f, %bb.c ], [ %i.l, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.m = phi i32 [ %i.e, %bb.c ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  %i.n = phi i32 [ 0, %bb.c ], [ %i.k, %bb.e ], [ %i.h, %bb.d ]
  store i32 %.sink, ptr @pg_charpos, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !70

bb.g:                                             ; preds = %bb.b
  ret void
}

declare noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2 align 2

declare void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2kc7WarningEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2kc9Problem1SEPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

declare noundef ptr @_ZN2kc9mkintegerEi(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_111eat_commentEPN2kc20impl_casestring__StrE(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @pg_lineno, align 4, !tbaa !4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread41, %bb.a
  %.018 = phi i32 [ 1, %bb.a ], [ %.1, %.thread41 ] ; 5 uses
  %.0 = phi i32 [ 32, %bb.a ], [ %.1.i2438, %.thread41 ]
  %i.b = load i8, ptr @_ZL12yy_hold_char, align 1, !tbaa !26 ; 3 uses
  %i.c = load ptr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24 ; 7 uses
  store i8 %i.b, ptr %i.c, align 1, !tbaa !26
  %i.d = icmp eq i8 %i.b, 0
  %.pre9.i = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !13 ; 3 uses
  %.pre11.i = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !16 ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.pre9.i, i64 %.pre11.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  %i.l = icmp ult ptr %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 1, !tbaa !26
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @yytext_ptr, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.n, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24
  %i.o = tail call fastcc noundef i32 @_ZL18yy_get_next_bufferv()
  switch i32 %i.o, label %default.unreachable [
    i32 2, label %bb.f
    i32 1, label %_ZL7yyinputv.exit.thread
    i32 0, label %.critedge.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @yyin, align 8, !tbaa !11
  tail call void @_Z9yyrestartP8_IO_FILE(ptr noundef %i.p)
  br label %_ZL7yyinputv.exit.thread

.critedge.i:                                      ; preds = %bb.e
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = load ptr, ptr @yytext_ptr, align 8, !tbaa !24
  %sext.i = shl i64 %i.s, 32
  %i.u = ashr exact i64 %sext.i, 32
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  %.pre.i = load i8, ptr %i.v, align 1, !tbaa !26
  %.pre8.i = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !13
  %.pre10.i = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !16
  br label %bb.g

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.critedge.i, %bb.d, %bb.b
  %i.w = phi i64 [ %.pre10.i, %.critedge.i ], [ %.pre11.i, %bb.d ], [ %.pre11.i, %bb.b ]
  %i.x = phi ptr [ %.pre8.i, %.critedge.i ], [ %.pre9.i, %bb.d ], [ %.pre9.i, %bb.b ]
  %i.y = phi i8 [ %.pre.i, %.critedge.i ], [ 0, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %i.z = phi ptr [ %i.v, %.critedge.i ], [ %i.c, %bb.d ], [ %i.c, %bb.b ] ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  store ptr %i.aa, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  store i8 %i.ab, ptr @_ZL12yy_hold_char, align 1, !tbaa !26
  %i.ac = icmp eq i8 %i.y, 10                     ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 %i.ad, ptr %i.ag, align 8, !tbaa !27
  br i1 %i.ac, label %_ZL7yyinputv.exit.thread28, label %_ZL7yyinputv.exit

_ZL7yyinputv.exit.thread28:                       ; preds = %bb.g
  %i.ah = load i32, ptr @yylineno, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr @yylineno, align 4, !tbaa !4
  %i.aj = load i32, ptr @pg_lineno, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr @pg_lineno, align 4, !tbaa !4
  store i32 0, ptr @pg_column, align 4, !tbaa !4
  %i.al = load i32, ptr @pg_charpos, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @pg_charpos, align 4, !tbaa !4
  br label %.thread41

_ZL7yyinputv.exit:                                ; preds = %bb.g
  %i.an = zext i8 %i.y to i32                     ; 2 uses
  %sext = shl nuw i32 %i.an, 24
  switch i8 %i.y, label %_ZL7yyinputv.exit.thread [
    i8 0, label %bb.i
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %_ZL7yyinputv.exit
  %i.ao = load i32, ptr @pg_column, align 4, !tbaa !4 ; 2 uses
  %i.ap = srem i32 %i.ao, 8
  %reass.sub = add i32 %i.ao, 8
  %i.aq = sub i32 %reass.sub, %i.ap
  store i32 %i.aq, ptr @pg_column, align 4, !tbaa !4
  %i.ar = load i32, ptr @pg_charpos, align 4, !tbaa !4 ; 2 uses
  %i.as = srem i32 %i.ar, 8
  %reass.sub20 = add i32 %i.ar, 8
  %i.at = sub i32 %reass.sub20, %i.as
  store i32 %i.at, ptr @pg_charpos, align 4, !tbaa !4
  br label %.thread41

bb.i:                                             ; preds = %_ZL7yyinputv.exit
  %i.au = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %0, i32 noundef %i.a)
  %i.av = tail call noundef ptr @_ZN2kc9Problem1SEPKc(ptr noundef nonnull @.str.31)
  %i.aw = tail call noundef ptr @_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.au, ptr noundef %i.av)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.aw)
  br label %.thread41

_ZL7yyinputv.exit.thread:                         ; preds = %bb.e, %bb.f, %_ZL7yyinputv.exit
  %sext27 = phi i32 [ %sext, %_ZL7yyinputv.exit ], [ -16777216, %bb.f ], [ -16777216, %bb.e ] ; 2 uses
  %.1.i25 = phi i32 [ %i.an, %_ZL7yyinputv.exit ], [ -1, %bb.f ], [ -1, %bb.e ] ; 2 uses
  %i.ax = load i32, ptr @pg_column, align 4, !tbaa !4
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr @pg_column, align 4, !tbaa !4
  %i.az = load i32, ptr @pg_charpos, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr @pg_charpos, align 4, !tbaa !4
  %sext21 = shl i32 %.0, 24                       ; 2 uses
  %i.bb = icmp eq i32 %sext21, 788529152
  %i.bc = icmp eq i32 %sext27, 704643072
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL7yyinputv.exit.thread
  %i.bd = add nuw nsw i32 %.018, 1
  br label %.thread41

bb.k:                                             ; preds = %_ZL7yyinputv.exit.thread
  %i.be = icmp eq i32 %sext21, 704643072
  %i.bf = icmp eq i32 %sext27, 788529152
  %or.cond5 = and i1 %i.be, %i.bf
  %cond.fr = freeze i1 %or.cond5
  %i.bg = sext i1 %cond.fr to i32
  %spec.select = add nsw i32 %.018, %i.bg
  br label %.thread41

.thread41:                                        ; preds = %bb.k, %bb.h, %bb.i, %_ZL7yyinputv.exit.thread28, %bb.j
  %.1.i2438 = phi i32 [ %.1.i25, %bb.j ], [ %.1.i25, %bb.k ], [ 9, %bb.h ], [ 10, %_ZL7yyinputv.exit.thread28 ], [ 0, %bb.i ]
  %.1 = phi i32 [ %i.bd, %bb.j ], [ %spec.select, %bb.k ], [ %.018, %bb.h ], [ %.018, %_ZL7yyinputv.exit.thread28 ], [ %.018, %bb.i ] ; 2 uses
  %i.bh = icmp slt i32 %.1, 1
  br i1 %i.bh, label %bb.l, label %bb.b, !llvm.loop !71

bb.l:                                             ; preds = %.thread41
  %i.bi = load i32, ptr @pg_lineno, align 4, !tbaa !4
  %i.bj = sub nsw i32 %i.bi, %i.a
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116eat_line_commentEv() unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZL7yyinputv.exit, %bb.a
  %i.a = load i8, ptr @_ZL12yy_hold_char, align 1, !tbaa !26 ; 3 uses
  %i.b = load ptr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24 ; 7 uses
  store i8 %i.a, ptr %i.b, align 1, !tbaa !26
  %i.c = icmp eq i8 %i.a, 0
  %.pre9.i = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !13 ; 3 uses
  %.pre11.i = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !16 ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.pre9.i, i64 %.pre11.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = icmp ult ptr %i.b, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !tbaa !26
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @yytext_ptr, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.m, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24
  %i.n = tail call fastcc noundef i32 @_ZL18yy_get_next_bufferv()
  switch i32 %i.n, label %default.unreachable [
    i32 2, label %bb.f
    i32 1, label %_ZL7yyinputv.exit
    i32 0, label %.critedge.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @yyin, align 8, !tbaa !11
  tail call void @_Z9yyrestartP8_IO_FILE(ptr noundef %i.o)
  br label %_ZL7yyinputv.exit

.critedge.i:                                      ; preds = %bb.e
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load ptr, ptr @yytext_ptr, align 8, !tbaa !24
  %sext.i = shl i64 %i.r, 32
  %i.t = ashr exact i64 %sext.i, 32
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t ; 2 uses
  %.pre.i = load i8, ptr %i.u, align 1, !tbaa !26
  %.pre8.i = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !13
  %.pre10.i = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !16
  br label %bb.g

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.critedge.i, %bb.d, %bb.b
  %i.v = phi i64 [ %.pre10.i, %.critedge.i ], [ %.pre11.i, %bb.d ], [ %.pre11.i, %bb.b ]
  %i.w = phi ptr [ %.pre8.i, %.critedge.i ], [ %.pre9.i, %bb.d ], [ %.pre9.i, %bb.b ]
  %i.x = phi i8 [ %.pre.i, %.critedge.i ], [ 0, %bb.d ], [ %i.a, %bb.b ] ; 2 uses
  %i.y = phi ptr [ %i.u, %.critedge.i ], [ %i.b, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.z = zext i8 %i.x to i32
  store i8 0, ptr %i.y, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.aa, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  store i8 %i.ab, ptr @_ZL12yy_hold_char, align 1, !tbaa !26
  %i.ac = icmp eq i8 %i.x, 10                     ; 2 uses
  %i.ad = zext i1 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i32 %i.ad, ptr %i.ag, align 8, !tbaa !27
  br i1 %i.ac, label %_ZL7yyinputv.exit.thread, label %_ZL7yyinputv.exit

_ZL7yyinputv.exit.thread:                         ; preds = %bb.g
  %i.ah = load i32, ptr @yylineno, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr @yylineno, align 4, !tbaa !4
  br label %.loopexit

_ZL7yyinputv.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ -1, %bb.f ], [ -1, %bb.e ], [ %i.z, %bb.g ]
  %.not = icmp eq i32 %.1.i, 10
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !72

.loopexit:                                        ; preds = %_ZL7yyinputv.exit, %_ZL7yyinputv.exit.thread
  %i.aj = load i32, ptr @pg_lineno, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr @pg_lineno, align 4, !tbaa !4
  store i32 0, ptr @pg_column, align 4, !tbaa !4
  %i.al = load i32, ptr @pg_charpos, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @pg_charpos, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115reset_nestcountEv() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @_ZN12_GLOBAL__N_119cinit_paren_nestingE, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN2kc13PosNoFileLineEv()
  %i.c = tail call noundef ptr @_ZN2kc9Problem1SEPKc(ptr noundef nonnull @.str.29)
  %i.d = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.b, ptr noundef %i.c)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr @_ZN12_GLOBAL__N_119cinit_array_nestingE, align 4, !tbaa !4
  %.not1 = icmp eq i32 %i.e, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZN2kc13PosNoFileLineEv()
  %i.g = tail call noundef ptr @_ZN2kc9Problem1SEPKc(ptr noundef nonnull @.str.30)
  %i.h = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.f, ptr noundef %i.g)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr @_ZN12_GLOBAL__N_119cinit_paren_nestingE, align 4, !tbaa !4
  store i32 0, ptr @_ZN12_GLOBAL__N_119cinit_array_nestingE, align 4, !tbaa !4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !45
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

declare noundef ptr @_ZN2kc9Problem2SEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZL18yy_get_next_bufferv() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !13 ; 2 uses
  %i.b = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !16 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = load ptr, ptr @yytext_ptr, align 8, !tbaa !24 ; 6 uses
  %i.i = load ptr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !24 ; 2 uses
  %i.j = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = icmp ugt ptr %i.i, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.25)
  unreachable
end_hunk_0
