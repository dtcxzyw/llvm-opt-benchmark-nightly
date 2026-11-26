Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sunrast?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sunrast_decode_frame:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i32, ptr %i.n, align 1, !tbaa !42   ; 3 uses
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)  ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i32, ptr %i.q, align 1, !tbaa !42   ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.u = load i32, ptr %i.t, align 1, !tbaa !42   ; 5 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load i32, ptr %i.w, align 1, !tbaa !42   ; 2 uses
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !42  ; 5 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa) ; 6 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 32      ; 9 uses
  %i.ad = icmp eq i32 %i.u, -65536
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ugt i32 %i.v, 5
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #5
  br label %bb.bc

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.x, 33554432
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  br label %bb.bc

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ugt i32 %i.y, 2
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #5
  br label %bb.bc

bb.l:                                             ; preds = %bb.j
  %i.ah = and i32 %i.v, 6
  %or.cond = icmp eq i32 %i.ah, 4
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #5
  br label %bb.bc

bb.n:                                             ; preds = %bb.l
  %i.ai = icmp ugt i32 %i.ab, 768
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.8) #5
  br label %bb.bc

bb.p:                                             ; preds = %bb.n
  switch i32 %i.s, label %bb.v [
    i32 1, label %bb.q
    i32 4, label %bb.r
    i32 8, label %bb.s
    i32 24, label %bb.t
    i32 32, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %.not235 = icmp eq i32 %i.aa, 0
  %i.aj = select i1 %.not235, i32 9, i32 11
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not234 = icmp eq i32 %i.aa, 0
  %i.ak = select i1 %.not234, i32 -1, i32 11
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %.not233 = icmp eq i32 %i.aa, 0
  %i.al = select i1 %.not233, i32 8, i32 11
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.am = icmp eq i32 %i.u, 50331648
  %i.an = select i1 %i.am, i32 2, i32 3
  br label %bb.w

bb.u:                                             ; preds = %bb.p
  %i.ao = icmp eq i32 %i.u, 50331648
  %i.ap = select i1 %i.ao, i32 118, i32 120
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #5
  br label %bb.bc

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink = phi i32 [ %i.ap, %bb.u ], [ %i.an, %bb.t ], [ %i.al, %bb.s ], [ %i.ak, %bb.r ], [ %i.aj, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !56
  %i.ar = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.p) #5 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.bc, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = udiv i32 2147483640, %i.s
  %.not236 = icmp ugt i32 %i.m, %i.at
  br i1 %.not236, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 113) #5
  tail call void @abort() #6
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.au = mul i32 %i.s, %i.m
  %i.av = add i32 %i.au, 7
  %i.aw = lshr i32 %i.av, 3                       ; 6 uses
  %i.ax = and i32 %i.aw, 1
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 2 uses
  %i.az = mul nuw nsw i32 %i.aw, 3
  %i.ba = udiv i32 2147483647, %i.az
  %.not237 = icmp ugt i32 %i.p, %i.ba
  br i1 %.not237, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 120) #5
  tail call void @abort() #6
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bb = ptrtoint ptr %i.h to i64                ; 2 uses
  %gepdiff = add nsw i64 %i.g, -32
  %i.bc = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.bd = mul i32 %i.p, 3
  %i.be = mul i32 %i.bd, %i.aw
  %i.bf = lshr i32 %i.be, 8
  %narrow = add nuw nsw i32 %i.bf, %i.ab
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = icmp samesign ult i64 %gepdiff, %i.bg
  br i1 %i.bh, label %bb.bc, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.bc, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.bk, align 8, !tbaa !61
  %i.bl = icmp samesign ugt i32 %i.s, 8
  %i.bm = icmp ne i32 %i.aa, 0                    ; 2 uses
  %or.cond4 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14) #5
  br label %.thread246

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bm, label %bb.ag, label %.thread246

bb.ag:                                            ; preds = %bb.af
  %.lhs.trunc = trunc nuw nsw i32 %i.ab to i16    ; 2 uses
  %i.bn = udiv i16 %.lhs.trunc, 3                 ; 2 uses
  %i.bo = urem i16 %.lhs.trunc, 3
  %.not238 = icmp eq i16 %i.bo, 0
  br i1 %.not238, label %bb.ah, label %.thread

