inline.NumInlined: 10290
inline.NumDeleted: 2685
begin_hunk_0_@_ZN2v88internal6Parser23ReportUnexpectedTokenAtENS0_7Scanner8LocationENS0_5Token5ValueENS0_15MessageTemplateE:bb.a
  store ptr %i.o, ptr %i.a, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 548
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 552
  %.sroa.07.0.copyload = load i64, ptr %i.t, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.u = zext i8 %2 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal5Token7string_E, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.a, %bb.j, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %3, %bb.l ], [ 416, %bb.k ], [ 414, %bb.b ], [ 415, %bb.c ], [ 406, %bb.e ], [ %i.l, %bb.f ], [ 410, %bb.g ], [ 311, %bb.h ], [ %i.s, %bb.j ], [ 404, %bb.a ], [ 322, %bb.i ]
  %.sroa.07.0 = phi i64 [ %1, %bb.l ], [ %1, %bb.k ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ], [ %1, %bb.h ], [ %.sroa.07.0.copyload, %bb.j ], [ %1, %bb.a ], [ %1, %bb.i ]
  call void @_ZN2v88internal10ParserBaseINS0_6ParserEE15ReportMessageAtIJPKcEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(390) %0, i64 %.sroa.07.0, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ParserBaseINS0_6ParserEE15ReportMessageAtIJPKNS0_12AstRawStringEEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(390) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %3, align 8
  tail call void @_ZN2v88internal30PendingCompilationErrorHandler15ReportMessageAtEiiNS0_15MessageTemplateEPKNS0_12AstRawStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.2.0.extract.trunc, i32 noundef %2, ptr noundef %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store i8 1, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %.not10.i = icmp eq i8 %i.q, 118
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 115, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %.not10.i.1 = icmp eq i8 %i.s, 118
  br i1 %.not10.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 115, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %.not10.i.2 = icmp eq i8 %i.u, 118
  br i1 %.not10.i.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 115, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %.not10.i.3 = icmp eq i8 %i.w, 118
  br i1 %.not10.i.3, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 115, ptr %i.v, align 8
  br label %_ZN2v88internal7Scanner16set_parser_errorEv.exit

_ZN2v88internal7Scanner16set_parser_errorEv.exit: ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ParserBaseINS0_6ParserEE15ReportMessageAtIJPKcEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(390) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %3, align 8
  tail call void @_ZN2v88internal30PendingCompilationErrorHandler15ReportMessageAtEiiNS0_15MessageTemplateEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.2.0.extract.trunc, i32 noundef %2, ptr noundef %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store i8 1, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %.not10.i = icmp eq i8 %i.q, 118
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 115, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %.not10.i.1 = icmp eq i8 %i.s, 118
  br i1 %.not10.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 115, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %.not10.i.2 = icmp eq i8 %i.u, 118
  br i1 %.not10.i.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 115, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %.not10.i.3 = icmp eq i8 %i.w, 118
  br i1 %.not10.i.3, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 115, ptr %i.v, align 8
  br label %_ZN2v88internal7Scanner16set_parser_errorEv.exit

_ZN2v88internal7Scanner16set_parser_errorEv.exit: ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6Parser31ShortcutLiteralBinaryExpressionEPPNS0_10ExpressionES3_NS0_5Token5ValueEi(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef captures(none) %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call noundef zeroext i1 @_ZNK2v88internal10Expression15IsNumberLiteralEv(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #19
  br i1 %i.b, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK2v88internal10Expression15IsNumberLiteralEv(ptr noundef nonnull align 4 dereferenceable(8) %2) #19
  br i1 %i.c, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %5 = lshr i32 %i.f, 7
  %i.g = and i32 %5, 15
  switch i32 %i.g, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sitofp i32 %i.i to double
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load double, ptr %i.k, align 8
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNK2v88internal7Literal8AsNumberEv.exit:         ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.l, %bb.e ] ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %6 = lshr i32 %i.n, 7
  %i.o = and i32 %6, 15
  switch i32 %i.o, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sitofp i32 %i.q to double
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit69

bb.h:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load double, ptr %i.s, align 8
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit69

bb.i:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNK2v88internal7Literal8AsNumberEv.exit69:       ; preds = %bb.g, %bb.h
  %.0.i68 = phi double [ %i.r, %bb.g ], [ %i.t, %bb.h ] ; 14 uses
  switch i8 %3, label %.thread73 [
    i8 47, label %bb.j
    i8 48, label %bb.k
    i8 43, label %bb.l
    i8 44, label %bb.m
    i8 45, label %bb.r
    i8 37, label %bb.s
    i8 39, label %bb.t
    i8 38, label %bb.u
    i8 40, label %bb.v
    i8 42, label %bb.w
    i8 41, label %bb.x
    i8 46, label %bb.aa
  ]

bb.j:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = fadd double %.0.i, %.0.i68
  %i.w = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.u, double noundef %i.v, i32 noundef %4) #19
  store ptr %i.w, ptr %1, align 8
  br label %.thread

