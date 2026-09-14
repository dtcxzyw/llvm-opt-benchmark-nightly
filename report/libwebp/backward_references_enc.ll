Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/backward_references_enc?download=true
inline.NumInlined: 78
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LHashChainFill:bb.a
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nsw i32 %i.a, -2                    ; 6 uses
  br label %.critedge254

.critedge254:                                     ; preds = %.loopexit279, %bb.h
  %.0218 = phi i32 [ 0, %bb.h ], [ %.3221, %.loopexit279 ] ; 12 uses
  %.0216 = phi i32 [ %i.aa, %bb.h ], [ %.1217, %.loopexit279 ]
  %i.ac = icmp slt i32 %.0218, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.critedge254
  %i.ad = add nsw i32 %.0218, 1                   ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.ah = sext i32 %.0218 to i64                  ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %2, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = icmp eq i32 %i.ag, %i.ak                ; 2 uses
  %i.am = icmp ne i32 %.0216, 0
  %or.cond = select i1 %i.am, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.ao = add nsw i32 %.0218, 2
  %i.ap = add nsw i32 %.0218, 3                   ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.a
  br i1 %i.aq, label %.lr.ph.preheader, label %.lr.ph289

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ar = sub i32 %i.ab, %.0218                   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.as = phi i32 [ %i.ay, %bb.k ], [ %i.ap, %.lr.ph.preheader ]
  %.0208283 = phi i32 [ %i.ax, %bb.k ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = icmp eq i32 %i.av, %i.an
  br i1 %i.aw, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.ax = add i32 %.0208283, 1                    ; 3 uses
  %i.ay = add i32 %i.ao, %i.ax
  %exitcond.not = icmp eq i32 %i.ax, %i.ar
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.k
  %.0208.lcssa = phi i32 [ %i.ar, %bb.k ], [ %.0208283, %.lr.ph ] ; 4 uses
  %i.az = icmp ugt i32 %.0208.lcssa, 4095
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ah
  %i.bb = add i32 %.0208.lcssa, -4095             ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 -1, i64 %i.bd, i1 false)
  %i.be = add i32 %i.bb, %.0218
  br label %.lr.ph289

