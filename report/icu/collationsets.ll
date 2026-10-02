Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationsets?download=true
inline.NumInlined: 181
inline.NumDeleted: 57
begin_hunk_0_@_ZN6icu_78L12enumCnERangeEPKviij:bb.a

declare noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions12forCodePointEPKNS_13CollationDataEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(764) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store i32 %i.a, ptr %i.c, align 8, !tbaa !67
  %i.d = load ptr, ptr %1, align 8, !tbaa !31     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  %i.g = icmp ult i32 %2, 55296
  br i1 %i.g, label %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %2, 65536
  br i1 %i.h, label %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i32 %2, 1114111
  br i1 %i.i, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  %.not.i = icmp slt i32 %2, %i.k
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.g:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.o = lshr i32 %2, 11
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4160
  %i.s = load i16, ptr %i.r, align 2, !tbaa !37
  %i.t = zext i16 %i.s to i32
  %i.u = lshr i32 %2, 5
  %i.v = and i32 %i.u, 63
  %i.w = add nuw nsw i32 %i.v, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !37
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %i.ac = and i32 %2, 31
  %i.ad = add nuw nsw i32 %i.ab, %i.ac
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.d, %bb.f, %bb.g
  %i.ae = phi i32 [ %i.ad, %bb.g ], [ %i.m, %bb.f ], [ 128, %bb.d ]
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 192
  br i1 %i.ai, label %bb.h, label %bb.l

_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21: ; preds = %bb.c
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ak = icmp samesign ult i32 %2, 56320
  %i.al = select i1 %i.ak, i32 320, i32 0
  %i.am = lshr i32 %2, 5
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !37
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = and i32 %2, 31
  %i.au = add nuw nsw i32 %i.as, %i.at
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 192
  br i1 %i.ay, label %.thread22, label %bb.l

_ZNK6icu_7813CollationData7getCE32Ei.exit.thread: ; preds = %bb.b
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ba = lshr i32 %2, 5
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !37
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = and i32 %2, 31                          ; 2 uses
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 192
  br i1 %i.bl, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bb
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !37
  %i.bu = zext i16 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 2
  %i.bw = add nuw nsw i32 %i.bv, %i.bg
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit16

bb.h:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 3 uses
  %i.cc = icmp ugt i32 %2, 1114111
  br i1 %i.cc, label %_ZNK6icu_7813CollationData7getCE32Ei.exit16, label %bb.i

.thread22:                                        ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.cj = icmp samesign ult i32 %2, 56320
  %i.ck = select i1 %i.cj, i32 320, i32 0
  %i.cl = lshr i32 %2, 5
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !37
  %i.cq = zext i16 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 2
  %i.cs = and i32 %2, 31
  %i.ct = add nuw nsw i32 %i.cr, %i.cs
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit16

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  %.not.i15 = icmp slt i32 %2, %i.cv
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit16

bb.k:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cz = lshr i32 %2, 11
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4160
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !37
  %i.de = zext i16 %i.dd to i32
  %i.df = lshr i32 %2, 5
  %i.dg = and i32 %i.df, 63
  %i.dh = add nuw nsw i32 %i.dg, %i.de
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !37
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 2
  %i.dn = and i32 %2, 31
  %i.do = add nuw nsw i32 %i.dm, %i.dn
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit16