bb.k:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = fsub double %.0.i, %.0.i68
  %i.z = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.x, double noundef %i.y, i32 noundef %4) #19
  store ptr %i.z, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = fmul double %.0.i, %.0.i68
  %i.ac = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, double noundef %i.ab, i32 noundef %4) #19
  store ptr %i.ac, ptr %1, align 8
  br label %.thread

bb.m:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = fcmp une double %.0.i68, 0.000000e+00
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = fdiv double %.0.i, %.0.i68
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit

bb.o:                                             ; preds = %bb.m
  %or.cond.i = fcmp ueq double %.0.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v84base6DivideIdEET_S2_S2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = bitcast double %.0.i68 to i64
  %i.ah = icmp slt i64 %i.ag, 0
  %i.ai = fcmp oge double %.0.i, 0.000000e+00
  %i.aj = xor i1 %i.ai, %i.ah
  br i1 %i.aj, label %_ZN2v84base6DivideIdEET_S2_S2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit

_ZN2v84base6DivideIdEET_S2_S2_.exit:              ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i70 = phi double [ %i.af, %bb.n ], [ -inf, %bb.q ], [ +qnan, %bb.o ], [ +inf, %bb.p ]
  %i.ak = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, double noundef %.0.i70, i32 noundef %4) #19
  store ptr %i.ak, ptr %1, align 8
  br label %.thread

bb.r:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = tail call noundef double @fmod(double noundef %.0.i, double noundef %.0.i68) #19
  %i.an = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.al, double noundef %i.am, i32 noundef %4) #19
  store ptr %i.an, ptr %1, align 8
  br label %.thread

bb.s:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.ao = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i)
  %i.ap = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.aq = or i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.as = sitofp i32 %i.aq to double
  %i.at = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, double noundef %i.as, i32 noundef %4) #19
  store ptr %i.at, ptr %1, align 8
  br label %.thread

bb.t:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.au = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i)
  %i.av = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.aw = and i32 %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ay = sitofp i32 %i.aw to double
  %i.az = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, double noundef %i.ay, i32 noundef %4) #19
  store ptr %i.az, ptr %1, align 8
  br label %.thread

bb.u:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.ba = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i)
  %i.bb = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.bc = xor i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.be = sitofp i32 %i.bc to double
  %i.bf = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, double noundef %i.be, i32 noundef %4) #19
  store ptr %i.bf, ptr %1, align 8
  br label %.thread

bb.v:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.bg = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i)
  %i.bh = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl i32 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bl = sitofp i32 %i.bj to double
  %i.bm = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, double noundef %i.bl, i32 noundef %4) #19
  store ptr %i.bm, ptr %1, align 8
  br label %.thread

bb.w:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.bn = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.bo = and i32 %i.bn, 31
  %i.bp = tail call noundef i32 @_ZN2v88internal14DoubleToUint32Ed(double noundef %.0.i)
  %i.bq = lshr i32 %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bs = uitofp i32 %i.bq to double
  %i.bt = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.br, double noundef %i.bs, i32 noundef %4) #19
  store ptr %i.bt, ptr %1, align 8
  br label %.thread