bb.m:                                             ; preds = %.critedge
  %.not251286 = icmp eq i32 %.0208.lcssa, 0
  br i1 %.not251286, label %.loopexit279, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.j, %bb.l, %bb.m
  %.1209362 = phi i32 [ %.0208.lcssa, %bb.m ], [ 4095, %bb.l ], [ 1, %bb.j ] ; 5 uses
  %.1219361 = phi i32 [ %.0218, %bb.m ], [ %i.be, %bb.l ], [ %.0218, %bb.j ] ; 2 uses
  %i.bf = mul i32 %i.an, 1540483478               ; 3 uses
  %i.bg = sext i32 %.1219361 to i64               ; 3 uses
  %xtraiter = and i32 %.1209362, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph289
  %i.bh = add nsw i32 %.1209362, -1
  %i.bi = mul i32 %.1209362, -962287725
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = lshr i32 %i.bj, 14
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bg
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !34
  %indvars.iv.next.prol = add nsw i64 %i.bg, 1    ; 2 uses
  store i32 %.1219361, ptr %i.bm, align 4, !tbaa !34
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph289
  %indvars.iv.next.lcssa.unr = phi i64 [ poison, %.lr.ph289 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.bg, %.lr.ph289 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.2210288.unr = phi i32 [ %.1209362, %.lr.ph289 ], [ %i.bh, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i32 %.1209362, 1
  br i1 %i.bp, label %.loopexit279.loopexit, label %.lr.ph289.new

.lr.ph289.new:                                    ; preds = %.prol.loopexit
  %invariant.op = add i32 962287725, %i.bf
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph289.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph289.new ], [ %indvars.iv.next.1, %bb.n ] ; 4 uses
  %.2210288 = phi i32 [ %.2210288.unr, %.lr.ph289.new ], [ %i.by, %bb.n ] ; 3 uses
  %i.bq = mul i32 %.2210288, -962287725
  %i.br = add i32 %i.bq, %i.bf
  %i.bs = lshr i32 %i.br, 14
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !34
  %i.by = add nsw i32 %.2210288, -2               ; 2 uses
  %i.bz = mul i32 %.2210288, -962287725
  %.reass = add i32 %i.bz, %invariant.op
  %i.ca = lshr i32 %.reass, 14
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !34
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !34
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cf = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !34
  %.not251.1 = icmp eq i32 %i.by, 0
  br i1 %.not251.1, label %.loopexit279.loopexit, label %bb.n, !llvm.loop !38

bb.o:                                             ; preds = %bb.i
  %i.cg = zext i1 %i.al to i32
  %.val265 = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.ch = mul i32 %i.ag, -962287725
  %i.ci = mul i32 %.val265, 1540483478
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.cj, 14
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34
  %i.co = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ah
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !34
  store i32 %.0218, ptr %i.cm, align 4, !tbaa !34
  br label %.loopexit279

.loopexit279.loopexit:                            ; preds = %bb.n, %.prol.loopexit
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.1, %bb.n ]
  %i.cp = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %bb.m, %bb.o
  %.3221 = phi i32 [ %i.ad, %bb.o ], [ %.0218, %bb.m ], [ %i.cp, %.loopexit279.loopexit ] ; 2 uses
  %.1217 = phi i32 [ %i.cg, %bb.o ], [ 0, %bb.m ], [ 0, %.loopexit279.loopexit ]
  %i.cq = mul nsw i32 %.3221, %i.u
  %i.cr = sdiv i32 %i.cq, %i.ab
  %i.cs = add nsw i32 %i.cr, %i.l
  %i.ct = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cs, ptr noundef nonnull %8) #11
  %.not252.not = icmp eq i32 %i.ct, 0
  br i1 %.not252.not, label %bb.p, label %.critedge254

bb.p:                                             ; preds = %.loopexit279
  tail call void @WebPSafeFree(ptr noundef nonnull %i.r) #11
  br label %.loopexit, !llvm.loop !39

bb.q:                                             ; preds = %.critedge254
  %i.cu = zext nneg i32 %.0218 to i64             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu ; 2 uses
  %.val = load i32, ptr %i.cv, align 4, !tbaa !34
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val264 = load i32, ptr %i.cw, align 4, !tbaa !34
  %i.cx = mul i32 %.val264, -962287725
  %i.cy = mul i32 %.val, 1540483478
  %i.cz = add i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.cz, 14
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cu
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !34
  tail call void @WebPSafeFree(ptr noundef nonnull %i.r) #11
  %i.df = add nsw i32 %i.l, %i.u                  ; 2 uses
  %i.dg = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.df, ptr noundef nonnull %8) #11
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.di = add nsw i32 %i.a, -1                    ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj
  store i32 0, ptr %i.dk, align 4, !tbaa !34
  store i32 0, ptr %i.dh, align 4, !tbaa !34
  %.not243 = icmp eq i32 %5, 0
  %i.dl = zext nneg i32 %3 to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = add nuw nsw i32 %i.c, 7                 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %.0214 = phi i32 [ %i.ab, %bb.r ], [ %.lcssa, %._crit_edge ] ; 9 uses
  %.not242 = icmp eq i32 %.0214, 0
  br i1 %.not242, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = sub nsw i32 %i.di, %.0214               ; 2 uses
  %i.dp = tail call range(i32 -2147483645, 4096) i32 @llvm.smin.i32(i32 range(i32 -2147483645, 2147483647) %i.do, i32 4095) ; 3 uses
  %i.dq = zext nneg i32 %.0214 to i64             ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dq ; 9 uses
  %i.ds = tail call i32 @llvm.usub.sat.i32(i32 %.0214, i32 %i.k) ; 3 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.do, i32 256)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dq
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !34 ; 2 uses
  br i1 %.not243, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not244 = icmp ult i32 %.0214, %3
  br i1 %.not244, label %FindMatchLength.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !34
  %i.dy = load i32, ptr %i.dr, align 4, !tbaa !34
  %.not.i = icmp eq i32 %i.dx, %i.dy
  br i1 %.not.i, label %FindMatchLength.exit, label %FindMatchLength.exit.thread

