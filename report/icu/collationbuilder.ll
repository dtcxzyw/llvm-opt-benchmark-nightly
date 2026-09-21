Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationbuilder?download=true
inline.NumInlined: 394
inline.NumDeleted: 109
begin_hunk_0_@_ZN6icu_7816CollationBuilder8addResetEiRKNS_13UnicodeStringERPKcR10UErrorCode:bb.a
  br i1 %.not124, label %.thread154, label %bb.ae

.thread154:                                       ; preds = %bb.ad
  store i32 16, ptr %4, align 4, !tbaa !25
  %i.ep = icmp eq i32 %1, 1
  %.str.9..str.10 = select i1 %i.ep, ptr @.str.9, ptr @.str.10
  store ptr %.str.9..str.10, ptr %3, align 8, !tbaa !97
  br label %.thread143

bb.ae:                                            ; preds = %bb.ad
  %i.eq = call noundef i32 @_ZN6icu_7816CollationBuilder17getWeight16BeforeEili(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 poison, i64 noundef %i.el, i32 noundef %1) ; 2 uses
  %i.er = lshr i64 %i.el, 28
  %i.es = trunc i64 %i.er to i32
  %i.et = and i32 %i.es, 1048575                  ; 3 uses
  %i.eu = load i32, ptr %i.at, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %.0102 = phi i32 [ %i.et, %bb.ae ], [ %i.fl, %bb.aj ] ; 2 uses
  %i.ew = icmp slt i32 %.0102, %i.eu
  br i1 %i.ew, label %bb.ag, label %_ZNK6icu_789UVector6410elementAtiEi.exit136

bb.ag:                                            ; preds = %bb.af
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !77
  %i.ey = zext nneg i32 %.0102 to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit136

_ZNK6icu_789UVector6410elementAtiEi.exit136:      ; preds = %bb.af, %bb.ag
  %i.fb = phi i64 [ %i.fa, %bb.ag ], [ 0, %bb.af ] ; 4 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = and i32 %i.fc, 3                        ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %1
  br i1 %i.fe, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit136
  %i.ff = icmp eq i32 %i.fd, %1
  %i.fg = and i64 %i.fb, 8
  %.not123 = icmp eq i64 %i.fg, 0
  %or.cond158 = and i1 %.not123, %i.ff
  br i1 %or.cond158, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fh = lshr i64 %i.fb, 48
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah
  %i.fj = lshr i64 %i.fb, 28
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 1048575
  br label %bb.af, !llvm.loop !134

.loopexit:                                        ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit136, %bb.ai
  %.1 = phi i32 [ %i.fi, %bb.ai ], [ 1280, %_ZNK6icu_789UVector6410elementAtiEi.exit136 ]
  %i.fm = icmp eq i32 %.1, %i.eq
  br i1 %i.fm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.fn = zext i32 %i.eq to i64
  %i.fo = shl i64 %i.fn, 48
  %i.fp = zext nneg i32 %1 to i64
  %i.fq = or disjoint i64 %i.fo, %i.fp
  %i.fr = call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.et, i32 noundef %.4, i64 noundef %i.fq, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.al