bb.x:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.bu = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i68)
  %i.bv = and i32 %i.bu, 31                       ; 3 uses
  %i.bw = tail call noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %.0.i) ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = lshr i32 -1, %i.bv
  %i.bz = xor i32 %i.by, -1
  %i.ca = lshr i32 %i.bw, %i.bv
  %i.cb = or i32 %i.ca, %i.bz
  br label %_ZN2v88internalL20ArithmeticShiftRightIiEET_S2_i.exit

bb.z:                                             ; preds = %bb.x
  %i.cc = lshr i32 %i.bw, %i.bv
  br label %_ZN2v88internalL20ArithmeticShiftRightIiEET_S2_i.exit

_ZN2v88internalL20ArithmeticShiftRightIiEET_S2_i.exit: ; preds = %bb.y, %bb.z
  %.0.i71 = phi i32 [ %i.cb, %bb.y ], [ %i.cc, %bb.z ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ce = sitofp i32 %.0.i71 to double
  %i.cf = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, double noundef %i.ce, i32 noundef %4) #19
  store ptr %i.cf, ptr %1, align 8
  br label %.thread

bb.aa:                                            ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ch = tail call noundef double @_ZN2v88internal4math3powEdd(double noundef %.0.i, double noundef %.0.i68) #19
  %i.ci = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, double noundef %i.ch, i32 noundef %4) #19
  store ptr %i.ci, ptr %1, align 8
  br label %.thread

bb.ab:                                            ; preds = %bb.b, %bb.a
  %i.cj = icmp eq i8 %3, 47
  br i1 %i.cj, label %bb.ac, label %.thread73

bb.ac:                                            ; preds = %bb.ab
  %i.ck = tail call noundef zeroext i1 @_ZN2v88internal6Parser37ShortcutStringLiteralAppendExpressionEPPNS0_10ExpressionES3_(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef nonnull %1, ptr noundef %2)
  br i1 %i.ck, label %.thread, label %.thread73