_ZNK6icu_7813CollationData7getCE32Ei.exit16:      ; preds = %.thread, %.thread22, %bb.h, %bb.j, %bb.k
  %i.dp = phi ptr [ %i.bq, %.thread ], [ %i.ch, %.thread22 ], [ %i.cb, %bb.h ], [ %i.cb, %bb.j ], [ %i.cb, %bb.k ]
  %i.dq = phi ptr [ %i.bn, %.thread ], [ %i.ce, %.thread22 ], [ %i.by, %bb.h ], [ %i.by, %bb.j ], [ %i.by, %bb.k ]
  %i.dr = phi i32 [ %i.bw, %.thread ], [ %i.ct, %.thread22 ], [ 128, %bb.h ], [ %i.cx, %bb.j ], [ %i.do, %bb.k ]
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread, %_ZNK6icu_7813CollationData7getCE32Ei.exit16, %_ZNK6icu_7813CollationData7getCE32Ei.exit
  %.013 = phi ptr [ %i.dq, %_ZNK6icu_7813CollationData7getCE32Ei.exit16 ], [ %1, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %1, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ], [ %1, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21 ]
  %.0 = phi i32 [ %i.du, %_ZNK6icu_7813CollationData7getCE32Ei.exit16 ], [ %i.ah, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.bk, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ], [ %i.ax, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread21 ]
  store ptr %.013, ptr %0, align 8, !tbaa !69
  tail call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %2, i32 noundef %2, i32 noundef %.0)
  %i.dv = load i32, ptr %i.c, align 8, !tbaa !67
  store i32 %i.dv, ptr %3, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UTF16CollationIterator", align 8 ; 23 uses
  %i.a = alloca [1 x i16], align 2                ; 8 uses
  %i.b = and i32 %3, 192
  %.not91 = icmp eq i32 %i.b, 192
  br i1 %.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.bb, %bb.a
  %.048.lcssa = phi i32 [ %3, %bb.a ], [ %.149, %bb.bb ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 3 uses
  %.not70 = icmp eq ptr %i.f, null
  br i1 %.not70, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = and i32 %.048.lcssa, -65536
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = shl i32 %.048.lcssa, 16
  %i.k = and i32 %i.j, -16777216
  %i.l = zext i32 %i.k to i64
  %i.m = or disjoint i64 %i.i, %i.l
  %i.n = shl i32 %.048.lcssa, 8
  %i.o = and i32 %i.n, 65280
  %i.p = zext nneg i32 %i.o to i64
  %i.q = or disjoint i64 %i.m, %i.p
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.q)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.c:                                             ; preds = %.lr.ph, %bb.bb
  %.04892 = phi i32 [ %3, %.lr.ph ], [ %.149, %bb.bb ] ; 13 uses
  %i.u = and i32 %.04892, 15
  switch i32 %i.u, label %default.unreachable130 [
    i32 0, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit
    i32 3, label %bb.d
    i32 7, label %bb.d
    i32 13, label %bb.d
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.q
    i32 6, label %bb.ab
    i32 8, label %bb.ai
    i32 9, label %bb.aj
    i32 10, label %bb.ak
    i32 11, label %bb.al
    i32 12, label %bb.am
    i32 14, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit
    i32 15, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !67
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 5, ptr %i.v, align 8, !tbaa !67
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 3 uses
  %.not68 = icmp eq ptr %i.z, null
  br i1 %.not68, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %.04892, -256
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw i64 %i.ab, 32
  %i.ad = or disjoint i64 %i.ac, 83887360
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %i.ad)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.h:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82 ; 3 uses
  %.not67 = icmp eq ptr %i.ai, null
  br i1 %.not67, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = and i32 %.04892, -256
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.ak)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.j:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 3 uses
  %.not65 = icmp eq ptr %i.ap, null
  br i1 %.not65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = and i32 %.04892, -16777216
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = lshr i32 %.04892, 8
  %i.au = and i32 %i.at, 65280
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = or disjoint i64 %i.aw, 83886080
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !54
  %i.az = shl i32 %.04892, 16
  %i.ba = and i32 %i.az, -16777216
  %i.bb = or disjoint i32 %i.ba, 1280
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !54
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.ay, i32 noundef 2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp ugt i16 %i.bi, 31
  br i1 %i.bj, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 3 uses
  br i1 %i.bm, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not4.i = icmp eq ptr %i.bo, null
  br i1 %.not4.i, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.bo, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.p:                                             ; preds = %bb.m
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.bo)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.q:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !82 ; 3 uses
  %.not63 = icmp eq ptr %i.br, null
  br i1 %.not63, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = lshr i32 %.04892, 8
  %i.bt = and i32 %i.bs, 31                       ; 3 uses
  %.not102 = icmp eq i32 %i.bt, 0
  br i1 %.not102, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.r
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.bv = lshr i32 %.04892, 13
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.s