_ZNK6icu_789UVector6410elementAtiEi.exit134.thread: ; preds = %bb.ac, %_ZNK6icu_789UVector6410elementAtiEi.exit134
  %i.fs = phi i64 [ %i.el, %_ZNK6icu_789UVector6410elementAtiEi.exit134 ], [ 0, %bb.ac ]
  %i.ft = call noundef i32 @_ZN6icu_7816CollationBuilder17getWeight16BeforeEili(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 poison, i64 noundef %i.fs, i32 noundef %1)
  %i.fu = call noundef i32 @_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %.4, i32 noundef %i.ft, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.ak, %_ZNK6icu_789UVector6410elementAtiEi.exit134.thread
  %.7 = phi i32 [ %i.fu, %_ZNK6icu_789UVector6410elementAtiEi.exit134.thread ], [ %i.et, %.loopexit ], [ %i.fr, %bb.ak ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !73
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr %0, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 288
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !82 ; 4 uses
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = add i32 %i.gb, -1174405120
  %i.gd = icmp ult i32 %i.gc, -1073741824
  br i1 %i.gd, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = lshr i32 %i.gb, 8
  %i.gf = and i32 %i.ge, 3
  br label %_ZN6icu_7816CollationBuilder10ceStrengthEl.exit

bb.an:                                            ; preds = %bb.al
  %.not5.i = icmp ult i64 %i.ga, 72057594037927936
  br i1 %.not5.i, label %bb.ao, label %_ZN6icu_7816CollationBuilder10ceStrengthEl.exit

bb.ao:                                            ; preds = %bb.an
  %i.gg = and i64 %i.ga, 4278190080
  %.not6.i = icmp eq i64 %i.gg, 0
  %.not7.i = icmp eq i64 %i.ga, 0
  %i.gh = select i1 %.not7.i, i32 15, i32 2
  %i.gi = select i1 %.not6.i, i32 %i.gh, i32 1
  br label %_ZN6icu_7816CollationBuilder10ceStrengthEl.exit

_ZN6icu_7816CollationBuilder10ceStrengthEl.exit:  ; preds = %bb.x, %_ZNK6icu_789UVector6410elementAtiEi.exit131, %bb.ao, %bb.an, %bb.am, %bb.o
  %.8 = phi i32 [ %i.bv, %bb.o ], [ %.7, %bb.an ], [ %.7, %bb.ao ], [ %.7, %bb.am ], [ %.1106, %_ZNK6icu_789UVector6410elementAtiEi.exit131 ], [ %.1106, %bb.x ] ; 3 uses
  %.0 = phi i32 [ %1, %bb.o ], [ 0, %bb.an ], [ %i.gi, %bb.ao ], [ %i.gf, %bb.am ], [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit131 ], [ 0, %bb.x ]
  %i.gj = load i32, ptr %4, align 4, !tbaa !25
  %i.gk = icmp slt i32 %i.gj, 1
  br i1 %i.gk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_7816CollationBuilder10ceStrengthEl.exit
  store ptr @.str.11, ptr %3, align 8, !tbaa !97
  br label %.thread143

bb.aq:                                            ; preds = %_ZN6icu_7816CollationBuilder10ceStrengthEl.exit
  %i.gl = and i32 %.8, 1040384
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 43
  %i.go = add nuw nsw i64 %i.gn, 4629700417037541376
  %i.gp = and i32 %.8, 8128
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 42
  %i.gs = add nuw nsw i64 %i.go, %i.gr
  %i.gt = shl i32 %.8, 24
  %i.gu = and i32 %i.gt, 1056964608
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gs, %i.gv
  %i.gx = shl nuw nsw i32 %.0, 8
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = add nuw nsw i64 %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !73
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [8 x i8], ptr %0, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 288
  store i64 %i.gz, ptr %i.he, align 8, !tbaa !82
  br label %.thread143

.thread143:                                       ; preds = %bb.v, %bb.t, %bb.r, %.thread154, %.thread, %bb.j, %bb.aq, %bb.ap, %bb.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6icu_7816CollationBuilder23getSpecialResetPositionERKNS_13UnicodeStringERPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !96   ; 2 uses
  switch i16 %i.p, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 10240, label %_ZNK6icu_789UVector6410elementAtiEi.exit140
    i16 10241, label %_ZNK6icu_789UVector6410elementAtiEi.exit140
    i16 10242, label %bb.b
    i16 10243, label %bb.p
    i16 10244, label %bb.q
    i16 10245, label %bb.ae
    i16 10246, label %bb.af
    i16 10247, label %bb.ag
    i16 10248, label %bb.ah
    i16 10249, label %bb.ai
    i16 10250, label %bb.aj
    i16 10251, label %bb.ak
    i16 10252, label %bb.am
    i16 10253, label %bb.al
  ]

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.q = load i32, ptr %3, align 4, !tbaa !25
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef i32 @_ZN6icu_7816CollationBuilder26findOrInsertNodeForPrimaryEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 5 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !25     ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.d, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.d:                                             ; preds = %bb.c
  %i.v = icmp sgt i32 %i.s, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp slt i32 %i.s, %i.x
  %or.cond.i81.i150 = select i1 %i.v, i1 %i.y, i1 false
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  br i1 %or.cond.i81.i150, label %bb.e, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i151

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !82
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 1048575
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i151

_ZNK6icu_789UVector6410elementAtiEi.exit.i151:    ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %i.ae, %bb.e ], [ 0, %bb.d ]  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.not76.i155354 = icmp ne i32 %i.af, 0
  %i.ah = icmp slt i32 %i.af, %i.x
  %or.cond235355 = select i1 %.not76.i155354, i1 %i.ah, i1 false
  br i1 %or.cond235355, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i156, label %.thread87.i163

_ZNK6icu_789UVector6410elementAtiEi.exit83.i156:  ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i151, %select.unfold.i159
  %i.ai = phi i32 [ %i.as, %select.unfold.i159 ], [ %i.af, %_ZNK6icu_789UVector6410elementAtiEi.exit.i151 ] ; 6 uses
  %.267.i152356 = phi i32 [ %i.ai, %select.unfold.i159 ], [ %i.s, %_ZNK6icu_789UVector6410elementAtiEi.exit.i151 ] ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !82 ; 4 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3                        ; 2 uses
  %.not77.i157 = icmp samesign ugt i32 %i.an, 1
  br i1 %.not77.i157, label %select.unfold.i159, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit83.i156
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread87.i163, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = and i64 %i.al, 8
  %.not78.i158 = icmp eq i64 %i.ap, 0
  br i1 %.not78.i158, label %bb.h, label %select.unfold.i159

bb.h:                                             ; preds = %bb.g
  %.not.i165 = icmp ult i64 %i.al, 281474976710656
  br i1 %.not.i165, label %_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode.exit170, label %.thread87.i163

