Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 48, ptr %i.bl, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp eq i32 %1, 1
  br i1 %i.bn, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 101, ptr %i.bo, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bq = icmp slt i32 %i.n, 0
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 45, ptr %i.bp, align 1, !tbaa !47
  %i.bs = sub i32 1, %i.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.020.i = phi ptr [ %i.br, %bb.p ], [ %i.bp, %bb.o ] ; 9 uses
  %.0.i = phi i32 [ %i.bs, %bb.p ], [ %i.n, %bb.o ] ; 6 uses
  %i.bt = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = udiv i32 %.0.i, 100
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = add i8 %i.bv, 48
  %i.bx = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.bw, ptr %.020.i, align 1, !tbaa !47
  %i.by = urem i32 %.0.i, 100
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %.020.i, i64 3
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.s:                                             ; preds = %bb.q
  %i.ch = icmp samesign ugt i32 %.0.i, 9
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i32 %.0.i, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cj ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cl, ptr %.020.i, align 1, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.u:                                             ; preds = %bb.s
  %i.cq = trunc nuw nsw i32 %.0.i to i8
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cr, ptr %.020.i, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.v:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cv = add nsw i32 %1, -1
  %i.cw = sext i32 %i.cv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull align 1 %i.cu, i64 %i.cw, i1 false)
  store i8 46, ptr %i.cu, align 1, !tbaa !47
  %i.cx = sext i32 %1 to i64
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx     ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  store i8 101, ptr %i.cz, align 1, !tbaa !47
  %i.da = getelementptr i8, ptr %i.cy, i64 2      ; 2 uses
  %i.db = icmp slt i32 %i.n, 0
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr i8, ptr %i.cy, i64 3
  store i8 45, ptr %i.da, align 1, !tbaa !47
  %i.dd = sub i32 1, %i.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.020.i109 = phi ptr [ %i.dc, %bb.w ], [ %i.da, %bb.v ] ; 9 uses
  %.0.i110 = phi i32 [ %i.dd, %bb.w ], [ %i.n, %bb.v ] ; 6 uses
  %i.de = icmp samesign ugt i32 %.0.i110, 99
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = udiv i32 %.0.i110, 100
  %i.dg = trunc i32 %i.df to i8
  %i.dh = add i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.dh, ptr %.020.i109, align 1, !tbaa !47
  %i.dj = urem i32 %.0.i110, 100
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dn, ptr %i.di, align 1, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %.020.i109, i64 3
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.z:                                             ; preds = %bb.x
  %i.ds = icmp samesign ugt i32 %.0.i110, 9
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = shl nuw nsw i32 %.0.i110, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.dw, ptr %.020.i109, align 1, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !47
  %i.ea = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.ab:                                            ; preds = %bb.z
  %i.eb = trunc nuw nsw i32 %.0.i110 to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.ec, ptr %.020.i109, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

_ZN9rapidjson8internal13WriteExponentEiPc.exit:   ; preds = %.loopexit142, %.loopexit, %bb.ab, %bb.aa, %bb.y, %bb.u, %bb.t, %bb.r, %.thread, %bb.k, %bb.m, %bb.f, %._crit_edge126, %._crit_edge129
  %.3 = phi ptr [ %i.m, %._crit_edge129 ], [ %i.af, %._crit_edge126 ], [ %i.ad, %.thread ], [ %i.ai, %bb.f ], [ %i.cs, %bb.u ], [ %i.bm, %bb.m ], [ %i.ed, %bb.ab ], [ %i.bh, %bb.k ], [ %i.cg, %bb.r ], [ %i.cp, %bb.t ], [ %i.dr, %bb.y ], [ %i.ea, %bb.aa ], [ %i.be, %.loopexit142 ], [ %i.bd, %.loopexit ]
  ret ptr %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !678
  %i.c = sub nsw i32 0, %i.b
  %i.d = zext nneg i32 %i.c to i64                ; 5 uses
  %i.e = shl nuw i64 1, %i.d                      ; 4 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !238    ; 3 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !238
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr i64 %i.f, %i.d
  %i.j = trunc i64 %i.i to i32                    ; 9 uses
  %i.k = add i64 %i.e, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i32 %i.j, 10
  br i1 %i.m, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.j, 100
  br i1 %i.n, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.j, 1000
  br i1 %i.o, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i32 %i.j, 10000
  br i1 %i.p, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.j, 100000
  br i1 %i.q, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %i.j, 1000000
  br i1 %i.r, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i32 %i.j, 10000000
  br i1 %i.s, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp ult i32 %i.j, 100000000
  %..i = select i1 %i.t, i32 8, i32 9
  br label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit

_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 7, %bb.g ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ %..i, %bb.h ]
  store i32 0, ptr %4, align 4, !tbaa !39
  br label %bb.i

.critedge:                                        ; preds = %bb.t
  %i.u = icmp sgt i32 %.070174, 1
  br i1 %i.u, label %bb.i, label %.critedge87.preheader

.critedge87.preheader:                            ; preds = %.critedge
  %.pre.pre136 = load i32, ptr %4, align 4, !tbaa !39
  br label %.critedge87

bb.i:                                             ; preds = %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, %.critedge
  %.070174 = phi i32 [ %.0.i, %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit ], [ %i.as, %.critedge ] ; 3 uses
  %.073173 = phi i32 [ %i.j, %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit ], [ %.174106, %.critedge ] ; 18 uses
  switch i32 %.070174, label %..thread_crit_edge [
    i32 9, label %bb.j
    i32 8, label %bb.k
    i32 7, label %bb.l
    i32 6, label %bb.m
    i32 5, label %bb.n
    i32 4, label %bb.o
    i32 3, label %bb.p
    i32 2, label %bb.q
    i32 1, label %bb.r
  ]

..thread_crit_edge:                               ; preds = %bb.i
  %.pre136 = load i32, ptr %4, align 4, !tbaa !39
  br label %.thread

bb.j:                                             ; preds = %bb.i
  %i.v = udiv i32 %.073173, 100000000
  %i.w = urem i32 %.073173, 100000000
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.x = udiv i32 %.073173, 10000000
  %i.y = urem i32 %.073173, 10000000
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.z = udiv i32 %.073173, 1000000
  %i.aa = urem i32 %.073173, 1000000
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.ab = udiv i32 %.073173, 100000
  %i.ac = urem i32 %.073173, 100000
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.ad = udiv i32 %.073173, 10000
  %i.ae = urem i32 %.073173, 10000
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.af = udiv i32 %.073173, 1000
  %i.ag = urem i32 %.073173, 1000
  br label %bb.r

bb.p:                                             ; preds = %bb.i
  %i.ah = udiv i32 %.073173, 100
  %i.ai = urem i32 %.073173, 100
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.aj = udiv i32 %.073173, 10
  %i.ak = urem i32 %.073173, 10
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.174 = phi i32 [ %i.ak, %bb.q ], [ %i.w, %bb.j ], [ %i.y, %bb.k ], [ %i.aa, %bb.l ], [ %i.ac, %bb.m ], [ %i.ae, %bb.n ], [ %i.ag, %bb.o ], [ %i.ai, %bb.p ], [ 0, %bb.i ] ; 2 uses
  %.069 = phi i32 [ %i.aj, %bb.q ], [ %i.v, %bb.j ], [ %i.x, %bb.k ], [ %i.z, %bb.l ], [ %i.ab, %bb.m ], [ %i.ad, %bb.n ], [ %i.af, %bb.o ], [ %i.ah, %bb.p ], [ %.073173, %bb.i ] ; 2 uses
  %.not83 = icmp eq i32 %.069, 0
  %.pre137.a = load i32, ptr %4, align 4, !tbaa !39 ; 2 uses
  br i1 %.not83, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %i.al = trunc i32 %.069 to i8
  %i.am = add i8 %i.al, 48
  br label %bb.s