.thread73:                                        ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit69, %bb.ac, %bb.ab
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internalL20ArithmeticShiftRightIiEET_S2_i.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN2v84base6DivideIdEET_S2_S2_.exit, %bb.l, %bb.k, %bb.j, %bb.aa, %bb.ac, %.thread73
  %.1 = phi i1 [ true, %bb.ac ], [ false, %.thread73 ], [ true, %bb.aa ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %_ZN2v84base6DivideIdEET_S2_S2_.exit ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %_ZN2v88internalL20ArithmeticShiftRightIiEET_S2_i.exit ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK2v88internal10Expression15IsNumberLiteralEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40), double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal13DoubleToInt32Ed(double noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
end_hunk_0
begin_hunk_1_@_ZN2v88internal6Parser22CollapseNaryExpressionEPPNS0_10ExpressionES3_NS0_5Token5ValueEiRKNS0_11SourceRangeE:bb.a
bb.p:                                             ; preds = %_ZN2v88internal13NaryOperation13AddSubsequentEPNS0_10ExpressionEi.exit42, %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %.135, i64 4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, -65
  store i32 %i.du, ptr %i.ds, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.not10.i.i.i.i43 = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i.i43, label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, label %.lr.ph.i.i.i.i44

.lr.ph.i.i.i.i44:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i44
  %.012.i.i.i.i45 = phi ptr [ %.1.i.i.i.i50, %.lr.ph.i.i.i.i44 ], [ %i.dz, %bb.q ] ; 3 uses
  %.0811.i.i.i.i46 = phi ptr [ %.19.i.i.i.i47, %.lr.ph.i.i.i.i44 ], [ %i.ea, %bb.q ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i45, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = icmp ult ptr %i.ec, %.135               ; 2 uses
  %.19.i.i.i.i47 = select i1 %i.ed, ptr %.0811.i.i.i.i46, ptr %.012.i.i.i.i45 ; 4 uses
  %.1.in.v.i.i.i.i48 = select i1 %i.ed, i64 24, i64 16
  %.1.in.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i45, i64 %.1.in.v.i.i.i.i48
  %.1.i.i.i.i50 = load ptr, ptr %.1.in.i.i.i.i49, align 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %.1.i.i.i.i50, null
  br i1 %.not.i.i.i.i51, label %_ZNSt8_Rb_treeIPN2v88internal10ZoneObjectESt4pairIKS3_PNS1_19AstNodeSourceRangesEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i52, label %.lr.ph.i.i.i.i44, !llvm.loop !19

_ZNSt8_Rb_treeIPN2v88internal10ZoneObjectESt4pairIKS3_PNS1_19AstNodeSourceRangesEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i52: ; preds = %.lr.ph.i.i.i.i44
  %i.ee = icmp eq ptr %.19.i.i.i.i47, %i.ea
  br i1 %i.ee, label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, label %_ZNSt3mapIPN2v88internal10ZoneObjectEPNS1_19AstNodeSourceRangesESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i53

_ZNSt3mapIPN2v88internal10ZoneObjectEPNS1_19AstNodeSourceRangesESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i53: ; preds = %_ZNSt8_Rb_treeIPN2v88internal10ZoneObjectESt4pairIKS3_PNS1_19AstNodeSourceRangesEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i52
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i47, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = icmp ult ptr %.135, %i.eg
  br i1 %i.eh, label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, label %_ZN2v88internal14SourceRangeMap4FindEPNS0_10ZoneObjectE.exit55

_ZN2v88internal14SourceRangeMap4FindEPNS0_10ZoneObjectE.exit55: ; preds = %_ZNSt3mapIPN2v88internal10ZoneObjectEPNS1_19AstNodeSourceRangesESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i53
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i47, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8            ; 5 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal14SourceRangeMap4FindEPNS0_10ZoneObjectE.exit55
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = icmp ult ptr %i.em, %i.eo
  br i1 %i.ep, label %_ZN2v88internal25NaryOperationSourceRanges8AddRangeERKNS0_11SourceRangeE.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 3
  %i.ex = add nsw i64 %i.ew, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_11SourceRangeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 noundef %i.ex)
  %.pre.i.i56 = load ptr, ptr %i.el, align 8
  br label %_ZN2v88internal25NaryOperationSourceRanges8AddRangeERKNS0_11SourceRangeE.exit

_ZN2v88internal25NaryOperationSourceRanges8AddRangeERKNS0_11SourceRangeE.exit: ; preds = %bb.r, %bb.s
  %i.ey = phi ptr [ %i.em, %bb.r ], [ %.pre.i.i56, %bb.s ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ez, ptr %i.el, align 8
  %i.fa = load i64, ptr %5, align 4
  store i64 %i.fa, ptr %i.ey, align 4
  br label %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit

_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit: ; preds = %_ZNSt8_Rb_treeIPN2v88internal10ZoneObjectESt4pairIKS3_PNS1_19AstNodeSourceRangesEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i52, %bb.q, %_ZNSt3mapIPN2v88internal10ZoneObjectEPNS1_19AstNodeSourceRangesESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i53, %bb.p, %_ZN2v88internal14SourceRangeMap4FindEPNS0_10ZoneObjectE.exit55, %_ZN2v88internal25NaryOperationSourceRanges8AddRangeERKNS0_11SourceRangeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit, %bb.j, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %_ZN2v88internal6Parser30AppendNaryOperationSourceRangeEPNS0_13NaryOperationERKNS0_11SourceRangeE.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Parser17GetBigIntAsSymbolEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1852) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.48", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %i.h, -1
  br i1 %i.k, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #20
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.b
  %i.l = icmp eq i32 %i.h, 1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr nonnull %i.f, i64 %i.i) #19
  br label %bb.f

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.q = load ptr, ptr %i.p, align 8
  call void @_ZN2v88internal22BigIntLiteralToDecimalEPNS0_12LocalIsolateENS_4base6VectorIKhEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %1, ptr noundef %i.q, ptr nonnull %i.f, i64 %i.i) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #23
  %i.v = call noundef ptr @_ZN2v88internal15AstValueFactory24GetOneByteStringInternalENS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr nonnull %i.t, i64 %i.u) #19
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.w) #22
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.d
  %.0 = phi ptr [ %i.o, %bb.d ], [ %i.v, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  ret ptr %.0
}

