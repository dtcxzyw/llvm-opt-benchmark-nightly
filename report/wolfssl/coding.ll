Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/coding?download=true
inline.NumInlined: 22
inline.NumDeleted: 1
begin_hunk_0_@Base64_Decode:bb.a
  br i1 %i.ec, label %.lr.ph62.i178, label %Base64_SkipNewline.exit188, !llvm.loop !1

Base64_SkipNewline.exit188:                       ; preds = %.lr.ph431, %.Base64_SkipNewline.exit188_crit_edge
  %i.ed = phi i8 [ %.pre330, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.eb, %.lr.ph431 ] ; 2 uses
  %.5213 = phi i32 [ %.245.i172, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.dx, %.lr.ph431 ]
  %.5 = phi i32 [ %.240.i173, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.dy, %.lr.ph431 ]
  %i.ee = add i32 %.5, 1
  %i.ef = add i32 %.5213, -1                      ; 2 uses
  %i.eg = icmp ne i8 %i.cw, 61                    ; 4 uses
  %i.eh = icmp eq i8 %i.ed, 61                    ; 4 uses
  %or.cond7 = or i1 %i.eg, %i.eh
  br i1 %or.cond7, label %bb.ad, label %Base64_SkipNewline.exit.thread237

bb.ad:                                            ; preds = %Base64_SkipNewline.exit188
  %i.ei = add i32 %.078288, 1                     ; 3 uses
  %i.ej = zext i1 %i.eg to i32
  %i.ek = add i32 %i.ei, %i.ej
  %i.el = xor i1 %i.eh, true
  %i.em = zext i1 %i.el to i32
  %i.en = add i32 %i.ek, %i.em
  %i.eo = load i32, ptr %3, align 4, !tbaa !10
  %i.ep = icmp ugt i32 %i.en, %i.eo
  br i1 %i.ep, label %Base64_SkipNewline.exit.thread237, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = tail call fastcc zeroext i8 @Base64_Char2Val_CT(i8 noundef zeroext %i.ah) ; 2 uses
  %i.er = tail call fastcc zeroext i8 @Base64_Char2Val_CT(i8 noundef zeroext %i.bp) ; 3 uses
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.es = tail call fastcc zeroext i8 @Base64_Char2Val_CT(i8 noundef zeroext %i.cw)
  %i.et = zext i8 %i.es to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.eu = phi i32 [ %i.et, %bb.af ], [ 0, %bb.ae ] ; 3 uses
  br i1 %i.eh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = tail call fastcc zeroext i8 @Base64_Char2Val_CT(i8 noundef zeroext %i.ed)
  %i.ew = zext i8 %i.ev to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ex = phi i32 [ %i.ew, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.ey = icmp eq i8 %i.eq, -1
  %i.ez = icmp eq i8 %i.er, -1
  %or.cond10 = select i1 %i.ey, i1 true, i1 %i.ez
  %i.fa = icmp eq i32 %i.eu, 255
  %or.cond13 = select i1 %or.cond10, i1 true, i1 %i.fa
  %i.fb = icmp eq i32 %i.ex, 255
  %or.cond16 = select i1 %or.cond13, i1 true, i1 %i.fb
  br i1 %or.cond16, label %Base64_SkipNewline.exit.thread237, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = shl i8 %i.eq, 2
  %i.fd = lshr i8 %i.er, 4
  %i.fe = or i8 %i.fd, %i.fc
  %i.ff = shl nuw nsw i32 %i.eu, 6
  %i.fg = or i32 %i.ex, %i.ff
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = zext i32 %.078288 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  store i8 %i.fe, ptr %i.fj, align 1, !tbaa !11
  br i1 %i.eg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fk = shl i8 %i.er, 4
  %i.fl = lshr i32 %i.eu, 2
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  %i.fn = or i8 %i.fk, %i.fm
  %i.fo = add i32 %.078288, 2
  %i.fp = zext i32 %i.ei to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1 = phi i32 [ %i.ei, %bb.aj ], [ %i.fo, %bb.ak ] ; 3 uses
  br i1 %i.eh, label %.thread, label %Base64_SkipNewline.exit

Base64_SkipNewline.exit:                          ; preds = %bb.al
  %i.fr = add i32 %.1, 1                          ; 2 uses
  %i.fs = zext i32 %.1 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  store i8 %i.fh, ptr %i.ft, align 1, !tbaa !11
  %i.fu = icmp ugt i32 %i.ef, 3
  br i1 %i.fu, label %.lr.ph, label %.thread

.thread:                                          ; preds = %Base64_SkipNewline.exit, %bb.al, %bb.e, %.loopexit, %.lr.ph62.i.preheader, %.lr.ph62.i, %.preheader
  %.3251 = phi i32 [ 0, %.preheader ], [ %.078288, %.lr.ph62.i ], [ %.078288, %bb.e ], [ %.1, %bb.al ], [ %i.fr, %Base64_SkipNewline.exit ], [ %.078288, %.loopexit ], [ %.078288, %.lr.ph62.i.preheader ] ; 3 uses
  %i.fv = load i32, ptr %3, align 4, !tbaa !10
  %i.fw = icmp ugt i32 %i.fv, %.3251
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread
  %i.fx = zext i32 %.3251 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx
  store i8 0, ptr %i.fy, align 1, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread
  store i32 %.3251, ptr %3, align 4, !tbaa !10
  br label %Base64_SkipNewline.exit.thread237

Base64_SkipNewline.exit.thread237:                ; preds = %bb.aa, %Base64_SkipNewline.exit157, %bb.z, %bb.t, %Base64_SkipNewline.exit126, %bb.s, %bb.m, %bb.h, %bb.l, %bb.d, %bb.ai, %bb.ad, %Base64_SkipNewline.exit188, %.lr.ph62.i116.preheader, %.lr.ph62.i147.preheader, %.lr.ph62.i178.preheader, %.lr.ph62.i116, %.lr.ph62.i147, %.lr.ph62.i178, %bb.a, %bb.an
  %.281 = phi i32 [ 0, %bb.an ], [ -173, %bb.a ], [ -132, %.lr.ph62.i147 ], [ -132, %.lr.ph62.i116 ], [ -132, %.lr.ph62.i178 ], [ -132, %Base64_SkipNewline.exit157 ], [ -154, %bb.z ], [ -132, %bb.aa ], [ -132, %Base64_SkipNewline.exit126 ], [ -132, %bb.t ], [ -132, %bb.h ], [ -132, %bb.m ], [ -154, %bb.s ], [ -154, %bb.l ], [ -154, %Base64_SkipNewline.exit188 ], [ -132, %bb.ad ], [ -154, %bb.ai ], [ -154, %bb.d ], [ -132, %.lr.ph62.i116.preheader ], [ -132, %.lr.ph62.i178.preheader ], [ -132, %.lr.ph62.i147.preheader ]
  ret i32 %.281
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext i8 @Base64_Char2Val_CT(i8 noundef zeroext %0) unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 4 uses
  %i.b = add nuw nsw i32 %i.a, 65492
  %i.c = add nuw nsw i32 %i.a, 65493
  %i.d = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.f = add nsw <4 x i32> %i.e, <i32 -123, i32 -91, i32 131014, i32 -48>
  %i.g = add nsw <4 x i32> %i.e, <i32 -97, i32 -65, i32 -48, i32 131025>
  %i.h = xor <4 x i32> %i.g, %i.f                 ; 2 uses
  %i.i = ashr <4 x i32> %i.h, splat (i32 8)
  %i.j = lshr <4 x i32> %i.h, splat (i32 8)
  %i.k = shufflevector <4 x i32> %i.i, <4 x i32> %i.j, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.l = add nsw <4 x i32> %i.e, <i32 -70, i32 -64, i32 5, i32 17>
  %i.m = and <4 x i32> %i.k, %i.l
  %i.n = xor i32 %i.c, %i.b
  %i.o = lshr i32 %i.n, 8
  %i.p = add nuw nsw i32 %i.a, 20
  %i.q = and i32 %i.o, %i.p
  %i.r = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.m)
  %op.rdx = or i32 %i.r, %i.q
  %i.s = trunc i32 %op.rdx to i8
  %i.t = add i8 %i.s, -1
  ret i8 %i.t
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -202, 1) i32 @Base64_Encode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @DoBase64_Encode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -202, 1) i32 @DoBase64_Encode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %2, null                     ; 37 uses
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq ptr %0, null
  %i.e = icmp ne i32 %1, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %1, 2
  %i.g = udiv i32 %i.f, 3
  %i.h = shl i32 %i.g, 2                          ; 2 uses
  %i.i = add i32 %i.h, 60
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  switch i32 %4, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = mul nuw nsw i32 %i.j, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0129 = phi i32 [ %i.k, %bb.c ], [ 0, %bb.d ], [ %i.j, %bb.b ]
  %i.l = add i32 %.0129, %i.h                     ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ee, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %3, align 4, !tbaa !10
  %i.n = icmp ule i32 %i.l, %i.m
  %or.cond3 = or i1 %i.b, %i.n
  br i1 %or.cond3, label %.preheader, label %bb.ee