FindMatchLength.exit:                             ; preds = %bb.v
  %i.dz = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !35
  %i.ea = tail call i32 %i.dz(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dr, i32 noundef range(i32 -2147483645, 2147483647) %i.dp) #11, !inline_history !40
  %.fr = freeze i32 %i.ea                         ; 2 uses
  %i.eb = icmp sgt i32 %.fr, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  %spec.select370 = select i1 %i.eb, i32 %3, i32 0
  br label %FindMatchLength.exit.thread

FindMatchLength.exit.thread:                      ; preds = %FindMatchLength.exit, %bb.v, %bb.u
  %.0205 = phi i32 [ %i.d, %bb.u ], [ %i.dn, %bb.v ], [ %i.dn, %FindMatchLength.exit ]
  %.1198 = phi i32 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select, %FindMatchLength.exit ] ; 3 uses
  %.1195 = phi i32 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select370, %FindMatchLength.exit ]
  %i.ec = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 2 uses
  %i.ed = zext nneg i32 %.1198 to i64             ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !34
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ed
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !34
  %.not.i269 = icmp eq i32 %i.ef, %i.eh
  br i1 %.not.i269, label %bb.w, label %FindMatchLength.exit271

bb.w:                                             ; preds = %FindMatchLength.exit.thread
  %i.ei = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !35
  %i.ej = tail call i32 %i.ei(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.dr, i32 noundef range(i32 -2147483645, 2147483647) %i.dp) #11, !inline_history !40
  br label %FindMatchLength.exit271

FindMatchLength.exit271:                          ; preds = %FindMatchLength.exit.thread, %bb.w
  %.0.i270 = phi i32 [ %i.ej, %bb.w ], [ 0, %FindMatchLength.exit.thread ] ; 2 uses
  %i.ek = icmp sgt i32 %.0.i270, %.1198
  %spec.select256 = tail call i32 @llvm.smax.i32(i32 %.0.i270, i32 %.1198) ; 2 uses
  %spec.select257 = select i1 %i.ek, i32 1, i32 %.1195
  %i.el = add nsw i32 %.0205, -1
  %i.em = icmp eq i32 %spec.select256, 4095
  %i.en = add nsw i32 %i.ds, -1
  %.4222 = select i1 %i.em, i32 %i.en, i32 %i.dv
  br label %bb.x

bb.x:                                             ; preds = %FindMatchLength.exit271, %bb.t
  %.5223 = phi i32 [ %i.dv, %bb.t ], [ %.4222, %FindMatchLength.exit271 ] ; 2 uses
  %.1206 = phi i32 [ %i.d, %bb.t ], [ %i.el, %FindMatchLength.exit271 ]
  %.3200 = phi i32 [ 0, %bb.t ], [ %spec.select256, %FindMatchLength.exit271 ] ; 4 uses
  %.3 = phi i32 [ 0, %bb.t ], [ %spec.select257, %FindMatchLength.exit271 ] ; 3 uses
  %.not245291 = icmp slt i32 %.5223, %i.ds
  br i1 %.not245291, label %.critedge4, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %bb.x
  %i.eo = add nsw i32 %.1206, -1                  ; 2 uses
  %.not246374 = icmp eq i32 %i.eo, 0
  br i1 %.not246374, label %.critedge4, label %.lr.ph379

.lr.ph379:                                        ; preds = %.lr.ph297.preheader
  %i.ep = zext nneg i32 %.3200 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !34
  br label %bb.y

