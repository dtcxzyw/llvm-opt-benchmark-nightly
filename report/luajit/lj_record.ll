Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@rec_tsetm:bb.a
  %i.bn = xor i32 %i.bm, -1
  %.0.i.i31 = select i1 %i.bl, i32 14, i32 %i.bn  ; 3 uses
  %i.bo = trunc nuw nsw i32 %.0.i.i31 to i16
  %i.bp = or disjoint i16 %i.bo, 18304
  %i.bq = load i32, ptr %i.ar, align 8, !tbaa !35
  %i.br = add nsw i32 %i.bq, %.02733
  %i.bs = trunc i32 %i.br to i16
  store i16 %i.bp, ptr %i.at, align 4, !tbaa !9
  store i16 %i.bs, ptr %i.as, align 8, !tbaa !9
  store i16 4, ptr %i.au, align 2, !tbaa !9
  %i.bt = call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.bu = icmp samesign ult i32 %.0.i.i31, 3
  %i.bv = mul nuw nsw i32 %.0.i.i31, 16777217
  %i.bw = xor i32 %i.bv, 32767
  %.0.i32 = select i1 %i.bu, i32 %i.bw, i32 %i.bt ; 2 uses
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bh
  store i32 %.0.i32, ptr %i.by, align 4, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bz = phi i32 [ %.0.i32, %bb.e ], [ %i.bd, %bb.d ]
  store i32 %i.bz, ptr %i.av, align 8, !tbaa !75
  %i.ca = call i32 @lj_record_idx(ptr noundef nonnull %0, ptr noundef nonnull %4) ; 0 uses
  %i.cb = add nsw i32 %.034, 1
  %i.cc = add i32 %.02733, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_varg(ptr noundef %0, i32 noundef %1, i64 noundef range(i64 -1, 4294967295) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i8, ptr %i.c, align 2, !tbaa !104   ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = ashr i64 %i.k, 3
  %i.m = zext i8 %i.d to i64
  %i.n = sub nsw i64 %i.l, %i.m                   ; 4 uses
  %i.o = add nsw i64 %i.n, -2                     ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36
  %i.r = icmp ugt i32 %1, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = add i32 %1, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.o, i64 0) ; 2 uses
  switch i64 %2, label %bb.f [
    i64 1, label %bb.g
    i64 -1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0202 = phi i64 [ %spec.store.select, %bb.e ], [ %2, %bb.d ] ; 2 uses
  %i.aa = trunc i64 %.0202 to i32
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !36  ; 2 uses
  %.not236 = icmp ult i32 %1, %i.ab
  br i1 %.not236, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink295 = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.g ]
  %.1.ph = phi i64 [ %.0202, %bb.f ], [ 1, %bb.g ]
  %i.ac = add i32 %1, %.sink295                   ; 2 uses
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.ad = phi i32 [ %i.ab, %bb.g ], [ %i.ac, %.sink.split ]
  %.1 = phi i64 [ 1, %bb.g ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !35
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = icmp ugt i32 %i.ag, 249
  br i1 %i.ah, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not298 = icmp eq i64 %.1, 0
  br i1 %.not298, label %.loopexit, label %.lr.ph276

.lr.ph276:                                        ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.am = zext i32 %1 to i64
  %.pre.pre = load ptr, ptr %i.ai, align 8, !tbaa !42
  %invariant.op = sub i64 -2, %spec.store.select
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9
  unreachable

bb.j:                                             ; preds = %.lr.ph276, %bb.m
  %.pre = phi ptr [ %.pre.pre, %.lr.ph276 ], [ %.pre279, %bb.m ] ; 3 uses
  %.0204275 = phi i64 [ 0, %.lr.ph276 ], [ %i.bp, %bb.m ] ; 4 uses
  %i.an = icmp sgt i64 %i.o, %.0204275
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.reass.reass.reass = add i64 %.0204275, %invariant.op ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.reass.reass.reass
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37 ; 2 uses
  %.not237 = icmp eq i32 %i.ap, 0
  br i1 %.not237, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc i64 %.reass.reass.reass to i32
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %sext = shl i64 %.reass.reass.reass, 32
  %i.au = ashr exact i64 %sext, 32                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9
  %i.ax = ashr i64 %i.aw, 47                      ; 2 uses
  %i.ay = icmp ult i64 %i.ax, -14
  %i.az = trunc nsw i64 %i.ax to i32
  %i.ba = xor i32 %i.az, -1
  %.0.i.i = select i1 %i.ay, i32 14, i32 %i.ba    ; 3 uses
  %i.bb = trunc nuw nsw i32 %.0.i.i to i16
  %i.bc = or disjoint i16 %i.bb, 18304
  %i.bd = load i32, ptr %i.ae, align 8, !tbaa !35
  %i.be = add nsw i32 %i.bd, %i.aq
  %i.bf = trunc i32 %i.be to i16
  store i16 %i.bc, ptr %i.ak, align 4, !tbaa !9
  store i16 %i.bf, ptr %i.aj, align 8, !tbaa !9
  store i16 4, ptr %i.al, align 2, !tbaa !9
  %i.bg = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.bh = icmp samesign ult i32 %.0.i.i, 3
  %i.bi = mul nuw nsw i32 %.0.i.i, 16777217
  %i.bj = xor i32 %i.bi, 32767
  %.0.i240 = select i1 %i.bh, i32 %i.bj, i32 %i.bg ; 2 uses
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.au
  store i32 %.0.i240, ptr %i.bl, align 4, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l
  %.pre279 = phi ptr [ %i.bk, %bb.l ], [ %.pre, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.bm = phi i32 [ %.0.i240, %bb.l ], [ 32767, %bb.j ], [ %i.ap, %bb.k ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre279, i64 %.0204275
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.am
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !37
  %i.bp = add nuw nsw i64 %.0204275, 1            ; 2 uses
  %exitcond278.not = icmp eq i64 %i.bp, %.1
  br i1 %exitcond278.not, label %.loopexit, label %bb.j, !llvm.loop !166

bb.n:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 23 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 23 uses
  store i16 18195, ptr %i.br, align 4, !tbaa !9
  store i16 1, ptr %i.bq, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 23 uses
  store i16 18, ptr %i.bs, align 2, !tbaa !9
  %i.bt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 6 uses
  %i.bu = shl nuw nsw i32 %i.e, 3                 ; 4 uses
  %i.bv = add nuw nsw i32 %i.bu, 19               ; 7 uses
  %i.bw = icmp sgt i64 %2, -1
  br i1 %i.bw, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp sgt i64 %i.n, 2
  br i1 %i.bx, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.not232 = icmp samesign ult i64 %i.o, %2
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %i.bz = trunc i32 %i.bt to i16                  ; 2 uses
  br i1 %.not232, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = trunc nuw i64 %2 to i32
  %i.cb = shl nsw i32 %i.ca, 3
  %i.cc = add nsw i32 %i.bv, %i.cb
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !46
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !9
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.ci, %bb.r ], [ %i.cc, %bb.q ]
  %.sink296 = phi i16 [ 2195, %bb.r ], [ 403, %bb.q ]
  %i.cj = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %.sink) #8
  %i.ck = trunc i32 %i.cj to i16
  store i16 %.sink296, ptr %i.br, align 4, !tbaa !9
  store i16 %i.bz, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.ck, ptr %i.bs, align 2, !tbaa !9
  %i.cl = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  store i16 10773, ptr %i.br, align 4, !tbaa !9
  store i16 -32768, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.bz, ptr %i.bs, align 2, !tbaa !9
  %i.cm = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.cn = trunc i32 %i.cm to i16
  %i.co = or disjoint i32 %i.bu, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = tail call i32 @lj_ir_kint64(ptr noundef nonnull %0, i64 noundef %i.cp) #8
  %i.cr = trunc i32 %i.cq to i16
  store i16 10505, ptr %i.br, align 4, !tbaa !9
  store i16 %i.cn, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.cr, ptr %i.bs, align 2, !tbaa !9
  %i.cs = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit271, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cv = zext i32 %1 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %.0211272 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %bb.t ] ; 4 uses
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !46
  %i.cz = sub nsw i64 %.0211272, %i.n
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9
  %i.dc = ashr i64 %i.db, 47                      ; 2 uses
  %i.dd = icmp ult i64 %i.dc, -14
  %i.de = trunc nsw i64 %i.dc to i32
  %i.df = xor i32 %i.de, -1
  %.0.i239 = select i1 %i.dd, i32 14, i32 %i.df   ; 3 uses
  %i.dg = trunc i32 %.0.i239 to i16
  %i.dh = or i16 %i.dg, 18560
  %i.di = trunc i64 %.0211272 to i16
  store i16 %i.dh, ptr %i.br, align 4, !tbaa !9
  store i16 %i.ct, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.di, ptr %i.bs, align 2, !tbaa !9
  %i.dj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.dk = icmp ult i32 %.0.i239, 3
  %reass.sub.i = mul nuw nsw i32 %.0.i239, 16777215
  %i.dl = add nuw nsw i32 %reass.sub.i, 32767
  %.0.i241 = select i1 %i.dk, i32 %i.dl, i32 %i.dj
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0211272
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cv
  store i32 %.0.i241, ptr %i.do, align 4, !tbaa !37
  %i.dp = add nuw nsw i64 %.0211272, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.by
  br i1 %exitcond.not, label %.loopexit271, label %bb.t, !llvm.loop !167

