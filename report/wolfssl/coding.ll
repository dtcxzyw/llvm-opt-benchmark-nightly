Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/coding?download=true
begin_hunk_0_@Base64_Decode:bb.a

Base64_SkipNewline.exit188:                       ; preds = %.lr.ph432, %.Base64_SkipNewline.exit188_crit_edge
  %i.ed = phi i8 [ %.pre331, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.eb, %.lr.ph432 ] ; 2 uses
  %.5214 = phi i32 [ %.245.i172, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.dx, %.lr.ph432 ]
  %.5 = phi i32 [ %.240.i173, %.Base64_SkipNewline.exit188_crit_edge ], [ %i.dy, %.lr.ph432 ]
  %i.ee = add i32 %.5, 1
  %i.ef = add i32 %.5214, -1                      ; 2 uses
  %i.eg = icmp ne i8 %i.cw, 61                    ; 4 uses
  %i.eh = icmp eq i8 %i.ed, 61                    ; 4 uses
  %or.cond7 = or i1 %i.eg, %i.eh
  br i1 %or.cond7, label %bb.ad, label %Base64_SkipNewline.exit.thread238

bb.ad:                                            ; preds = %Base64_SkipNewline.exit188
  %i.ei = add i32 %.076289, 1                     ; 3 uses
  %i.ej = zext i1 %i.eg to i32
  %i.ek = add i32 %i.ei, %i.ej
  %i.el = xor i1 %i.eh, true
  %i.em = zext i1 %i.el to i32
  %i.en = add i32 %i.ek, %i.em
  %i.eo = load i32, ptr %3, align 4, !tbaa !8
  %i.ep = icmp ugt i32 %i.en, %i.eo
  br i1 %i.ep, label %Base64_SkipNewline.exit.thread238, label %bb.ae

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
  br i1 %or.cond16, label %Base64_SkipNewline.exit.thread238, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = shl i8 %i.eq, 2
  %i.fd = lshr i8 %i.er, 4
  %i.fe = or i8 %i.fd, %i.fc
  %i.ff = shl nuw nsw i32 %i.eu, 6
  %i.fg = or i32 %i.ex, %i.ff
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = zext i32 %.076289 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  store i8 %i.fe, ptr %i.fj, align 1, !tbaa !9
  br i1 %i.eg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fk = shl i8 %i.er, 4
  %i.fl = lshr i32 %i.eu, 2
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  %i.fn = or i8 %i.fk, %i.fm
  %i.fo = add i32 %.076289, 2
  %i.fp = zext i32 %i.ei to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  store i8 %i.fn, ptr %i.fq, align 1, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.177 = phi i32 [ %i.ei, %bb.aj ], [ %i.fo, %bb.ak ] ; 3 uses
  br i1 %i.eh, label %.thread, label %Base64_SkipNewline.exit

Base64_SkipNewline.exit:                          ; preds = %bb.al
  %i.fr = add i32 %.177, 1                        ; 2 uses
  %i.fs = zext i32 %.177 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  store i8 %i.fh, ptr %i.ft, align 1, !tbaa !9
  %i.fu = icmp ugt i32 %i.ef, 3
  br i1 %i.fu, label %.lr.ph, label %.thread

.thread:                                          ; preds = %Base64_SkipNewline.exit, %bb.al, %bb.e, %.loopexit, %.lr.ph62.i.preheader, %.lr.ph62.i, %.preheader
  %.3252 = phi i32 [ 0, %.preheader ], [ %.076289, %.lr.ph62.i ], [ %.076289, %bb.e ], [ %.177, %bb.al ], [ %i.fr, %Base64_SkipNewline.exit ], [ %.076289, %.loopexit ], [ %.076289, %.lr.ph62.i.preheader ] ; 3 uses
  %i.fv = load i32, ptr %3, align 4, !tbaa !8
  %i.fw = icmp ugt i32 %i.fv, %.3252
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread
  %i.fx = zext i32 %.3252 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx
  store i8 0, ptr %i.fy, align 1, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread
  store i32 %.3252, ptr %3, align 4, !tbaa !8
  br label %Base64_SkipNewline.exit.thread238

