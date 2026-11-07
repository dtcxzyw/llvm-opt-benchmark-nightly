Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alsdec?download=true
inline.NumInlined: 158
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@revert_channel_correlation:bb.a
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bw, i64 28 ; 2 uses
  %i.iy = add nsw i64 %i.bz, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph248
  %i.iz = add nuw nsw i64 %i.bn, %i.bz
  %i.ja = shl nuw nsw i64 %i.iz, 2                ; 2 uses
  %i.jb = getelementptr i8, ptr %i.bm, i64 %i.ja  ; 2 uses
  %i.jc = getelementptr i8, ptr %i.bw, i64 32
  %i.jd = getelementptr i8, ptr %i.ce, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %bound0 = icmp ult ptr %scevgep, %i.jc
  %bound1 = icmp ult ptr %i.iv, %i.jb
  %found.conflict = and i1 %bound0, %bound1
  %bound0345 = icmp ult ptr %scevgep, %i.je
  %bound1346 = icmp ult ptr %i.cf, %i.jb
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx = or i1 %found.conflict, %found.conflict347
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, -4                      ; 3 uses
  %i.jf = or disjoint i64 %n.vec, 1
  %i.jg = load i32, ptr %i.iv, align 4, !tbaa !94, !alias.scope !263
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jh = sext <4 x i32> %broadcast.splat to <4 x i64>
  %i.ji = load i32, ptr %i.iw, align 4, !tbaa !94, !alias.scope !263
  %broadcast.splatinsert348 = insertelement <4 x i32> poison, i32 %i.ji, i64 0
  %broadcast.splat349 = shufflevector <4 x i32> %broadcast.splatinsert348, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jj = sext <4 x i32> %broadcast.splat349 to <4 x i64>
  %i.jk = load i32, ptr %i.ix, align 4, !tbaa !94, !alias.scope !263
  %broadcast.splatinsert350 = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %broadcast.splat351 = shufflevector <4 x i32> %broadcast.splatinsert350, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jl = sext <4 x i32> %broadcast.splat351 to <4 x i64>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jm = or disjoint i64 %index, 1               ; 2 uses
  %i.jn = getelementptr [4 x i8], ptr %i.cf, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 -4
  %wide.load = load <4 x i32>, ptr %i.jo, align 4, !tbaa !94, !alias.scope !264
  %i.jp = sext <4 x i32> %wide.load to <4 x i64>
  %i.jq = mul nsw <4 x i64> %i.jp, %i.jh
  %i.jr = add nsw <4 x i64> %i.jq, splat (i64 64)
  %wide.load352 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !94, !alias.scope !264
  %i.js = sext <4 x i32> %wide.load352 to <4 x i64>
  %i.jt = mul nsw <4 x i64> %i.js, %i.jj
  %i.ju = add nsw <4 x i64> %i.jr, %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %wide.load353 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !94, !alias.scope !264
  %i.jx = sext <4 x i32> %wide.load353 to <4 x i64>
  %i.jy = mul nsw <4 x i64> %i.jx, %i.jl
  %i.jz = add nsw <4 x i64> %i.ju, %i.jy
  %i.ka = lshr <4 x i64> %i.jz, splat (i64 7)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jm ; 2 uses
  %wide.load354 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !94, !alias.scope !265, !noalias !266
  %i.kc = trunc <4 x i64> %i.ka to <4 x i32>
  %i.kd = add <4 x i32> %wide.load354, %i.kc
  store <4 x i32> %i.kd, ptr %i.kb, align 4, !tbaa !94, !alias.scope !265, !noalias !266
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.critedge225, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph248, %middle.block
  %.1247.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph248 ], [ %i.jf, %middle.block ]
  br label %scalar.ph

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kf = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bz
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.bt
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kf, i32 noundef 16, ptr noundef nonnull @.str.35, ptr noundef %i.cf, ptr noundef nonnull %i.kh, ptr noundef %i.il, ptr noundef %i.ki) #16
  br label %.critedge225.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1247 = phi i64 [ %i.kz, %scalar.ph ], [ %.1247.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kj = load i32, ptr %i.iv, align 4, !tbaa !94
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr [4 x i8], ptr %i.cf, i64 %.1247 ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !94
  %i.ko = sext i32 %i.kn to i64
  %i.kp = mul nsw i64 %i.ko, %i.kk
  %i.kq = add nsw i64 %i.kp, 64
  %i.kr = load i32, ptr %i.iw, align 4, !tbaa !94
  %i.ks = sext i32 %i.kr to i64
  %i.kt = load i32, ptr %i.kl, align 4, !tbaa !94
  %i.ku = sext i32 %i.kt to i64
  %i.kv = mul nsw i64 %i.ku, %i.ks
  %i.kw = add nsw i64 %i.kq, %i.kv
  %i.kx = load i32, ptr %i.ix, align 4, !tbaa !94
  %i.ky = sext i32 %i.kx to i64
  %i.kz = add nuw nsw i64 %.1247, 1               ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !94
  %i.lc = sext i32 %i.lb to i64
  %i.ld = mul nsw i64 %i.lc, %i.ky
  %i.le = add nsw i64 %i.kw, %i.ld
  %i.lf = lshr i64 %i.le, 7
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1247 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !94
  %i.li = trunc i64 %i.lf to i32
  %i.lj = add i32 %i.lh, %i.li
  store i32 %i.lj, ptr %i.lg, align 4, !tbaa !94
  %exitcond271.not = icmp eq i64 %i.kz, %i.bz
  br i1 %exitcond271.not, label %.critedge225, label %scalar.ph, !llvm.loop !255

.critedge225:                                     ; preds = %scalar.ph379, %scalar.ph, %middle.block417, %middle.block, %.preheader227, %.preheader, %bb.e
  %i.lk = add i32 %.1202250, 1                    ; 2 uses
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [44 x i8], ptr %i.c, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !120
  %.not219 = icmp eq i32 %i.ln, 0
  br i1 %.not219, label %bb.e, label %.critedge225.thread, !llvm.loop !256

.critedge225.thread:                              ; preds = %.critedge225, %bb.d, %bb.i, %split, %bb.l, %bb.r, %bb.a, %.critedge.thread
  %.4 = phi i32 [ 0, %bb.a ], [ -1094995529, %.critedge.thread ], [ -1094995529, %bb.i ], [ -1094995529, %bb.r ], [ -1094995529, %bb.l ], [ -1094995529, %split ], [ 0, %bb.d ], [ 0, %.critedge225 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = load i32, ptr %i.b, align 4, !tbaa !94
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr %1, align 8, !tbaa !110    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 88
  %.val19 = load ptr, ptr %i.e, align 8, !tbaa !109 ; 4 uses
  %i.f = load i32, ptr %.val19, align 4, !tbaa !94 ; 2 uses
  %.061.i = add i32 %i.d, -1                      ; 5 uses
  %.not2.i = icmp eq i32 %.061.i, 0
  br i1 %.not2.i, label %decode_const_block_data.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = zext i32 %.061.i to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %.061.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 4294967288               ; 4 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %.061.i, %i.h
  %i.j = shl nuw nsw i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %.val19, i64 %i.j
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val19, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !94
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %decode_const_block_data.exit, label %.lr.ph.i.preheader21

.lr.ph.i.preheader21:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.064.i.ph = phi i32 [ %.061.i, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  %.pn3.i.ph = phi ptr [ %.val19, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader21, %.lr.ph.i
  %.064.i = phi i32 [ %.06.i, %.lr.ph.i ], [ %.064.i.ph, %.lr.ph.i.preheader21 ]
  %.pn3.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.pn3.i.ph, %.lr.ph.i.preheader21 ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn3.i, i64 4 ; 2 uses
  store i32 %i.f, ptr %.0.i, align 4, !tbaa !94
  %.06.i = add i32 %.064.i, -1                    ; 2 uses
  %.not.i = icmp eq i32 %.06.i, 0
  br i1 %.not.i, label %decode_const_block_data.exit, label %.lr.ph.i, !llvm.loop !268

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.r = load i32, ptr %i.q, align 4, !tbaa !94   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107  ; 17 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !109  ; 10 uses
  %i.y = zext i32 %i.d to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !94
  %.not.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i20, label %.loopexit165.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 2) ; 3 uses
  %spec.select.i = add nsw i32 %i.ai, -2
  %i.aj = icmp ult i32 %spec.select.i, %i.d
  br i1 %i.aj, label %.lr.ph171.i, label %.loopexit165.i

.lr.ph171.i:                                      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = sub nsw i32 2, %i.ai
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = add nsw i64 %i.am, -2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph171.i
  %indvars.iv219.i = phi i64 [ %i.an, %.lr.ph171.i ], [ %indvars.iv.next220.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv212.i = phi i32 [ %i.al, %.lr.ph171.i ], [ %indvars.iv.next213.i, %._crit_edge.i ] ; 2 uses
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !94 ; 2 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv219.i to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 2) ; 3 uses
  %i.as = add nsw i32 %i.ar, -2
  %i.at = add nsw i32 %i.aq, 3                    ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i21, label %._crit_edge.i

.lr.ph.i21:                                       ; preds = %bb.e
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = add nsw i64 %i.aw, -2
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = add i32 %i.ao, %indvars.iv212.i
  %i.ba = add i32 %i.az, %i.ar
  %i.bb = sext i32 %i.ba to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i21
  %indvars.iv214.i = phi i64 [ %i.bb, %.lr.ph.i21 ], [ %indvars.iv.next215.i, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph.i21 ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.0126166.i = phi i64 [ 64, %.lr.ph.i21 ], [ %i.bj, %bb.f ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv214.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !94
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, %i.be
  %i.bj = add i64 %i.bi, %.0126166.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.bk, label %bb.f, label %._crit_edge.loopexit.i, !llvm.loop !269

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %i.bl = lshr i64 %i.bj, 7
  %i.bm = trunc i64 %i.bl to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %.0126.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.bm, %._crit_edge.loopexit.i ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv219.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !94
  %i.bp = add i32 %i.bo, %.0126.lcssa.i
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !94
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %indvars.iv.next213.i = add i32 %indvars.iv212.i, -1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next220.i, %i.y
  br i1 %exitcond.not.i, label %.loopexit165.i, label %bb.e, !llvm.loop !270

.loopexit165.i:                                   ; preds = %._crit_edge.i, %bb.d, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !102
  %.not139.i = icmp eq i32 %i.br, 0
  br i1 %.not139.i, label %.preheader161.i, label %.preheader163.i

.preheader163.i:                                  ; preds = %.loopexit165.i
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.d) ; 2 uses
  %.not204.i = icmp eq i32 %i.bs, 0
  br i1 %.not204.i, label %.loopexit.i, label %.preheader162.preheader.i

.preheader162.preheader.i:                        ; preds = %.preheader163.i
  %wide.trip.count230.i = zext i32 %i.bs to i64   ; 2 uses
  br label %.preheader162.i

.preheader161.i:                                  ; preds = %.loopexit165.i
  %.not206.i = icmp eq i32 %i.r, 0
  br i1 %.not206.i, label %._crit_edge182.i, label %.lr.ph181.preheader.i

.lr.ph181.preheader.i:                            ; preds = %.preheader161.i
  %wide.trip.count235.i = zext i32 %i.r to i64
  br label %.lr.ph181.i

.preheader162.i:                                  ; preds = %parcor_to_lpc.exit.i, %.preheader162.preheader.i
  %indvars.iv227.i = phi i64 [ 0, %.preheader162.preheader.i ], [ %indvars.iv.next228.i, %parcor_to_lpc.exit.i ] ; 10 uses
  %.0125178.i = phi ptr [ %i.x, %.preheader162.preheader.i ], [ %i.el, %parcor_to_lpc.exit.i ] ; 8 uses
  %.not205.i = icmp eq i64 %indvars.iv227.i, 0
  br i1 %.not205.i, label %parcor_to_lpc.exit.i, label %.lr.ph174.i.preheader

.lr.ph174.i.preheader:                            ; preds = %.preheader162.i
  %xtraiter = and i64 %indvars.iv227.i, 3         ; 3 uses
  %2 = icmp samesign ult i64 %indvars.iv227.i, 4
  br i1 %2, label %.lr.ph174.i.epil.preheader, label %.lr.ph174.i.preheader.new

.lr.ph174.i.preheader.new:                        ; preds = %.lr.ph174.i.preheader
  %unroll_iter = and i64 %indvars.iv227.i, 9223372036854775804
  br label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.lr.ph174.i, %.lr.ph174.i.preheader.new
  %indvars.iv222.i = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %indvars.iv.next223.i.3, %.lr.ph174.i ] ; 9 uses
  %.1127173.i = phi i64 [ 524288, %.lr.ph174.i.preheader.new ], [ %i.cl, %.lr.ph174.i ]
  %niter = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %niter.next.3, %.lr.ph174.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !94
  %i.bv = sext i32 %i.bu to i64
  %i.bw = xor i64 %indvars.iv222.i, -1
  %3 = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.bw
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, %i.bv
  %7 = add i64 %6, %.1127173.i
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %9 = load i32, ptr %i.bx, align 4, !tbaa !94
  %10 = sext i32 %9 to i64
  %11 = xor i64 %indvars.iv222.i, -2
  %12 = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %11
  %i.by = load i32, ptr %12, align 4, !tbaa !94
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %10
  %i.cb = add i64 %i.ca, %7
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %13 = load i32, ptr %i.cd, align 4, !tbaa !94
  %14 = sext i32 %13 to i64
  %15 = xor i64 %indvars.iv222.i, -3
  %16 = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %15
  %i.ce = load i32, ptr %16, align 4, !tbaa !94
  %i.cf = sext i32 %i.ce to i64
  %17 = mul nsw i64 %i.cf, %14
  %i.cg = add i64 %17, %i.cb
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = sext i32 %20 to i64
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %i.ch = xor i64 %indvars.iv222.i, -4
  %22 = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.ch
  %i.ci = load i32, ptr %22, align 4, !tbaa !94
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul nsw i64 %i.cj, %21
  %i.cl = add i64 %i.ck, %i.cg                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge175.i.unr-lcssa, label %.lr.ph174.i, !llvm.loop !271

._crit_edge175.i.unr-lcssa:                       ; preds = %.lr.ph174.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge175.i, label %.lr.ph174.i.epil.preheader

.lr.ph174.i.epil.preheader:                       ; preds = %._crit_edge175.i.unr-lcssa, %.lr.ph174.i.preheader
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph174.i.preheader ], [ %indvars.iv.next223.i.3, %._crit_edge175.i.unr-lcssa ]
  %.1127173.i.epil.init = phi i64 [ 524288, %.lr.ph174.i.preheader ], [ %i.cl, %._crit_edge175.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph174.i.epil

.lr.ph174.i.epil:                                 ; preds = %.lr.ph174.i.epil, %.lr.ph174.i.epil.preheader
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv.next223.i.epil, %.lr.ph174.i.epil ], [ %indvars.iv222.i.epil.init, %.lr.ph174.i.epil.preheader ] ; 3 uses
  %.1127173.i.epil = phi i64 [ %25, %.lr.ph174.i.epil ], [ %.1127173.i.epil.init, %.lr.ph174.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next.a, %.lr.ph174.i.epil ], [ 0, %.lr.ph174.i.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i.epil
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !94
  %i.co = sext i32 %i.cn to i64
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %23 = xor i64 %indvars.iv222.i.epil, -1
  %24 = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %23
  %i.cp = load i32, ptr %24, align 4, !tbaa !94
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, %i.co
  %25 = add i64 %i.cr, %.1127173.i.epil           ; 2 uses
  %epil.iter.next.a = add i64 %epil.iter, 1       ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next.a, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge175.i, label %.lr.ph174.i.epil, !llvm.loop !272

._crit_edge175.i:                                 ; preds = %.lr.ph174.i.epil, %._crit_edge175.i.unr-lcssa
  %.lcssa19 = phi i64 [ %i.cl, %._crit_edge175.i.unr-lcssa ], [ %25, %.lr.ph174.i.epil ]
  %i.cs = lshr i64 %.lcssa19, 20
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = load i32, ptr %.0125178.i, align 4, !tbaa !94
  %i.cv = sub i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %.0125178.i, align 4, !tbaa !94
  %i.cw = trunc nuw i64 %indvars.iv227.i to i32   ; 2 uses
  %.02930.i.i = add nsw i32 %i.cw, -1             ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge175.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.cz = zext nneg i32 %.02930.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next36.i.i, %bb.g ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.cz, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !94
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !94 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.db
  %i.dg = add nsw i64 %i.df, 524288
  %i.dh = lshr i64 %i.dg, 20
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv35.i.i ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !94
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = add nsw i64 %i.dm, 524288
  %i.do = lshr i64 %i.dn, 20
  %i.dp = trunc i64 %i.do to i32
  %i.dq = add i32 %i.dd, %i.dp
  store i32 %i.dq, ptr %i.dc, align 4, !tbaa !94
  %i.dr = load i32, ptr %i.dj, align 4, !tbaa !94
  %i.ds = add i32 %i.dr, %i.di
  store i32 %i.ds, ptr %i.dj, align 4, !tbaa !94
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.dt = icmp slt i64 %indvars.iv.next36.i.i, %indvars.iv.next.i.i
  br i1 %i.dt, label %bb.g, label %._crit_edge.loopexit.i.i, !llvm.loop !273

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %i.du = trunc nuw nsw i64 %indvars.iv.next36.i.i to i32
  %i.dv = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge175.i
  %.0.lcssa.i.i = phi i32 [ 0, %._crit_edge175.i ], [ %i.du, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.029.lcssa.i.i = phi i32 [ %.02930.i.i, %._crit_edge175.i ], [ %i.dv, %._crit_edge.loopexit.i.i ]
  %i.dw = icmp eq i32 %.0.lcssa.i.i, %.029.lcssa.i.i
  br i1 %i.dw, label %bb.h, label %parcor_to_lpc.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !94
  %i.dz = sext i32 %i.dy to i64
  %i.ea = sext i32 %.0.lcssa.i.i to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !94 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul nsw i64 %i.ed, %i.dz
  %i.ef = add nsw i64 %i.ee, 524288
  %i.eg = lshr i64 %i.ef, 20
  %i.eh = zext nneg i32 %.0.lcssa.i.i to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.eh
  %i.ej = trunc i64 %i.eg to i32
  %i.ek = add i32 %i.ec, %i.ej
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !94
  br label %parcor_to_lpc.exit.i

parcor_to_lpc.exit.i:                             ; preds = %.preheader162.i, %bb.h, %._crit_edge.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0125178.i, i64 4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !94
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv227.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !94
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count230.i
  br i1 %exitcond231.not.i, label %.loopexit.i, label %.preheader162.i, !llvm.loop !274

.lr.ph181.i:                                      ; preds = %parcor_to_lpc.exit158.i, %.lr.ph181.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph181.preheader.i ], [ %indvars.iv.next233.i, %parcor_to_lpc.exit158.i ] ; 6 uses
  %i.ep = trunc nuw i64 %indvars.iv232.i to i32
  %.02930.i148.i = add i32 %i.ep, -1              ; 3 uses
  %i.eq = icmp sgt i32 %.02930.i148.i, 0
  br i1 %i.eq, label %.lr.ph.i152.i, label %._crit_edge.i149.i

.lr.ph.i152.i:                                    ; preds = %.lr.ph181.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.es = zext nneg i32 %.02930.i148.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i152.i
  %indvars.iv35.i153.i = phi i64 [ 0, %.lr.ph.i152.i ], [ %indvars.iv.next36.i155.i, %bb.i ] ; 2 uses
  %indvars.iv.i154.i = phi i64 [ %i.es, %.lr.ph.i152.i ], [ %indvars.iv.next.i156.i, %bb.i ] ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !94
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i154.i ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !94 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul nsw i64 %i.ex, %i.eu
  %i.ez = add nsw i64 %i.ey, 524288
  %i.fa = lshr i64 %i.ez, 20
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv35.i153.i ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !94
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fe, %i.eu
  %i.fg = add nsw i64 %i.ff, 524288
  %i.fh = lshr i64 %i.fg, 20
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = add i32 %i.ew, %i.fi
  store i32 %i.fj, ptr %i.ev, align 4, !tbaa !94
  %i.fk = load i32, ptr %i.fc, align 4, !tbaa !94
  %i.fl = add i32 %i.fk, %i.fb
  store i32 %i.fl, ptr %i.fc, align 4, !tbaa !94
  %indvars.iv.next36.i155.i = add nuw nsw i64 %indvars.iv35.i153.i, 1 ; 3 uses
  %indvars.iv.next.i156.i = add nsw i64 %indvars.iv.i154.i, -1 ; 3 uses
  %i.fm = icmp slt i64 %indvars.iv.next36.i155.i, %indvars.iv.next.i156.i
  br i1 %i.fm, label %bb.i, label %._crit_edge.loopexit.i157.i, !llvm.loop !273

._crit_edge.loopexit.i157.i:                      ; preds = %bb.i
  %i.fn = trunc nuw nsw i64 %indvars.iv.next36.i155.i to i32
  %i.fo = trunc nsw i64 %indvars.iv.next.i156.i to i32
  br label %._crit_edge.i149.i

._crit_edge.i149.i:                               ; preds = %._crit_edge.loopexit.i157.i, %.lr.ph181.i
  %.0.lcssa.i150.i = phi i32 [ 0, %.lr.ph181.i ], [ %i.fn, %._crit_edge.loopexit.i157.i ] ; 3 uses
  %.029.lcssa.i151.i = phi i32 [ %.02930.i148.i, %.lr.ph181.i ], [ %i.fo, %._crit_edge.loopexit.i157.i ]
  %i.fp = icmp eq i32 %.0.lcssa.i150.i, %.029.lcssa.i151.i
  br i1 %i.fp, label %bb.j, label %parcor_to_lpc.exit158.i

bb.j:                                             ; preds = %._crit_edge.i149.i
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !94
  %i.fs = sext i32 %i.fr to i64
  %i.ft = sext i32 %.0.lcssa.i150.i to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !94 ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul nsw i64 %i.fw, %i.fs
  %i.fy = add nsw i64 %i.fx, 524288
  %i.fz = lshr i64 %i.fy, 20
  %i.ga = zext nneg i32 %.0.lcssa.i150.i to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ga
  %i.gc = trunc i64 %i.fz to i32
  %i.gd = add i32 %i.fv, %i.gc
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !94
  br label %parcor_to_lpc.exit158.i

parcor_to_lpc.exit158.i:                          ; preds = %bb.j, %._crit_edge.i149.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv232.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !94
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv232.i
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !94
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge182.i, label %.lr.ph181.i, !llvm.loop !275

._crit_edge182.i:                                 ; preds = %parcor_to_lpc.exit158.i, %.preheader161.i
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !115
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !94
  %.not140.i = icmp eq i32 %i.gj, 0
  br i1 %.not140.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge182.i
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !108
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !55
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = sub nsw i64 0, %i.go
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.gp
  %i.gr = shl nsw i64 %i.go, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gl, ptr align 4 %i.gq, i64 %i.gr, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge182.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !118
  %.not141.i = icmp eq i32 %i.gt, 0
  br i1 %.not141.i, label %.loopexit160.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !117 ; 4 uses
  %.not142.i = icmp eq ptr %i.gv, null
  br i1 %.not142.i, label %.loopexit160.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gw = icmp ugt ptr %i.gv, %i.x                ; 2 uses
  %..i = select i1 %i.gw, ptr %i.x, ptr %i.gv
  %.147.i = select i1 %i.gw, ptr %i.gv, ptr %i.x
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !55
  %.not143183.i = icmp slt i32 %i.gy, 1
  br i1 %.not143183.i, label %.loopexit160.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %bb.n, %.lr.ph186.i
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.lr.ph186.i ], [ -1, %bb.n ] ; 5 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %.147.i, i64 %indvars.iv237.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !94
  %i.hb = getelementptr inbounds [4 x i8], ptr %..i, i64 %indvars.iv237.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !94
  %i.hd = sub i32 %i.ha, %i.hc
  %i.he = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv237.i
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !94
  %indvars.iv.next238.i = add nsw i64 %indvars.iv237.i, -1
  %i.hf = load i32, ptr %i.gx, align 8, !tbaa !55
  %i.hg = sub nsw i32 0, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %.not143.not.i = icmp sgt i64 %indvars.iv237.i, %i.hh
  br i1 %.not143.not.i, label %.lr.ph186.i, label %.loopexit160.i, !llvm.loop !276

.loopexit160.i:                                   ; preds = %.lr.ph186.i, %bb.n, %bb.m, %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !113 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !94
  %.not144.i = icmp eq i32 %i.hk, 0
  br i1 %.not144.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit160.i
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !55
  %.not145187.i = icmp slt i32 %i.hm, 1
  br i1 %.not145187.i, label %.loopexit.i, label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %.preheader.i, %.lr.ph189.i
  %indvars.iv240.i = phi i64 [ %indvars.iv.next241.i, %.lr.ph189.i ], [ -1, %.preheader.i ] ; 3 uses
  %i.hn = load i32, ptr %i.hj, align 4, !tbaa !94
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv240.i ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !94
  %i.hq = ashr i32 %i.hp, %i.hn
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !94
  %indvars.iv.next241.i = add nsw i64 %indvars.iv240.i, -1
  %i.hr = load i32, ptr %i.hl, align 8, !tbaa !55
  %i.hs = sub nsw i32 0, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %.not145.not.i = icmp sgt i64 %indvars.iv240.i, %i.ht
  br i1 %.not145.not.i, label %.lr.ph189.i, label %.loopexit.i, !llvm.loop !277

.loopexit.i:                                      ; preds = %parcor_to_lpc.exit.i, %.lr.ph189.i, %.preheader.i, %.loopexit160.i, %.preheader163.i
  %.1133.i = phi i64 [ 0, %.preheader.i ], [ 0, %.loopexit160.i ], [ 0, %.lr.ph189.i ], [ 0, %.preheader163.i ], [ %wide.trip.count230.i, %parcor_to_lpc.exit.i ]
  %i.hu = sext i32 %i.r to i64                    ; 3 uses
  %i.hv = getelementptr [4 x i8], ptr %i.v, i64 %i.hu ; 7 uses
  %i.hw = icmp sgt i32 %i.r, 0
  br i1 %i.hw, label %.lr.ph192.preheader.i, label %._crit_edge193.thread.i

.lr.ph192.preheader.i:                            ; preds = %.loopexit.i
  %wide.trip.count246.i = zext nneg i32 %i.r to i64 ; 7 uses
  %min.iters.check7 = icmp ult i32 %i.r, 12
  br i1 %min.iters.check7, label %.lr.ph192.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph192.preheader.i
  %i.hx = shl nuw nsw i64 %wide.trip.count246.i, 2
  %i.hy = getelementptr i8, ptr %i.ab, i64 %i.hx
  %i.hz = sub nsw i64 %i.hu, %wide.trip.count246.i
  %i.ia = shl nsw i64 %i.hz, 2
  %i.ib = getelementptr i8, ptr %i.v, i64 %i.ia
  %bound0 = icmp ult ptr %i.ab, %i.hv
  %bound1 = icmp ult ptr %i.ib, %i.hy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph192.i.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %vector.memcheck
  %n.vec9 = and i64 %wide.trip.count246.i, 2147483640 ; 3 uses
  br label %vector.body10

vector.body10:                                    ; preds = %vector.body10, %vector.ph8
  %index11 = phi i64 [ 0, %vector.ph8 ], [ %index.next14, %vector.body10 ] ; 3 uses
  %i.ic = xor i64 %index11, -1
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -12
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ie, align 4, !tbaa !94, !alias.scope !288
  %wide.load12 = load <4 x i32>, ptr %i.if, align 4, !tbaa !94, !alias.scope !288
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse13 = shufflevector <4 x i32> %wide.load12, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index11 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %reverse, ptr %i.ig, align 4, !tbaa !94, !alias.scope !289, !noalias !288
  store <4 x i32> %reverse13, ptr %i.ih, align 4, !tbaa !94, !alias.scope !289, !noalias !288
  %index.next14 = add nuw i64 %index11, 8         ; 2 uses
  %i.ii = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ii, label %middle.block15, label %vector.body10, !llvm.loop !281

middle.block15:                                   ; preds = %vector.body10
  %cmp.n16 = icmp eq i64 %n.vec9, %wide.trip.count246.i
  br i1 %cmp.n16, label %._crit_edge193.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph192.preheader.i, %middle.block15
  %indvars.iv243.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph192.preheader.i ], [ %n.vec9, %middle.block15 ] ; 3 uses
  %xtraiter24 = and i64 %wide.trip.count246.i, 3  ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol

.lr.ph192.i.prol:                                 ; preds = %.lr.ph192.i.preheader, %.lr.ph192.i.prol
  %indvars.iv243.i.prol = phi i64 [ %indvars.iv.next244.i.prol, %.lr.ph192.i.prol ], [ %indvars.iv243.i.ph, %.lr.ph192.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph192.i.prol ], [ 0, %.lr.ph192.i.preheader ]
  %indvars.iv.next244.i.prol = add nuw nsw i64 %indvars.iv243.i.prol, 1 ; 2 uses
  %i.ij = xor i64 %indvars.iv243.i.prol, -1
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !94
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv243.i.prol
  store i32 %i.il, ptr %i.im, align 4, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter24
  br i1 %prol.iter.cmp.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol, !llvm.loop !282

.lr.ph192.i.prol.loopexit:                        ; preds = %.lr.ph192.i.prol, %.lr.ph192.i.preheader
  %indvars.iv243.i.unr = phi i64 [ %indvars.iv243.i.ph, %.lr.ph192.i.preheader ], [ %indvars.iv.next244.i.prol, %.lr.ph192.i.prol ]
  %i.in = sub nsw i64 %indvars.iv243.i.ph, %wide.trip.count246.i
  %i.io = icmp ugt i64 %i.in, -4
  br i1 %i.io, label %._crit_edge193.i, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.prol.loopexit, %.lr.ph192.i
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i.3, %.lr.ph192.i ], [ %indvars.iv243.i.unr, %.lr.ph192.i.prol.loopexit ] ; 9 uses
  %i.ip = xor i64 %indvars.iv243.i, -1
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !94
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv243.i
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !94
  %i.it = sub i64 -2, %indvars.iv243.i
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !94
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv243.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !94
  %i.iy = sub i64 -3, %indvars.iv243.i
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !94
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv243.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i32 %i.ja, ptr %i.jc, align 4, !tbaa !94
  %indvars.iv.next244.i.3 = add nuw nsw i64 %indvars.iv243.i, 4 ; 2 uses
  %i.jd = sub i64 -4, %indvars.iv243.i
  %i.je = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !94
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv243.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !94
  %exitcond247.not.i.3 = icmp eq i64 %indvars.iv.next244.i.3, %wide.trip.count246.i
  br i1 %exitcond247.not.i.3, label %._crit_edge193.i, label %.lr.ph192.i, !llvm.loop !283