bb.u:                                             ; preds = %bb.o
  %i.dq = trunc i32 %i.bt to i16
  %i.dr = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.bv) #8
  %i.ds = trunc i32 %i.dr to i16
  store i16 659, ptr %i.br, align 4, !tbaa !9
  store i16 %i.dq, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.ds, ptr %i.bs, align 2, !tbaa !9
  %i.dt = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.loopexit271

.loopexit271:                                     ; preds = %bb.t, %bb.s, %bb.u
  %.0203 = phi i64 [ 0, %bb.u ], [ %i.o, %bb.s ], [ %i.o, %bb.t ] ; 5 uses
  %i.du = icmp samesign ult i64 %.0203, %2
  br i1 %i.du, label %.lr.ph274, label %._crit_edge

.lr.ph274:                                        ; preds = %.loopexit271
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42
  %i.dx = zext i32 %1 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dy = sub nuw i64 %2, %.0203                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph274
  %n.vec = and i64 %i.dy, 9223372036854775800     ; 3 uses
  %i.dz = add i64 %.0203, %n.vec
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0203
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> splat (i32 32767), ptr %i.eb, align 4, !tbaa !37
  store <4 x i32> splat (i32 32767), ptr %i.ec, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph274, %middle.block
  %.1212273.ph = phi i64 [ %.0203, %.lr.ph274 ], [ %i.dz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1212273 = phi i64 [ %i.ee, %scalar.ph ], [ %.1212273.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.1212273
  store i32 32767, ptr %gep, align 4, !tbaa !37
  %i.ee = add nuw nsw i64 %.1212273, 1            ; 2 uses
  %exitcond277.not = icmp eq i64 %i.ee, %2
  br i1 %exitcond277.not, label %._crit_edge, label %scalar.ph, !llvm.loop !169

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.loopexit271
  %.not233 = icmp eq i64 %2, 1
  br i1 %.not233, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ef = load i32, ptr %i.p, align 4, !tbaa !36
  %.not234 = icmp ult i32 %1, %i.ef
  br i1 %.not234, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.eg = trunc nuw i64 %2 to i32
  %i.eh = add i32 %1, %i.eg
  store i32 %i.eh, ptr %i.p, align 4, !tbaa !36
  br label %.loopexit

bb.x:                                             ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37 ; 2 uses
  %i.em = and i32 %i.el, -65281
  %or.cond24.i = icmp eq i32 %i.em, 33620033
  br i1 %or.cond24.i, label %bb.y, label %select_detect.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46
  %i.eq = lshr i32 %i.el, 8
  %i.er = and i32 %i.eq, 255                      ; 2 uses
  %i.es = zext nneg i32 %i.er to i64              ; 4 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !9  ; 2 uses
  %.mask22.i = and i64 %i.eu, -140737488355328
  %i.ev = icmp eq i64 %.mask22.i, -1266637395197952
  br i1 %i.ev, label %bb.z, label %select_detect.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ew = and i64 %i.eu, 140737488355327
  %i.ex = inttoptr i64 %i.ew to ptr               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !9
  %i.fa = icmp eq i8 %i.ez, 16
  br i1 %i.fa, label %bb.aa, label %select_detect.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.fb = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef nonnull %i.ex, i32 noundef 8) #8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.es
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.es
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !9
  %i.fl = ashr i64 %i.fk, 47                      ; 2 uses
  %i.fm = icmp ult i64 %i.fl, -14
  %i.fn = trunc nsw i64 %i.fl to i32
  %i.fo = xor i32 %i.fn, -1
  %.0.i.i.i = select i1 %i.fm, i32 14, i32 %i.fo  ; 3 uses
  %i.fp = trunc nuw nsw i32 %.0.i.i.i to i16
  %i.fq = or disjoint i16 %i.fp, 18304
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !35
  %i.ft = add nsw i32 %i.fs, %i.er
  %i.fu = trunc i32 %i.ft to i16
  store i16 %i.fq, ptr %i.br, align 4, !tbaa !9
  store i16 %i.fu, ptr %i.bq, align 8, !tbaa !9
  store i16 4, ptr %i.bs, align 2, !tbaa !9
  %i.fv = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.fw = icmp samesign ult i32 %.0.i.i.i, 3
  %i.fx = mul nuw nsw i32 %.0.i.i.i, 16777217
  %i.fy = xor i32 %i.fx, 32767
  %.0.i.i242 = select i1 %i.fw, i32 %i.fy, i32 %i.fv ; 2 uses
  %i.fz = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.es
  store i32 %.0.i.i242, ptr %i.ga, align 4, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gb = phi i32 [ %.0.i.i242, %bb.ab ], [ %i.ff, %bb.aa ]
  %i.gc = trunc i32 %i.gb to i16
  %i.gd = trunc i32 %i.fb to i16
  store i16 2184, ptr %i.br, align 4, !tbaa !9
  store i16 %i.gc, ptr %i.bq, align 8, !tbaa !9
  store i16 %i.gd, ptr %i.bs, align 2, !tbaa !9
  %i.ge = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.gf = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.gg = add i32 %1, -1                          ; 3 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !37 ; 2 uses
  %.not225 = icmp eq i32 %i.gj, 0
  br i1 %.not225, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gk = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !46
end_hunk_0