Base64_SkipNewline.exit.thread238:                ; preds = %bb.aa, %Base64_SkipNewline.exit157, %bb.z, %bb.t, %Base64_SkipNewline.exit126, %bb.s, %bb.m, %bb.h, %bb.l, %bb.d, %bb.ai, %bb.ad, %Base64_SkipNewline.exit188, %.lr.ph62.i116.preheader, %.lr.ph62.i147.preheader, %.lr.ph62.i178.preheader, %.lr.ph62.i116, %.lr.ph62.i147, %.lr.ph62.i178, %bb.a, %bb.an
  %.2 = phi i32 [ 0, %bb.an ], [ -173, %bb.a ], [ -132, %.lr.ph62.i147 ], [ -132, %.lr.ph62.i116 ], [ -132, %.lr.ph62.i178 ], [ -132, %Base64_SkipNewline.exit157 ], [ -154, %bb.z ], [ -132, %bb.aa ], [ -132, %Base64_SkipNewline.exit126 ], [ -132, %bb.t ], [ -132, %bb.h ], [ -132, %bb.m ], [ -154, %bb.s ], [ -154, %bb.l ], [ -154, %Base64_SkipNewline.exit188 ], [ -132, %bb.ad ], [ -154, %bb.ai ], [ -154, %bb.d ], [ -132, %.lr.ph62.i116.preheader ], [ -132, %.lr.ph62.i178.preheader ], [ -132, %.lr.ph62.i147.preheader ]
  ret i32 %.2
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
define range(i32 -202, 1) i32 @Base64_Encode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @DoBase64_Encode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -202, 1) i32 @DoBase64_Encode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #0 {
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
  %.0138 = phi i32 [ %i.k, %bb.c ], [ 0, %bb.d ], [ %i.j, %bb.b ]
  %i.l = add i32 %.0138, %i.h                     ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ee, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %3, align 4, !tbaa !8
  %i.n = icmp ule i32 %i.l, %i.m
  %or.cond3 = or i1 %i.b, %i.n
  br i1 %or.cond3, label %.preheader, label %bb.ee