._crit_edge193.i:                                 ; preds = %.lr.ph192.i.prol.loopexit, %.lr.ph192.i, %middle.block15
  %i.ji = load ptr, ptr %i.w, align 8, !tbaa !109 ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.1133.i ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.hu ; 5 uses
  %.not264.i = icmp ult ptr %i.jj, %i.z
  br i1 %.not264.i, label %.lr.ph197.us.preheader.i, label %._crit_edge203.i

._crit_edge193.thread.i:                          ; preds = %.loopexit.i
  %i.jl = load ptr, ptr %i.w, align 8, !tbaa !109
  br label %._crit_edge203.i

.lr.ph197.us.preheader.i:                         ; preds = %._crit_edge193.i
  %i.jm = sub nsw i32 0, %i.r
  %i.jn = sext i32 %i.jm to i64                   ; 2 uses
  %xtraiter26 = and i32 %i.r, 3                   ; 3 uses
  %i.jo = icmp ult i32 %i.r, 4
  %unroll_iter31 = and i32 %i.r, 2147483644
  %lcmp.mod28.not = icmp eq i32 %xtraiter26, 0
  %lcmp.mod30 = icmp ne i32 %xtraiter26, 0
  br label %.lr.ph197.us.i

.lr.ph197.us.i:                                   ; preds = %._crit_edge198.us.i, %.lr.ph197.us.preheader.i
  %.1200.us.i = phi ptr [ %i.lh, %._crit_edge198.us.i ], [ %i.jj, %.lr.ph197.us.preheader.i ] ; 8 uses
  br i1 %i.jo, label %.epil.preheader, label %.lr.ph197.us.i.new

