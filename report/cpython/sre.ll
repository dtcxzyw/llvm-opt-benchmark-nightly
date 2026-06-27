inline.NumInlined: 358
inline.NumDeleted: 87
begin_hunk_0_@sre_category:bb.a
    i32 12, label %bb.x
    i32 13, label %bb.aa
    i32 14, label %bb.ad
    i32 15, label %bb.ah
    i32 16, label %bb.al
    i32 17, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 58
  br i1 %i.a, label %bb.c, label %Py_UNICODE_ISSPACE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = lshr i32 %i.d, 2
  %.lobit49 = and i32 %i.e, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %1, 58
  br i1 %i.f, label %bb.e, label %Py_UNICODE_ISSPACE.exit

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = lshr i32 %i.i, 2
  %.lobit48 = and i32 %i.j, 1
  %i.k = xor i32 %.lobit48, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %1, 33
  br i1 %i.l, label %bb.g, label %Py_UNICODE_ISSPACE.exit

bb.g:                                             ; preds = %bb.f
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = lshr i32 %i.o, 3
  %.lobit47 = and i32 %i.p, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %1, 33
  br i1 %i.q, label %bb.i, label %Py_UNICODE_ISSPACE.exit

bb.i:                                             ; preds = %bb.h
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = lshr i32 %i.t, 3
  %.lobit = and i32 %i.u, 1
  %i.v = xor i32 %.lobit, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.j:                                             ; preds = %bb.a
  %i.w = icmp ult i32 %1, 123
  br i1 %i.w, label %bb.k, label %Py_UNICODE_ISSPACE.exit

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = and i32 %i.z, 7
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp eq i32 %1, 95
  %i.ad = or i1 %i.ac, %i.ab
  %i.ae = zext i1 %i.ad to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.l:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %1, 123
  br i1 %i.af, label %bb.m, label %Py_UNICODE_ISSPACE.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = and i32 %i.ai, 7
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp ne i32 %1, 95
  %.not46 = and i1 %i.al, %i.ak
  %i.am = zext i1 %.not46 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.n:                                             ; preds = %bb.a
  %i.an = icmp eq i32 %1, 10
  %i.ao = zext i1 %i.an to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.o:                                             ; preds = %bb.a
  %i.ap = icmp ne i32 %1, 10
  %i.aq = zext i1 %i.ap to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.p:                                             ; preds = %bb.a
  %.not42 = icmp ult i32 %1, 256
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call ptr @__ctype_b_loc() #14
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.at = zext nneg i32 %1 to i64
  %i.au = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !131
  %i.aw = and i16 %i.av, 8
  %.not43 = icmp eq i16 %i.aw, 0
  br i1 %.not43, label %bb.r, label %Py_UNICODE_ISSPACE.exit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ax = icmp eq i32 %1, 95
  %i.ay = zext i1 %i.ax to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.s:                                             ; preds = %bb.a
  %.not40 = icmp ult i32 %1, 256
  br i1 %.not40, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = tail call ptr @__ctype_b_loc() #14
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !129
  %i.bb = zext nneg i32 %1 to i64
  %i.bc = getelementptr [2 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !131
  %i.be = and i16 %i.bd, 8
  %.not41 = icmp eq i16 %i.be, 0
  br i1 %.not41, label %bb.u, label %Py_UNICODE_ISSPACE.exit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bf = icmp ne i32 %1, 95
  %i.bg = zext i1 %i.bf to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.v:                                             ; preds = %bb.a
  %i.bh = tail call i32 @_PyUnicode_IsDecimalDigit(i32 noundef %1) #13
  br label %Py_UNICODE_ISSPACE.exit

bb.w:                                             ; preds = %bb.a
  %i.bi = tail call i32 @_PyUnicode_IsDecimalDigit(i32 noundef %1) #13
  %.not39 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not39 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.x:                                             ; preds = %bb.a
  %i.bk = icmp ult i32 %1, 128
  br i1 %i.bk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = zext nneg i32 %1 to i64
  %i.bm = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !26
  %i.bo = zext i8 %i.bn to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.z:                                             ; preds = %bb.x
  %i.bp = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %1) #13
  br label %Py_UNICODE_ISSPACE.exit

bb.aa:                                            ; preds = %bb.a
  %i.bq = icmp ult i32 %1, 128
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.br = zext nneg i32 %1 to i64
  %i.bs = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.bu = zext i8 %i.bt to i32
  br label %Py_UNICODE_ISSPACE.exit51

bb.ac:                                            ; preds = %bb.aa
  %i.bv = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %1) #13
  br label %Py_UNICODE_ISSPACE.exit51

