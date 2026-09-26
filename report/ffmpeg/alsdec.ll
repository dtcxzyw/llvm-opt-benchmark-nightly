Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alsdec?download=true
inline.NumInlined: 158
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@revert_channel_correlation:bb.a
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.bt
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jo, i32 noundef 16, ptr noundef nonnull @.str.35, ptr noundef %i.cg, ptr noundef nonnull %i.jq, ptr noundef %i.hz, ptr noundef %i.jr) #16
  br label %.critedge225.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1247 = phi i64 [ %i.ki, %scalar.ph ], [ %.1247.ph, %scalar.ph.preheader ] ; 3 uses
  %i.js = load i32, ptr %i.ij, align 4, !tbaa !94
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr [4 x i8], ptr %i.cg, i64 %.1247 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !94
  %i.jx = sext i32 %i.jw to i64
  %i.jy = mul nsw i64 %i.jx, %i.jt
  %i.jz = add nsw i64 %i.jy, 64
  %i.ka = load i32, ptr %i.ik, align 4, !tbaa !94
  %i.kb = sext i32 %i.ka to i64
  %i.kc = load i32, ptr %i.ju, align 4, !tbaa !94
  %i.kd = sext i32 %i.kc to i64
  %i.ke = mul nsw i64 %i.kd, %i.kb
  %i.kf = add nsw i64 %i.jz, %i.ke
  %i.kg = load i32, ptr %i.il, align 4, !tbaa !94
  %i.kh = sext i32 %i.kg to i64
  %i.ki = add nuw nsw i64 %.1247, 1               ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !94
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %i.kl, %i.kh
  %i.kn = add nsw i64 %i.kf, %i.km
  %i.ko = lshr i64 %i.kn, 7
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1247 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !94
  %i.kr = trunc i64 %i.ko to i32
  %i.ks = add i32 %i.kq, %i.kr
  store i32 %i.ks, ptr %i.kp, align 4, !tbaa !94
  %exitcond271.not = icmp eq i64 %i.ki, %i.ca
  br i1 %exitcond271.not, label %.critedge225, label %scalar.ph, !llvm.loop !255

.critedge225:                                     ; preds = %scalar.ph376, %scalar.ph, %middle.block402, %middle.block, %.preheader227, %.preheader, %bb.e
  %i.kt = add i32 %.1202250, 1                    ; 2 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [44 x i8], ptr %i.c, i64 %i.ku ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !120
  %.not219 = icmp eq i32 %i.kw, 0
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
  %indvars.iv.next213.i = add nsw i32 %indvars.iv212.i, -1
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
  %.0125178.i = phi ptr [ %i.x, %.preheader162.preheader.i ], [ %i.fj, %parcor_to_lpc.exit.i ] ; 8 uses
  %.not205.i = icmp eq i64 %indvars.iv227.i, 0
  br i1 %.not205.i, label %parcor_to_lpc.exit.i, label %.lr.ph174.i.preheader

.lr.ph174.i.preheader:                            ; preds = %.preheader162.i
  %xtraiter = and i64 %indvars.iv227.i, 3         ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv227.i, 4
  br i1 %i.bt, label %.lr.ph174.i.epil.preheader, label %.lr.ph174.i.preheader.new