.lr.ph197.us.i.new:                               ; preds = %.lr.ph197.us.i, %.lr.ph197.us.i.new
  %indvars.iv248.i = phi i64 [ %indvars.iv.next249.i.3, %.lr.ph197.us.i.new ], [ %i.jn, %.lr.ph197.us.i ] ; 6 uses
  %.2195.us.i = phi i64 [ %i.ku, %.lr.ph197.us.i.new ], [ 524288, %.lr.ph197.us.i ]
  %niter32 = phi i32 [ %niter32.next.3, %.lr.ph197.us.i.new ], [ 0, %.lr.ph197.us.i ]
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv248.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !94
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %.1200.us.i, i64 %indvars.iv248.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !94
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul nsw i64 %i.ju, %i.jr
  %i.jw = add i64 %i.jv, %.2195.us.i
  %indvars.iv.next249.i = add nsw i64 %indvars.iv248.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv.next249.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !94
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %.1200.us.i, i64 %indvars.iv.next249.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !94
  %i.kc = sext i32 %i.kb to i64
  %i.kd = mul nsw i64 %i.kc, %i.jz
  %i.ke = add i64 %i.kd, %i.jw
  %indvars.iv.next249.i.1 = add nsw i64 %indvars.iv248.i, 2 ; 2 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv.next249.i.1
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !94
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %.1200.us.i, i64 %indvars.iv.next249.i.1
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !94
  %i.kk = sext i32 %i.kj to i64
  %i.kl = mul nsw i64 %i.kk, %i.kh
  %i.km = add i64 %i.kl, %i.ke
  %indvars.iv.next249.i.2 = add nsw i64 %indvars.iv248.i, 3 ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv.next249.i.2
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !94
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.1200.us.i, i64 %indvars.iv.next249.i.2
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !94
  %i.ks = sext i32 %i.kr to i64
  %i.kt = mul nsw i64 %i.ks, %i.kp
  %i.ku = add i64 %i.kt, %i.km                    ; 3 uses
  %indvars.iv.next249.i.3 = add nsw i64 %indvars.iv248.i, 4 ; 2 uses
  %niter32.next.3 = add nuw nsw i32 %niter32, 4   ; 2 uses
  %niter32.ncmp.3 = icmp eq i32 %niter32.next.3, %unroll_iter31
  br i1 %niter32.ncmp.3, label %._crit_edge198.us.i.unr-lcssa, label %.lr.ph197.us.i.new, !llvm.loop !284