.lr.ph297:                                        ; preds = %select.unfold
  %i.es = add nsw i32 %i.et, -1                   ; 2 uses
  %.not246 = icmp eq i32 %i.es, 0
  br i1 %.not246, label %.critedge4, label %bb.y, !llvm.loop !41

bb.y:                                             ; preds = %.lr.ph379, %.lr.ph297
  %i.et = phi i32 [ %i.eo, %.lr.ph379 ], [ %i.es, %.lr.ph297 ]
  %.6224292378 = phi i32 [ %.5223, %.lr.ph379 ], [ %i.fi, %.lr.ph297 ] ; 4 uses
  %.4201294377 = phi i32 [ %.3200, %.lr.ph379 ], [ %.6203.ph, %.lr.ph297 ] ; 4 uses
  %.4295376 = phi i32 [ %.3, %.lr.ph379 ], [ %.6.ph, %.lr.ph297 ] ; 2 uses
  %.0192296375 = phi i32 [ %i.er, %.lr.ph379 ], [ %.2.ph, %.lr.ph297 ] ; 3 uses
  %i.eu = add nsw i32 %.4201294377, %.6224292378
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !34
  %.not247 = icmp eq i32 %i.ex, %.0192296375
  br i1 %.not247, label %bb.z, label %.select.unfold_crit_edge

.select.unfold_crit_edge:                         ; preds = %bb.y
  %.pre = sext i32 %.6224292378 to i64
  br label %select.unfold

bb.z:                                             ; preds = %bb.y
  %i.ey = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !35
  %i.ez = sext i32 %.6224292378 to i64            ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ez
  %i.fb = tail call i32 %i.ey(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.dr, i32 noundef %i.dp) #11 ; 5 uses
  %i.fc = icmp slt i32 %.4201294377, %i.fb
  br i1 %i.fc, label %bb.aa, label %select.unfold

bb.aa:                                            ; preds = %bb.z
  %i.fd = sub i32 %.0214, %.6224292378            ; 2 uses
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !34
  %.not248 = icmp slt i32 %i.fb, %i.dt
  br i1 %.not248, label %select.unfold, label %.critedge4

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.aa, %bb.z
  %.pre-phi339 = phi i64 [ %.pre, %.select.unfold_crit_edge ], [ %i.ez, %bb.aa ], [ %i.ez, %bb.z ]
  %.6203.ph = phi i32 [ %.4201294377, %.select.unfold_crit_edge ], [ %i.fb, %bb.aa ], [ %.4201294377, %bb.z ] ; 3 uses
  %.6.ph = phi i32 [ %.4295376, %.select.unfold_crit_edge ], [ %i.fd, %bb.aa ], [ %.4295376, %bb.z ] ; 3 uses
  %.2.ph = phi i32 [ %.0192296375, %.select.unfold_crit_edge ], [ %i.fg, %bb.aa ], [ %.0192296375, %bb.z ]
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.pre-phi339
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !34 ; 2 uses
  %.not245 = icmp slt i32 %i.fi, %i.ds
  br i1 %.not245, label %select.unfold..critedge4.loopexit_crit_edge, label %.lr.ph297, !llvm.loop !41

select.unfold..critedge4.loopexit_crit_edge:      ; preds = %select.unfold
  br label %.critedge4, !llvm.loop !41