._crit_edge101:                                   ; preds = %_ZN6icu_789Collation10ceFromCE32Ej.exit, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.bz, i32 noundef %i.bt)
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph100, %_ZN6icu_789Collation10ceFromCE32Ej.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %.05197 = phi ptr [ %i.bx, %.lr.ph100 ], [ %i.cd, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05197, i64 4
  %i.ce = load i32, ptr %.05197, align 4, !tbaa !40 ; 5 uses
  %i.cf = and i32 %i.ce, 255                      ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, 192
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = and i32 %i.ce, -65536
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw i64 %i.ci, 32
  %i.ck = shl i32 %i.ce, 16
  %i.cl = and i32 %i.ck, -16777216
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.cj, %i.cm
  %i.co = shl nuw nsw i32 %i.cf, 8
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cn, %i.cp
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.u:                                             ; preds = %bb.s
  %i.cr = and i32 %i.ce, -256
  %i.cs = and i32 %i.ce, 15
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = zext i32 %i.cr to i64                   ; 2 uses
  br i1 %i.ct, label %bb.v, label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.v:                                             ; preds = %bb.u
  %i.cv = shl nuw i64 %i.cu, 32
  %i.cw = or disjoint i64 %i.cv, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

_ZN6icu_789Collation10ceFromCE32Ej.exit:          ; preds = %bb.t, %bb.u, %bb.v
  %.0.i = phi i64 [ %i.cq, %bb.t ], [ %i.cw, %bb.v ], [ %i.cu, %bb.u ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv
  store i64 %.0.i, ptr %i.cx, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond115.not, label %._crit_edge101, label %bb.s, !llvm.loop !79

bb.w:                                             ; preds = %._crit_edge101, %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !56
  %i.da = icmp ugt i16 %i.cz, 31
  br i1 %i.da, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !70 ; 3 uses
  br i1 %i.dd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.not4.i72 = icmp eq ptr %i.df, null
  br i1 %.not4.i72, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.df, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.aa:                                            ; preds = %bb.x
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.df)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ab:                                            ; preds = %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 3 uses
  %.not61 = icmp eq ptr %i.di, null
  br i1 %.not61, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = lshr i32 %.04892, 8
  %i.dk = and i32 %i.dj, 31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52
  %i.dn = lshr i32 %.04892, 13
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dp, i32 noundef %i.dk)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !56
  %i.dv = icmp ugt i16 %i.du, 31
  br i1 %i.dv, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70 ; 3 uses
  br i1 %i.dy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not4.i75 = icmp eq ptr %i.ea, null
  br i1 %.not4.i75, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.ea, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ea)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ai:                                            ; preds = %bb.c
  tail call void @_ZN6icu_7825ContractionsAndExpansions14handlePrefixesEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.04892)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.aj:                                            ; preds = %bb.c
  tail call void @_ZN6icu_7825ContractionsAndExpansions18handleContractionsEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.04892)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ak:                                            ; preds = %bb.c
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ed = lshr i32 %.04892, 13
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ee
  br label %bb.bb

bb.al:                                            ; preds = %bb.c
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !55
  br label %bb.bb

bb.am:                                            ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !82
  %.not56 = icmp eq ptr %i.ei, null
  br i1 %.not56, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !31
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !89
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.el, align 8, !tbaa !90
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.em, align 8, !tbaa !91
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !92
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 40, ptr %i.ep, align 8, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.eq, align 4, !tbaa !94
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 368
  store i32 0, ptr %i.er, align 8, !tbaa !95
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 376
  store ptr null, ptr %i.es, align 8, !tbaa !96
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i32 -1, ptr %i.et, align 8, !tbaa !97
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 388
  store i8 0, ptr %i.eu, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6icu_7822UTF16CollationIteratorE, i64 16), ptr %4, align 8, !tbaa !84
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not57.not93 = icmp sgt i32 %1, %2
  br i1 %.not57.not93, label %.critedge.thread, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %5 = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.ex, i64 1
  br label %bb.ao

.critedge.thread:                                 ; preds = %bb.au, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(416) dereferenceable(416) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.aw

bb.ao:                                            ; preds = %.lr.ph96, %bb.au
  %.04794 = phi i32 [ %1, %.lr.ph96 ], [ %i.fl, %bb.au ] ; 3 uses
  %i.ez = trunc i32 %.04794 to i16
  store i16 %i.ez, ptr %i.a, align 2, !tbaa !45
  invoke void @_ZN6icu_7817CollationIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(416) %4)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.a, ptr %i.ev, align 8, !tbaa !100
  store <2 x ptr> %6, ptr %i.ew, align 8, !tbaa !101
  %i.fa = invoke noundef i32 @_ZN6icu_7817CollationIterator8fetchCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ey)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fb = load i32, ptr %i.ey, align 8, !tbaa !67
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.at, label %.critedge