._crit_edge198.us.i.unr-lcssa:                    ; preds = %.lr.ph197.us.i.new
  br i1 %lcmp.mod28.not, label %._crit_edge198.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge198.us.i.unr-lcssa, %.lr.ph197.us.i
  %indvars.iv248.i.epil.init = phi i64 [ %i.jn, %.lr.ph197.us.i ], [ %indvars.iv.next249.i.3, %._crit_edge198.us.i.unr-lcssa ]
  %.2195.us.i.epil.init = phi i64 [ 524288, %.lr.ph197.us.i ], [ %i.ku, %._crit_edge198.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv248.i.epil = phi i64 [ %indvars.iv248.i.epil.init, %.epil.preheader ], [ %indvars.iv.next249.i.epil, %bb.o ] ; 3 uses
  %.2195.us.i.epil = phi i64 [ %.2195.us.i.epil.init, %.epil.preheader ], [ %i.lc, %bb.o ]
  %epil.iter27 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter27.next, %bb.o ]
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv248.i.epil
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !94
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %.1200.us.i, i64 %indvars.iv248.i.epil
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !94
  %i.la = sext i32 %i.kz to i64
  %i.lb = mul nsw i64 %i.la, %i.kx
  %i.lc = add i64 %i.lb, %.2195.us.i.epil         ; 2 uses
  %indvars.iv.next249.i.epil = add nsw i64 %indvars.iv248.i.epil, 1
  %epil.iter27.next = add i32 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i32 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %._crit_edge198.us.i, label %bb.o, !llvm.loop !285