.critedge4:                                       ; preds = %bb.aa, %.lr.ph297, %.lr.ph297.preheader, %select.unfold..critedge4.loopexit_crit_edge, %bb.x
  %.7204 = phi i32 [ %.3200, %bb.x ], [ %.3200, %.lr.ph297.preheader ], [ %.6203.ph, %select.unfold..critedge4.loopexit_crit_edge ], [ %.6203.ph, %.lr.ph297 ], [ %i.fb, %bb.aa ] ; 3 uses
  %.7 = phi i32 [ %.3, %bb.x ], [ %.3, %.lr.ph297.preheader ], [ %.6.ph, %select.unfold..critedge4.loopexit_crit_edge ], [ %.6.ph, %.lr.ph297 ], [ %i.fd, %bb.aa ]
  %.7.fr = freeze i32 %.7                         ; 6 uses
  %i.fj = shl i32 %.7.fr, 12                      ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.fl = icmp eq i32 %.7.fr, 0
  %i.fm = or i32 %.7204, %i.fj
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.dq
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !34
  %i.fo = add nsw i32 %.0214, -1                  ; 5 uses
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = icmp ult i32 %i.fo, %.7.fr
  %i.fr = or i1 %i.fp, %i.fq
  %or.cond258306 = select i1 %i.fl, i1 true, i1 %i.fr
  br i1 %or.cond258306, label %._crit_edge, label %.lr.ph310

.lr.ph310:                                        ; preds = %.critedge4
  %.not332 = icmp eq i32 %.7.fr, 1
  br i1 %.not332, label %.lr.ph310.split.us.split, label %.lr.ph310.split.split

.lr.ph310.split.us.split:                         ; preds = %.lr.ph310, %bb.ab
  %i.fs = phi i32 [ %i.ge, %bb.ab ], [ %i.fo, %.lr.ph310 ] ; 4 uses
  %.8308.us = phi i32 [ %spec.select261.us, %bb.ab ], [ %.7204, %.lr.ph310 ] ; 2 uses
  %i.ft = add nsw i32 %i.fs, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !34
  %i.fx = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !34
  %.not249.us = icmp eq i32 %i.fw, %i.fz
  br i1 %.not249.us, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %.lr.ph310.split.us.split
  %i.ga = icmp slt i32 %.8308.us, 4095
  %i.gb = zext i1 %i.ga to i32
  %spec.select261.us = add nuw nsw i32 %.8308.us, %i.gb ; 2 uses
  %i.gc = or i32 %spec.select261.us, 4096
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fx
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !34
  %i.ge = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %._crit_edge, label %.lr.ph310.split.us.split

.lr.ph310.split.split:                            ; preds = %.lr.ph310, %bb.ad
  %9 = phi i32 [ %i.gu, %bb.ad ], [ %i.fo, %.lr.ph310 ] ; 7 uses
  %.0309.a = phi i32 [ %spec.select262, %bb.ad ], [ %.0214, %.lr.ph310 ] ; 2 uses
  %.8308.a = phi i32 [ %spec.select261, %bb.ad ], [ %.7204, %.lr.ph310 ] ; 3 uses
  %.1215307 = phi i32 [ %9, %bb.ad ], [ %.0214, %.lr.ph310 ]
  %i.gg = sub nuw nsw i32 %9, %.7.fr
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !34
  %i.gk = zext nneg i32 %9 to i64                 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !34
  %.not249 = icmp eq i32 %i.gj, %i.gm
  br i1 %.not249, label %bb.ac, label %._crit_edge

bb.ac:                                            ; preds = %.lr.ph310.split.split
  %i.gn = icmp eq i32 %.8308.a, 4095
  %i.go = add i32 %.1215307, 4094
  %i.gp = icmp ult i32 %i.go, %.0309.a
  %or.cond260 = select i1 %i.gn, i1 %i.gp, i1 false
  br i1 %or.cond260, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = icmp slt i32 %.8308.a, 4095             ; 2 uses
  %i.gr = zext i1 %i.gq to i32
  %spec.select261 = add nuw nsw i32 %.8308.a, %i.gr ; 2 uses
  %spec.select262 = select i1 %i.gq, i32 %9, i32 %.0309.a
  %i.gs = or i32 %spec.select261, %i.fj
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gk
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !34
  %i.gu = add nsw i32 %9, -1                      ; 3 uses
  %i.gv = icmp ult i32 %i.gu, %.7.fr
  br i1 %i.gv, label %._crit_edge, label %.lr.ph310.split.split