bb.ar:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.as:                                            ; preds = %bb.at, %bb.ap
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.ff = load ptr, ptr %i.eh, align 8, !tbaa !82 ; 2 uses
  %i.fg = load ptr, ptr %i.en, align 8, !tbaa !92
  %i.fh = add nsw i32 %i.fa, -1
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef %i.fg, i32 noundef %i.fh)
          to label %bb.au unwind label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.fl = add i32 %.04794, 1
  %exitcond.not = icmp eq i32 %.04794, %2
  br i1 %exitcond.not, label %.critedge.thread, label %bb.ao, !llvm.loop !80

.critedge:                                        ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(416) dereferenceable(416) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.av:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.as ], [ %i.fd, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(416) dereferenceable(416) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn

bb.aw:                                            ; preds = %.critedge.thread, %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fn = load i16, ptr %i.fm, align 8, !tbaa !56
  %i.fo = icmp ugt i16 %i.fn, 31
  br i1 %i.fo, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp eq ptr %i.fq, null
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !70 ; 3 uses
  br i1 %i.fr, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not4.i78 = icmp eq ptr %i.ft, null
  br i1 %.not4.i78, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.ft, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ba:                                            ; preds = %bb.ax
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ft)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

default.unreachable130:                           ; preds = %bb.c
  unreachable

bb.bb:                                            ; preds = %bb.al, %bb.ak
  %.149.in = phi ptr [ %i.eg, %bb.al ], [ %i.ef, %bb.ak ]
  %.149 = load i32, ptr %.149.in, align 4, !tbaa !40 ; 3 uses
  %i.fv = and i32 %.149, 192
  %.not = icmp eq i32 %i.fv, 192
  br i1 %.not, label %bb.c, label %._crit_edge, !llvm.loop !81

_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit: ; preds = %bb.c, %bb.c, %bb.c, %bb.ba, %bb.az, %bb.ay, %.critedge, %bb.ah, %bb.ag, %bb.af, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.n, %bb.aw, %bb.ad, %bb.w, %bb.l, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %._crit_edge, %bb.b, %bb.aj, %bb.ai
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i16, ptr %i.a, align 8, !tbaa !56
  %i.c = icmp ult i16 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.h, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions14handlePrefixesEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = lshr i32 %3, 13
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !45
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !45
  %i.l = zext i16 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  tail call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !103
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.p, ptr %5, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  invoke void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %5, align 8, !tbaa !47
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.r) #9, !srcloc !48
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 108
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.z = invoke noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not15 = icmp eq i8 %i.z, 0
  br i1 %.not15, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.f
  %i.ab = load i16, ptr %i.u, align 8, !tbaa !56  ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 0, i32 noundef %i.ag)
          to label %_ZN6icu_7825ContractionsAndExpansions9setPrefixERKNS_13UnicodeStringE.exit unwind label %bb.j ; 0 uses

_ZN6icu_7825ContractionsAndExpansions9setPrefixERKNS_13UnicodeStringE.exit: ; preds = %.noexc
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !71
  invoke void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ai)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN6icu_7825ContractionsAndExpansions9setPrefixERKNS_13UnicodeStringE.exit
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !70
  invoke void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.aj)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !51
  invoke void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ak)
          to label %bb.d unwind label %bb.j, !llvm.loop !102

bb.i:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !47
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.am) #9, !srcloc !48
  br label %bb.m

bb.j:                                             ; preds = %.noexc, %bb.f, %bb.h, %bb.g, %_ZN6icu_7825ContractionsAndExpansions9setPrefixERKNS_13UnicodeStringE.exit, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #9
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.ao = load i16, ptr %i.u, align 8, !tbaa !56  ; 2 uses
  %i.ap = and i16 %i.ao, 1
  %.not.i.i = icmp eq i16 %i.ap, 0
  %i.aq = and i16 %i.ao, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.aq, i16 2
  store i16 %storemerge.i.i, ptr %i.u, align 8, !tbaa !56
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.al, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions18handleContractionsEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = lshr i32 %3, 13
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %i.g = and i32 %3, 256
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %i.f, align 2, !tbaa !45
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !45
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  tail call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.o, ptr %5, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  invoke void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %5, align 8, !tbaa !47
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.q) #9, !srcloc !48
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 108
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.x = invoke noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not16 = icmp eq i8 %i.x, 0
  br i1 %.not16, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.r, ptr %i.s, align 8, !tbaa !72
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !71
  invoke void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.y)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.z = load i16, ptr %i.u, align 8, !tbaa !56
  %i.aa = icmp ugt i16 %i.z, 31
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !70
  invoke void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ab)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %5, align 8, !tbaa !47
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ad) #9, !srcloc !48
  br label %bb.n