.thread:                                          ; preds = %..thread_crit_edge, %bb.r
  %i.an = phi i32 [ %.pre137.a, %bb.r ], [ %.pre136, %..thread_crit_edge ] ; 2 uses
  %.174107 = phi i32 [ %.174, %bb.r ], [ %.073173, %..thread_crit_edge ] ; 2 uses
  %.not84 = icmp eq i32 %i.an, 0
  br i1 %.not84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge, %.thread
  %i.ao = phi i32 [ %i.an, %.thread ], [ %.pre137.a, %._crit_edge ] ; 2 uses
  %.069108 = phi i8 [ 48, %.thread ], [ %i.am, %._crit_edge ]
  %.174105 = phi i32 [ %.174107, %.thread ], [ %.174, %._crit_edge ]
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %4, align 4, !tbaa !39
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %3, i64 %i.aq
  store i8 %.069108, ptr %i.ar, align 1, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.174106 = phi i32 [ %.174105, %bb.s ], [ %.174107, %.thread ] ; 2 uses
  %i.as = add nsw i32 %.070174, -1                ; 3 uses
  %i.at = zext i32 %.174106 to i64
  %i.au = shl i64 %i.at, %i.d
  %i.av = add i64 %i.au, %i.l                     ; 4 uses
  %.not85 = icmp ugt i64 %i.av, %2
  br i1 %.not85, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i32, ptr %5, align 4, !tbaa !39
  %i.ax = add nsw i32 %i.aw, %i.as
  store i32 %i.ax, ptr %5, align 4, !tbaa !39
  %i.ay = zext nneg i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_E6kPow10, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !55
  %i.bb = shl i64 %i.ba, %i.d                     ; 3 uses
  %i.bc = icmp uge i64 %i.av, %i.h
  %i.bd = sub nuw i64 %2, %i.av
  %.not21.i = icmp ult i64 %i.bd, %i.bb
  %or.cond22.i = or i1 %i.bc, %.not21.i
  br i1 %or.cond22.i, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.be = load i32, ptr %4, align 4, !tbaa !39
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %3, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1     ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.av, %.lr.ph.i ], [ %i.bi, %.critedge2.i ] ; 2 uses
  %i.bi = add i64 %.023.i, %i.bb                  ; 4 uses
  %.not33.i = icmp ult i64 %i.bi, %i.h
  br i1 %.not33.i, label %.critedge2.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = sub nuw i64 %i.h, %.023.i
  %i.bk = sub nuw i64 %i.bi, %i.h
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %.critedge2.thread.i, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96

.critedge2.thread.i:                              ; preds = %bb.w
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !47
  %i.bn = add i8 %i.bm, -1
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96

.critedge2.i:                                     ; preds = %bb.v
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !47
  %i.bp = add i8 %i.bo, -1
  store i8 %i.bp, ptr %i.bh, align 1, !tbaa !47
  %i.bq = sub i64 %2, %i.bi
  %.not.i = icmp ult i64 %i.bq, %i.bb
  br i1 %.not.i, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96, label %bb.v, !llvm.loop !677