declare void @_ZN2v88internal22BigIntLiteralToDecimalEPNS0_12LocalIsolateENS_4base6VectorIKhEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.48") align 8, ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Parser20BuildUnaryExpressionEPNS0_10ExpressionENS0_5Token5ValueEi(ptr noundef nonnull align 8 dereferenceable(1852) %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 63
  %i.d = icmp ne i32 %i.c, 45
  %.not25 = icmp eq ptr %1, null
  %.not = or i1 %.not25, %i.d
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %2, 49
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = tail call noundef zeroext i1 @_ZNK2v88internal7Literal15ToBooleanIsTrueEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %i.h = xor i1 %i.g, true
  %i.i = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.d, label %_ZN2v88internal14AstNodeFactory17NewBooleanLiteralEbi.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 16) #19
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  br label %_ZN2v88internal14AstNodeFactory17NewBooleanLiteralEbi.exit

_ZN2v88internal14AstNodeFactory17NewBooleanLiteralEbi.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = zext i1 %i.h to i8
  %i.r = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.s = add i64 %i.p, 16
  store i64 %i.s, ptr %i.l, align 8
  store i32 %3, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 %i.q, ptr %i.u, align 8
  store i32 685, ptr %i.t, align 4
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef zeroext i1 @_ZNK2v88internal10Expression15IsNumberLiteralEv(ptr noundef nonnull align 4 dereferenceable(8) %1) #19
  br i1 %i.v, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 4
  %4 = lshr i32 %i.w, 7
  %i.x = and i32 %4, 15
  switch i32 %i.x, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = sitofp i32 %i.z to double
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8
  br label %_ZNK2v88internal7Literal8AsNumberEv.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNK2v88internal7Literal8AsNumberEv.exit:         ; preds = %bb.g, %bb.h
  %.0.i = phi double [ %i.aa, %bb.g ], [ %i.ac, %bb.h ] ; 6 uses
  switch i8 %2, label %bb.s [
    i8 47, label %.thread
    i8 48, label %bb.j
    i8 50, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = fneg double %.0.i
  %i.af = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, double noundef %i.ae, i32 noundef %3) #19
  br label %.thread

bb.k:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = tail call double @llvm.fabs.f64(double %.0.i)
  %i.ai = fcmp one double %i.ah, +inf
  %i.aj = fcmp ole double %.0.i, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.aj, %i.ai
  %i.ak = fcmp oge double %.0.i, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.ak, %or.cond.i
  br i1 %or.cond3.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = fptosi double %.0.i to i32
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

bb.m:                                             ; preds = %bb.k
  %i.am = bitcast double %.0.i to i64             ; 5 uses
  %i.an = and i64 %i.am, 9218868437227405312
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %i.ap = lshr i64 %i.am, 52
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 2047
  %i.as = add nsw i32 %i.ar, -1075
  %.0.i.i = select i1 %i.ao, i32 -1074, i32 %i.as ; 5 uses
  %i.at = icmp slt i32 %.0.i.i, 0
  br i1 %i.at, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = icmp samesign ult i32 %.0.i.i, -52
  br i1 %i.au, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = and i64 %i.am, 4503599627370495         ; 2 uses
  %i.aw = or disjoint i64 %i.av, 4503599627370496
  %.0.i17.i = select i1 %i.ao, i64 %i.av, i64 %i.aw
  %i.ax = sub nsw i32 0, %.0.i.i
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %.0.i17.i, %i.ay
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ba = icmp samesign ugt i32 %.0.i.i, 31
  br i1 %i.ba, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = zext nneg i32 %.0.i.i to i64
  %i.bc = shl i64 %i.am, %i.bb
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.0.i21 = phi i64 [ %i.az, %bb.o ], [ %i.bc, %bb.q ]
  %i.bd = trunc i64 %.0.i21 to i32                ; 2 uses
  %i.be = sub i32 0, %i.bd
  %i.bf = icmp slt i64 %i.am, 0
  %i.bg = select i1 %i.bf, i32 %i.be, i32 %i.bd
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