bb.k:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #9
  br label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.af = load i32, ptr %i.w, align 4, !tbaa !51
  invoke void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.af)
          to label %bb.e unwind label %bb.k, !llvm.loop !104

bb.m:                                             ; preds = %bb.f
  store ptr null, ptr %i.s, align 8, !tbaa !72
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i32 @_ZN6icu_7817CollationIterator8fetchCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(416) dereferenceable(416)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit, %bb.b
  %.0 = phi i32 [ %1, %bb.b ], [ %i.ao, %_ZN6icu_7813UnicodeString8truncateEi.exit ] ; 3 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %.0)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !72   ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZN6icu_7813UnicodeString6appendERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef 0, i32 noundef %i.q)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.h, %bb.e, %_ZN6icu_7813UnicodeString6appendERKS0_.exit, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.s

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.e, %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.g:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.u = load i16, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.e, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x       ; 5 uses
  %i.aa = load i16, ptr %i.f, align 8, !tbaa !56  ; 5 uses
  %i.ab = trunc i16 %i.aa to i1
  %i.ac = icmp eq i32 %i.z, 0
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6icu_7813UnicodeString8truncateEi.exit unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp slt i16 %i.aa, 0
  %i.ae = ashr i16 %i.aa, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.g, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = icmp ult i32 %i.z, %i.ah
  br i1 %i.ai, label %bb.j, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp slt i32 %i.z, 1024
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = and i16 %i.aa, 31
  %.tr.i.i.i = trunc i32 %i.z to i16
  %i.al = shl i16 %.tr.i.i.i, 5
  %i.am = or disjoint i16 %i.al, %i.ak
  store i16 %i.am, ptr %i.f, align 8, !tbaa !56
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.j
  %i.an = or i16 %i.aa, -32
  store i16 %i.an, ptr %i.f, align 8, !tbaa !56
  store i32 %i.z, ptr %i.g, align 4, !tbaa !56
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %i.ao = add i32 %.0, 1
  %exitcond.not = icmp eq i32 %.0, %smax
  br i1 %exitcond.not, label %bb.m, label %bb.c, !llvm.loop !105

