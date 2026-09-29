Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__check_png_header:bb.a

stbi__refill_buffer.exit.i.6:                     ; preds = %bb.aj, %bb.ai
  %i.ei = phi i8 [ 0, %bb.aj ], [ %.pre.i.6, %bb.ai ]
  %.sink.i.i.6 = phi ptr [ %i.j, %bb.aj ], [ %i.eh, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.6, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.6

bb.ak:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !29
  %i.ek = load i8, ptr %i.dq, align 1, !tbaa !37
  br label %stbi__get8.exit.6

stbi__get8.exit.6:                                ; preds = %bb.ak, %stbi__refill_buffer.exit.i.6, %bb.ag
  %i.el = phi ptr [ %i.dp, %bb.ak ], [ %.sink.i.i.6, %stbi__refill_buffer.exit.i.6 ], [ %i.dp, %bb.ag ]
  %i.em = phi ptr [ %i.ej, %bb.ak ], [ %i.j, %stbi__refill_buffer.exit.i.6 ], [ %i.dq, %bb.ag ] ; 3 uses
  %.0.i.6 = phi i8 [ %i.ek, %bb.ak ], [ %i.ei, %stbi__refill_buffer.exit.i.6 ], [ 0, %bb.ag ]
  %.not.6 = icmp eq i8 %.0.i.6, 26
  br i1 %.not.6, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %stbi__get8.exit.6
  %i.en = icmp ult ptr %i.em, %i.el
  br i1 %i.en, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.7 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.7, label %stbi__get8.exit.7, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.er = load i32, ptr %i.g, align 4, !tbaa !35
  %i.es = tail call i32 %i.ep(ptr noundef %i.eq, ptr noundef nonnull %i.f, i32 noundef %i.er) #37, !inline_history !65 ; 2 uses
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !27
  %i.fa = add nsw i32 %i.ez, %i.ey
  store i32 %i.fa, ptr %i.i, align 8, !tbaa !27
  %i.fb = icmp eq i32 %i.es, 0
  br i1 %i.fb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = sext i32 %i.es to i64
  %i.fd = getelementptr inbounds i8, ptr %i.f, i64 %i.fc
  %.pre.i.7 = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.7

stbi__refill_buffer.exit.i.7:                     ; preds = %bb.ap, %bb.ao
  %i.fe = phi i8 [ 0, %bb.ap ], [ %.pre.i.7, %bb.ao ]
  %.sink.i.i.7 = phi ptr [ %i.j, %bb.ap ], [ %i.fd, %bb.ao ]
  store ptr %.sink.i.i.7, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.7

bb.aq:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !29
  %i.fg = load i8, ptr %i.em, align 1, !tbaa !37
  br label %stbi__get8.exit.7

stbi__get8.exit.7:                                ; preds = %bb.aq, %stbi__refill_buffer.exit.i.7, %bb.am
  %.0.i.7 = phi i8 [ %i.fg, %bb.aq ], [ %i.fe, %stbi__refill_buffer.exit.i.7 ], [ 0, %bb.am ]
  %.not.7 = icmp eq i8 %.0.i.7, 10
  br i1 %.not.7, label %.loopexit, label %bb.aw

bb.ar:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  store ptr %i.fh, ptr %i.a, align 8, !tbaa !29
  %i.fi = load i8, ptr %.pre, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.as:                                            ; preds = %bb.a
  %i.fj = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.fm = load i32, ptr %i.g, align 4, !tbaa !35
  %i.fn = tail call i32 %i.fk(ptr noundef %i.fl, ptr noundef nonnull %i.f, i32 noundef %i.fm) #37, !inline_history !65 ; 2 uses
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.fp = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = load i32, ptr %i.i, align 8, !tbaa !27
  %i.fv = add nsw i32 %i.fu, %i.ft
  store i32 %i.fv, ptr %i.i, align 8, !tbaa !27
  %i.fw = icmp eq i32 %i.fn, 0
  br i1 %i.fw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.av:                                            ; preds = %bb.at
  %i.fx = sext i32 %i.fn to i64
  %i.fy = getelementptr inbounds i8, ptr %i.f, i64 %i.fx
  %.pre.i = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.av, %bb.au
  %i.fz = phi i8 [ 0, %bb.au ], [ %.pre.i, %bb.av ]
  %.sink.i.i = phi ptr [ %i.j, %bb.au ], [ %i.fy, %bb.av ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.ar, %bb.as, %stbi__refill_buffer.exit.i
  %i.ga = phi ptr [ %.pre7, %bb.ar ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %.pre7, %bb.as ] ; 3 uses
  %i.gb = phi ptr [ %i.fh, %bb.ar ], [ %i.j, %stbi__refill_buffer.exit.i ], [ %.pre, %bb.as ] ; 4 uses
  %.0.i = phi i8 [ %i.fi, %bb.ar ], [ %i.fz, %stbi__refill_buffer.exit.i ], [ 0, %bb.as ]
  %.not = icmp eq i8 %.0.i, -119
  br i1 %.not, label %bb.b, label %bb.aw

bb.aw:                                            ; preds = %stbi__get8.exit.7, %stbi__get8.exit.6, %stbi__get8.exit.5, %stbi__get8.exit.4, %stbi__get8.exit.3, %stbi__get8.exit.2, %stbi__get8.exit.1, %stbi__get8.exit
  %i.gc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.48, ptr %i.gc, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %stbi__get8.exit.7, %bb.aw
  %.04 = phi i32 [ 0, %bb.aw ], [ 1, %stbi__get8.exit.7 ]
  ret i32 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stbi__paeth(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, 3
  %i.b = add i32 %1, %0
  %i.c = sub i32 %i.a, %i.b                       ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %0, i32 %1) ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %0, i32 %1) ; 2 uses
  %.not = icmp sgt i32 %i.e, %i.c
  %i.f = select i1 %.not, i32 %2, i32 %i.d
  %.not20 = icmp sgt i32 %i.c, %i.d
  %i.g = select i1 %.not20, i32 %i.f, i32 %i.e
  ret i32 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__create_png_alpha_expand8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %.030 = add i32 %2, -1                          ; 5 uses
  %i.b = icmp sgt i32 %.030, -1                   ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader26
  %i.c = zext nneg i32 %.030 to i64               ; 5 uses
  %i.d = and i64 %i.c, 1
  %lcmp.mod.not.not = icmp eq i64 %i.d, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 -1, ptr %i.g, align 1, !tbaa !37
  %i.h = mul nuw nsw i64 %i.c, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.k, ptr %i.l, align 1, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !37
  %i.p = load i8, ptr %i.i, align 1, !tbaa !37
  store i8 %i.p, ptr %i.f, align 1, !tbaa !37
  %indvars.iv.next.prol = add nsw i64 %i.c, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.q = icmp eq i32 %.030, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph32.preheader, label %.loopexit

.lr.ph32.preheader:                               ; preds = %.preheader
  %i.r = zext nneg i32 %.030 to i64               ; 6 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %min.iters.check = icmp ult i32 %.030, 15
  br i1 %min.iters.check, label %.lr.ph32.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.preheader
  %i.t = shl nuw nsw i64 %i.r, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.t
  %i.u = getelementptr i8, ptr %scevgep, i64 2
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.s
  %bound0 = icmp ult ptr %0, %scevgep41
  %bound1 = icmp ult ptr %1, %i.u
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4294967288               ; 3 uses
  %i.v = sub nsw i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = sub i64 %i.r, %index                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -7
  %wide.load = load <8 x i8>, ptr %i.aa, align 1, !tbaa !37, !alias.scope !448
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ab, align 1, !tbaa !37, !alias.scope !449, !noalias !448
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.preheader43

.lr.ph32.preheader43:                             ; preds = %vector.memcheck, %.lr.ph32.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph32.preheader ], [ %i.v, %middle.block ] ; 4 uses
  %i.ad = add nsw i64 %indvars.iv35.ph, 1
  %xtraiter45 = and i64 %i.ad, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader43, %.lr.ph32.prol
  %indvars.iv35.prol = phi i64 [ %indvars.iv.next36.prol, %.lr.ph32.prol ], [ %indvars.iv35.ph, %.lr.ph32.preheader43 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader43 ]
  %i.ae = shl nuw nsw i64 %indvars.iv35.prol, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 -1, ptr %i.ag, align 1, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !37
  %indvars.iv.next36.prol = add nsw i64 %indvars.iv35.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !446

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader43
  %indvars.iv35.unr = phi i64 [ %indvars.iv35.ph, %.lr.ph32.preheader43 ], [ %indvars.iv.next36.prol, %.lr.ph32.prol ]
  %i.aj = icmp ult i64 %indvars.iv35.ph, 3
  br i1 %i.aj, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %indvars.iv35 = phi i64 [ %indvars.iv.next36.3, %.lr.ph32 ], [ %indvars.iv35.unr, %.lr.ph32.prol.loopexit ] ; 6 uses
  %i.ak = shl nuw nsw i64 %indvars.iv35, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 -1, ptr %i.am, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !37
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.ap = shl nuw nsw i64 %indvars.iv.next36, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 -1, ptr %i.ar, align 1, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !37
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.au = shl nuw nsw i64 %indvars.iv.next36.1, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 -1, ptr %i.aw, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !37
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 3 uses
  %i.az = shl nuw nsw i64 %indvars.iv.next36.2, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 -1, ptr %i.bb, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !37
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4
  %.not39.3 = icmp eq i64 %indvars.iv.next36.2, 0
  br i1 %.not39.3, label %.loopexit, label %.lr.ph32, !llvm.loop !447

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = shl nuw nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  store i8 -1, ptr %i.bg, align 1, !tbaa !37
  %i.bh = mul nuw nsw i64 %indvars.iv, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !37
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !37
  store i8 %i.bp, ptr %i.bf, align 1, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bq = shl nuw nsw i64 %indvars.iv.next, 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 -1, ptr %i.bs, align 1, !tbaa !37
  %i.bt = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !37
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !37
  store i8 %i.cb, ptr %i.br, align 1, !tbaa !37
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block, %.preheader26, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !44
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64   ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not24.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !139
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #38 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !139
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !39
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
end_hunk_0