._crit_edge:                                      ; preds = %bb.ad, %.lr.ph310.split.split, %bb.ac, %bb.ab, %.lr.ph310.split.us.split, %.critedge4
  %.lcssa = phi i32 [ %i.fo, %.critedge4 ], [ %i.fs, %.lr.ph310.split.us.split ], [ 0, %bb.ab ], [ %i.gu, %bb.ad ], [ %9, %bb.ac ], [ %9, %.lr.ph310.split.split ] ; 2 uses
  %i.gw = sub nsw i32 %i.ab, %.lcssa
  %i.gx = mul i32 %i.gw, %i.v
  %i.gy = udiv i32 %i.gx, %i.ab
  %i.gz = add i32 %i.gy, %i.df
  %i.ha = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.gz, ptr noundef nonnull %8) #11
  %.not250.not = icmp eq i32 %i.ha, 0
  br i1 %.not250.not, label %.loopexit, label %bb.s, !llvm.loop !42

bb.ae:                                            ; preds = %bb.s
  %i.hb = add i32 %i.l, %7
  %i.hc = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.hb, ptr noundef nonnull %8) #11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.p, %bb.q, %bb.ae, %bb.g, %bb.e
  %.4229 = phi i32 [ 1, %bb.e ], [ %i.t, %bb.g ], [ 0, %bb.p ], [ 0, %bb.q ], [ %i.hc, %bb.ae ], [ 0, %._crit_edge ]
  ret i32 %.4229
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LGetBackwardReferences(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, ptr noundef %11, i32 noundef %12, ptr noundef %13) local_unnamed_addr #3 {
bb.a:
  %14 = alloca %struct.VP8LBackwardRefs, align 8  ; 8 uses
  %15 = alloca %struct.VP8LBackwardRefs, align 8  ; 4 uses
  %16 = alloca %struct.VP8LColorCache, align 8    ; 9 uses
  %i.a = alloca [11 x i32], align 16              ; 6 uses
  %17 = alloca [11 x %struct.VP8LColorCache], align 16 ; 9 uses
  %i.b = alloca [11 x ptr], align 16              ; 15 uses
  %i.c = alloca [32 x i32], align 16              ; 82 uses
  %i.d = alloca [32 x i32], align 16              ; 5 uses
  %i.e = alloca [2 x i32], align 8                ; 8 uses
  %i.f = alloca [2 x i64], align 16               ; 7 uses
  %18 = alloca %struct.VP8LHashChain, align 8     ; 16 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %10, align 4, !tbaa !34
  %i.g = tail call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %8, ptr noundef %9)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %9, i64 8          ; 3 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !17, !noalias !82 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %VP8LRefsCursorInit.exit.i.i

VP8LRefsCursorInit.exit.i.i:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !83 ; 3 uses
  %.not45.i.i = icmp eq ptr %i.j, null
  br i1 %.not45.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %VP8LRefsCursorInit.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26, !noalias !83
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = add nsw i32 %0, -8
  %i.p = add i32 %0, 24
  br label %bb.d