.preheader:                                       ; preds = %bb.f
  %i.o = icmp ugt i32 %1, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = icmp eq i32 %4, 1                        ; 5 uses
  %.not159 = icmp eq i32 %4, 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %CEscape.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %CEscape.exit ] ; 4 uses
  %.0130310 = phi i32 [ 0, %.lr.ph ], [ %.2, %CEscape.exit ] ; 2 uses
  %.0137308 = phi i32 [ %1, %.lr.ph ], [ %i.fe, %CEscape.exit ]
  %.045.i194304307 = phi i32 [ 0, %.lr.ph ], [ %.045.i194305, %CEscape.exit ] ; 13 uses
  %5 = add nuw i64 %indvars.iv, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11    ; 2 uses
  %6 = add nuw i64 %indvars.iv, 2
  %7 = and i64 %5, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %8 = and i64 %6, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11    ; 2 uses
  %i.w = lshr i8 %i.r, 2
  %i.x = shl i8 %i.t, 2
  %i.y = and i8 %i.x, 60
  %i.z = lshr i8 %i.v, 6
  %i.aa = or disjoint i8 %i.z, %i.y
  %i.ab = and i8 %i.v, 63
  %i.ac = load i32, ptr %3, align 4, !tbaa !10
  %i.ad = zext nneg i8 %i.w to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11  ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  switch i8 %i.af, label %bb.l [
    i8 43, label %bb.i
    i8 61, label %bb.j
    i8 10, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.ag = phi i1 [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.g ]
  %.046.i = phi i32 [ 1, %bb.h ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.k ], [ 1, %bb.g ]
  %.not50.i = phi i1 [ true, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.g ]
  %.not51.i = phi i1 [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.k ], [ true, %bb.g ]
  %.not52.i = phi i1 [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.g ]
  %i.ah = add i32 %.046.i, %.045.i194304307
  %i.ai = icmp ule i32 %i.ah, %i.ac
  %or.cond.i = or i1 %i.b, %i.ai
  br i1 %or.cond.i, label %bb.m, label %CEscape.exit235.thread.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = add i32 %.045.i194304307, 1             ; 2 uses
  br i1 %i.b, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = zext i32 %.045.i194304307 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  store i8 %i.af, ptr %i.al, align 1, !tbaa !11
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  br i1 %i.b, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = add i32 %.045.i194304307, 3
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.an = add i32 %.045.i194304307, 1             ; 4 uses
  %i.ao = zext i32 %.045.i194304307 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  store i8 37, ptr %i.ap, align 1, !tbaa !11
  br i1 %.not50.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add i32 %.045.i194304307, 2
  %i.ar = zext i32 %i.an to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  store i8 50, ptr %i.as, align 1, !tbaa !11
  %i.at = add i32 %.045.i194304307, 3
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  store i8 66, ptr %i.av, align 1, !tbaa !11
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br i1 %.not51.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add i32 %.045.i194304307, 2
  %i.ax = zext i32 %i.an to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  store i8 51, ptr %i.ay, align 1, !tbaa !11
  %i.az = add i32 %.045.i194304307, 3
  %i.ba = zext i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  store i8 68, ptr %i.bb, align 1, !tbaa !11
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not52.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = add i32 %.045.i194304307, 2
  %i.bd = zext i32 %i.an to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  store i8 48, ptr %i.be, align 1, !tbaa !11
  %i.bf = add i32 %.045.i194304307, 3
  %i.bg = zext i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %i.bg
  store i8 65, ptr %i.bh, align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.s, %bb.u, %bb.v, %bb.w
  %.045.i = phi i32 [ %i.an, %bb.v ], [ %i.aj, %bb.o ], [ %i.am, %bb.q ], [ %i.at, %bb.s ], [ %i.az, %bb.u ], [ %i.bf, %bb.w ], [ %i.aj, %bb.n ] ; 13 uses
  %i.bi = shl i8 %i.r, 4
  %i.bj = and i8 %i.bi, 48
  %i.bk = lshr i8 %i.t, 4
  %i.bl = or disjoint i8 %i.bk, %i.bj
  %i.bm = load i32, ptr %3, align 4, !tbaa !10
  %i.bn = zext nneg i8 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11  ; 2 uses
  br i1 %i.p, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  switch i8 %i.bp, label %bb.ac [
    i8 43, label %bb.z
    i8 61, label %bb.aa
    i8 10, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bq = phi i1 [ true, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ true, %bb.x ]
  %.046.i164 = phi i32 [ 1, %bb.y ], [ 3, %bb.z ], [ 3, %bb.aa ], [ 3, %bb.ab ], [ 1, %bb.x ]
  %.not50.i165 = phi i1 [ true, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.x ]
  %.not51.i166 = phi i1 [ true, %bb.y ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %bb.ab ], [ true, %bb.x ]
  %.not52.i167 = phi i1 [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.x ]
  %i.br = add i32 %.046.i164, %.045.i
  %i.bs = icmp ule i32 %i.br, %i.bm
  %or.cond.i168 = or i1 %i.b, %i.bs
  br i1 %or.cond.i168, label %bb.ad, label %CEscape.exit235.thread.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bt = add i32 %.045.i, 1                      ; 2 uses
  br i1 %i.b, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = zext i32 %.045.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %i.bu
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !11
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bw = add i32 %.045.i, 3
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.bx = add i32 %.045.i, 1                      ; 4 uses
  %i.by = zext i32 %.045.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  store i8 37, ptr %i.bz, align 1, !tbaa !11
  br i1 %.not50.i165, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = add i32 %.045.i, 2
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  store i8 50, ptr %i.cc, align 1, !tbaa !11
  %i.cd = add i32 %.045.i, 3
  %i.ce = zext i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce
  store i8 66, ptr %i.cf, align 1, !tbaa !11
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not51.i166, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = add i32 %.045.i, 2
  %i.ch = zext i32 %i.bx to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch
  store i8 51, ptr %i.ci, align 1, !tbaa !11
  %i.cj = add i32 %.045.i, 3
  %i.ck = zext i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  store i8 68, ptr %i.cl, align 1, !tbaa !11
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br i1 %.not52.i167, label %bb.ao, label %bb.an

end_hunk_0
begin_hunk_1_@DoBase64_Encode:bb.a
  %i.dh = zext i32 %i.dd to i64
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh
  store i8 50, ptr %i.di, align 1, !tbaa !11
  %i.dj = add i32 %.045.i170, 3
  %i.dk = zext i32 %i.dg to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk
  store i8 66, ptr %i.dl, align 1, !tbaa !11
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  br i1 %.not51.i174, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dm = add i32 %.045.i170, 2
  %i.dn = zext i32 %i.dd to i64
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %i.dn
  store i8 51, ptr %i.do, align 1, !tbaa !11
  %i.dp = add i32 %.045.i170, 3
  %i.dq = zext i32 %i.dm to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq
  store i8 68, ptr %i.dr, align 1, !tbaa !11
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not52.i175, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = add i32 %.045.i170, 2
  %i.dt = zext i32 %i.dd to i64
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dt
  store i8 48, ptr %i.du, align 1, !tbaa !11
  %i.dv = add i32 %.045.i170, 3
  %i.dw = zext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw
  store i8 65, ptr %i.dx, align 1, !tbaa !11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.av, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %bb.bd, %bb.be
  %.045.i178 = phi i32 [ %i.dd, %bb.bd ], [ %i.cz, %bb.aw ], [ %i.dc, %bb.ay ], [ %i.dj, %bb.ba ], [ %i.dp, %bb.bc ], [ %i.dv, %bb.be ], [ %i.cz, %bb.av ] ; 13 uses
  %i.dy = load i32, ptr %3, align 4, !tbaa !10
  %i.dz = zext nneg i8 %i.ab to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11  ; 2 uses
  br i1 %i.p, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  switch i8 %i.eb, label %bb.bk [
    i8 43, label %bb.bh
    i8 61, label %bb.bi
    i8 10, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.ec = phi i1 [ true, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.bj ], [ true, %bb.bf ]
  %.046.i180 = phi i32 [ 1, %bb.bg ], [ 3, %bb.bh ], [ 3, %bb.bi ], [ 3, %bb.bj ], [ 1, %bb.bf ]
  %.not50.i181 = phi i1 [ true, %bb.bg ], [ false, %bb.bh ], [ true, %bb.bi ], [ true, %bb.bj ], [ true, %bb.bf ]
  %.not51.i182 = phi i1 [ true, %bb.bg ], [ true, %bb.bh ], [ false, %bb.bi ], [ true, %bb.bj ], [ true, %bb.bf ]
  %.not52.i183 = phi i1 [ true, %bb.bg ], [ true, %bb.bh ], [ true, %bb.bi ], [ false, %bb.bj ], [ true, %bb.bf ]
  %i.ed = add i32 %.046.i180, %.045.i178
  %i.ee = icmp ule i32 %i.ed, %i.dy
  %or.cond.i184 = or i1 %i.b, %i.ee
  br i1 %or.cond.i184, label %bb.bl, label %CEscape.exit235.thread.thread

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ec, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ef = add i32 %.045.i178, 1                   ; 2 uses
  br i1 %i.b, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eg = zext i32 %.045.i178 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.eg
  store i8 %i.eb, ptr %i.eh, align 1, !tbaa !11
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bl
  br i1 %i.b, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ei = add i32 %.045.i178, 3
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bo
  %i.ej = add i32 %.045.i178, 1                   ; 4 uses
  %i.ek = zext i32 %.045.i178 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  store i8 37, ptr %i.el, align 1, !tbaa !11
  br i1 %.not50.i181, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.em = add i32 %.045.i178, 2
  %i.en = zext i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.en
  store i8 50, ptr %i.eo, align 1, !tbaa !11
  %i.ep = add i32 %.045.i178, 3
  %i.eq = zext i32 %i.em to i64
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  store i8 66, ptr %i.er, align 1, !tbaa !11
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  br i1 %.not51.i182, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.es = add i32 %.045.i178, 2
  %i.et = zext i32 %i.ej to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  store i8 51, ptr %i.eu, align 1, !tbaa !11
  %i.ev = add i32 %.045.i178, 3
  %i.ew = zext i32 %i.es to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  store i8 68, ptr %i.ex, align 1, !tbaa !11
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  br i1 %.not52.i183, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ey = add i32 %.045.i178, 2
  %i.ez = zext i32 %i.ej to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez
  store i8 48, ptr %i.fa, align 1, !tbaa !11
  %i.fb = add i32 %.045.i178, 3
  %i.fc = zext i32 %i.ey to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc
  store i8 65, ptr %i.fd, align 1, !tbaa !11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bm, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bu, %bb.bv
  %.045.i186 = phi i32 [ %i.ej, %bb.bu ], [ %i.ef, %bb.bn ], [ %i.ei, %bb.bp ], [ %i.ep, %bb.br ], [ %i.ev, %bb.bt ], [ %i.fb, %bb.bv ], [ %i.ef, %bb.bm ] ; 10 uses
  %i.fe = add i32 %.0137308, -3                   ; 4 uses
  br i1 %.not159, label %CEscape.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ff = add i32 %.0130310, 1                    ; 5 uses
  %i.fg = and i32 %i.ff, 15
  %i.fh = icmp eq i32 %i.fg, 0
  %i.fi = icmp ne i32 %i.fe, 0
  %or.cond5 = and i1 %i.fi, %i.fh
  br i1 %or.cond5, label %bb.by, label %CEscape.exit

bb.by:                                            ; preds = %bb.bx
  %i.fj = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  br i1 %i.p, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fk = add i32 %.045.i186, 1                   ; 3 uses
  %i.fl = icmp ule i32 %i.fk, %i.fj
  %or.cond.i192 = or i1 %i.b, %i.fl
  br i1 %or.cond.i192, label %bb.ca, label %CEscape.exit235.thread.thread

.thread:                                          ; preds = %bb.by
  %i.fm = add i32 %.045.i186, 3                   ; 3 uses
  %i.fn = icmp ule i32 %i.fm, %i.fj
  %or.cond.i192246 = or i1 %i.b, %i.fn
  br i1 %or.cond.i192246, label %bb.cb, label %CEscape.exit235.thread.thread

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.b, label %CEscape.exit, label %CEscape.exit.sink.split

bb.cb:                                            ; preds = %.thread
  br i1 %i.b, label %CEscape.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fo = add i32 %.045.i186, 1
  %i.fp = zext i32 %.045.i186 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  store i8 37, ptr %i.fq, align 1, !tbaa !11
  %i.fr = add i32 %.045.i186, 2
  %i.fs = zext i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  store i8 48, ptr %i.ft, align 1, !tbaa !11
  br label %CEscape.exit.sink.split

CEscape.exit.sink.split:                          ; preds = %bb.ca, %bb.cc
  %.045.i186.sink = phi i32 [ %i.fr, %bb.cc ], [ %.045.i186, %bb.ca ]
  %.sink = phi i8 [ 65, %bb.cc ], [ 10, %bb.ca ]
  %.045.i194305.ph = phi i32 [ %i.fm, %bb.cc ], [ %i.fk, %bb.ca ]
  %i.fu = zext i32 %.045.i186.sink to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 %i.fu
  store i8 %.sink, ptr %i.fv, align 1, !tbaa !11
  br label %CEscape.exit

CEscape.exit:                                     ; preds = %CEscape.exit.sink.split, %bb.cb, %bb.ca, %bb.bw, %bb.bx
  %.045.i194305 = phi i32 [ %.045.i186, %bb.bx ], [ %.045.i186, %bb.bw ], [ %i.fk, %bb.ca ], [ %i.fm, %bb.cb ], [ %.045.i194305.ph, %CEscape.exit.sink.split ] ; 2 uses
  %.2 = phi i32 [ %i.ff, %bb.bx ], [ %.0130310, %bb.bw ], [ %i.ff, %bb.ca ], [ %i.ff, %bb.cb ], [ %i.ff, %CEscape.exit.sink.split ]
  %i.fw = icmp ugt i32 %i.fe, 2
  br i1 %i.fw, label %bb.g, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %CEscape.exit
  %indvars.le = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.fx = phi i32 [ 0, %.preheader ], [ %.045.i194305, %._crit_edge.loopexit ] ; 14 uses
  %.0137.lcssa = phi i32 [ %1, %.preheader ], [ %i.fe, %._crit_edge.loopexit ] ; 2 uses
  %.0131.lcssa = phi i32 [ 0, %.preheader ], [ %indvars.le, %._crit_edge.loopexit ] ; 2 uses
  %.not300 = icmp eq i32 %.0137.lcssa, 0
  br i1 %.not300, label %CEscape.exit227, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge
  %i.fy = icmp eq i32 %.0137.lcssa, 2             ; 2 uses
  %i.fz = zext i32 %.0131.lcssa to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11  ; 2 uses
  br i1 %i.fy, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gc = add i32 %.0131.lcssa, 1
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = zext i8 %i.gf to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.gh = phi i32 [ %i.gg, %bb.ce ], [ 0, %bb.cd ] ; 2 uses
  %i.gi = lshr i8 %i.gb, 2
  %.tr = trunc nuw i32 %i.gh to i8
  %i.gj = shl i8 %.tr, 2
  %i.gk = and i8 %i.gj, 60
  %i.gl = load i32, ptr %3, align 4, !tbaa !10
  %i.gm = zext nneg i8 %i.gi to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11  ; 2 uses
  %i.gp = icmp eq i32 %4, 1                       ; 4 uses
  br i1 %i.gp, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  switch i8 %i.go, label %bb.ck [
    i8 43, label %bb.ch
    i8 61, label %bb.ci
    i8 10, label %bb.cj
  ]

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %i.gq = phi i1 [ true, %bb.cg ], [ false, %bb.ch ], [ false, %bb.ci ], [ false, %bb.cj ], [ true, %bb.cf ]
  %.046.i196 = phi i32 [ 1, %bb.cg ], [ 3, %bb.ch ], [ 3, %bb.ci ], [ 3, %bb.cj ], [ 1, %bb.cf ]
  %.not50.i197 = phi i1 [ true, %bb.cg ], [ false, %bb.ch ], [ true, %bb.ci ], [ true, %bb.cj ], [ true, %bb.cf ]
  %.not51.i198 = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ false, %bb.ci ], [ true, %bb.cj ], [ true, %bb.cf ]
  %.not52.i199 = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ true, %bb.ci ], [ false, %bb.cj ], [ true, %bb.cf ]
  %i.gr = add i32 %.046.i196, %i.fx
  %i.gs = icmp ule i32 %i.gr, %i.gl
  %or.cond.i200 = or i1 %i.b, %i.gs
  br i1 %or.cond.i200, label %bb.cl, label %CEscape.exit235.thread.thread

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.gq, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.gt = add i32 %i.fx, 1                        ; 2 uses
  br i1 %i.b, label %bb.cw, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gu = zext i32 %i.fx to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %i.gu
  store i8 %i.go, ptr %i.gv, align 1, !tbaa !11
  br label %bb.cw

bb.co:                                            ; preds = %bb.cl
  br i1 %i.b, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gw = add i32 %i.fx, 3
  br label %bb.cw

bb.cq:                                            ; preds = %bb.co
  %i.gx = add i32 %i.fx, 1                        ; 4 uses
  %i.gy = zext i32 %i.fx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 %i.gy
  store i8 37, ptr %i.gz, align 1, !tbaa !11
  br i1 %.not50.i197, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ha = add i32 %i.fx, 2
  %i.hb = zext i32 %i.gx to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb
  store i8 50, ptr %i.hc, align 1, !tbaa !11
  %i.hd = add i32 %i.fx, 3
  %i.he = zext i32 %i.ha to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 %i.he
  store i8 66, ptr %i.hf, align 1, !tbaa !11
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not51.i198, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hg = add i32 %i.fx, 2
  %i.hh = zext i32 %i.gx to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %i.hh
  store i8 51, ptr %i.hi, align 1, !tbaa !11
  %i.hj = add i32 %i.fx, 3
  %i.hk = zext i32 %i.hg to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %i.hk
  store i8 68, ptr %i.hl, align 1, !tbaa !11
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  br i1 %.not52.i199, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hm = add i32 %i.fx, 2
  %i.hn = zext i32 %i.gx to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %i.hn
  store i8 48, ptr %i.ho, align 1, !tbaa !11
  %i.hp = add i32 %i.fx, 3
  %i.hq = zext i32 %i.hm to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 %i.hq
  store i8 65, ptr %i.hr, align 1, !tbaa !11
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cm, %bb.cn, %bb.cp, %bb.cr, %bb.ct, %bb.cu, %bb.cv
  %.045.i202 = phi i32 [ %i.gx, %bb.cu ], [ %i.gt, %bb.cn ], [ %i.gw, %bb.cp ], [ %i.hd, %bb.cr ], [ %i.hj, %bb.ct ], [ %i.hp, %bb.cv ], [ %i.gt, %bb.cm ] ; 13 uses
  %i.hs = shl i8 %i.gb, 4
  %i.ht = and i8 %i.hs, 48
  %i.hu = lshr i32 %i.gh, 4
  %i.hv = trunc nuw nsw i32 %i.hu to i8
  %i.hw = or disjoint i8 %i.ht, %i.hv
  %i.hx = load i32, ptr %3, align 4, !tbaa !10
  %i.hy = zext nneg i8 %i.hw to i64
  %i.hz = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !11  ; 2 uses
  br i1 %i.gp, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  switch i8 %i.ia, label %bb.db [
    i8 43, label %bb.cy
    i8 61, label %bb.cz
    i8 10, label %bb.da
  ]

bb.cy:                                            ; preds = %bb.cx
  br label %bb.db

bb.cz:                                            ; preds = %bb.cx
  br label %bb.db

bb.da:                                            ; preds = %bb.cx
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw
  %i.ib = phi i1 [ true, %bb.cx ], [ false, %bb.cy ], [ false, %bb.cz ], [ false, %bb.da ], [ true, %bb.cw ]
  %.046.i204 = phi i32 [ 1, %bb.cx ], [ 3, %bb.cy ], [ 3, %bb.cz ], [ 3, %bb.da ], [ 1, %bb.cw ]
  %.not50.i205 = phi i1 [ true, %bb.cx ], [ false, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ true, %bb.cw ]
  %.not51.i206 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ false, %bb.cz ], [ true, %bb.da ], [ true, %bb.cw ]
  %.not52.i207 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.cz ], [ false, %bb.da ], [ true, %bb.cw ]
  %i.ic = add i32 %.046.i204, %.045.i202
  %i.id = icmp ule i32 %i.ic, %i.hx
  %or.cond.i208 = or i1 %i.b, %i.id
  br i1 %or.cond.i208, label %bb.dc, label %CEscape.exit235.thread.thread

bb.dc:                                            ; preds = %bb.db
  br i1 %i.ib, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.ie = add i32 %.045.i202, 1                   ; 2 uses
  br i1 %i.b, label %bb.dn, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.if = zext i32 %.045.i202 to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 %i.if
  store i8 %i.ia, ptr %i.ig, align 1, !tbaa !11
  br label %bb.dn

bb.df:                                            ; preds = %bb.dc
  br i1 %i.b, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ih = add i32 %.045.i202, 3
  br label %bb.dn

bb.dh:                                            ; preds = %bb.df
  %i.ii = add i32 %.045.i202, 1                   ; 4 uses
  %i.ij = zext i32 %.045.i202 to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 %i.ij
  store i8 37, ptr %i.ik, align 1, !tbaa !11
  br i1 %.not50.i205, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.il = add i32 %.045.i202, 2
  %i.im = zext i32 %i.ii to i64
end_hunk_1
