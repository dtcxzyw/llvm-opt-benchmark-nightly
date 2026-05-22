inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@mbc_to_code:bb.a

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.n, %1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = icmp eq i8 %i.r, 4
  %i.z = sub i32 1, %i.x
  br i1 %i.y, label %mbc_enc_len.exit.thread, label %mbc_enc_len.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.n, align 1, !tbaa !10   ; 3 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 3 uses
  %i.ag = sext i8 %i.af to i64
  %i.ah = icmp slt i8 %i.af, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i8 %i.af, -1
  br i1 %i.ai, label %mbc_enc_len.exit.thread27, label %mbc_enc_len.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %i.ab, %1
  br i1 %i.aj, label %mbc_enc_len.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10  ; 2 uses
  %i.aq = icmp slt i8 %i.ap, 0
  %i.ar = icmp eq ptr %i.al, %1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %mbc_enc_len.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = zext nneg i8 %i.ap to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.av = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10  ; 2 uses
  %i.az = icmp slt i8 %i.ay, 0
  %i.ba = icmp eq ptr %i.au, %1
  %or.cond31 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond31, label %mbc_enc_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bb
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !10  ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %mbc_enc_len.exit.thread29, label %mbc_enc_len.exit.thread

mbc_enc_len.exit:                                 ; preds = %bb.h, %bb.d
  %.0.i = phi i32 [ %i.z, %bb.h ], [ %i.l, %bb.d ]
  switch i32 %.0.i, label %mbc_enc_len.exit.thread [
    i32 1, label %mbc_enc_len.exit.thread23
    i32 2, label %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge
    i32 3, label %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge
    i32 6, label %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge
  ]

mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre41 = load i8, ptr %i.a, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread25

mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre38 = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre40 = load i8, ptr %.phi.trans.insert39, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread27

mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre33 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre35 = load i8, ptr %.phi.trans.insert34, align 1, !tbaa !10
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.pre37 = load i8, ptr %.phi.trans.insert36, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread29

mbc_enc_len.exit.thread23:                        ; preds = %bb.b, %mbc_enc_len.exit
  %i.bi = zext i8 %i.b to i32
  br label %bb.q

mbc_enc_len.exit.thread25:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge, %bb.f
  %i.bj = phi i8 [ %.pre41, %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge ], [ %i.o, %bb.f ]
  %i.bk = and i8 %i.b, 31
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 6
  %i.bn = and i8 %i.bj, 63
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo
  br label %bb.q

mbc_enc_len.exit.thread27:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge, %bb.j
  %i.bq = phi i8 [ %.pre40, %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge ], [ %i.ac, %bb.j ]
  %i.br = phi i8 [ %.pre38, %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge ], [ %i.o, %bb.j ]
  %i.bs = and i8 %i.b, 15
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 12
  %i.bv = and i8 %i.br, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = or disjoint i32 %i.bx, %i.bu
  %i.bz = and i8 %i.bq, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  br label %bb.q

mbc_enc_len.exit.thread29:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge, %bb.n
  %i.cc = phi i8 [ %.pre37, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.bd, %bb.n ]
  %i.cd = phi i8 [ %.pre35, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.av, %bb.n ]
  %i.ce = phi i8 [ %.pre33, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.ac, %bb.n ]
  %i.cf = phi i8 [ %.pre, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.o, %bb.n ]
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i8 %i.ce, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = zext i8 %i.cd to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.cc, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cg, 16
  %i.co = shl nuw nsw i32 %i.ci, 10
  %.masked = and i32 %i.cn, 983040
  %.masked32 = and i32 %i.ck, 960
  %i.cp = or disjoint i32 %.masked32, %i.cm
  %i.cq = add nuw nsw i32 %.masked, 65536
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = or disjoint i32 %i.cr, %i.cp
  br label %bb.q