.critedge87:                                      ; preds = %.critedge87.preheader, %bb.y
  %.pre = phi i32 [ %.pre137, %bb.y ], [ %.pre.pre136, %.critedge87.preheader ] ; 3 uses
  %.075 = phi i64 [ %i.bs, %bb.y ], [ %2, %.critedge87.preheader ]
  %.072 = phi i64 [ %i.bz, %bb.y ], [ %i.l, %.critedge87.preheader ]
  %.171 = phi i32 [ %i.ca, %bb.y ], [ 0, %.critedge87.preheader ] ; 3 uses
  %i.br = mul i64 %.072, 10                       ; 2 uses
  %i.bs = mul i64 %.075, 10                       ; 4 uses
  %i.bt = lshr i64 %i.br, %i.d
  %i.bu = trunc i64 %i.bt to i8                   ; 2 uses
  %.not = icmp eq i8 %i.bu, 0
  %.not81 = icmp eq i32 %.pre, 0
  %or.cond = select i1 %.not, i1 %.not81, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge87
  %i.bv = add i8 %i.bu, 48
  %i.bw = add nsw i32 %.pre, 1
  store i32 %i.bw, ptr %4, align 4, !tbaa !39
  %i.bx = sext i32 %.pre to i64
  %i.by = getelementptr inbounds i8, ptr %3, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !47
  %.pre.pre = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %.critedge87, %bb.x
  %.pre137 = phi i32 [ %.pre.pre, %bb.x ], [ 0, %.critedge87 ]
  %i.bz = and i64 %i.br, %i.k                     ; 5 uses
  %i.ca = add nsw i32 %.171, -1                   ; 2 uses
  %.not82 = icmp ult i64 %i.bz, %i.bs
  br i1 %.not82, label %bb.z, label %.critedge87

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %5, align 4, !tbaa !39
  %i.cc = add nsw i32 %i.cb, %i.ca
  store i32 %i.cc, ptr %5, align 4, !tbaa !39
  %i.cd = load i32, ptr %4, align 4, !tbaa !39
  %i.ce = icmp sgt i32 %.171, -19
  br i1 %i.ce, label %bb.aa, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96

bb.aa:                                            ; preds = %bb.z
  %i.cf = sub nsw i32 1, %.171
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_E6kPow10, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !55
  %i.cj = mul i64 %i.ci, %i.h                     ; 4 uses
  %i.ck = icmp uge i64 %i.bz, %i.cj
  %i.cl = sub nuw i64 %i.bs, %i.bz
  %.not21.i88 = icmp ult i64 %i.cl, %i.e
  %or.cond22.i89 = or i1 %.not21.i88, %i.ck
  br i1 %or.cond22.i89, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.aa
  %i.cm = sext i32 %i.cd to i64
  %i.cn = getelementptr i8, ptr %3, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -1     ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge2.i94, %.lr.ph.i90
  %.023.i91 = phi i64 [ %i.bz, %.lr.ph.i90 ], [ %i.cp, %.critedge2.i94 ] ; 2 uses
  %i.cp = add i64 %.023.i91, %i.e                 ; 4 uses
  %.not33.i92 = icmp ult i64 %i.cp, %i.cj
  br i1 %.not33.i92, label %.critedge2.i94, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = sub nuw i64 %i.cj, %.023.i91
  %i.cr = sub nuw i64 %i.cp, %i.cj
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %.critedge2.thread.i93, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96

.critedge2.thread.i93:                            ; preds = %bb.ac
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !47
  %i.cu = add i8 %i.ct, -1
  store i8 %i.cu, ptr %i.co, align 1, !tbaa !47
  br label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96

.critedge2.i94:                                   ; preds = %bb.ab
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !47
  %i.cw = add i8 %i.cv, -1
  store i8 %i.cw, ptr %i.co, align 1, !tbaa !47
  %i.cx = sub i64 %i.bs, %i.cp
  %.not.i95 = icmp ult i64 %i.cx, %i.e
  br i1 %.not.i95, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96, label %bb.ab, !llvm.loop !677

_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit96: ; preds = %.critedge2.i, %.critedge2.i94, %.critedge2.thread.i, %bb.w, %bb.u, %bb.z, %bb.aa, %bb.ac, %.critedge2.thread.i93
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #28

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp ult i64 %0, 100000000
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %0, 10000
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc = trunc nuw nsw i64 %0 to i16       ; 2 uses
  %i.c = udiv i16 %.lhs.trunc, 100
  %i.d = shl nuw nsw i16 %i.c, 1                  ; 2 uses
  %i.e = urem i16 %.lhs.trunc, 100
  %i.f = shl nuw nsw i16 %i.e, 1                  ; 2 uses
  %i.g = icmp samesign ugt i64 %0, 999
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.h = zext nneg i16 %i.d to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.h
  %i.j = load i8, ptr %i.i, align 2, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %1, align 1, !tbaa !47
  br label %.thread230

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i64 %0, 99
  br i1 %i.l, label %..thread230_crit_edge, label %bb.e