bb.m:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet12containsNoneEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7817CollationIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(389)) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !42}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN6icu_7813CollationDataE", !11, i64 0}
!13 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !11, i64 0}
!14 = !{!"_ZTSN6icu_787UObjectE"}
!15 = !{!"_ZTSN6icu_7811ReplaceableE", !14, i64 0}
!16 = !{!"_ZTSN6icu_7813UnicodeStringE", !15, i64 0, !5, i64 8}
!17 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !11, i64 0}
!18 = !{!"_ZTSN6icu_7811TailoredSetE", !12, i64 0, !12, i64 8, !13, i64 16, !16, i64 24, !17, i64 88, !9, i64 96}
!19 = !{!18, !9, i64 96}
!20 = !{!18, !12, i64 0}
!21 = !{!"p1 _ZTS6UTrie2", !11, i64 0}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"p1 long", !11, i64 0}
!24 = !{!"p1 char16_t", !11, i64 0}
!25 = !{!"p1 _ZTSN6icu_7815Normalizer2ImplE", !11, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"p1 short", !11, i64 0}
!28 = !{!"_ZTSN6icu_7813CollationDataE", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !12, i64 32, !22, i64 40, !25, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !26, i64 72, !13, i64 80, !27, i64 88, !6, i64 96, !6, i64 100, !27, i64 104, !27, i64 112, !6, i64 120, !22, i64 128, !6, i64 136}
!29 = !{!28, !12, i64 32}
!30 = !{!18, !12, i64 8}
!31 = !{!28, !21, i64 0}
!32 = !{!"short", !5, i64 0}
!33 = !{!"p1 _ZTS9UNewTrie2", !11, i64 0}
!34 = !{!"_ZTS6UTrie2", !27, i64 0, !27, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !32, i64 32, !32, i64 34, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56, !6, i64 64, !5, i64 68, !5, i64 69, !32, i64 70, !33, i64 72}
!35 = !{!34, !22, i64 16}
!36 = !{!34, !27, i64 0}
!37 = !{!32, !32, i64 0}
!38 = !{!34, !6, i64 44}
!39 = !{!34, !6, i64 48}
!40 = !{!6, !6, i64 0}
!41 = !{!18, !13, i64 16}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!28, !24, i64 24}
!44 = !{!"char16_t", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !24, i64 0}
!47 = !{!46, !24, i64 0}
!48 = !{i64 2148930966}
!49 = !{!"p1 _ZTSN6icu_789UVector32E", !11, i64 0}
!50 = !{!"_ZTSN6icu_7810UCharsTrie8IteratorE", !24, i64 0, !24, i64 8, !24, i64 16, !6, i64 24, !6, i64 28, !5, i64 32, !16, i64 40, !6, i64 104, !6, i64 108, !49, i64 112}
!51 = !{!50, !6, i64 108}
!52 = !{!28, !23, i64 16}
!53 = !{!"long", !5, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!28, !22, i64 8}
!56 = !{!5, !5, i64 0}
!57 = !{!18, !17, i64 88}
!58 = !{!"p1 _ZTSN6icu_7825ContractionsAndExpansions6CESinkE", !11, i64 0}
!59 = !{!"_ZTSN6icu_7814UnicodeFunctorE", !14, i64 0}
!60 = !{!"_ZTSN6icu_7814UnicodeMatcherE"}
!61 = !{!"_ZTSN6icu_7813UnicodeFilterE", !59, i64 0, !60, i64 8}
!62 = !{!"p1 _ZTSN6icu_786BMPSetE", !11, i64 0}
!63 = !{!"p1 _ZTSN6icu_787UVectorE", !11, i64 0}
!64 = !{!"p1 _ZTSN6icu_7820UnicodeSetStringSpanE", !11, i64 0}
!65 = !{!"_ZTSN6icu_7810UnicodeSetE", !61, i64 0, !22, i64 16, !6, i64 24, !6, i64 28, !5, i64 32, !62, i64 40, !22, i64 48, !6, i64 56, !24, i64 64, !6, i64 72, !63, i64 80, !64, i64 88, !5, i64 96}
!66 = !{!"_ZTSN6icu_7825ContractionsAndExpansionsE", !12, i64 0, !13, i64 8, !13, i64 16, !58, i64 24, !5, i64 32, !5, i64 33, !65, i64 40, !65, i64 240, !16, i64 440, !17, i64 504, !5, i64 512, !9, i64 760}
!67 = !{!66, !9, i64 760}
!68 = !{!66, !5, i64 33}
!69 = !{!66, !12, i64 0}
!70 = !{!66, !13, i64 16}
!71 = !{!66, !13, i64 8}
!72 = !{!66, !17, i64 504}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = !{!66, !58, i64 24}
!83 = !{!"vtable pointer", !4, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"_ZTSN6icu_7815MaybeStackArrayIlLi40EEE", !23, i64 0, !6, i64 8, !5, i64 12, !5, i64 16}
!86 = !{!"_ZTSN6icu_7817CollationIterator8CEBufferE", !6, i64 0, !85, i64 8}
!87 = !{!"p1 _ZTSN6icu_7812SkippedStateE", !11, i64 0}
!88 = !{!"_ZTSN6icu_7817CollationIteratorE", !14, i64 0, !21, i64 8, !12, i64 16, !86, i64 24, !6, i64 368, !87, i64 376, !6, i64 384, !5, i64 388}
!89 = !{!88, !21, i64 8}
!90 = !{!88, !12, i64 16}
!91 = !{!86, !6, i64 0}
!92 = !{!85, !23, i64 0}
!93 = !{!85, !6, i64 8}
!94 = !{!85, !5, i64 12}
!95 = !{!88, !6, i64 368}
!96 = !{!88, !87, i64 376}
!97 = !{!88, !6, i64 384}
!98 = !{!88, !5, i64 388}
!99 = !{!"_ZTSN6icu_7822UTF16CollationIteratorE", !88, i64 0, !24, i64 392, !24, i64 400, !24, i64 408}
!100 = !{!99, !24, i64 392}
!101 = !{!24, !24, i64 0}
!102 = distinct !{!102, !42}
!103 = !{!66, !5, i64 32}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42}
end_hunk_0