bb.d:                                             ; preds = %VP8LRefsCursorNext.exit.i.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 3 uses
  %.sroa.10.07.i.i = phi ptr [ %.val.i, %.lr.ph.i.i ], [ %.sroa.10.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.sroa.13.06.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.13.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.val4.i.i = load i8, ptr %.sroa.0.08.i.i, align 4, !tbaa !86
  %.not.i.i = icmp eq i8 %.val4.i.i, 2
  br i1 %.not.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87   ; 3 uses
  %i.s = sdiv i32 %i.r, %0                        ; 5 uses
  %i.t = mul nsw i32 %i.s, %0                     ; 0 uses
  %.recomposed = srem i32 %i.r, %0                ; 4 uses
  %i.u = icmp slt i32 %.recomposed, 9
  %i.v = icmp slt i32 %i.s, 8
  %or.cond.i.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nsw i32 %i.s, 4
  %i.x = or disjoint i32 %i.w, 8
  %i.y = sub i32 %i.x, %.recomposed
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %VP8LDistanceToPlaneCode.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %.recomposed, %i.o
  %i.af = icmp slt i32 %i.s, 7
  %or.cond3.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %i.s, 4
  %i.ah = add i32 %i.p, %i.ag
  %i.ai = sub i32 %i.ah, %.recomposed
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.am, 1
  br label %VP8LDistanceToPlaneCode.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.r, 120
  br label %VP8LDistanceToPlaneCode.exit.i.i

VP8LDistanceToPlaneCode.exit.i.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i.i = phi i32 [ %i.ad, %bb.f ], [ %i.an, %bb.h ], [ %i.ao, %bb.i ]
  store i32 %.0.i.i.i, ptr %i.q, align 4, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %VP8LDistanceToPlaneCode.exit.i.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %.sroa.13.06.i.i
  br i1 %i.aq, label %bb.k, label %VP8LRefsCursorNext.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %.sroa.10.07.i.i, align 8, !tbaa !20 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %GetBackwardReferencesLowEffort.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !26
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax
  br label %VP8LRefsCursorNext.exit.i.i

VP8LRefsCursorNext.exit.i.i:                      ; preds = %bb.l, %bb.j
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.06.i.i, %bb.j ], [ %i.ay, %bb.l ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.07.i.i, %bb.j ], [ %i.ar, %bb.l ]
  %.sroa.0.1.i.i = phi ptr [ %i.ap, %bb.j ], [ %i.au, %bb.l ] ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not4.i.i, label %GetBackwardReferencesLowEffort.exit, label %bb.d, !llvm.loop !47

GetBackwardReferencesLowEffort.exit:              ; preds = %bb.k, %VP8LRefsCursorNext.exit.i.i
  %i.az = icmp eq ptr %9, null
  br i1 %i.az, label %.thread, label %GetBackwardReferencesLowEffort.exit.thread

.thread:                                          ; preds = %GetBackwardReferencesLowEffort.exit, %bb.b
  %i.ba = tail call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #11
  br label %bb.ic

GetBackwardReferencesLowEffort.exit.thread:       ; preds = %VP8LRefsCursorInit.exit.i.i, %bb.c, %GetBackwardReferencesLowEffort.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = icmp eq ptr %i.bc, %i.h
  br i1 %i.bd, label %bb.m, label %bb.ib

bb.m:                                             ; preds = %GetBackwardReferencesLowEffort.exit.thread
  store ptr %i.h, ptr %i.bb, align 8, !tbaa !14
  br label %bb.ib

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.be = icmp ne i32 %7, 0                       ; 4 uses
  %i.bf = select i1 %i.be, i64 2, i64 1
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %9, i64 %i.bf ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.bh = tail call ptr @VP8LAllocateHistogram(i32 noundef 10) #11 ; 9 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge, label %.preheader239.i

.preheader239.i:                                  ; preds = %bb.n
  %.not250.i = icmp eq i32 %5, 0
  br i1 %.not250.i, label %.preheader239..preheader_crit_edge.i, label %.lr.ph.i

.preheader239..preheader_crit_edge.i:             ; preds = %.preheader239.i
  %.pre278.i = add nsw i32 %0, -8
  %.pre279.i = add i32 %0, 24
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader239.i
  %i.bj = mul i32 %1, %0                          ; 8 uses
  %i.bk = sext i32 %i.bj to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bm = icmp sgt i32 %i.bj, 1                   ; 3 uses
  %i.bn = add i32 %i.bj, -2                       ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 6 uses
  %i.bp = add nsw i32 %0, -8                      ; 13 uses
  %i.bq = add i32 %0, 24                          ; 13 uses
  %i.br = shl nsw i32 %0, 1
  %i.bs = mul nsw i32 %0, 3
end_hunk_0