._crit_edge198.us.i:                              ; preds = %bb.o, %._crit_edge198.us.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ku, %._crit_edge198.us.i.unr-lcssa ], [ %i.lc, %bb.o ]
  %i.ld = lshr i64 %.lcssa, 20
  %i.le = load i32, ptr %.1200.us.i, align 4, !tbaa !94
  %i.lf = trunc i64 %i.ld to i32
  %i.lg = sub i32 %i.le, %i.lf
  store i32 %i.lg, ptr %.1200.us.i, align 4, !tbaa !94
  %i.lh = getelementptr inbounds nuw i8, ptr %.1200.us.i, i64 4 ; 2 uses
  %i.li = icmp ult ptr %i.lh, %i.z
  br i1 %i.li, label %.lr.ph197.us.i, label %._crit_edge203.i, !llvm.loop !286

._crit_edge203.i:                                 ; preds = %._crit_edge198.us.i, %._crit_edge193.thread.i, %._crit_edge193.i
  %i.lj = phi ptr [ %i.jl, %._crit_edge193.thread.i ], [ %i.ji, %._crit_edge193.i ], [ %i.ji, %._crit_edge198.us.i ]
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !115
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !94
  %.not146.i = icmp eq i32 %i.lm, 0
  br i1 %.not146.i, label %decode_const_block_data.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge203.i
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !55
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = sub nsw i64 0, %i.lp
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !108
  %i.lu = shl nsw i64 %i.lp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lr, ptr align 4 %i.lt, i64 %i.lu, i1 false)
  br label %decode_const_block_data.exit