select.unfold.i159:                               ; preds = %bb.g, %_ZNK6icu_789UVector6410elementAtiEi.exit83.i156
  %i.aq = trunc i64 %i.al to i32
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 1048575                  ; 4 uses
  %.not76.i155 = icmp ne i32 %i.as, 0
  %i.at = icmp slt i32 %i.as, %i.x
  %or.cond235 = select i1 %.not76.i155, i1 %i.at, i1 false
  br i1 %or.cond235, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i156, label %.thread87.i163

.thread87.i163:                                   ; preds = %select.unfold.i159, %bb.f, %_ZNK6icu_789UVector6410elementAtiEi.exit.i151, %bb.h
  %.267.i152335 = phi i32 [ %.267.i152356, %bb.h ], [ %i.s, %_ZNK6icu_789UVector6410elementAtiEi.exit.i151 ], [ %.267.i152356, %bb.f ], [ %i.ai, %select.unfold.i159 ]
  %i.au = phi i32 [ %i.ai, %bb.h ], [ %i.af, %_ZNK6icu_789UVector6410elementAtiEi.exit.i151 ], [ %i.ai, %bb.f ], [ %i.as, %select.unfold.i159 ]
  %i.av = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %.267.i152335, i32 noundef %i.au, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.pr.pre = load i32, ptr %3, align 4, !tbaa !25
  br label %_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode.exit170

_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode.exit170: ; preds = %bb.h, %.thread87.i163
  %.pr = phi i32 [ %.pr.pre, %.thread87.i163 ], [ %i.t, %bb.h ] ; 2 uses
  %.8.i149.ph = phi i32 [ %i.av, %.thread87.i163 ], [ %i.ai, %bb.h ] ; 5 uses
  %i.aw = icmp slt i32 %.pr, 1
  br i1 %i.aw, label %bb.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.i:                                             ; preds = %_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode.exit170
  %i.ax = icmp sgt i32 %.8.i149.ph, -1
  %i.ay = load i32, ptr %i.w, align 8             ; 3 uses
  %i.az = icmp slt i32 %.8.i149.ph, %i.ay
  %or.cond.i81.i = select i1 %i.ax, i1 %i.az, i1 false
  %.pre272 = load ptr, ptr %i.ag, align 8         ; 2 uses
  br i1 %or.cond.i81.i, label %bb.j, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = zext nneg i32 %.8.i149.ph to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre272, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !82
  %i.bd = trunc i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 8
  %i.bf = and i32 %i.be, 1048575
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.j, %bb.i
  %i.bg = phi i32 [ %i.bf, %bb.j ], [ 0, %bb.i ]  ; 4 uses
  %.not76.i362 = icmp ne i32 %i.bg, 0
  %i.bh = icmp slt i32 %i.bg, %i.ay
  %or.cond236363 = select i1 %.not76.i362, i1 %i.bh, i1 false
  br i1 %or.cond236363, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i, label %.thread87.i

_ZNK6icu_789UVector6410elementAtiEi.exit83.i:     ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i, %select.unfold.i
  %i.bi = phi i32 [ %i.bs, %select.unfold.i ], [ %i.bg, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ] ; 6 uses
  %.267.i364 = phi i32 [ %i.bi, %select.unfold.i ], [ %.8.i149.ph, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ] ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.pre272, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !82 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 3                        ; 2 uses
  %.not77.i = icmp eq i32 %i.bn, 3
  br i1 %.not77.i, label %select.unfold.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit83.i
  %i.bo = icmp samesign ult i32 %i.bn, 2
  br i1 %i.bo, label %.thread87.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = and i64 %i.bl, 8
  %.not78.i = icmp eq i64 %i.bp, 0
  br i1 %.not78.i, label %bb.m, label %select.unfold.i

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp ult i64 %i.bl, 281474976710656
  br i1 %.not.i, label %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit, label %.thread87.i

select.unfold.i:                                  ; preds = %bb.l, %_ZNK6icu_789UVector6410elementAtiEi.exit83.i
  %i.bq = trunc i64 %i.bl to i32
  %i.br = lshr i32 %i.bq, 8
  %i.bs = and i32 %i.br, 1048575                  ; 4 uses
  %.not76.i = icmp ne i32 %i.bs, 0
  %i.bt = icmp slt i32 %i.bs, %i.ay
  %or.cond236 = select i1 %.not76.i, i1 %i.bt, i1 false
  br i1 %or.cond236, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i, label %.thread87.i

.thread87.i:                                      ; preds = %select.unfold.i, %bb.k, %_ZNK6icu_789UVector6410elementAtiEi.exit.i, %bb.m
  %.267.i330 = phi i32 [ %.267.i364, %bb.m ], [ %.8.i149.ph, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ %.267.i364, %bb.k ], [ %i.bi, %select.unfold.i ]
  %i.bu = phi i32 [ %i.bi, %bb.m ], [ %i.bg, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ %i.bi, %bb.k ], [ %i.bs, %select.unfold.i ]
  %i.bv = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %.267.i330, i32 noundef %i.bu, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.pre269 = load i32, ptr %3, align 4, !tbaa !25
  br label %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit

_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit: ; preds = %bb.m, %.thread87.i
  %i.bw = phi i32 [ %.pre269, %.thread87.i ], [ %.pr, %bb.m ]
  %.014.i = phi i32 [ %i.bv, %.thread87.i ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.n, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.n:                                             ; preds = %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit
  %i.by = icmp sgt i32 %.014.i, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp slt i32 %.014.i, %i.ca
  %or.cond.i = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %or.cond.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit, label %_ZNK6icu_789UVector6410elementAtiEi.exit.thread

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !77 ; 2 uses
  %i.ce = zext nneg i32 %.014.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !82
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = lshr i32 %i.ch, 8                       ; 4 uses
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %.not119 = icmp ne i32 %i.cj, 0
  %i.ck = icmp slt i32 %i.cj, %i.ca
  %or.cond237 = select i1 %.not119, i1 %i.ck, i1 false
  br i1 %or.cond237, label %_ZNK6icu_789UVector6410elementAtiEi.exit122, label %_ZNK6icu_789UVector6410elementAtiEi.exit.thread

_ZNK6icu_789UVector6410elementAtiEi.exit122:      ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !82
  %i.co = and i64 %i.cn, 11
  %or.cond240 = icmp eq i64 %i.co, 10
  br i1 %or.cond240, label %bb.o, label %_ZNK6icu_789UVector6410elementAtiEi.exit.thread

bb.o:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit122
  %i.cp = and i32 %i.ci, 1040384
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 43
  %i.cs = and i32 %i.ci, 8128
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 42
  %i.cv = shl i32 %i.ci, 24
  %i.cw = and i32 %i.cv, 1056964608
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cr, 4629700417037541888
  %i.cz = add nuw nsw i64 %i.cy, %i.cu
  %i.da = add nuw nsw i64 %i.cz, %i.cx
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit140

_ZNK6icu_789UVector6410elementAtiEi.exit.thread:  ; preds = %bb.n, %_ZNK6icu_789UVector6410elementAtiEi.exit122, %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !72 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !80
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !80
  %i.dh = and i32 %i.dg, -129
  %i.di = zext i32 %i.dh to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !72 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !80
  %i.dn = add i32 %i.dm, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !80
  %i.dr = and i32 %i.dq, -129
  %i.ds = zext i32 %i.dr to i64
  br label %bb.am

bb.q:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.dt = load i32, ptr %3, align 4, !tbaa !25
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.r, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.r:                                             ; preds = %bb.q
  %i.dv = tail call noundef i32 @_ZN6icu_7816CollationBuilder26findOrInsertNodeForPrimaryEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 5 uses
  %i.dw = load i32, ptr %3, align 4, !tbaa !25    ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 1
  br i1 %i.dx, label %bb.s, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.s:                                             ; preds = %bb.r
  %i.dy = icmp sgt i32 %i.dv, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ea = load i32, ptr %i.dz, align 8            ; 3 uses
  %i.eb = icmp slt i32 %i.dv, %i.ea
  %or.cond.i81.i172 = select i1 %i.dy, i1 %i.eb, i1 false
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %7 = load ptr, ptr %6, align 8                  ; 2 uses
  br i1 %or.cond.i81.i172, label %bb.t, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i173

bb.t:                                             ; preds = %bb.s
  %i.ec = zext nneg i32 %i.dv to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !82
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = lshr i32 %i.ef, 8
  %i.eh = and i32 %i.eg, 1048575
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i173

_ZNK6icu_789UVector6410elementAtiEi.exit.i173:    ; preds = %bb.s, %bb.t
  %i.ei = phi i32 [ %i.eh, %bb.t ], [ 0, %bb.s ]  ; 4 uses
  %.not76.i177347 = icmp ne i32 %i.ei, 0
  %i.ej = icmp slt i32 %i.ei, %i.ea
  %or.cond241348 = select i1 %.not76.i177347, i1 %i.ej, i1 false
  br i1 %or.cond241348, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i178, label %.thread87.i185

_ZNK6icu_789UVector6410elementAtiEi.exit83.i178:  ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i173, %select.unfold.i181
  %i.ek = phi i32 [ %i.eu, %select.unfold.i181 ], [ %i.ei, %_ZNK6icu_789UVector6410elementAtiEi.exit.i173 ] ; 6 uses
  %.267.i174349.a = phi i32 [ %i.ek, %select.unfold.i181 ], [ %i.dv, %_ZNK6icu_789UVector6410elementAtiEi.exit.i173 ] ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !82 ; 4 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = and i32 %i.eo, 3                        ; 2 uses
  %.not77.i179 = icmp samesign ugt i32 %i.ep, 1
  br i1 %.not77.i179, label %select.unfold.i181, label %bb.u

bb.u:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit83.i178
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.thread87.i185, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = and i64 %i.en, 8
  %.not78.i180 = icmp eq i64 %i.er, 0
  br i1 %.not78.i180, label %bb.w, label %select.unfold.i181

bb.w:                                             ; preds = %bb.v
  %.not.i187 = icmp ult i64 %i.en, 281474976710656
  br i1 %.not.i187, label %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit124, label %.thread87.i185

select.unfold.i181:                               ; preds = %bb.v, %_ZNK6icu_789UVector6410elementAtiEi.exit83.i178
  %i.es = trunc i64 %i.en to i32
  %i.et = lshr i32 %i.es, 8
  %i.eu = and i32 %i.et, 1048575                  ; 4 uses
  %.not76.i177 = icmp ne i32 %i.eu, 0
  %i.ev = icmp slt i32 %i.eu, %i.ea
  %or.cond241 = select i1 %.not76.i177, i1 %i.ev, i1 false
  br i1 %or.cond241, label %_ZNK6icu_789UVector6410elementAtiEi.exit83.i178, label %.thread87.i185

.thread87.i185:                                   ; preds = %select.unfold.i181, %bb.u, %_ZNK6icu_789UVector6410elementAtiEi.exit.i173, %bb.w
  %.267.i174345 = phi i32 [ %.267.i174349.a, %bb.w ], [ %i.dv, %_ZNK6icu_789UVector6410elementAtiEi.exit.i173 ], [ %.267.i174349.a, %bb.u ], [ %i.ek, %select.unfold.i181 ]
  %i.ew = phi i32 [ %i.ek, %bb.w ], [ %i.ei, %_ZNK6icu_789UVector6410elementAtiEi.exit.i173 ], [ %i.ek, %bb.u ], [ %i.eu, %select.unfold.i181 ]
  %i.ex = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %.267.i174345, i32 noundef %i.ew, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.pre = load i32, ptr %3, align 4, !tbaa !25
  br label %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit124

_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit124: ; preds = %bb.w, %.thread87.i185
  %i.ey = phi i32 [ %.pre, %.thread87.i185 ], [ %i.dw, %bb.w ]
  %.014.i123 = phi i32 [ %i.ex, %.thread87.i185 ], [ %i.ek, %bb.w ] ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.x, label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.x:                                             ; preds = %_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode.exit124
  %i.fa = icmp sgt i32 %.014.i123, -1
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.fc = load i32, ptr %i.fb, align 8            ; 3 uses
  %i.fd = icmp slt i32 %.014.i123, %i.fc
  %or.cond.i125 = select i1 %i.fa, i1 %i.fd, i1 false
  br i1 %or.cond.i125, label %bb.y, label %_ZNK6icu_789UVector6410elementAtiEi.exit126

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !77
  %i.fg = zext nneg i32 %.014.i123 to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit126

_ZNK6icu_789UVector6410elementAtiEi.exit126:      ; preds = %bb.x, %bb.y
  %i.fj = phi i64 [ %i.fi, %bb.y ], [ 0, %bb.x ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit128, %_ZNK6icu_789UVector6410elementAtiEi.exit126
  %.081 = phi i64 [ %i.fj, %_ZNK6icu_789UVector6410elementAtiEi.exit126 ], [ %i.fs, %_ZNK6icu_789UVector6410elementAtiEi.exit128 ]
  %i.fl = trunc i64 %.081 to i32
  %i.fm = lshr i32 %i.fl, 8
  %i.fn = and i32 %i.fm, 1048575                  ; 4 uses
  %.not108 = icmp ne i32 %i.fn, 0
  %i.fo = icmp slt i32 %i.fn, %i.fc
  %or.cond242 = select i1 %.not108, i1 %i.fo, i1 false
  br i1 %or.cond242, label %_ZNK6icu_789UVector6410elementAtiEi.exit128, label %_ZNK6icu_789UVector6410elementAtiEi.exit128.thread

_ZNK6icu_789UVector6410elementAtiEi.exit128:      ; preds = %bb.z
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !77 ; 2 uses
  %i.fq = zext nneg i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !82 ; 3 uses
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %i.fu = and i32 %i.ft, 3
  switch i32 %i.fu, label %bb.z [
    i32 0, label %_ZNK6icu_789UVector6410elementAtiEi.exit128.thread
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit128
  %i.fv = trunc i64 %i.fs to i8                   ; 2 uses
  %i.fw = and i8 %i.fv, 8
  %.not109 = icmp eq i8 %i.fw, 0
  br i1 %.not109, label %_ZNK6icu_789UVector6410elementAtiEi.exit128.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fx = and i8 %i.fv, 32
  %.not110 = icmp eq i8 %i.fx, 0
  br i1 %.not110, label %_ZNK6icu_789UVector6410elementAtiEi.exit130, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fy = lshr i32 %i.ft, 8
  %i.fz = and i32 %i.fy, 1048575                  ; 2 uses
  %i.ga = icmp samesign ult i32 %i.fz, %i.fc
  br i1 %i.ga, label %bb.ad, label %_ZNK6icu_789UVector6410elementAtiEi.exit130

bb.ad:                                            ; preds = %bb.ac
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !82
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = lshr i32 %i.ge, 8
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit130

_ZNK6icu_789UVector6410elementAtiEi.exit130:      ; preds = %bb.ad, %bb.ac, %bb.ab
  %.082 = phi i32 [ %i.fn, %bb.ab ], [ %i.gf, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.gg = and i32 %.082, 1040384
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 43
  %i.gj = and i32 %.082, 8128
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 42
  %i.gm = shl i32 %.082, 24
  %i.gn = and i32 %i.gm, 1056964608
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = add nuw nsw i64 %i.gi, 4629700417037541632
  %i.gq = add nuw nsw i64 %i.gp, %i.gl
  %i.gr = add nuw nsw i64 %i.gq, %i.go
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit140

_ZNK6icu_789UVector6410elementAtiEi.exit128.thread: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit128, %bb.z, %bb.aa
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !80
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !80
  %i.gz = and i32 %i.gy, -129
  %i.ha = zext i32 %i.gz to i64
  br label %bb.am

bb.ae:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !72 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !80
  %i.hf = add i32 %i.he, -1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !80
  %i.hj = and i32 %i.hi, -129
  %i.hk = zext i32 %i.hj to i64
  br label %bb.am

bb.af:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !72 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !80
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !80
  %i.hs = zext i32 %i.hr to i64
  %i.ht = shl nuw i64 %i.hs, 32
  %i.hu = or disjoint i64 %i.ht, 83887360
  br label %bb.am

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !66
  %i.hy = add i32 %i.hx, 1
  %i.hz = tail call noundef i64 @_ZNK6icu_7821CollationRootElements23lastCEWithPrimaryBeforeEj(ptr noundef nonnull align 8 dereferenceable(12) %i.hv, i32 noundef %i.hy)
  br label %bb.am

bb.ah:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !66
  %i.id = add i32 %i.ic, 1
  %i.ie = tail call noundef i64 @_ZNK6icu_7821CollationRootElements25firstCEWithPrimaryAtLeastEj(ptr noundef nonnull align 8 dereferenceable(12) %i.ia, i32 noundef %i.id)
  br label %bb.am

bb.ai:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !47
  %i.ii = tail call noundef i32 @_ZNK6icu_7813CollationData23getFirstPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %i.ih, i32 noundef 17)
  %i.ij = tail call noundef i64 @_ZNK6icu_7821CollationRootElements25firstCEWithPrimaryAtLeastEj(ptr noundef nonnull align 8 dereferenceable(12) %i.if, i32 noundef %i.ii)
  br label %bb.am

bb.aj:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !47
  %i.im = tail call noundef i64 @_ZNK6icu_7813CollationData11getSingleCEEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %i.il, i32 noundef 19968, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.am

bb.ak:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  store i32 16, ptr %3, align 4, !tbaa !25
  store ptr @.str.12, ptr %2, align 8, !tbaa !97
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit140

bb.al:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  store i32 1, ptr %3, align 4, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode:bb.a
  %i.z = load i32, ptr %i.d, align 8
  %i.aa = icmp slt i32 %1, %i.z
  %or.cond.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !82
  %i.ag = and i64 %i.af, -268435201
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.c, %bb.d
  %i.ah = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %i.ai = shl i32 %i.e, 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = or i64 %i.ah, %i.aj
  tail call void @_ZN6icu_789UVector6412setElementAtEli(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ak, i32 noundef %1)
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.al = icmp sgt i32 %2, -1
  %i.am = load i32, ptr %i.d, align 8
  %i.an = icmp slt i32 %2, %i.am
  %or.cond.i21 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond.i21, label %bb.f, label %_ZNK6icu_789UVector6410elementAtiEi.exit22

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = zext nneg i32 %2 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82
  %i.at = and i64 %i.as, -281474708275201
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit22

_ZNK6icu_789UVector6410elementAtiEi.exit22:       ; preds = %bb.e, %bb.f
  %i.au = phi i64 [ %i.at, %bb.f ], [ 0, %bb.e ]
  %i.av = sext i32 %i.e to i64
  %i.aw = shl nsw i64 %i.av, 28
  %i.ax = or i64 %i.au, %i.aw
  tail call void @_ZN6icu_789UVector6412setElementAtEli(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ax, i32 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit, %_ZNK6icu_789UVector6410elementAtiEi.exit22, %_ZNK6icu_789UVector6410elementAtiEi.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit ], [ %i.e, %_ZNK6icu_789UVector6410elementAtiEi.exit22 ], [ %i.e, %_ZNK6icu_789UVector6410elementAtiEi.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 1280
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %1, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp slt i32 %1, %i.f
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = and i32 %i.n, 3
  %.not.i = icmp slt i32 %i.o, %3
  br i1 %.not.i, label %bb.e, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit

bb.e:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = and i64 %i.m, 64
  %.not21.i = icmp eq i64 %i.q, 0
  br i1 %.not21.i, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = and i64 %i.m, 32
  %.not20.i = icmp eq i64 %i.r, 0
  br i1 %.not20.i, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = lshr i32 %i.n, 8
  %i.t = and i32 %i.s, 1048575                    ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.f
  br i1 %i.u, label %bb.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit24.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.x = zext nneg i32 %i.t to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit24.i

_ZNK6icu_789UVector6410elementAtiEi.exit24.i:     ; preds = %bb.i, %bb.h
  %i.aa = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %_ZNK6icu_789UVector6410elementAtiEi.exit24.i
  %.0.i = phi i64 [ %i.aa, %_ZNK6icu_789UVector6410elementAtiEi.exit24.i ], [ %.0.i.be, %.backedge.i.backedge ]
  %i.ac = trunc i64 %.0.i to i32
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp slt i32 %i.ae, %i.f
  br i1 %i.af, label %_ZNK6icu_789UVector6410elementAtiEi.exit26.i, label %.backedge.i.backedge

_ZNK6icu_789UVector6410elementAtiEi.exit26.i:     ; preds = %.backedge.i
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !82 ; 5 uses
  %i.ak = and i64 %i.aj, 8
  %.not22.i = icmp eq i64 %i.ak, 0
  br i1 %.not22.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i, label %.backedge.i.backedge

_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit26.i
  %i.al = trunc i64 %i.aj to i32
  %i.am = and i32 %i.al, 3
  %i.an = icmp sgt i32 %i.am, %3
  %i.ao = icmp ult i64 %i.aj, 360287970189639680
  %or.cond.i = or i1 %i.ao, %i.an
  br i1 %or.cond.i, label %.backedge.i.backedge, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit

.backedge.i.backedge:                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i, %_ZNK6icu_789UVector6410elementAtiEi.exit26.i, %.backedge.i
  %.0.i.be = phi i64 [ %i.aj, %_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i ], [ %i.aj, %_ZNK6icu_789UVector6410elementAtiEi.exit26.i ], [ 0, %.backedge.i ]
  br label %.backedge.i, !llvm.loop !2

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aq = icmp sgt i32 %1, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i32 %1, %i.as
  %or.cond.i81 = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond.i81, label %bb.k, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !77
  %i.aw = zext nneg i32 %1 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.j, %bb.k
  %i.az = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]  ; 5 uses
  %i.ba = add i32 %2, -1
  %or.cond = icmp ult i32 %i.ba, 1279
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.bb = icmp eq i32 %3, 1                       ; 3 uses
  %i.bc = select i1 %i.bb, i64 64, i64 32         ; 2 uses
  %i.bd = and i64 %i.az, %i.bc
  %.not75 = icmp eq i64 %i.bd, 0
  br i1 %.not75, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.be = sext i32 %3 to i64                      ; 2 uses
  %i.bf = and i64 %i.az, 32
  %i.bg = and i64 %i.az, -33
  %.061 = select i1 %i.bb, i64 %i.bg, i64 %i.az   ; 2 uses
  %i.bh = select i1 %i.bb, i64 %i.bf, i64 0
  %i.bi = or i64 %i.bh, %i.be
  %.060 = or i64 %i.bi, 360287970189639680
  %i.bj = or i64 %.061, %i.bc
  tail call void @_ZN6icu_789UVector6412setElementAtEli(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bj, i32 noundef %1)
  %i.bk = trunc i64 %.061 to i32
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = and i32 %i.bl, 1048575                  ; 2 uses
  %i.bn = zext nneg i32 %2 to i64
  %i.bo = shl nuw nsw i64 %i.bn, 48
  %i.bp = or i64 %i.bo, %i.be
  %i.bq = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i32 noundef %i.bm, i64 noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.br = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.bq, i32 noundef %i.bm, i64 noundef %.060, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  br label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit

bb.m:                                             ; preds = %bb.l, %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 608
  %5 = load ptr, ptr %i.bs, align 8
  br label %bb.n

bb.n:                                             ; preds = %select.unfold, %bb.m
  %.267 = phi i32 [ %1, %bb.m ], [ %.368, %select.unfold ] ; 3 uses
  %.364 = phi i64 [ %i.az, %bb.m ], [ %i.ca, %select.unfold ]
  %.259 = phi i32 [ undef, %bb.m ], [ %.5, %select.unfold ] ; 3 uses
  %i.bt = trunc i64 %.364 to i32
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = and i32 %i.bu, 1048575                  ; 8 uses
  %.not76 = icmp eq i32 %i.bv, 0
  br i1 %.not76, label %.thread87, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp slt i32 %i.bv, %i.as
  br i1 %i.bw, label %bb.p, label %_ZNK6icu_789UVector6410elementAtiEi.exit83

bb.p:                                             ; preds = %bb.o
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !82
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit83

_ZNK6icu_789UVector6410elementAtiEi.exit83:       ; preds = %bb.o, %bb.p
  %i.ca = phi i64 [ %i.bz, %bb.p ], [ 0, %bb.o ]  ; 4 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 3                        ; 2 uses
  %.not77 = icmp sgt i32 %i.cc, %3
  br i1 %.not77, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit83
  %i.cd = icmp samesign ult i32 %i.cc, %3
  br i1 %i.cd, label %.thread87, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = and i64 %i.ca, 8
  %.not78 = icmp eq i64 %i.ce, 0
  br i1 %.not78, label %bb.s, label %select.unfold

bb.s:                                             ; preds = %bb.r
  %i.cf = lshr i64 %i.ca, 48
  %i.cg = trunc nuw nsw i64 %i.cf to i32          ; 3 uses
  %.not = icmp eq i32 %2, %i.cg                   ; 2 uses
  %.not93 = icmp ult i32 %2, %i.cg
  %.79 = select i1 %.not93, i32 3, i32 0
  %.3 = select i1 %.not, i32 %i.bv, i32 %.259
  %cond = icmp ugt i32 %2, %i.cg                  ; 2 uses
  %.1 = select i1 %.not, i32 1, i32 %.79
  %spec.select = select i1 %cond, i32 %i.bv, i32 %.267
  %spec.select112 = select i1 %cond, i32 0, i32 %.1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.s, %_ZNK6icu_789UVector6410elementAtiEi.exit83, %bb.r
  %.368 = phi i32 [ %spec.select, %bb.s ], [ %i.bv, %_ZNK6icu_789UVector6410elementAtiEi.exit83 ], [ %i.bv, %bb.r ] ; 2 uses
  %.5 = phi i32 [ %.3, %bb.s ], [ %.259, %_ZNK6icu_789UVector6410elementAtiEi.exit83 ], [ %.259, %bb.r ] ; 2 uses
  %.2 = phi i32 [ %spec.select112, %bb.s ], [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit83 ], [ 0, %bb.r ]
  switch i32 %.2, label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit [
    i32 0, label %bb.n
    i32 3, label %.thread87
  ], !llvm.loop !140

.thread87:                                        ; preds = %bb.q, %select.unfold, %bb.n
  %.469 = phi i32 [ %.267, %bb.q ], [ %.368, %select.unfold ], [ %.267, %bb.n ]
  %i.ch = zext i32 %2 to i64
  %i.ci = shl i64 %i.ch, 48
  %i.cj = sext i32 %3 to i64
  %i.ck = or i64 %i.ci, %i.cj
  %i.cl = tail call noundef i32 @_ZN6icu_7816CollationBuilder17insertNodeBetweenEiilR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %.469, i32 noundef %i.bv, i64 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit

_ZNK6icu_7816CollationBuilder14findCommonNodeEii.exit: ; preds = %select.unfold, %_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i, %.thread, %bb.g, %bb.f, %_ZNK6icu_789UVector6410elementAtiEi.exit.i, %.thread87, %bb.a
  %.8 = phi i32 [ 0, %bb.a ], [ %i.cl, %.thread87 ], [ %i.bq, %.thread ], [ %i.ae, %_ZNK6icu_789UVector6410elementAtiEi.exit26.thread.i ], [ %1, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ %1, %bb.f ], [ %1, %bb.g ], [ %.5, %select.unfold ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 16) i32 @_ZN6icu_7816CollationBuilder10ceStrengthEl(i64 noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = trunc i64 %0 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1174405120
  %i.c = icmp ult i32 %i.b, -1073741824
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.a, 8
  %i.e = and i32 %i.d, 3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not5 = icmp ult i64 %0, 72057594037927936
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %0, 4278190080
  %.not6 = icmp eq i64 %i.f, 0
  %.not7 = icmp eq i64 %0, 0
  %i.g = select i1 %.not7, i32 15, i32 2
  %i.h = select i1 %.not6, i32 %i.g, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.d ], [ 0, %bb.c ]
  ret i32 %i.i
}

declare noundef i32 @_ZNK6icu_7821CollationRootElements18getSecondaryBeforeEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7821CollationRootElements17getTertiaryBeforeEjjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816CollationBuilder25findOrInsertNodeForRootCEEliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = tail call noundef i32 @_ZN6icu_7816CollationBuilder26findOrInsertNodeForPrimaryEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %1 to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 16
  %i.i = tail call noundef i32 @_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.e, i32 noundef %i.h, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %.not16 = icmp eq i32 %2, 1
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.g, 16191
  %i.k = tail call noundef i32 @_ZN6icu_7816CollationBuilder20findOrInsertWeakNodeEijiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.i, %bb.c ]
  ret i32 %.014
}

declare noundef i64 @_ZNK6icu_7821CollationRootElements23lastCEWithPrimaryBeforeEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6icu_7821CollationRootElements25firstCEWithPrimaryAtLeastEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813CollationData23getFirstPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK6icu_7813CollationData11getSingleCEEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare noundef i32 @_ZNK6icu_7821CollationRootElements11findPrimaryEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7821CollationRootElements15getPrimaryAfterEjia(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816CollationBuilder11addRelationEiRKNS_13UnicodeStringES3_S3_RPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.be

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp ugt i16 %i.e, 31
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88, !nonnull !75, !align !76 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %6, align 4, !tbaa !25
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str.14, ptr %5, align 8, !tbaa !97
  br label %bb.bd

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.g:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88, !nonnull !75, !align !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !12, !alias.scope !145
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 2, ptr %i.r, align 8, !tbaa !26, !alias.scope !145
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !12, !noalias !145
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !noalias !145
  %i.v = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %_ZNK6icu_7811Normalizer29normalizeERKNS_13UnicodeStringER10UErrorCode.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6icu_7811Normalizer29normalizeERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %bb.g
end_hunk_1