Py_UNICODE_ISSPACE.exit51:                        ; preds = %bb.ab, %bb.ac
  %.0.i50 = phi i32 [ %i.bu, %bb.ab ], [ %i.bv, %bb.ac ]
  %.not38 = icmp eq i32 %.0.i50, 0
  %i.bw = zext i1 %.not38 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.ad:                                            ; preds = %bb.a
  %i.bx = tail call i32 @_PyUnicode_IsAlpha(i32 noundef %1) #13
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %bb.ae, label %Py_UNICODE_ISALNUM.exit

bb.ae:                                            ; preds = %bb.ad
  %i.by = tail call i32 @_PyUnicode_IsDecimalDigit(i32 noundef %1) #13
  %.not4.i = icmp eq i32 %i.by, 0
  br i1 %.not4.i, label %bb.af, label %Py_UNICODE_ISALNUM.exit

bb.af:                                            ; preds = %bb.ae
  %i.bz = tail call i32 @_PyUnicode_IsDigit(i32 noundef %1) #13
  %.not5.i = icmp eq i32 %i.bz, 0
  br i1 %.not5.i, label %bb.ag, label %Py_UNICODE_ISALNUM.exit

bb.ag:                                            ; preds = %bb.af
  %i.ca = tail call i32 @_PyUnicode_IsNumeric(i32 noundef %1) #13
  %i.cb = icmp ne i32 %i.ca, 0
  br label %Py_UNICODE_ISALNUM.exit

Py_UNICODE_ISALNUM.exit:                          ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  %2 = phi i1 [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ %i.cb, %bb.ag ]
  %i.cc = icmp eq i32 %1, 95
  %3 = or i1 %i.cc, %2
  %4 = zext i1 %3 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.ah:                                            ; preds = %bb.a
  %i.cd = tail call i32 @_PyUnicode_IsAlpha(i32 noundef %1) #13
  %.not.i52 = icmp eq i32 %i.cd, 0
  br i1 %.not.i52, label %bb.ai, label %Py_UNICODE_ISALNUM.exit55

bb.ai:                                            ; preds = %bb.ah
  %i.ce = tail call i32 @_PyUnicode_IsDecimalDigit(i32 noundef %1) #13
  %.not4.i53 = icmp eq i32 %i.ce, 0
  br i1 %.not4.i53, label %bb.aj, label %Py_UNICODE_ISALNUM.exit55

bb.aj:                                            ; preds = %bb.ai
  %i.cf = tail call i32 @_PyUnicode_IsDigit(i32 noundef %1) #13
  %.not5.i54 = icmp eq i32 %i.cf, 0
  br i1 %.not5.i54, label %bb.ak, label %Py_UNICODE_ISALNUM.exit55

bb.ak:                                            ; preds = %bb.aj
  %i.cg = tail call i32 @_PyUnicode_IsNumeric(i32 noundef %1) #13
  %.not56 = icmp eq i32 %i.cg, 0
  br label %Py_UNICODE_ISALNUM.exit55

Py_UNICODE_ISALNUM.exit55:                        ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.ch = phi i1 [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %.not56, %bb.ak ]
  %5 = icmp ne i32 %1, 95
  %.not37 = and i1 %5, %i.ch
  %i.ci = zext i1 %.not37 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.al:                                            ; preds = %bb.a
  %i.cj = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %1) #13
  br label %Py_UNICODE_ISSPACE.exit

bb.am:                                            ; preds = %bb.a
  %i.ck = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %1) #13
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = zext i1 %.not to i32
  br label %Py_UNICODE_ISSPACE.exit