.thread:                                          ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #5
  br label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %.not282 = icmp samesign ult i32 %i.ab, 3
  br i1 %.not282, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41 ; 8 uses
  %i.br = shl nuw nsw i16 %i.bn, 1
  %i.bs = zext nneg i16 %i.bn to i64              ; 8 uses
  %i.bt = zext nneg i16 %i.br to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bs ; 6 uses
  %invariant.gep332 = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bt ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bu = shl nuw nsw i64 %i.bs, 2
  %i.bv = getelementptr i8, ptr %i.bq, i64 %i.bu  ; 3 uses
  %i.bw = mul nuw nsw i64 %i.bs, 3
  %i.bx = getelementptr i8, ptr %i.d, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %bound0 = icmp ult ptr %i.bq, %i.by
  %bound1 = icmp ult ptr %invariant.gep332, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  %bound0345 = icmp ult ptr %i.bq, %invariant.gep332
  %bound1346 = icmp ult ptr %invariant.gep, %i.bv
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx = or i1 %found.conflict, %found.conflict347
  %bound0348 = icmp ult ptr %i.bq, %invariant.gep
  %bound1349 = icmp ult ptr %i.ac, %i.bv
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx, %found.conflict350
  br i1 %conflict.rdx351, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 504                     ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec, 2
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %wide.load = load <4 x i8>, ptr %i.cc, align 1, !tbaa !42, !alias.scope !62
  %wide.load352 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !42, !alias.scope !62
  %i.ce = zext <4 x i8> %wide.load to <4 x i32>
  %i.cf = zext <4 x i8> %wide.load352 to <4 x i32>
  %i.cg = shl nuw nsw <4 x i32> %i.ce, splat (i32 16)
  %i.ch = shl nuw nsw <4 x i32> %i.cf, splat (i32 16)
  %i.ci = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %wide.load353 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !42, !alias.scope !63
  %wide.load354 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !42, !alias.scope !63
  %i.ck = zext <4 x i8> %wide.load353 to <4 x i32>
  %i.cl = zext <4 x i8> %wide.load354 to <4 x i32>
  %i.cm = shl nuw nsw <4 x i32> %i.ck, splat (i32 8)
  %i.cn = shl nuw nsw <4 x i32> %i.cl, splat (i32 8)
  %i.co = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %wide.load355 = load <4 x i8>, ptr %i.co, align 1, !tbaa !42, !alias.scope !64
  %wide.load356 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !42, !alias.scope !64
  %i.cq = zext <4 x i8> %wide.load355 to <4 x i32>
  %i.cr = zext <4 x i8> %wide.load356 to <4 x i32>
  %i.cs = or disjoint <4 x i32> %i.cg, %i.cm
  %i.ct = or disjoint <4 x i32> %i.ch, %i.cn
  %i.cu = or disjoint <4 x i32> %i.cs, %i.cq
  %i.cv = or disjoint <4 x i32> %i.ct, %i.cr
  %i.cw = or disjoint <4 x i32> %i.cu, splat (i32 -16777216)
  %i.cx = or disjoint <4 x i32> %i.cv, splat (i32 -16777216)
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.cw, ptr %next.gep, align 4, !tbaa !65, !alias.scope !66, !noalias !67
  store <4 x i32> %i.cx, ptr %i.cy, align 4, !tbaa !65, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bs
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.0194254.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph ], [ %i.ca, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.ph
  %i.db = load i8, ptr %i.da, align 1, !tbaa !42
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 16
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.ph
  %i.de = load i8, ptr %gep.prol, align 1, !tbaa !42
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %gep333.prol = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv.ph
  %i.dh = load i8, ptr %gep333.prol, align 1, !tbaa !42
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dd, %i.dg
  %i.dk = or disjoint i32 %i.dj, %i.di
  %i.dl = or disjoint i32 %i.dk, -16777216
  store i32 %i.dl, ptr %.0194254.ph, align 4, !tbaa !65
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.0194254.ph, i64 4
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0194254.unr = phi ptr [ %.0194254.ph, %scalar.ph.preheader ], [ %i.dm, %scalar.ph.prol ]
  %i.dn = add nsw i64 %i.bs, -1
  %i.do = icmp eq i64 %indvars.iv.ph, %i.dn
  br i1 %i.do, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0194254 = phi ptr [ %i.eo, %scalar.ph ], [ %.0194254.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !42
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 16
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dt = load i8, ptr %gep, align 1, !tbaa !42
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 8
  %gep333 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv
  %i.dw = load i8, ptr %gep333, align 1, !tbaa !42
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.ds, %i.dv
  %i.dz = or disjoint i32 %i.dy, %i.dx
  %i.ea = or disjoint i32 %i.dz, -16777216
  store i32 %i.ea, ptr %.0194254, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0194254, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !42
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.eg = load i8, ptr %gep.1, align 1, !tbaa !42
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %gep333.1 = getelementptr inbounds nuw i8, ptr %invariant.gep332, i64 %indvars.iv.next
  %i.ej = load i8, ptr %gep333.1, align 1, !tbaa !42
  %i.ek = zext i8 %i.ej to i32
  %i.el = or disjoint i32 %i.ef, %i.ei
  %i.em = or disjoint i32 %i.el, %i.ek
  %i.en = or disjoint i32 %i.em, -16777216
  store i32 %i.en, ptr %i.eb, align 4, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0194254, i64 8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bs
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !15

.thread246:                                       ; preds = %bb.af, %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.eq = icmp samesign ult i32 %i.s, 8
  br label %bb.ak

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc ; 2 uses
  %i.es = icmp samesign ult i32 %i.s, 8
  br i1 %i.es, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge
  %i.et = add nuw i32 %i.m, 15                    ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = zext nneg i32 %i.p to i64
  %i.ew = tail call ptr @av_malloc_array(i64 noundef %i.eu, i64 noundef %i.ev) #5 ; 3 uses
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !41
  %.not239 = icmp eq ptr %i.ew, null
  br i1 %.not239, label %bb.bc, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ex = lshr i32 %i.et, 3
  %i.ey = mul nuw nsw i32 %i.ex, %i.s
  %i.ez = zext nneg i32 %i.ey to i64
  br label %bb.al

bb.ak:                                            ; preds = %.thread246, %._crit_edge
  %i.fa = phi i1 [ %i.eq, %.thread246 ], [ false, %._crit_edge ]
  %i.fb = phi ptr [ %i.ep, %.thread246 ], [ %i.er, %._crit_edge ]
  %i.fc = load ptr, ptr %1, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !65
  %i.ff = sext i32 %i.fe to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fg = phi i1 [ true, %bb.aj ], [ %i.fa, %bb.ak ]
  %i.fh = phi ptr [ %i.er, %bb.aj ], [ %i.fb, %bb.ak ] ; 5 uses
  %.0196 = phi i64 [ %i.ez, %bb.aj ], [ %i.ff, %bb.ak ] ; 3 uses
  %.1195 = phi ptr [ %i.ew, %bb.aj ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.fi = icmp eq i32 %i.u, 33554432
  br i1 %i.fi, label %bb.am, label %.preheader250

.preheader250:                                    ; preds = %bb.al
  %.not283 = icmp eq i32 %i.o, 0
  br i1 %.not283, label %.critedge, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader250
  %i.fj = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.fk = zext nneg i32 %i.aw to i64
  br label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.fl = zext nneg i32 %i.p to i64
  %i.fm = mul nsw i64 %.0196, %i.fl               ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.1195, i64 %i.fm ; 2 uses
  %i.fo = icmp eq i64 %i.fm, 0
  %i.fp = icmp uge ptr %i.fh, %i.h
  %.not245263 = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %.not245263, label %.critedge, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.am, %bb.ax
  %.2266 = phi ptr [ %.5, %bb.ax ], [ %.1195, %bb.am ]
  %.1200265 = phi i32 [ %.4203, %bb.ax ], [ 0, %bb.am ]
  %.0205264 = phi ptr [ %.1206, %bb.ax ], [ %i.fh, %bb.am ] ; 5 uses
  %i.fq = ptrtoint ptr %.0205264 to i64
  %i.fr = sub i64 %i.bb, %i.fq
  %i.fs = icmp slt i64 %i.fr, 1
  br i1 %i.fs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph268
  call void @av_freep(ptr noundef nonnull %i.a) #5
  br label %bb.bc

end_hunk_0
begin_hunk_1_@sunrast_decode_frame:bb.a
  %i.lx = and <4 x i8> %wide.load382, splat (i8 15)
  %interleaved.vec383 = shufflevector <4 x i8> %i.lu, <4 x i8> %i.lx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec383, ptr %i.lw, align 1, !tbaa !42, !alias.scope !75, !noalias !74
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next384, %n.vec380
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n385, label %._crit_edge272.split.us280, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck365, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv294.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck365 ], [ %n.vec371, %vec.epilog.iter.check ], [ %n.vec380, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod429.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv294.ph ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !42
  %i.mb = lshr i8 %i.ma, 4
  %i.mc = shl nuw nsw i64 %indvars.iv294.ph, 1    ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mc
  store i8 %i.mb, ptr %i.md, align 1, !tbaa !42
  %i.me = load i8, ptr %i.lz, align 1, !tbaa !42
  %i.mf = and i8 %i.me, 15
  %i.mg = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !42
  %indvars.iv.next295.prol = or disjoint i64 %indvars.iv294.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next295.prol, %vec.epilog.scalar.ph.prol ]
  %i.mi = icmp eq i64 %indvars.iv294.ph, %i.hl
  br i1 %i.mi, label %._crit_edge272.split.us280, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %vec.epilog.scalar.ph ], [ %indvars.iv294.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv294 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !42
  %i.ml = lshr i8 %i.mk, 4
  %i.mm = shl nuw nsw i64 %indvars.iv294, 1       ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mm
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !42
  %i.mo = load i8, ptr %i.mj, align 1, !tbaa !42
  %i.mp = and i8 %i.mo, 15
  %i.mq = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !42
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv.next295 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !42
  %i.mu = lshr i8 %i.mt, 4
  %i.mv = shl nuw nsw i64 %indvars.iv.next295, 1  ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mv
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !42
  %i.mx = load i8, ptr %i.ms, align 1, !tbaa !42
  %i.my = and i8 %i.mx, 15
  %i.mz = getelementptr inbounds nuw i8, ptr %.7274.us, i64 %i.mv
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  store i8 %i.my, ptr %i.na, align 1, !tbaa !42
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %exitcond299.not.1 = icmp eq i64 %indvars.iv.next295.1, %wide.trip.count298
  br i1 %exitcond299.not.1, label %._crit_edge272.split.us280, label %vec.epilog.scalar.ph, !llvm.loop !31

._crit_edge272.split.us280:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block378
  %i.nb = load i32, ptr %i.gz, align 8, !tbaa !65
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds i8, ptr %.7274.us, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.hd
  %i.nf = add nuw nsw i32 %.1198273.us, 1         ; 2 uses
  %exitcond301.not = icmp eq i32 %i.nf, %i.p
  br i1 %exitcond301.not, label %._crit_edge276, label %iter.check, !llvm.loop !25

._crit_edge276:                                   ; preds = %._crit_edge272.split.us280, %._crit_edge272.split.us.us.us, %.preheader.lr.ph, %bb.ba
  call void @av_freep(ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge276, %.critedge
  store i32 1, ptr %2, align 4, !tbaa !65
  %i.ng = ptrtoint ptr %.3208 to i64
  %i.nh = ptrtoint ptr %i.d to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = trunc i64 %i.ni to i32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.an, %.thread, %bb.ai, %bb.ac, %bb.ab, %bb.w, %bb.a, %bb.bb, %bb.v, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.3212 = phi i32 [ -1094995529, %.thread ], [ -1094995529, %bb.c ], [ -1163346256, %bb.e ], [ -1094995529, %bb.g ], [ -1163346256, %bb.i ], [ -1094995529, %bb.k ], [ -1163346256, %bb.m ], [ -1094995529, %bb.o ], [ -1094995529, %bb.v ], [ -1094995529, %bb.a ], [ %i.ar, %bb.w ], [ -1094995529, %bb.ab ], [ %i.nj, %bb.bb ], [ -1094995529, %bb.an ], [ %i.bi, %bb.ac ], [ -12, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3212
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !68, !69, !70}
!15 = distinct !{!15, !68, !69}
!16 = distinct !{!16, !68}
!17 = distinct !{!17, !68}
!18 = distinct !{!18, !68}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !68, !69, !70}
!23 = distinct !{!23, !68, !69, !70}
!24 = distinct !{!24, !68, !69}
!25 = distinct !{!25, !68}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !68, !69, !70}
!30 = distinct !{!30, !68, !69, !70}
!31 = distinct !{!31, !68, !69}
!32 = !{!"any pointer", !5, i64 0}
!33 = !{!"p1 _ZTS11AVBufferRef", !32, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!"p1 omnipotent char", !32, i64 0}
!36 = !{!"p1 _ZTS16AVPacketSideData", !32, i64 0}
!37 = !{!"AVRational", !6, i64 0, !6, i64 4}
!38 = !{!"AVPacket", !33, i64 0, !34, i64 8, !34, i64 16, !35, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !36, i64 48, !6, i64 56, !34, i64 64, !34, i64 72, !32, i64 80, !33, i64 88, !37, i64 96}
!39 = !{!38, !35, i64 24}
!40 = !{!38, !6, i64 32}
!41 = !{!35, !35, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!"p1 _ZTS7AVClass", !32, i64 0}
!44 = !{!"p1 _ZTS7AVCodec", !32, i64 0}
!45 = !{!"p1 _ZTS15AVCodecInternal", !32, i64 0}
!46 = !{!"float", !5, i64 0}
!47 = !{!"p1 short", !32, i64 0}
!48 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !32, i64 16}
!49 = !{!"p1 _ZTS10RcOverride", !32, i64 0}
!50 = !{!"p1 _ZTS9AVHWAccel", !32, i64 0}
!51 = !{!"p1 _ZTS17AVCodecDescriptor", !32, i64 0}
!52 = !{!"p1 int", !32, i64 0}
!53 = !{!"any p2 pointer", !32, i64 0}
!54 = !{!"p2 _ZTS15AVFrameSideData", !53, i64 0}
!55 = !{!"AVCodecContext", !43, i64 0, !6, i64 8, !6, i64 12, !44, i64 16, !6, i64 24, !6, i64 28, !32, i64 32, !45, i64 40, !32, i64 48, !34, i64 56, !6, i64 64, !6, i64 68, !35, i64 72, !6, i64 80, !37, i64 84, !37, i64 92, !37, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !37, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !32, i64 184, !32, i64 192, !6, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !47, i64 288, !47, i64 296, !47, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !48, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !32, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !46, i64 428, !46, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !49, i64 456, !34, i64 464, !34, i64 472, !46, i64 480, !46, i64 484, !6, i64 488, !6, i64 492, !35, i64 496, !35, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !50, i64 536, !32, i64 544, !33, i64 552, !33, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !32, i64 672, !32, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !51, i64 728, !35, i64 736, !6, i64 744, !6, i64 748, !35, i64 752, !35, i64 760, !35, i64 768, !36, i64 776, !6, i64 784, !6, i64 788, !34, i64 792, !6, i64 800, !6, i64 804, !34, i64 808, !32, i64 816, !34, i64 824, !52, i64 832, !6, i64 840, !54, i64 848, !6, i64 856, !6, i64 860}
!56 = !{!55, !6, i64 136}
!57 = !{!"p2 omnipotent char", !53, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !53, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !32, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !57, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !37, i64 124, !34, i64 136, !34, i64 144, !37, i64 152, !6, i64 160, !32, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !54, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !34, i64 304, !59, i64 312, !6, i64 320, !33, i64 328, !33, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !34, i64 368, !32, i64 376, !48, i64 384, !34, i64 408, !6, i64 416}
!61 = !{!60, !6, i64 120}
!62 = !{!10}
!63 = !{!11}
!64 = !{!12}
!65 = !{!6, !6, i64 0}
!66 = !{!13}
!67 = !{!12, !11, !10}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!20}
!72 = !{!21}
!73 = !{!"branch_weights", i32 4, i32 12}
!74 = !{!27}
!75 = !{!28}
end_hunk_1