.preheader:                                       ; preds = %bb.f
  %i.o = icmp ugt i32 %1, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = icmp eq i32 %4, 1                        ; 5 uses
  %.not159 = icmp eq i32 %4, 2
  %i.q = add i32 %1, -3                           ; 2 uses
  %i.r = urem i32 %i.q, 3
  %i.s = sub nuw i32 %i.q, %i.r
  %i.t = add nuw i32 %i.s, 3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %CEscape.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %CEscape.exit ] ; 4 uses
  %.0129310 = phi i32 [ %1, %.lr.ph ], [ %i.fm, %CEscape.exit ]
  %.0135308 = phi i32 [ 0, %.lr.ph ], [ %.2137, %CEscape.exit ] ; 2 uses
  %.045.i194304307 = phi i32 [ 0, %.lr.ph ], [ %.045.i194305, %CEscape.exit ] ; 13 uses
  %i.u = add nuw i64 %indvars.iv, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9     ; 2 uses
  %i.x = add nuw i64 %indvars.iv, 2
  %i.y = and i64 %i.u, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ab = and i64 %i.x, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
  %i.ae = lshr i8 %i.w, 2
  %i.af = shl i8 %i.aa, 2
  %i.ag = and i8 %i.af, 60
  %i.ah = lshr i8 %i.ad, 6
  %i.ai = or disjoint i8 %i.ah, %i.ag
  %i.aj = and i8 %i.ad, 63
  %i.ak = load i32, ptr %3, align 4, !tbaa !8
  %i.al = zext nneg i8 %i.ae to i64
  %i.am = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9   ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  switch i8 %i.an, label %bb.l [
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
  %i.ao = phi i1 [ true, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.g ]
  %.046.i = phi i32 [ 1, %bb.h ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.k ], [ 1, %bb.g ]
  %.not50.i = phi i1 [ true, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.g ]
  %.not51.i = phi i1 [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.k ], [ true, %bb.g ]
  %.not52.i = phi i1 [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.g ]
  %i.ap = add i32 %.046.i, %.045.i194304307
  %i.aq = icmp ule i32 %i.ap, %i.ak
  %or.cond.i = or i1 %i.b, %i.aq
  br i1 %or.cond.i, label %bb.m, label %CEscape.exit235.thread.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.045.i194304307, 1             ; 2 uses
  br i1 %i.b, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = zext i32 %.045.i194304307 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  store i8 %i.an, ptr %i.at, align 1, !tbaa !9
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  br i1 %i.b, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = add i32 %.045.i194304307, 3
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.av = add i32 %.045.i194304307, 1             ; 4 uses
  %i.aw = zext i32 %.045.i194304307 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  store i8 37, ptr %i.ax, align 1, !tbaa !9
  br i1 %.not50.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = add i32 %.045.i194304307, 2
  %i.az = zext i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  store i8 50, ptr %i.ba, align 1, !tbaa !9
  %i.bb = add i32 %.045.i194304307, 3
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  store i8 66, ptr %i.bd, align 1, !tbaa !9
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br i1 %.not51.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add i32 %.045.i194304307, 2
  %i.bf = zext i32 %i.av to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  store i8 51, ptr %i.bg, align 1, !tbaa !9
  %i.bh = add i32 %.045.i194304307, 3
  %i.bi = zext i32 %i.be to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bi
  store i8 68, ptr %i.bj, align 1, !tbaa !9
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not52.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = add i32 %.045.i194304307, 2
  %i.bl = zext i32 %i.av to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  store i8 48, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add i32 %.045.i194304307, 3
  %i.bo = zext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  store i8 65, ptr %i.bp, align 1, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.s, %bb.u, %bb.v, %bb.w
  %.045.i = phi i32 [ %i.av, %bb.v ], [ %i.ar, %bb.o ], [ %i.au, %bb.q ], [ %i.bb, %bb.s ], [ %i.bh, %bb.u ], [ %i.bn, %bb.w ], [ %i.ar, %bb.n ] ; 13 uses
  %i.bq = shl i8 %i.w, 4
  %i.br = and i8 %i.bq, 48
  %i.bs = lshr i8 %i.aa, 4
  %i.bt = or disjoint i8 %i.bs, %i.br
  %i.bu = load i32, ptr %3, align 4, !tbaa !8
  %i.bv = zext nneg i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  br i1 %i.p, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  switch i8 %i.bx, label %bb.ac [
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
  %i.by = phi i1 [ true, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ true, %bb.x ]
  %.046.i164 = phi i32 [ 1, %bb.y ], [ 3, %bb.z ], [ 3, %bb.aa ], [ 3, %bb.ab ], [ 1, %bb.x ]
  %.not50.i165 = phi i1 [ true, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.x ]
  %.not51.i166 = phi i1 [ true, %bb.y ], [ true, %bb.z ], [ false, %bb.aa ], [ true, %bb.ab ], [ true, %bb.x ]
  %.not52.i167 = phi i1 [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.x ]
  %i.bz = add i32 %.046.i164, %.045.i
  %i.ca = icmp ule i32 %i.bz, %i.bu
  %or.cond.i168 = or i1 %i.b, %i.ca
  br i1 %or.cond.i168, label %bb.ad, label %CEscape.exit235.thread.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.by, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cb = add i32 %.045.i, 1                      ; 2 uses
  br i1 %i.b, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = zext i32 %.045.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc
  store i8 %i.bx, ptr %i.cd, align 1, !tbaa !9
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.b, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ce = add i32 %.045.i, 3
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.cf = add i32 %.045.i, 1                      ; 4 uses
  %i.cg = zext i32 %.045.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg
  store i8 37, ptr %i.ch, align 1, !tbaa !9
  br i1 %.not50.i165, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = add i32 %.045.i, 2
  %i.cj = zext i32 %i.cf to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  store i8 50, ptr %i.ck, align 1, !tbaa !9
  %i.cl = add i32 %.045.i, 3
  %i.cm = zext i32 %i.ci to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  store i8 66, ptr %i.cn, align 1, !tbaa !9
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not51.i166, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = add i32 %.045.i, 2
  %i.cp = zext i32 %i.cf to i64
end_hunk_0
begin_hunk_1_@DoBase64_Encode:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9   ; 2 uses
  br i1 %i.p, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  switch i8 %i.dd, label %bb.at [
    i8 43, label %bb.aq
    i8 61, label %bb.ar
    i8 10, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.de = phi i1 [ true, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.as ], [ true, %bb.ao ]
  %.046.i172 = phi i32 [ 1, %bb.ap ], [ 3, %bb.aq ], [ 3, %bb.ar ], [ 3, %bb.as ], [ 1, %bb.ao ]
  %.not50.i173 = phi i1 [ true, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.ao ]
  %.not51.i174 = phi i1 [ true, %bb.ap ], [ true, %bb.aq ], [ false, %bb.ar ], [ true, %bb.as ], [ true, %bb.ao ]
  %.not52.i175 = phi i1 [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ false, %bb.as ], [ true, %bb.ao ]
  %i.df = add i32 %.046.i172, %.045.i170
  %i.dg = icmp ule i32 %i.df, %i.da
  %or.cond.i176 = or i1 %i.b, %i.dg
  br i1 %or.cond.i176, label %bb.au, label %CEscape.exit235.thread.thread

bb.au:                                            ; preds = %bb.at
  br i1 %i.de, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dh = add i32 %.045.i170, 1                   ; 2 uses
  br i1 %i.b, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = zext i32 %.045.i170 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di
  store i8 %i.dd, ptr %i.dj, align 1, !tbaa !9
  br label %bb.bf

bb.ax:                                            ; preds = %bb.au
  br i1 %i.b, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dk = add i32 %.045.i170, 3
  br label %bb.bf

bb.az:                                            ; preds = %bb.ax
  %i.dl = add i32 %.045.i170, 1                   ; 4 uses
  %i.dm = zext i32 %.045.i170 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  store i8 37, ptr %i.dn, align 1, !tbaa !9
  br i1 %.not50.i173, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.do = add i32 %.045.i170, 2
  %i.dp = zext i32 %i.dl to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %i.dp
  store i8 50, ptr %i.dq, align 1, !tbaa !9
  %i.dr = add i32 %.045.i170, 3
  %i.ds = zext i32 %i.do to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds
  store i8 66, ptr %i.dt, align 1, !tbaa !9
  br label %bb.bf

bb.bb:                                            ; preds = %bb.az
  br i1 %.not51.i174, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.du = add i32 %.045.i170, 2
  %i.dv = zext i32 %i.dl to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv
  store i8 51, ptr %i.dw, align 1, !tbaa !9
  %i.dx = add i32 %.045.i170, 3
  %i.dy = zext i32 %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dy
  store i8 68, ptr %i.dz, align 1, !tbaa !9
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not52.i175, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ea = add i32 %.045.i170, 2
  %i.eb = zext i32 %i.dl to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb
  store i8 48, ptr %i.ec, align 1, !tbaa !9
  %i.ed = add i32 %.045.i170, 3
  %i.ee = zext i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee
  store i8 65, ptr %i.ef, align 1, !tbaa !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.av, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %bb.bd, %bb.be
  %.045.i178 = phi i32 [ %i.dl, %bb.bd ], [ %i.dh, %bb.aw ], [ %i.dk, %bb.ay ], [ %i.dr, %bb.ba ], [ %i.dx, %bb.bc ], [ %i.ed, %bb.be ], [ %i.dh, %bb.av ] ; 13 uses
  %i.eg = load i32, ptr %3, align 4, !tbaa !8
  %i.eh = zext nneg i8 %i.aj to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9   ; 2 uses
  br i1 %i.p, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  switch i8 %i.ej, label %bb.bk [
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
  %i.ek = phi i1 [ true, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.bj ], [ true, %bb.bf ]
  %.046.i180 = phi i32 [ 1, %bb.bg ], [ 3, %bb.bh ], [ 3, %bb.bi ], [ 3, %bb.bj ], [ 1, %bb.bf ]
  %.not50.i181 = phi i1 [ true, %bb.bg ], [ false, %bb.bh ], [ true, %bb.bi ], [ true, %bb.bj ], [ true, %bb.bf ]
  %.not51.i182 = phi i1 [ true, %bb.bg ], [ true, %bb.bh ], [ false, %bb.bi ], [ true, %bb.bj ], [ true, %bb.bf ]
  %.not52.i183 = phi i1 [ true, %bb.bg ], [ true, %bb.bh ], [ true, %bb.bi ], [ false, %bb.bj ], [ true, %bb.bf ]
  %i.el = add i32 %.046.i180, %.045.i178
  %i.em = icmp ule i32 %i.el, %i.eg
  %or.cond.i184 = or i1 %i.b, %i.em
  br i1 %or.cond.i184, label %bb.bl, label %CEscape.exit235.thread.thread

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ek, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.en = add i32 %.045.i178, 1                   ; 2 uses
  br i1 %i.b, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eo = zext i32 %.045.i178 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %i.eo
  store i8 %i.ej, ptr %i.ep, align 1, !tbaa !9
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bl
  br i1 %i.b, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.eq = add i32 %.045.i178, 3
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bo
  %i.er = add i32 %.045.i178, 1                   ; 4 uses
  %i.es = zext i32 %.045.i178 to i64
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.es
  store i8 37, ptr %i.et, align 1, !tbaa !9
  br i1 %.not50.i181, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eu = add i32 %.045.i178, 2
  %i.ev = zext i32 %i.er to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev
  store i8 50, ptr %i.ew, align 1, !tbaa !9
  %i.ex = add i32 %.045.i178, 3
  %i.ey = zext i32 %i.eu to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  store i8 66, ptr %i.ez, align 1, !tbaa !9
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  br i1 %.not51.i182, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fa = add i32 %.045.i178, 2
  %i.fb = zext i32 %i.er to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fb
  store i8 51, ptr %i.fc, align 1, !tbaa !9
  %i.fd = add i32 %.045.i178, 3
  %i.fe = zext i32 %i.fa to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  store i8 68, ptr %i.ff, align 1, !tbaa !9
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  br i1 %.not52.i183, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fg = add i32 %.045.i178, 2
  %i.fh = zext i32 %i.er to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %i.fh
  store i8 48, ptr %i.fi, align 1, !tbaa !9
  %i.fj = add i32 %.045.i178, 3
  %i.fk = zext i32 %i.fg to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 %i.fk
  store i8 65, ptr %i.fl, align 1, !tbaa !9
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bm, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bu, %bb.bv
  %.045.i186 = phi i32 [ %i.er, %bb.bu ], [ %i.en, %bb.bn ], [ %i.eq, %bb.bp ], [ %i.ex, %bb.br ], [ %i.fd, %bb.bt ], [ %i.fj, %bb.bv ], [ %i.en, %bb.bm ] ; 10 uses
  %i.fm = add i32 %.0129310, -3                   ; 4 uses
  br i1 %.not159, label %CEscape.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fn = add i32 %.0135308, 1                    ; 5 uses
  %i.fo = and i32 %i.fn, 15
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = icmp ne i32 %i.fm, 0
  %or.cond5 = and i1 %i.fp, %i.fq
  br i1 %or.cond5, label %bb.by, label %CEscape.exit

bb.by:                                            ; preds = %bb.bx
  %i.fr = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  br i1 %i.p, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fs = add i32 %.045.i186, 1                   ; 3 uses
  %i.ft = icmp ule i32 %i.fs, %i.fr
  %or.cond.i192 = or i1 %i.b, %i.ft
  br i1 %or.cond.i192, label %bb.ca, label %CEscape.exit235.thread.thread

.thread:                                          ; preds = %bb.by
  %i.fu = add i32 %.045.i186, 3                   ; 3 uses
  %i.fv = icmp ule i32 %i.fu, %i.fr
  %or.cond.i192246 = or i1 %i.b, %i.fv
  br i1 %or.cond.i192246, label %bb.cb, label %CEscape.exit235.thread.thread

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.b, label %CEscape.exit, label %CEscape.exit.sink.split

bb.cb:                                            ; preds = %.thread
  br i1 %i.b, label %CEscape.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fw = add i32 %.045.i186, 1
  %i.fx = zext i32 %.045.i186 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx
  store i8 37, ptr %i.fy, align 1, !tbaa !9
  %i.fz = add i32 %.045.i186, 2
  %i.ga = zext i32 %i.fw to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ga
  store i8 48, ptr %i.gb, align 1, !tbaa !9
  br label %CEscape.exit.sink.split

CEscape.exit.sink.split:                          ; preds = %bb.ca, %bb.cc
  %.045.i186.sink = phi i32 [ %i.fz, %bb.cc ], [ %.045.i186, %bb.ca ]
  %.sink = phi i8 [ 65, %bb.cc ], [ 10, %bb.ca ]
  %.045.i194305.ph = phi i32 [ %i.fu, %bb.cc ], [ %i.fs, %bb.ca ]
  %i.gc = zext i32 %.045.i186.sink to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %i.gc
  store i8 %.sink, ptr %i.gd, align 1, !tbaa !9
  br label %CEscape.exit

CEscape.exit:                                     ; preds = %CEscape.exit.sink.split, %bb.cb, %bb.ca, %bb.bw, %bb.bx
  %.045.i194305 = phi i32 [ %.045.i186, %bb.bx ], [ %.045.i186, %bb.bw ], [ %i.fs, %bb.ca ], [ %i.fu, %bb.cb ], [ %.045.i194305.ph, %CEscape.exit.sink.split ] ; 2 uses
  %.2137 = phi i32 [ %i.fn, %bb.bx ], [ %.0135308, %bb.bw ], [ %i.fn, %bb.ca ], [ %i.fn, %bb.cb ], [ %i.fn, %CEscape.exit.sink.split ]
  %i.ge = icmp ugt i32 %i.fm, 2
  br i1 %i.ge, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %CEscape.exit, %.preheader
  %i.gf = phi i32 [ 0, %.preheader ], [ %.045.i194305, %CEscape.exit ] ; 14 uses
  %.0133.lcssa = phi i32 [ 0, %.preheader ], [ %i.t, %CEscape.exit ] ; 2 uses
  %.0129.lcssa = phi i32 [ %1, %.preheader ], [ %i.fm, %CEscape.exit ] ; 2 uses
  %.not300 = icmp eq i32 %.0129.lcssa, 0
  br i1 %.not300, label %CEscape.exit227, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge
  %i.gg = icmp eq i32 %.0129.lcssa, 2             ; 2 uses
  %i.gh = zext i32 %.0133.lcssa to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9   ; 2 uses
  br i1 %i.gg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gk = add i32 %.0133.lcssa, 1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.go = zext i8 %i.gn to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.gp = phi i32 [ %i.go, %bb.ce ], [ 0, %bb.cd ] ; 2 uses
  %i.gq = lshr i8 %i.gj, 2
  %.tr = trunc nuw i32 %i.gp to i8
  %i.gr = shl i8 %.tr, 2
  %i.gs = and i8 %i.gr, 60
  %i.gt = load i32, ptr %3, align 4, !tbaa !8
  %i.gu = zext nneg i8 %i.gq to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9   ; 2 uses
  %i.gx = icmp eq i32 %4, 1                       ; 4 uses
  br i1 %i.gx, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  switch i8 %i.gw, label %bb.ck [
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
  %i.gy = phi i1 [ true, %bb.cg ], [ false, %bb.ch ], [ false, %bb.ci ], [ false, %bb.cj ], [ true, %bb.cf ]
  %.046.i196 = phi i32 [ 1, %bb.cg ], [ 3, %bb.ch ], [ 3, %bb.ci ], [ 3, %bb.cj ], [ 1, %bb.cf ]
  %.not50.i197 = phi i1 [ true, %bb.cg ], [ false, %bb.ch ], [ true, %bb.ci ], [ true, %bb.cj ], [ true, %bb.cf ]
  %.not51.i198 = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ false, %bb.ci ], [ true, %bb.cj ], [ true, %bb.cf ]
  %.not52.i199 = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ true, %bb.ci ], [ false, %bb.cj ], [ true, %bb.cf ]
  %i.gz = add i32 %.046.i196, %i.gf
  %i.ha = icmp ule i32 %i.gz, %i.gt
  %or.cond.i200 = or i1 %i.b, %i.ha
  br i1 %or.cond.i200, label %bb.cl, label %CEscape.exit235.thread.thread

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.gy, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.hb = add i32 %i.gf, 1                        ; 2 uses
  br i1 %i.b, label %bb.cw, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hc = zext i32 %i.gf to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %i.hc
  store i8 %i.gw, ptr %i.hd, align 1, !tbaa !9
  br label %bb.cw

bb.co:                                            ; preds = %bb.cl
  br i1 %i.b, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.he = add i32 %i.gf, 3
  br label %bb.cw

bb.cq:                                            ; preds = %bb.co
  %i.hf = add i32 %i.gf, 1                        ; 4 uses
  %i.hg = zext i32 %i.gf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %i.hg
  store i8 37, ptr %i.hh, align 1, !tbaa !9
  br i1 %.not50.i197, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hi = add i32 %i.gf, 2
  %i.hj = zext i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %i.hj
  store i8 50, ptr %i.hk, align 1, !tbaa !9
  %i.hl = add i32 %i.gf, 3
  %i.hm = zext i32 %i.hi to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %i.hm
  store i8 66, ptr %i.hn, align 1, !tbaa !9
  br label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not51.i198, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ho = add i32 %i.gf, 2
  %i.hp = zext i32 %i.hf to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 %i.hp
  store i8 51, ptr %i.hq, align 1, !tbaa !9
  %i.hr = add i32 %i.gf, 3
  %i.hs = zext i32 %i.ho to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 %i.hs
  store i8 68, ptr %i.ht, align 1, !tbaa !9
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  br i1 %.not52.i199, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hu = add i32 %i.gf, 2
  %i.hv = zext i32 %i.hf to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %i.hv
  store i8 48, ptr %i.hw, align 1, !tbaa !9
  %i.hx = add i32 %i.gf, 3
  %i.hy = zext i32 %i.hu to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %i.hy
  store i8 65, ptr %i.hz, align 1, !tbaa !9
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cm, %bb.cn, %bb.cp, %bb.cr, %bb.ct, %bb.cu, %bb.cv
  %.045.i202 = phi i32 [ %i.hf, %bb.cu ], [ %i.hb, %bb.cn ], [ %i.he, %bb.cp ], [ %i.hl, %bb.cr ], [ %i.hr, %bb.ct ], [ %i.hx, %bb.cv ], [ %i.hb, %bb.cm ] ; 13 uses
  %i.ia = shl i8 %i.gj, 4
  %i.ib = and i8 %i.ia, 48
  %i.ic = lshr i32 %i.gp, 4
  %i.id = trunc nuw nsw i32 %i.ic to i8
  %i.ie = or disjoint i8 %i.ib, %i.id
  %i.if = load i32, ptr %3, align 4, !tbaa !8
  %i.ig = zext nneg i8 %i.ie to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @base64Encode, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !9   ; 2 uses
  br i1 %i.gx, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  switch i8 %i.ii, label %bb.db [
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
  %i.ij = phi i1 [ true, %bb.cx ], [ false, %bb.cy ], [ false, %bb.cz ], [ false, %bb.da ], [ true, %bb.cw ]
  %.046.i204 = phi i32 [ 1, %bb.cx ], [ 3, %bb.cy ], [ 3, %bb.cz ], [ 3, %bb.da ], [ 1, %bb.cw ]
  %.not50.i205 = phi i1 [ true, %bb.cx ], [ false, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ true, %bb.cw ]
  %.not51.i206 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ false, %bb.cz ], [ true, %bb.da ], [ true, %bb.cw ]
  %.not52.i207 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.cz ], [ false, %bb.da ], [ true, %bb.cw ]
  %i.ik = add i32 %.046.i204, %.045.i202
  %i.il = icmp ule i32 %i.ik, %i.if
  %or.cond.i208 = or i1 %i.b, %i.il
  br i1 %or.cond.i208, label %bb.dc, label %CEscape.exit235.thread.thread

bb.dc:                                            ; preds = %bb.db
  br i1 %i.ij, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.im = add i32 %.045.i202, 1                   ; 2 uses
  br i1 %i.b, label %bb.dn, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.in = zext i32 %.045.i202 to i64
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 %i.in
  store i8 %i.ii, ptr %i.io, align 1, !tbaa !9
  br label %bb.dn

bb.df:                                            ; preds = %bb.dc
  br i1 %i.b, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ip = add i32 %.045.i202, 3
  br label %bb.dn

bb.dh:                                            ; preds = %bb.df
  %i.iq = add i32 %.045.i202, 1                   ; 4 uses
  %i.ir = zext i32 %.045.i202 to i64
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %i.ir
  store i8 37, ptr %i.is, align 1, !tbaa !9
  br i1 %.not50.i205, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.it = add i32 %.045.i202, 2
  %i.iu = zext i32 %i.iq to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 %i.iu
  store i8 50, ptr %i.iv, align 1, !tbaa !9
  %i.iw = add i32 %.045.i202, 3
  %i.ix = zext i32 %i.it to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ix
  store i8 66, ptr %i.iy, align 1, !tbaa !9
  br label %bb.dn

bb.dj:                                            ; preds = %bb.dh
  br i1 %.not51.i206, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iz = add i32 %.045.i202, 2
  %i.ja = zext i32 %i.iq to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ja
  store i8 51, ptr %i.jb, align 1, !tbaa !9
  %i.jc = add i32 %.045.i202, 3
  %i.jd = zext i32 %i.iz to i64
end_hunk_1