Py_UNICODE_ISSPACE.exit:                          ; preds = %bb.z, %bb.y, %bb.a, %bb.t, %bb.u, %bb.q, %bb.r, %bb.l, %bb.m, %bb.j, %bb.k, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.am, %bb.al, %Py_UNICODE_ISALNUM.exit55, %Py_UNICODE_ISALNUM.exit, %Py_UNICODE_ISSPACE.exit51, %bb.w, %bb.v, %bb.o, %bb.n
  %.0 = phi i32 [ 0, %bb.t ], [ %i.cl, %bb.am ], [ %.lobit49, %bb.c ], [ %i.k, %bb.e ], [ %.lobit47, %bb.g ], [ %i.v, %bb.i ], [ %i.ae, %bb.k ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ], [ %i.am, %bb.m ], [ 1, %bb.q ], [ %i.bh, %bb.v ], [ %i.bj, %bb.w ], [ 0, %bb.a ], [ %i.bw, %Py_UNICODE_ISSPACE.exit51 ], [ %4, %Py_UNICODE_ISALNUM.exit ], [ %i.ci, %Py_UNICODE_ISALNUM.exit55 ], [ %i.cj, %bb.al ], [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ 1, %bb.l ], [ %i.ay, %bb.r ], [ %i.bg, %bb.u ], [ %i.bo, %bb.y ], [ %i.bp, %bb.z ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sre_ucs1_charset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  %i.b = lshr i32 %1, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = and i32 %1, 224
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i32 %1, 31
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = icmp ult i32 %1, 256
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  br i1 %i.a, label %.split.us.outer, label %.split.split.outer

.split.us.outer:                                  ; preds = %bb.a, %bb.c
  %.058.us.ph = phi i32 [ %i.aa, %bb.c ], [ 1, %bb.a ] ; 9 uses
  %.052.us.ph = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.backedge, %.split.us.outer
  %.052.us = phi ptr [ %.052.us.ph, %.split.us.outer ], [ %.052.us.be, %.split.us.backedge ] ; 12 uses
  %i.k = getelementptr i8, ptr %.052.us, i64 4    ; 8 uses
  %i.l = load i32, ptr %.052.us, align 4, !tbaa !7
  switch i32 %i.l, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.q
    i32 8, label %bb.o
    i32 9, label %bb.l
    i32 22, label %bb.i
    i32 42, label %bb.d
    i32 21, label %bb.c
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = getelementptr i8, ptr %.052.us, i64 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.052.us, i64 264  ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.r, %i.e
  %i.t = lshr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = and i32 %i.v, %i.g
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.thread7.us, label %.thread

.thread7.us:                                      ; preds = %bb.b
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7
  %i.y = zext i32 %i.x to i64
  %.idx.us = shl nuw nsw i64 %i.y, 5
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx.us
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.aa = xor i32 %.058.us.ph, 1
  br label %.split.us.outer

bb.d:                                             ; preds = %.split.us
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !7
  %.not66.us = icmp ugt i32 %i.ab, %1
  br i1 %.not66.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.052.us, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %.not67.us = icmp ugt i32 %1, %i.ad
  br i1 %.not67.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !7
  %.not68.us = icmp ugt i32 %i.af, %i.ae
  br i1 %.not68.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.052.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %.not69.us = icmp ugt i32 %i.ae, %i.ah
  br i1 %.not69.us, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr i8, ptr %.052.us, i64 12
  br label %.split.us.backedge

bb.i:                                             ; preds = %.split.us
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !7
  %.not70.us = icmp ugt i32 %i.aj, %1
  br i1 %.not70.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.052.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.052.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.052.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !7
  %i.as = tail call fastcc i32 @sre_category(i32 noundef %i.ar, i32 noundef %1)
  %.not73.us = icmp eq i32 %i.as, 0
  br i1 %.not73.us, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.052.us, i64 8
  br label %.split.us.backedge

bb.q:                                             ; preds = %.split.us
  %i.au = load i32, ptr %i.k, align 4, !tbaa !7
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.052.us, i64 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %.thread7.us
  %.052.us.be = phi ptr [ %i.z, %.thread7.us ], [ %i.aw, %bb.r ], [ %i.at, %bb.p ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ], [ %i.ai, %bb.h ]
  br label %.split.us

.split.split:                                     ; preds = %.split.split.backedge, %.split.split.outer
  %.052 = phi ptr [ %.052.ph, %.split.split.outer ], [ %.052.be, %.split.split.backedge ] ; 11 uses
  %i.ax = getelementptr i8, ptr %.052, i64 4      ; 7 uses
  %i.ay = load i32, ptr %.052, align 4, !tbaa !7
  switch i32 %i.ay, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.w
    i32 22, label %bb.x
    i32 42, label %bb.aa
    i32 21, label %bb.af
    i32 10, label %.thread7
  ]

.split13.us:                                      ; preds = %.split.split, %.split.us
  %.us-phi14 = phi i32 [ %.058.us.ph, %.split.us ], [ %.058.ph, %.split.split ]
  %.not74 = icmp eq i32 %.us-phi14, 0
  %i.az = zext i1 %.not74 to i32
  br label %.thread

bb.s:                                             ; preds = %.split.split
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bb = icmp eq i32 %1, %i.ba
  br i1 %i.bb, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %.052, i64 8
  br label %.split.split.backedge

bb.u:                                             ; preds = %.split.split
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.be = tail call fastcc i32 @sre_category(i32 noundef %i.bd, i32 noundef %1)
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %.052, i64 8
  br label %.split.split.backedge

bb.w:                                             ; preds = %.split.split
  %i.bg = getelementptr i8, ptr %.052, i64 36
  br label %.split.split.backedge

bb.x:                                             ; preds = %.split.split
  %i.bh = load i32, ptr %i.ax, align 4, !tbaa !7
  %.not70 = icmp ugt i32 %i.bh, %1
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = getelementptr i8, ptr %.052, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %.not71 = icmp ugt i32 %1, %i.bj
  br i1 %.not71, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bk = getelementptr i8, ptr %.052, i64 12
end_hunk_0