mbc_enc_len.exit.thread:                          ; preds = %bb.m, %bb.l, %bb.h, %bb.k, %bb.n, %bb.j, %bb.f, %bb.b, %mbc_enc_len.exit
  %i.ct = icmp ugt i8 %i.b, -3
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbc_enc_len.exit.thread
  %i.cu = icmp eq i8 %i.b, -2
  %i.cv = select i1 %i.cu, i32 -2, i32 -1
  br label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit.thread
  %i.cw = zext i8 %i.b to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %mbc_enc_len.exit.thread29, %mbc_enc_len.exit.thread27, %mbc_enc_len.exit.thread25, %mbc_enc_len.exit.thread23
  %.0 = phi i32 [ %i.cv, %bb.o ], [ %i.cw, %bb.p ], [ %i.bi, %mbc_enc_len.exit.thread23 ], [ %i.bp, %mbc_enc_len.exit.thread25 ], [ %i.cb, %mbc_enc_len.exit.thread27 ], [ %i.cs, %mbc_enc_len.exit.thread29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 7) i32 @code_to_mbclen(i32 noundef %0, ptr readnone captures(none) %1) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i32 %0, 1114112
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch = icmp ugt i32 %0, -3
  %spec.select = select i1 %switch, i32 1, i32 -401
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 6, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !10
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %0, 65536
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 12
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = or disjoint i8 %i.j, -32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.k, ptr %1, align 1, !tbaa !10
  %i.m = lshr i32 %0, 6
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.p, ptr %i.l, align 1, !tbaa !10
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %0, 1114112
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %0, 10                          ; 2 uses
  %i.t = add nuw nsw i32 %i.s, 1984
  %i.u = or i32 %0, 56320                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 -19, ptr %1, align 1, !tbaa !10
  %i.w = lshr i32 %i.t, 6
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.y, ptr %i.v, align 1, !tbaa !10
  %i.aa = trunc i32 %i.s to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, -128
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 -19, ptr %i.ad, align 1, !tbaa !10
  %i.af = lshr i32 %i.u, 6
  %i.ag = trunc i32 %i.af to i8
  %i.ah = and i8 %i.ag, 63
  %i.ai = or disjoint i8 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !10
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  switch i32 %0, label %bb.l [
    i32 -2, label %.sink.split
    i32 -1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.d
  %.034 = phi i32 [ %0, %bb.d ], [ %0, %bb.f ], [ %i.u, %bb.h ]
  %.033 = phi ptr [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = trunc i32 %.034 to i8
  %i.al = and i8 %i.ak, 63
  %i.am = or disjoint i8 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %.033, i64 1
  store i8 %i.am, ptr %.033, align 1, !tbaa !10
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  br label %bb.l

.sink.split:                                      ; preds = %bb.i, %bb.b, %bb.j
  %.sink = phi i8 [ %i.b, %bb.b ], [ -1, %bb.j ], [ -2, %bb.i ]
  store i8 %.sink, ptr %1, align 1, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.i
  %.1 = phi i32 [ -401, %bb.i ], [ %i.ar, %bb.k ], [ 1, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @mbc_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  store i8 %i.f, ptr %3, align 1, !tbaa !10
  %i.g = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @onigenc_unicode_mbc_case_fold(ptr noundef %4, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

declare i32 @onigenc_unicode_apply_all_case_fold(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef %4, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  ret i32 %i.a
}

declare i32 @onigenc_unicode_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_is_code_ctype(i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_ctype_code_range(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef %2, ptr readnone captures(none) %3) #0 {
bb.a:
  store i32 128, ptr %1, align 4, !tbaa !6
  %i.a = tail call i32 @onigenc_unicode_ctype_code_range(i32 noundef %0, ptr noundef %2) #6
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal noundef ptr @left_adjust_char_head(ptr noundef readnone captures(address) %0, ptr noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3) #5 {
bb.a:
  %.not = icmp ugt ptr %1, %0
  br i1 %.not, label %.preheader34, label %bb.g

.preheader34:                                     ; preds = %bb.a, %.preheader34
  %.025 = phi ptr [ %i.d, %.preheader34 ], [ %1, %bb.a ] ; 10 uses
  %i.a = load i8, ptr %.025, align 1, !tbaa !10   ; 2 uses
  %.not30 = icmp slt i8 %i.a, -64
  %i.b = icmp ugt ptr %.025, %0                   ; 2 uses
  %i.c = and i1 %i.b, %.not30
  %i.d = getelementptr inbounds i8, ptr %.025, i64 -1
  br i1 %i.c, label %.preheader34, label %bb.b, !llvm.loop !14

bb.b:                                             ; preds = %.preheader34
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.025 to i64                ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.a to i32
  %i.j = shl nuw nsw i32 %i.i, 12
  %i.k = getelementptr inbounds nuw i8, ptr %.025, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = and i8 %i.l, 48
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 6
  %.masked = and i32 %i.j, 61440
  %.mask = or disjoint i32 %i.o, %.masked
  %i.p = icmp eq i32 %.mask, 56320
  br i1 %i.p, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d, %.preheader
  %.025.pn = phi ptr [ %.0, %.preheader ], [ %.025, %bb.d ] ; 2 uses
  %.0 = getelementptr inbounds i8, ptr %.025.pn, i64 -1 ; 5 uses
  %i.q = load i8, ptr %.0, align 1, !tbaa !10     ; 2 uses
  %.not31 = icmp slt i8 %i.q, -64
  %i.r = icmp ugt ptr %.0, %0
  %i.s = and i1 %.not31, %i.r
  br i1 %i.s, label %.preheader, label %bb.e, !llvm.loop !16

bb.e:                                             ; preds = %.preheader
  %i.t = ptrtoint ptr %.0 to i64
  %i.u = sub i64 %i.f, %i.t
  %i.v = icmp eq i64 %i.u, 3
  br i1 %i.v, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.q to i32
  %i.x = shl nuw nsw i32 %i.w, 12
  %i.y = load i8, ptr %.025.pn, align 1, !tbaa !10
  %i.z = and i8 %i.y, 48
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %.masked33 = and i32 %i.x, 61440
  %.mask32 = or disjoint i32 %i.ab, %.masked33
  %i.ac = icmp eq i32 %.mask32, 55296
  br i1 %i.ac, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %.critedge, %bb.f, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %.0, %bb.f ], [ %.025, %.critedge ], [ %.025, %bb.d ], [ %.025, %bb.c ], [ %.025, %bb.b ]
  ret ptr %.1
}

declare i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_case_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_mbc_case_fold(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_unicode_ctype_code_range(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
end_hunk_0