decode_const_block_data.exit:                     ; preds = %.lr.ph.i, %middle.block, %bb.p, %._crit_edge203.i, %bb.b
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !113 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !94
  %.not18 = icmp eq i32 %i.lx, 0
  br i1 %.not18, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %decode_const_block_data.exit
  %i.ly = load i32, ptr %1, align 8, !tbaa !110
  %.not28 = icmp eq i32 %i.ly, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !94
  %i.md = load i32, ptr %i.lw, align 4, !tbaa !94
  %i.me = shl i32 %i.mc, %i.md
  store i32 %i.me, ptr %i.mb, align 4, !tbaa !94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mf = load i32, ptr %1, align 8, !tbaa !110
  %i.mg = zext i32 %i.mf to i64
  %i.mh = icmp samesign ult i64 %indvars.iv.next, %i.mg
  br i1 %i.mh, label %bb.q, label %.loopexit, !llvm.loop !287

.loopexit:                                        ; preds = %bb.q, %.preheader, %decode_const_block_data.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_bs_info(i32 noundef %0, i32 noundef range(i32 0, 63) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr1923 = phi i32 [ %i.e, %tailrecurse ], [ %2, %bb.a ] ; 2 uses
  %.tr1822 = phi i32 [ %i.g, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %i.b = lshr i32 1073741824, %.tr1822
  %i.c = and i32 %i.b, %0
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.d = shl nuw nsw i32 %.tr1822, 1              ; 2 uses
  %i.e = add i32 %.tr1923, 1                      ; 3 uses
  %i.f = or disjoint i32 %i.d, 1
  tail call fastcc void @parse_bs_info(i32 noundef %0, i32 noundef %i.f, i32 noundef %i.e, ptr noundef %3, ptr noundef %4)
  %i.g = add nuw nsw i32 %i.d, 2
  %i.h = icmp ult i32 %.tr1822, 15
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %.tr19.lcssa = phi i32 [ %2, %bb.a ], [ %.tr1923, %.lr.ph ], [ %i.e, %tailrecurse ]
  %i.i = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  store i32 %.tr19.lcssa, ptr %i.i, align 4, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.j, ptr %3, align 8, !tbaa !57
  %i.k = load i32, ptr %4, align 4, !tbaa !94
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %4, align 4, !tbaa !94
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @decode_rice(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !90  ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val20 = load i32, ptr %i.b, align 4, !tbaa !88
  %i.c = add i32 %.val, %1
  %i.d = sub i32 %.val20, %i.c                    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %get_unary.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !89
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %spec.select.i8.i = phi i32 [ %.val, %.lr.ph.i ], [ %spec.select.i.i, %bb.c ] ; 4 uses
  %.05.i = phi i32 [ 0, %.lr.ph.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.i = lshr i32 %spec.select.i8.i, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !98
  %i.m = icmp slt i32 %spec.select.i8.i, %i.h
  %i.n = zext i1 %i.m to i32
  %spec.select.i.i = add i32 %spec.select.i8.i, %i.n ; 4 uses
  %i.o = zext i8 %i.l to i32
  %i.p = and i32 %spec.select.i8.i, 7
  store i32 %spec.select.i.i, ptr %i.a, align 8, !tbaa !90
  %i.q = lshr exact i32 128, %i.p
  %i.r = and i32 %i.q, %i.o
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %get_unary.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw nsw i32 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.s, %i.d
  br i1 %exitcond.not.i, label %get_unary.exit, label %bb.b, !llvm.loop !0

get_unary.exit:                                   ; preds = %bb.b, %bb.c, %bb.a
  %i.t = phi i32 [ %.val, %bb.a ], [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.b ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.05.i, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %get_unary.exit
  %i.u = and i32 %.0.lcssa.i, 1
  %i.v = xor i32 %i.u, 1
  br label %bb.h

bb.d:                                             ; preds = %get_unary.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %i.x = lshr i32 %i.t, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !89 ; 4 uses
  %i.ad = icmp slt i32 %i.t, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i = add i32 %i.t, %i.ae            ; 5 uses
  %i.af = zext i8 %i.aa to i32
  %i.ag = and i32 %i.t, 7
  %i.ah = shl nuw nsw i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.ah, 7
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !90
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %.not22 = icmp eq i32 %1, 1
  br i1 %.not22, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = add i32 %1, -1                          ; 3 uses
  %i.al = shl i32 %.0.lcssa.i, %i.ak
  %i.am = icmp slt i32 %i.ak, 26
  %i.an = lshr i32 %spec.select.i, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !98
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = and i32 %spec.select.i, 7
  %i.at = shl i32 %i.ar, %i.as                    ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = sub i32 33, %1
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = add i32 %spec.select.i, %i.ak
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.aw)
  br label %get_bits_long.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = lshr i32 %i.at, 16
  %i.az = add i32 %spec.select.i, 16
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.az) ; 4 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !90
  %i.bb = add i32 %1, -17                         ; 2 uses
  %i.bc = shl i32 %i.ay, %i.bb
  %i.bd = lshr i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !98
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bi = and i32 %i.ba, 7
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = sub i32 49, %1
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = add i32 %i.ba, %i.bb
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.bm)
  %i.bo = or i32 %i.bl, %i.bc
  br label %get_bits_long.exit

get_bits_long.exit:                               ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.ax, %bb.f ], [ %i.bn, %bb.g ]
  %.0.i = phi i32 [ %i.av, %bb.f ], [ %i.bo, %bb.g ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !90
  %i.bp = add i32 %.0.i, %i.al
  br label %bb.i

bb.h:                                             ; preds = %.thread, %bb.d
  %i.bq = phi i32 [ %i.v, %.thread ], [ %i.aj, %bb.d ]
  %i.br = zext i1 %.not to i32
  %spec.select = lshr i32 %.0.lcssa.i, %i.br
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %get_bits_long.exit
  %i.bs = phi i32 [ %i.aj, %get_bits_long.exit ], [ %i.bq, %bb.h ]
  %.0 = phi i32 [ %i.bp, %get_bits_long.exit ], [ %spec.select, %bb.h ]
  %.not19 = icmp eq i32 %i.bs, 0
  %i.bt = sext i1 %.not19 to i32
  %i.bu = xor i32 %.0, %i.bt
  ret i32 %i.bu
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare i32 @ff_bgmc_decode_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_bgmc_decode(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_bgmc_decode_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @ff_mlz_decompression(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @ff_bgmc_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
begin_hunk_1_@llvm.assume
!72 = !{!39, !25, i64 408}
!73 = !{!39, !25, i64 392}
!74 = !{!39, !34, i64 416}
!75 = !{!39, !7, i64 168}
!76 = !{!39, !15, i64 424}
!77 = !{!39, !25, i64 432}
!78 = !{!39, !37, i64 376}
!79 = !{!31, !7, i64 16}
!80 = !{!39, !25, i64 344}
!81 = !{!39, !25, i64 360}
!82 = !{!39, !34, i64 352}
!83 = !{!31, !7, i64 12}
!84 = !{!31, !7, i64 88}
!85 = !{!28, !7, i64 528}
!86 = !{!39, !15, i64 368}
!87 = !{!32, !15, i64 0}
!88 = !{!32, !7, i64 12}
!89 = !{!32, !7, i64 16}
!90 = !{!32, !7, i64 8}
!91 = !{!31, !7, i64 20}
!92 = !{!39, !7, i64 172}
!93 = !{!31, !7, i64 0}
!94 = !{!7, !7, i64 0}
!95 = !{!31, !7, i64 24}
!96 = !{!31, !7, i64 56}
!97 = !{!39, !7, i64 176}
!98 = !{!6, !6, i64 0}
!99 = !{!39, !7, i64 184}
!100 = !{!31, !7, i64 44}
!101 = !{!"ALSBlockData", !7, i64 0, !7, i64 4, !25, i64 8, !7, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !25, i64 104}
!102 = !{!101, !7, i64 4}
!103 = !{!101, !25, i64 8}
!104 = !{!101, !25, i64 56}
!105 = !{!101, !25, i64 64}
!106 = !{!101, !25, i64 72}
!107 = !{!101, !25, i64 80}
!108 = !{!101, !25, i64 96}
!109 = !{!101, !25, i64 88}
!110 = !{!101, !7, i64 0}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = !{!101, !25, i64 24}
!114 = !{!101, !25, i64 32}
!115 = !{!101, !25, i64 40}
!116 = !{!101, !25, i64 48}
!117 = !{!101, !25, i64 104}
!118 = !{!101, !7, i64 16}
!119 = !{!"ALSChannelData", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20}
!120 = !{!119, !7, i64 0}
!121 = !{!119, !7, i64 4}
!122 = !{!119, !7, i64 8}
!123 = !{!"short", !6, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!119, !7, i64 12}
!126 = !{!119, !7, i64 16}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!39, !7, i64 180}
!129 = !{!31, !25, i64 80}
!130 = !{!39, !7, i64 164}
!131 = !{!39, !25, i64 152}
!132 = !{!39, !7, i64 160}
!133 = !{!31, !7, i64 28}
!134 = !{!31, !7, i64 32}
!135 = !{!31, !7, i64 36}
!136 = !{!31, !7, i64 52}
!137 = !{!39, !7, i64 32}
!138 = distinct !{!138, !58}
!139 = distinct !{!139, !58}
!140 = distinct !{!140, !58}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !58}
!143 = !{!39, !25, i64 288}
!144 = !{!39, !25, i64 304}
!145 = !{!39, !25, i64 272}
!146 = distinct !{!146, !58, !111, !112}
!147 = distinct !{!147, !58, !112, !111}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = distinct !{!152, !58, !111, !112}
!153 = distinct !{!153, !58, !112, !111}
!154 = distinct !{!154, !58, !111, !112}
!155 = distinct !{!155, !58, !112, !111}
!156 = distinct !{!156, !58}
!157 = distinct !{!157, !58}
!158 = distinct !{!158, !58}
!159 = distinct !{!159, !58}
!160 = distinct !{!160, !58}
!161 = distinct !{!161, !58}
!162 = distinct !{!162, !58}
!163 = distinct !{!163, !58}
!164 = distinct !{!164, !58, !111, !112}
!165 = distinct !{!165, !58}
!166 = distinct !{!166, !58, !112, !111}
!167 = distinct !{!167, !58}
!168 = distinct !{!168, !58}
!169 = distinct !{!169, !58}
!170 = distinct !{!170, !58}
!171 = distinct !{!171, !58}
!172 = distinct !{!172, !58}
!173 = distinct !{!173, !127}
!174 = distinct !{!174, !58}
!175 = distinct !{!175, !58}
!176 = distinct !{!176, !58}
!177 = distinct !{!177, !58}
!178 = distinct !{!178, !58}
!179 = distinct !{!179, !58, !111, !112}
!180 = distinct !{!180, !127}
!181 = distinct !{!181, !58, !111}
!182 = distinct !{!182, !58}
!183 = distinct !{!183, !58}
!184 = distinct !{!184, !58}
!185 = distinct !{!185, !58, !111, !112}
!186 = distinct !{!186, !127}
!187 = distinct !{!187, !58, !111}
!188 = distinct !{!188, !58}
!189 = distinct !{!189, !58}
!190 = distinct !{!190, !58}
!191 = distinct !{!191, !58}
!192 = distinct !{!192, !58, !111, !112}
!193 = distinct !{!193, !58, !111, !112}
!194 = distinct !{!194, !127}
!195 = distinct !{!195, !58, !111}
!196 = !{!"AVPacket", !22, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !24, i64 48, !7, i64 56, !14, i64 64, !14, i64 72, !10, i64 80, !22, i64 88, !16, i64 96}
!197 = !{!196, !15, i64 24}
!198 = !{!196, !7, i64 32}
!199 = !{!39, !7, i64 440}
!200 = !{!14, !14, i64 0}
!201 = !{!"p2 omnipotent char", !26, i64 0}
!202 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!203 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!204 = !{!"AVFrame", !6, i64 0, !6, i64 64, !201, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !202, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !203, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!205 = !{!204, !7, i64 112}
!206 = !{!15, !15, i64 0}
!207 = !{!"branch_weights", i32 4, i32 12}
!208 = !{!39, !10, i64 136}
!209 = distinct !{!209, !58}
!210 = distinct !{!210, !58}
!211 = distinct !{!211, !58}
!212 = !{!28, !7, i64 80}
!213 = !{!"MPEG4AudioConfig", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48}
!214 = !{!213, !7, i64 8}
!215 = !{!213, !7, i64 36}
!216 = !{!28, !7, i64 352}
!217 = !{!31, !7, i64 64}
!218 = !{!31, !7, i64 68}
!219 = !{!39, !7, i64 444}
!220 = !{!31, !7, i64 76}
!221 = distinct !{!221, !58}
!222 = distinct !{!222, !58}
!223 = distinct !{!223, !58, !111, !112}
!224 = distinct !{!224, !58}
!225 = distinct !{!225, !58, !112, !111}
!226 = distinct !{!226, !58}
!227 = distinct !{!227, !58}
!228 = distinct !{!228, !58}
!229 = distinct !{!229, !58}
!230 = distinct !{!230, !58}
!231 = distinct !{!231, !58}
!232 = distinct !{!232, !58, !111, !112}
!233 = distinct !{!233, !58, !112, !111}
!234 = distinct !{!234, !58, !241}
!235 = distinct !{!235, !58}
!236 = distinct !{!236, !58}
!237 = distinct !{!237, !58}
!238 = distinct !{!238, !58}
!239 = !{!39, !15, i64 192}
!240 = !{!39, !25, i64 200}
!241 = !{!"llvm.loop.peeled.count", i32 1}
!242 = distinct !{!242, !58}
!243 = distinct !{!243, i1 false, !"LVerDomain"}
!244 = distinct !{!244, !243}
!245 = distinct !{!245, !243}
!246 = distinct !{!246, !243}
!247 = distinct !{!247, !243}
!248 = distinct !{!248, !58, !111, !112}
!249 = distinct !{!249, !58, !111}
!250 = distinct !{!250, i1 false, !"LVerDomain"}
!251 = distinct !{!251, !250}
!252 = distinct !{!252, !250}
!253 = distinct !{!253, !250}
!254 = distinct !{!254, !58, !111, !112}
!255 = distinct !{!255, !58, !111}
!256 = distinct !{!256, !58}
!257 = !{!39, !7, i64 56}
!258 = !{!244}
!259 = !{!245}
!260 = !{!246}
!261 = !{!247}
!262 = !{!244, !246, !245}
!263 = !{!251}
!264 = !{!252}
!265 = !{!253}
!266 = !{!251, !252}
!267 = distinct !{!267, !58, !111, !112}
!268 = distinct !{!268, !58, !112, !111}
!269 = distinct !{!269, !58}
!270 = distinct !{!270, !58}
!271 = distinct !{!271, !58}
!272 = distinct !{!272, !127}
!273 = distinct !{!273, !58}
!274 = distinct !{!274, !58}
!275 = distinct !{!275, !58}
!276 = distinct !{!276, !58}
!277 = distinct !{!277, !58}
!278 = distinct !{!278, i1 false, !"LVerDomain"}
!279 = distinct !{!279, !278}
!280 = distinct !{!280, !278}
!281 = distinct !{!281, !58, !111, !112}
!282 = distinct !{!282, !127}
!283 = distinct !{!283, !58, !111}
!284 = distinct !{!284, !58}
!285 = distinct !{!285, !127}
!286 = distinct !{!286, !58}
!287 = distinct !{!287, !58}
!288 = !{!279}
!289 = !{!280}
end_hunk_1