_ZN2v88internal13DoubleToInt32Ed.exit:            ; preds = %bb.l, %bb.n, %bb.p, %bb.r
  %.1.i = phi i32 [ %i.al, %bb.l ], [ 0, %bb.n ], [ %i.bg, %bb.r ], [ 0, %bb.p ]
  %i.bh = xor i32 %.1.i, -1
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = tail call noundef ptr @_ZN2v88internal14AstNodeFactory16NewNumberLiteralEdi(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, double noundef %i.bi, i32 noundef %3) #19
  br label %.thread

bb.s:                                             ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit, %bb.e, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ult i64 %i.bq, 16
  br i1 %i.br, label %bb.t, label %_ZN2v88internal14AstNodeFactory17NewUnaryOperationENS0_5Token5ValueEPNS0_10ExpressionEi.exit, !prof !5

bb.t:                                             ; preds = %bb.s
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef 16) #19
  %.pre.i.i.i22 = load i64, ptr %i.bo, align 8
  br label %_ZN2v88internal14AstNodeFactory17NewUnaryOperationENS0_5Token5ValueEPNS0_10ExpressionEi.exit

_ZN2v88internal14AstNodeFactory17NewUnaryOperationENS0_5Token5ValueEPNS0_10ExpressionEi.exit: ; preds = %bb.s, %bb.t
  %i.bs = phi i64 [ %.pre.i.i.i22, %bb.t ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = add i64 %i.bs, 16
  store i64 %i.bu, ptr %i.bo, align 8
  store i32 %3, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %1, ptr %i.bw, align 8
  %i.bx = zext i8 %2 to i32
  %i.by = shl nuw nsw i32 %i.bx, 7
  %i.bz = or disjoint i32 %i.by, 55
  store i32 %i.bz, ptr %i.bv, align 4
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal7Literal8AsNumberEv.exit, %bb.j, %_ZN2v88internal13DoubleToInt32Ed.exit, %_ZN2v88internal14AstNodeFactory17NewUnaryOperationENS0_5Token5ValueEPNS0_10ExpressionEi.exit, %_ZN2v88internal14AstNodeFactory17NewBooleanLiteralEbi.exit
  %.1 = phi ptr [ %i.r, %_ZN2v88internal14AstNodeFactory17NewBooleanLiteralEbi.exit ], [ %i.bt, %_ZN2v88internal14AstNodeFactory17NewUnaryOperationENS0_5Token5ValueEPNS0_10ExpressionEi.exit ], [ %1, %_ZNK2v88internal7Literal8AsNumberEv.exit ], [ %i.af, %bb.j ], [ %i.bj, %_ZN2v88internal13DoubleToInt32Ed.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6Parser13NewThrowErrorENS0_7Runtime10FunctionIdENS0_15MessageTemplateEPKNS0_12AstRawStringEi(ptr noundef nonnull align 8 dereferenceable(1852) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::ScopedList.56", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 3 uses
  store i64 %i.k, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = sub i64 %i.p, %i.r
  %i.t = icmp ult i64 %i.s, 16
  br i1 %i.t, label %bb.b, label %_ZN2v88internal14AstNodeFactory13NewSmiLiteralEii.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef 16) #19
  %.pre.i.i.i = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal14AstNodeFactory13NewSmiLiteralEii.exit

_ZN2v88internal14AstNodeFactory13NewSmiLiteralEii.exit: ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 5 uses
  %i.w = add i64 %i.u, 16
  store i64 %i.w, ptr %i.q, align 8
  store i32 %4, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %2, ptr %i.y, align 8
  store i32 45, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14AstNodeFactory13NewSmiLiteralEii.exit
  store ptr %i.v, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.z, align 8
  br label %_ZN2v88internal10ScopedListIPNS0_10ExpressionEPvE3AddERKS3_.exit

bb.d:                                             ; preds = %_ZN2v88internal14AstNodeFactory13NewSmiLiteralEii.exit
  %i.af = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #20
  unreachable
end_hunk_1