.lr.ph174.i.preheader.new:                        ; preds = %.lr.ph174.i.preheader
  %unroll_iter = and i64 %indvars.iv227.i, 9223372036854775804
  br label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %.lr.ph174.i, %.lr.ph174.i.preheader.new
  %indvars.iv222.i = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %indvars.iv.next223.i.3, %.lr.ph174.i ] ; 9 uses
  %.1127173.i = phi i64 [ 524288, %.lr.ph174.i.preheader.new ], [ %i.dg, %.lr.ph174.i ]
  %niter = phi i64 [ 0, %.lr.ph174.i.preheader.new ], [ %niter.next.3, %.lr.ph174.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !94
  %i.bw = sext i32 %i.bv to i64
  %i.bx = xor i64 %indvars.iv222.i, -1
  %i.by = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !94
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.bw
  %i.cc = add i64 %i.cb, %.1127173.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !94
  %i.cg = sext i32 %i.cf to i64
  %i.ch = xor i64 %indvars.iv222.i, -2
  %i.ci = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !94
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, %i.cg
  %i.cm = add i64 %i.cl, %i.cc
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !94
  %i.cq = sext i32 %i.cp to i64
  %i.cr = xor i64 %indvars.iv222.i, -3
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !94
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.cq
  %i.cw = add i64 %i.cv, %i.cm
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !94
  %i.da = sext i32 %i.cz to i64
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %i.db = xor i64 %indvars.iv222.i, -4
  %i.dc = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !94
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.da
  %i.dg = add i64 %i.df, %i.cw                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge175.i.unr-lcssa, label %.lr.ph174.i, !llvm.loop !271

._crit_edge175.i.unr-lcssa:                       ; preds = %.lr.ph174.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge175.i, label %.lr.ph174.i.epil.preheader

.lr.ph174.i.epil.preheader:                       ; preds = %._crit_edge175.i.unr-lcssa, %.lr.ph174.i.preheader
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph174.i.preheader ], [ %indvars.iv.next223.i.3, %._crit_edge175.i.unr-lcssa ]
  %.1127173.i.epil.init = phi i64 [ 524288, %.lr.ph174.i.preheader ], [ %i.dg, %._crit_edge175.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph174.i.epil

.lr.ph174.i.epil:                                 ; preds = %.lr.ph174.i.epil, %.lr.ph174.i.epil.preheader
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv.next223.i.epil, %.lr.ph174.i.epil ], [ %indvars.iv222.i.epil.init, %.lr.ph174.i.epil.preheader ] ; 3 uses
  %.1127173.i.epil = phi i64 [ %i.dp, %.lr.ph174.i.epil ], [ %.1127173.i.epil.init, %.lr.ph174.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph174.i.epil ], [ 0, %.lr.ph174.i.epil.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv222.i.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !94
  %i.dj = sext i32 %i.di to i64
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %i.dk = xor i64 %indvars.iv222.i.epil, -1
  %i.dl = getelementptr inbounds [4 x i8], ptr %.0125178.i, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !94
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.dn, %i.dj
  %i.dp = add i64 %i.do, %.1127173.i.epil         ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge175.i, label %.lr.ph174.i.epil, !llvm.loop !272

._crit_edge175.i:                                 ; preds = %.lr.ph174.i.epil, %._crit_edge175.i.unr-lcssa
  %.lcssa19 = phi i64 [ %i.dg, %._crit_edge175.i.unr-lcssa ], [ %i.dp, %.lr.ph174.i.epil ]
  %i.dq = lshr i64 %.lcssa19, 20
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load i32, ptr %.0125178.i, align 4, !tbaa !94
  %i.dt = sub i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %.0125178.i, align 4, !tbaa !94
  %i.du = trunc nuw i64 %indvars.iv227.i to i32   ; 2 uses
  %.02930.i.i = add nsw i32 %i.du, -1             ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge175.i
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.dx = zext nneg i32 %.02930.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv35.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next36.i.i, %bb.g ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !94
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !94 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %i.ec, %i.dz
  %i.ee = add nsw i64 %i.ed, 524288
  %i.ef = lshr i64 %i.ee, 20
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv35.i.i ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !94
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.ej, %i.dz
  %i.el = add nsw i64 %i.ek, 524288
  %i.em = lshr i64 %i.el, 20
  %i.en = trunc i64 %i.em to i32
  %i.eo = add i32 %i.eb, %i.en
  store i32 %i.eo, ptr %i.ea, align 4, !tbaa !94
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !94
  %i.eq = add i32 %i.ep, %i.eg
  store i32 %i.eq, ptr %i.eh, align 4, !tbaa !94
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.er = icmp slt i64 %indvars.iv.next36.i.i, %indvars.iv.next.i.i
  br i1 %i.er, label %bb.g, label %._crit_edge.loopexit.i.i, !llvm.loop !273

._crit_edge.loopexit.i.i:                         ; preds = %bb.g
  %i.es = trunc nuw nsw i64 %indvars.iv.next36.i.i to i32
  %i.et = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge175.i
  %.0.lcssa.i.i = phi i32 [ 0, %._crit_edge175.i ], [ %i.es, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.029.lcssa.i.i = phi i32 [ %.02930.i.i, %._crit_edge175.i ], [ %i.et, %._crit_edge.loopexit.i.i ]
  %i.eu = icmp eq i32 %.0.lcssa.i.i, %.029.lcssa.i.i
  br i1 %i.eu, label %bb.h, label %parcor_to_lpc.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !94
  %i.ex = sext i32 %i.ew to i64
  %i.ey = sext i32 %.0.lcssa.i.i to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !94 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.ex
  %i.fd = add nsw i64 %i.fc, 524288
  %i.fe = lshr i64 %i.fd, 20
  %i.ff = zext nneg i32 %.0.lcssa.i.i to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ff
  %i.fh = trunc i64 %i.fe to i32
  %i.fi = add i32 %i.fa, %i.fh
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !94
  br label %parcor_to_lpc.exit.i

parcor_to_lpc.exit.i:                             ; preds = %.preheader162.i, %bb.h, %._crit_edge.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0125178.i, i64 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv227.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !94
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv227.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !94
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
end_hunk_0
