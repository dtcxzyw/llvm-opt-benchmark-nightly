inline.NumInlined: 252
inline.NumDeleted: 51
begin_hunk_0_@strscan_peek_byte:bb.a

; Function Attrs: nounwind uwtable
define internal i64 @strscan_scan_base10_integer(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %i.a, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.h, align 8, !tbaa !22
  %i.i = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 22
  %i.m = and i32 %i.l, 127                        ; 3 uses
  %i.n = load i32, ptr @utf8_encindex, align 4, !tbaa !6
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = load i32, ptr @binary_encindex, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @usascii_encindex, align 4
  %i.s = icmp eq i32 %i.m, %i.r
  %or.cond.i = select i1 %or.cond.i.i, i1 true, i1 %i.s, !prof !39
  br i1 %or.cond.i, label %strscan_must_ascii_compat.exit, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @rb_must_asciicompat(i64 noundef %i.c) #11
  %.pre = load i64, ptr %i.b, align 8, !tbaa !23
  %.phi.trans.insert = inttoptr i64 %.pre to ptr  ; 2 uses
  %.pre33 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %strscan_must_ascii_compat.exit

strscan_must_ascii_compat.exit:                   ; preds = %bb.c, %bb.d
  %.pre-phi = phi ptr [ %i.i, %bb.c ], [ %.phi.trans.insert, %bb.d ] ; 2 uses
  %i.t = phi i64 [ %i.j, %bb.c ], [ %.pre33, %bb.d ]
  %i.u = and i64 %i.t, 8192
  %.not.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %strscan_must_ascii_compat.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %strscan_must_ascii_compat.exit, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.v, %strscan_must_ascii_compat.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29   ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = sub nsw i64 %i.ac, %i.z                 ; 4 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ag = add i8 %i.af, -43
  %switch.and = and i8 %i.ag, -3
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.ah = zext i1 %switch.selectcmp to i64        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !33
  %i.ak = sext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -58
  %i.am = icmp ult i32 %i.al, -10
  br i1 %i.am, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.z, ptr %i.an, align 8, !tbaa !34
  %i.ao = icmp samesign ugt i64 %i.ad, %i.ah
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.130 = phi i64 [ %i.au, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.130
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !33
  %i.ar = sext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -58
  %i.at = icmp ult i32 %i.as, -10
  br i1 %i.at, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.au = add nuw nsw i64 %.130, 1                ; 2 uses
  %i.av = icmp slt i64 %i.au, %i.ad
  br i1 %i.av, label %.lr.ph, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.1.lcssa = phi i64 [ 1, %bb.g ], [ %i.ad, %bb.h ], [ %.130, %.lr.ph ]
  %i.aw = tail call fastcc i64 @strscan_parse_integer(ptr noundef nonnull %i.a, i32 noundef 10, i64 noundef %.1.lcssa)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %RSTRING_PTR.exit, %.critedge
  %.0 = phi i64 [ 4, %RSTRING_PTR.exit ], [ %i.aw, %.critedge ], [ 4, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @strscan_scan_base16_integer(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %i.a, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.h, align 8, !tbaa !22
  %i.i = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 22
  %i.m = and i32 %i.l, 127                        ; 3 uses
  %i.n = load i32, ptr @utf8_encindex, align 4, !tbaa !6
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = load i32, ptr @binary_encindex, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @usascii_encindex, align 4
  %i.s = icmp eq i32 %i.m, %i.r
  %or.cond.i = select i1 %or.cond.i.i, i1 true, i1 %i.s, !prof !39
  br i1 %or.cond.i, label %strscan_must_ascii_compat.exit, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @rb_must_asciicompat(i64 noundef %i.c) #11
  %.pre = load i64, ptr %i.b, align 8, !tbaa !23
  %.phi.trans.insert = inttoptr i64 %.pre to ptr  ; 2 uses
  %.pre67 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %strscan_must_ascii_compat.exit

strscan_must_ascii_compat.exit:                   ; preds = %bb.c, %bb.d
  %.pre-phi = phi ptr [ %i.i, %bb.c ], [ %.phi.trans.insert, %bb.d ] ; 2 uses
  %i.t = phi i64 [ %i.j, %bb.c ], [ %.pre67, %bb.d ]
  %i.u = and i64 %i.t, 8192
  %.not.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %strscan_must_ascii_compat.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %strscan_must_ascii_compat.exit, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.v, %strscan_must_ascii_compat.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29   ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = sub nsw i64 %i.ac, %i.z                 ; 6 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ag = add i8 %i.af, -43
  %switch.and = and i8 %i.ag, -3
  %switch.selectcmp = icmp eq i8 %switch.and, 0   ; 2 uses
  %i.ah = zext i1 %switch.selectcmp to i64        ; 6 uses
  %i.ai = select i1 %switch.selectcmp, i64 4, i64 3
  %.not = icmp samesign ult i64 %i.ad, %i.ai
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = icmp eq i8 %i.an, 120
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = or disjoint i64 %i.ah, 2                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %i.as = sext i8 %i.ar to i32
  %1 = insertelement <3 x i32> poison, i32 %i.as, i64 0
  %2 = shufflevector <3 x i32> %1, <3 x i32> poison, <3 x i32> zeroinitializer
  %.fr72 = freeze <3 x i32> %2
  %3 = add <3 x i32> %.fr72, <i32 -58, i32 -71, i32 -103>
  %4 = icmp ugt <3 x i32> %3, <i32 -11, i32 -7, i32 -7>
  %5 = bitcast <3 x i1> %4 to i3
  %6 = icmp eq i3 %5, 0
  %spec.select = select i1 %6, i64 %i.ah, i64 %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.1 = phi i64 [ %i.ah, %bb.f ], [ %spec.select, %bb.i ], [ %i.ah, %bb.h ], [ %i.ah, %bb.g ] ; 5 uses
  %.not41 = icmp samesign ult i64 %.1, %i.ad
  br i1 %.not41, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %.fr = freeze i8 %i.au                          ; 2 uses
  %i.av = sext i8 %.fr to i32
  %i.aw = add nsw i32 %i.av, -58
  %i.ax = icmp ult i32 %i.aw, -10
  br i1 %i.ax, label %switch.early.test, label %bb.l

switch.early.test:                                ; preds = %bb.k
  switch i8 %.fr, label %bb.n [
    i8 102, label %bb.l
    i8 101, label %bb.l
    i8 100, label %bb.l
    i8 99, label %bb.l
    i8 98, label %bb.l
    i8 97, label %bb.l
    i8 70, label %bb.l
    i8 69, label %bb.l
    i8 68, label %bb.l
    i8 67, label %bb.l
    i8 66, label %bb.l
    i8 65, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.z, ptr %i.ay, align 8, !tbaa !34
  %i.az = icmp samesign ult i64 %.1, %i.ad
  br i1 %i.az, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.261 = phi i64 [ %i.bf, %bb.m ], [ %.1, %bb.l ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aa, i64 %.261
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !33
  %.fr66 = freeze i8 %i.bb                        ; 2 uses
  %i.bc = sext i8 %.fr66 to i32
  %i.bd = add nsw i32 %i.bc, -58
  %i.be = icmp ult i32 %i.bd, -10
  br i1 %i.be, label %switch.early.test60, label %bb.m

switch.early.test60:                              ; preds = %.lr.ph
  switch i8 %.fr66, label %.critedge [
    i8 102, label %bb.m
    i8 101, label %bb.m
    i8 100, label %bb.m
    i8 99, label %bb.m
    i8 98, label %bb.m
    i8 97, label %bb.m
    i8 70, label %bb.m
    i8 69, label %bb.m
    i8 68, label %bb.m
    i8 67, label %bb.m
    i8 66, label %bb.m
    i8 65, label %bb.m
  ]

bb.m:                                             ; preds = %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %switch.early.test60, %.lr.ph
  %i.bf = add nsw i64 %.261, 1                    ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.ad
  br i1 %i.bg, label %.lr.ph, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %bb.m, %switch.early.test60, %bb.l
  %.2.lcssa = phi i64 [ %.1, %bb.l ], [ %.261, %switch.early.test60 ], [ %i.ad, %bb.m ]
  %i.bh = tail call fastcc i64 @strscan_parse_integer(ptr noundef nonnull %i.a, i32 noundef 16, i64 noundef %.2.lcssa)
  br label %bb.n

bb.n:                                             ; preds = %switch.early.test, %bb.j, %RSTRING_PTR.exit, %.critedge
  %.0 = phi i64 [ %i.bh, %.critedge ], [ 4, %RSTRING_PTR.exit ], [ 4, %switch.early.test ], [ 4, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @strscan_unscan(i64 noundef returned %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr @ScanError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.64) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = and i64 %i.f, -2
  store i64 %i.l, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.m, align 8, !tbaa !22
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @strscan_bol_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %RSTRING_PTR.exit10

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

RSTRING_PTR.exit10:                               ; preds = %bb.a
  %i.f = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit10
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %RSTRING_PTR.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !33
  br label %RSTRING_PTR.exit12

RSTRING_PTR.exit12:                               ; preds = %bb.d, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.k
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33
  %i.u = icmp eq i8 %i.t, 10
  %i.v = select i1 %i.u, i64 20, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %RSTRING_PTR.exit10, %RSTRING_PTR.exit12
  %.0 = phi i64 [ %i.v, %RSTRING_PTR.exit12 ], [ 4, %RSTRING_PTR.exit10 ], [ 20, %bb.c ]
  ret i64 %.0
}

declare void @rb_alias(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @strscan_eos_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.61) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %.not = icmp slt i64 %i.g, %i.j
  %i.k = select i1 %.not, i64 0, i64 20
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @strscan_rest_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @strscanner_type) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