..thread230_crit_edge:                            ; preds = %bb.d
  %.pre = zext nneg i16 %i.d to i64
  br label %.thread230

.thread230:                                       ; preds = %..thread230_crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %..thread230_crit_edge ], [ %i.h, %.thread ]
  %.0229 = phi ptr [ %1, %..thread230_crit_edge ], [ %i.k, %.thread ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %.0229, i64 1
  store i8 %i.o, ptr %.0229, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = icmp samesign ugt i64 %0, 9
  br i1 %i.q, label %bb.f, label %._crit_edge298

._crit_edge298:                                   ; preds = %bb.e
  %.pre299 = zext nneg i16 %i.f to i64
  br label %bb.g

bb.f:                                             ; preds = %.thread230, %bb.e
  %.1232 = phi ptr [ %i.p, %.thread230 ], [ %1, %bb.e ] ; 2 uses
  %i.r = zext nneg i16 %i.f to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.r
  %i.t = load i8, ptr %i.s, align 2, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %.1232, i64 1
  store i8 %i.t, ptr %.1232, align 1, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge298, %bb.f
  %.pre-phi300 = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.r, %bb.f ]
  %.2 = phi ptr [ %1, %._crit_edge298 ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi300
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.x, ptr %.2, align 1, !tbaa !47
  br label %bb.ae

bb.h:                                             ; preds = %bb.b
  %i.z = trunc nuw nsw i64 %0 to i32              ; 3 uses
  %i.aa = udiv i32 %i.z, 10000
  %i.ab = urem i32 %i.z, 10000
  %i.ac = udiv i32 %i.z, 1000000
  %i.ad = shl nuw nsw i32 %i.ac, 1                ; 2 uses
  %.lhs.trunc259 = trunc nuw nsw i32 %i.aa to i16
  %i.ae = urem i16 %.lhs.trunc259, 100
  %i.af = shl nuw nsw i16 %i.ae, 1                ; 2 uses
  %.lhs.trunc261 = trunc nuw nsw i32 %i.ab to i16 ; 2 uses
  %i.ag = udiv i16 %.lhs.trunc261, 100
  %i.ah = shl nuw nsw i16 %i.ag, 1
  %i.ai = urem i16 %.lhs.trunc261, 100
  %i.aj = shl nuw nsw i16 %i.ai, 1
  %i.ak = icmp samesign ugt i64 %0, 9999999
  br i1 %i.ak, label %.thread233, label %bb.i

.thread233:                                       ; preds = %bb.h
  %i.al = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.al
  %i.an = load i8, ptr %i.am, align 2, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.an, ptr %1, align 1, !tbaa !47
  br label %.thread236

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp samesign ugt i64 %0, 999999
  br i1 %i.ap, label %..thread236_crit_edge, label %bb.j

..thread236_crit_edge:                            ; preds = %bb.i
  %.pre301 = zext nneg i32 %i.ad to i64
  br label %.thread236

.thread236:                                       ; preds = %..thread236_crit_edge, %.thread233
  %.pre-phi302 = phi i64 [ %.pre301, %..thread236_crit_edge ], [ %i.al, %.thread233 ]
  %.3235 = phi ptr [ %1, %..thread236_crit_edge ], [ %i.ao, %.thread233 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi302
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %.3235, i64 1
  store i8 %i.as, ptr %.3235, align 1, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = icmp samesign ugt i64 %0, 99999
  br i1 %i.au, label %bb.k, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.j
  %.pre303 = zext nneg i16 %i.af to i64
  br label %bb.l

bb.k:                                             ; preds = %.thread236, %bb.j
  %.4238 = phi ptr [ %i.at, %.thread236 ], [ %1, %bb.j ] ; 2 uses
  %i.av = zext nneg i16 %i.af to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.4238, i64 1
  store i8 %i.ax, ptr %.4238, align 1, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge297, %bb.k
end_hunk_0
