Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ZopfliCostModelSetFromLiteralCosts:bb.a
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !99
  br label %FastLog2.exit

bb.e:                                             ; preds = %.lr.ph46
  %i.au = uitofp nneg i64 %i.aq to double
  %i.av = tail call double @log2(double noundef %i.au) #13
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.at, %bb.d ], [ %i.av, %bb.e ]
  %i.aw = fptrunc double %.0.i to float
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.245
  store float %i.aw, ptr %i.ax, align 4, !tbaa !92
  %i.ay = add nuw nsw i64 %.245, 1                ; 2 uses
  %exitcond49.not = icmp eq i64 %i.ay, %i.af
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph46, !llvm.loop !176

._crit_edge:                                      ; preds = %FastLog2.exit, %.preheader
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @kBrotliLog2Table, i64 88), align 8, !tbaa !99
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store float %i.ba, ptr %i.bb, align 8, !tbaa !100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @UpdateNodes(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef captures(none) %12) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = add i64 %2, %1                           ; 4 uses
  %i.d = and i64 %4, %i.c                         ; 2 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %6)
  %i.f = add i64 %i.b, %i.c
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %6) ; 3 uses
  %i.h = sub i64 %0, %2                           ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %i.k = icmp sgt i32 %i.j, 10                    ; 2 uses
  %i.l = select i1 %i.k, i64 325, i64 150
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = add i64 %i.b, %1
  tail call fastcc void @EvaluateNode(i64 noundef %i.o, i64 noundef %2, i64 noundef %6, i64 noundef %i.n, ptr noundef %7, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 2832 ; 2 uses
  %i.r = add i64 %2, 2                            ; 2 uses
  %.not21.i = icmp ugt i64 %i.r, %0
  br i1 %.not21.i, label %ComputeMinimumCopyLength.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.s = load i64, ptr %i.p, align 8, !tbaa !66
  %i.t = sub i64 0, %i.s
  %i.u = and i64 %i.t, 7
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 2840
  %i.z = load float, ptr %i.y, align 8, !tbaa !100
  %i.aa = fadd float %i.x, %i.z
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %2
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !92
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !92
  %i.ah = fsub float %i.ad, %i.ag
  %i.ai = fadd float %i.aa, %i.ah
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.aj = phi i64 [ %i.at, %bb.b ], [ %i.r, %.lr.ph.i.preheader ]
  %.025.i = phi i64 [ %.1.i264, %bb.b ], [ 10, %.lr.ph.i.preheader ] ; 2 uses
  %.01524.i = phi i64 [ %.116.i, %bb.b ], [ 4, %.lr.ph.i.preheader ] ; 2 uses
  %.01723.i = phi i64 [ %i.ao, %bb.b ], [ 2, %.lr.ph.i.preheader ] ; 2 uses
  %.01822.i = phi float [ %.119.i, %bb.b ], [ %i.ai, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !22
  %i.an = fcmp ugt float %i.am, %.01822.i
  br i1 %i.an, label %ComputeMinimumCopyLength.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ao = add i64 %.01723.i, 1                    ; 4 uses
  %i.ap = icmp eq i64 %i.ao, %.025.i              ; 3 uses
  %i.aq = fadd float %.01822.i, 1.000000e+00
  %.119.i = select i1 %i.ap, float %i.aq, float %.01822.i
  %i.ar = zext i1 %i.ap to i64
  %.116.i = shl i64 %.01524.i, %i.ar
  %i.as = select i1 %i.ap, i64 %.01524.i, i64 0
  %.1.i264 = add i64 %i.as, %.025.i
  %i.at = add i64 %i.ao, %2                       ; 2 uses
  %.not.i265 = icmp ugt i64 %i.at, %0
  br i1 %.not.i265, label %ComputeMinimumCopyLength.exit, label %.lr.ph.i, !llvm.loop !177

ComputeMinimumCopyLength.exit:                    ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.017.lcssa.i = phi i64 [ 2, %bb.a ], [ %.01723.i, %.lr.ph.i ], [ %i.ao, %bb.b ] ; 2 uses
  %i.au = add i64 %.017.lcssa.i, -1               ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.h
  %i.aw = add i64 %i.g, %i.n                      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.d ; 4 uses
  %i.ay = icmp ugt i64 %i.h, 7
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 2816 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %12, i64 %2 ; 2 uses
  %.not368 = icmp eq i64 %8, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.c

bb.c:                                             ; preds = %ComputeMinimumCopyLength.exit, %.loopexit303
  %.0216366 = phi i64 [ 0, %ComputeMinimumCopyLength.exit ], [ %i.mv, %.loopexit303 ] ; 5 uses
  %.0217365 = phi i64 [ 0, %ComputeMinimumCopyLength.exit ], [ %.9, %.loopexit303 ] ; 3 uses
  %.val = load i64, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.bf = tail call range(i64 0, 9) i64 @llvm.umin.i64(i64 %.val, i64 8)
  %i.bg = icmp samesign ult i64 %.0216366, %i.bf
  br i1 %i.bg, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.bh = sub i64 %.0216366, %.val
  %i.bi = and i64 %i.bh, 7
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %i.bi ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !94
  %i.bl = sub i64 %2, %i.bk                       ; 10 uses
  %i.bm = icmp ult i64 %i.bl, 6
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = trunc nuw nsw i64 %i.bl to i16
  br label %GetInsertLengthCode.exit

bb.f:                                             ; preds = %bb.d
  %i.bo = icmp ult i64 %i.bl, 130
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = add nsw i64 %i.bl, -2                   ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = sub nuw nsw i32 30, %i.br               ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = lshr i64 %i.bp, %i.bv
  %i.bx = add nuw nsw i64 %i.bw, %i.bu
  %i.by = trunc nuw nsw i64 %i.bx to i16
  %i.bz = add nuw nsw i16 %i.by, 2
  br label %GetInsertLengthCode.exit

bb.h:                                             ; preds = %bb.f
  %i.ca = icmp ult i64 %i.bl, 2114
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = trunc nuw nsw i64 %i.bl to i32
  %i.cc = add nsw i32 %i.cb, -66
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = sub nuw nsw i16 41, %i.ce
  br label %GetInsertLengthCode.exit

bb.j:                                             ; preds = %bb.h
  %i.cg = icmp ult i64 %i.bl, 6210
  br i1 %i.cg, label %GetInsertLengthCode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %i.bl, 22594
  %..i = select i1 %i.ch, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i16 [ %i.bn, %bb.e ], [ %i.bz, %bb.g ], [ %i.cf, %bb.i ], [ 21, %bb.j ], [ %..i, %bb.k ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !96
  %i.ck = zext nneg i16 %.0.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsExtra, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !21
  %i.cn = uitofp i32 %i.cm to float
  %i.co = fadd float %i.cj, %i.cn
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %2
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !92
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !92
  %i.ct = fsub float %i.cr, %i.cs
  %i.cu = fadd float %i.co, %i.ct                 ; 3 uses
  br i1 %i.av, label %.lr.ph351, label %FindMatchLengthWithLimit.exit

.lr.ph351:                                        ; preds = %GetInsertLengthCode.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cw = icmp samesign ult i16 %.0.i, 8
  %i.cx = lshr i16 %.0.i, 3
  %narrow.i243 = mul nuw nsw i16 %i.cx, 3
  %i.cy = shl nuw nsw i16 %.0.i, 3
  %i.cz = and i16 %i.cy, 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph351, %.loopexit
  %.0211349 = phi i64 [ 0, %.lr.ph351 ], [ %i.in, %.loopexit ] ; 7 uses
  %.0213348 = phi i64 [ %i.au, %.lr.ph351 ], [ %.2215.ph, %.loopexit ] ; 14 uses
  %.1218347 = phi i64 [ %.0217365, %.lr.ph351 ], [ %.4.ph, %.loopexit ] ; 10 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @kDistanceCacheIndex, i64 %.0211349
  %i.db = load i32, ptr %i.da, align 4, !tbaa !21
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !21
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @kDistanceCacheOffset, i64 %.0211349
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !21
  %i.dh = add nsw i32 %i.dg, %i.de                ; 3 uses
  %i.di = sext i32 %i.dh to i64                   ; 6 uses
  %i.dj = sub nuw i64 %i.c, %i.di
  %i.dk = add i64 %.0213348, %i.d                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22  ; 2 uses
  %i.dn = icmp ugt i64 %i.dk, %4
  br i1 %i.dn, label %FindMatchLengthWithLimit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp ult i64 %i.aw, %i.di
  br i1 %i.do, label %.loopexit, label %bb.n, !prof !69

bb.n:                                             ; preds = %bb.m
  %.not = icmp ult i64 %i.e, %i.di
  br i1 %.not, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not234.not = icmp eq i32 %i.dh, 0
  br i1 %.not234.not, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = and i64 %i.dj, %4                       ; 2 uses
  %i.dq = add i64 %i.dp, %.0213348                ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %4
  br i1 %i.dr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !22
  %.not235 = icmp eq i8 %i.dm, %i.dt
  br i1 %.not235, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp ; 4 uses
  br i1 %i.ay, label %.lr.ph, label %.lr.ph320.preheader

.preheader301:                                    ; preds = %bb.t
  %.not.i253316 = icmp eq i64 %i.ee, 0
  br i1 %.not.i253316, label %.critedge.i254, label %.lr.ph320.preheader

.lr.ph320.preheader:                              ; preds = %bb.r, %.preheader301
  %.022.i248.lcssa419 = phi i64 [ %i.ee, %.preheader301 ], [ %i.h, %bb.r ] ; 2 uses
  %.024.i247.lcssa418 = phi ptr [ %i.ec, %.preheader301 ], [ %i.ax, %bb.r ]
  %.026.i246.lcssa417 = phi ptr [ %i.ed, %.preheader301 ], [ %i.du, %bb.r ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.026.i246.lcssa417, i64 %.022.i248.lcssa419
  br label %.lr.ph320

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.022.i248313 = phi i64 [ %i.ee, %bb.t ], [ %i.h, %bb.r ]
  %.024.i247312 = phi ptr [ %i.ec, %bb.t ], [ %i.ax, %bb.r ] ; 2 uses
  %.026.i246311 = phi ptr [ %i.ed, %bb.t ], [ %i.du, %bb.r ] ; 3 uses
  %.0.copyload.i260 = load i64, ptr %.024.i247312, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.026.i246311, align 1 ; 2 uses
  %.not30.i256 = icmp eq i64 %.0.copyload.i260, %.0.copyload.i
  br i1 %.not30.i256, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.dv = xor i64 %.0.copyload.i, %.0.copyload.i260
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dv, i1 true)
  %i.dx = ptrtoint ptr %.026.i246311 to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = lshr i64 %i.dw, 3
  %i.eb = add i64 %i.dz, %i.ea
  br label %FindMatchLengthWithLimit.exit259

bb.t:                                             ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.024.i247312, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.026.i246311, i64 8 ; 3 uses
  %i.ee = add i64 %.022.i248313, -8               ; 4 uses
  %i.ef = icmp ugt i64 %i.ee, 7
  br i1 %i.ef, label %.lr.ph, label %.preheader301, !llvm.loop !1

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %bb.u
  %.123.i252319 = phi i64 [ %i.ej, %bb.u ], [ %.022.i248.lcssa419, %.lr.ph320.preheader ]
  %.125.i251318 = phi ptr [ %i.ek, %bb.u ], [ %.024.i247.lcssa418, %.lr.ph320.preheader ] ; 2 uses
  %.228.i250317 = phi ptr [ %i.el, %bb.u ], [ %.026.i246.lcssa417, %.lr.ph320.preheader ] ; 3 uses
  %i.eg = load i8, ptr %.228.i250317, align 1, !tbaa !22
  %i.eh = load i8, ptr %.125.i251318, align 1, !tbaa !22
  %i.ei = icmp eq i8 %i.eg, %i.eh
  br i1 %i.ei, label %bb.u, label %.critedge.i254

bb.u:                                             ; preds = %.lr.ph320
  %i.ej = add nsw i64 %.123.i252319, -1           ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.125.i251318, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.228.i250317, i64 1
  %.not.i253 = icmp eq i64 %i.ej, 0
  br i1 %.not.i253, label %.critedge.i254, label %.lr.ph320, !llvm.loop !2

.critedge.i254:                                   ; preds = %bb.u, %.lr.ph320, %.preheader301
  %.228.i250.lcssa = phi ptr [ %i.ed, %.preheader301 ], [ %.228.i250317, %.lr.ph320 ], [ %scevgep, %bb.u ]
  %i.em = ptrtoint ptr %.228.i250.lcssa to i64
  %i.en = ptrtoint ptr %i.du to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %FindMatchLengthWithLimit.exit259

bb.v:                                             ; preds = %bb.n
  %i.ep = icmp ult i64 %i.g, %i.di
  br i1 %i.ep, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.eq = load i64, ptr %i.m, align 8, !tbaa !55
  %i.er = add i64 %i.eq, %i.g                     ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0206 = phi i64 [ 0, %bb.w ], [ %i.es, %bb.x ] ; 3 uses
  %i.es = add i64 %.0206, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !47 ; 2 uses
  %i.ev = add i64 %i.eu, %i.di
  %.not231 = icmp ult i64 %i.er, %i.ev
  br i1 %.not231, label %bb.y, label %bb.x, !llvm.loop !178

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0206
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !47 ; 2 uses
  %i.ey = add i64 %i.ex, %i.di
  %i.ez = sub i64 %i.er, %i.ey                    ; 2 uses
  %i.fa = add i64 %i.ex, %i.ez
  %i.fb = sub i64 %i.eu, %i.fa
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.h) ; 4 uses
  %.not232 = icmp ult i64 %.0213348, %i.fc
  br i1 %.not232, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0206
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !184
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.ez  ; 5 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 %.0213348
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !22
  %.not233 = icmp eq i8 %i.dm, %i.fh
  br i1 %.not233, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.fi = icmp ugt i64 %i.fc, 7
  br i1 %i.fi, label %.lr.ph327, label %.lr.ph335.preheader

.preheader:                                       ; preds = %bb.ac
  %.not.i331 = icmp eq i64 %i.fs, 0
  br i1 %.not.i331, label %.critedge.i, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %bb.aa, %.preheader
  %.022.i.lcssa426 = phi i64 [ %i.fs, %.preheader ], [ %i.fc, %bb.aa ] ; 2 uses
  %.024.i.lcssa425 = phi ptr [ %i.fq, %.preheader ], [ %i.ax, %bb.aa ]
  %.026.i.lcssa424 = phi ptr [ %i.fr, %.preheader ], [ %i.ff, %bb.aa ] ; 2 uses
  %scevgep382 = getelementptr i8, ptr %.026.i.lcssa424, i64 %.022.i.lcssa426
  br label %.lr.ph335

.lr.ph327:                                        ; preds = %bb.aa, %bb.ac
  %.022.i326 = phi i64 [ %i.fs, %bb.ac ], [ %i.fc, %bb.aa ]
  %.024.i325 = phi ptr [ %i.fq, %bb.ac ], [ %i.ax, %bb.aa ] ; 2 uses
  %.026.i324 = phi ptr [ %i.fr, %bb.ac ], [ %i.ff, %bb.aa ] ; 3 uses
  %.0.copyload.i262 = load i64, ptr %.024.i325, align 1 ; 2 uses
  %.0.copyload.i261 = load i64, ptr %.026.i324, align 1 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i262, %.0.copyload.i261
  br i1 %.not30.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph327
  %i.fj = xor i64 %.0.copyload.i261, %.0.copyload.i262
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fj, i1 true)
  %i.fl = ptrtoint ptr %.026.i324 to i64
  %i.fm = ptrtoint ptr %i.ff to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr i64 %i.fk, 3
  %i.fp = add i64 %i.fn, %i.fo
  br label %FindMatchLengthWithLimit.exit259

bb.ac:                                            ; preds = %.lr.ph327
  %i.fq = getelementptr inbounds nuw i8, ptr %.024.i325, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.026.i324, i64 8 ; 3 uses
  %i.fs = add i64 %.022.i326, -8                  ; 4 uses
  %i.ft = icmp ugt i64 %i.fs, 7
  br i1 %i.ft, label %.lr.ph327, label %.preheader, !llvm.loop !1

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %bb.ad
  %.123.i334 = phi i64 [ %i.fx, %bb.ad ], [ %.022.i.lcssa426, %.lr.ph335.preheader ]
  %.125.i333 = phi ptr [ %i.fy, %bb.ad ], [ %.024.i.lcssa425, %.lr.ph335.preheader ] ; 2 uses
  %.228.i332 = phi ptr [ %i.fz, %bb.ad ], [ %.026.i.lcssa424, %.lr.ph335.preheader ] ; 3 uses
  %i.fu = load i8, ptr %.228.i332, align 1, !tbaa !22
  %i.fv = load i8, ptr %.125.i333, align 1, !tbaa !22
  %i.fw = icmp eq i8 %i.fu, %i.fv
  br i1 %i.fw, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %.lr.ph335
  %i.fx = add nsw i64 %.123.i334, -1              ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.125.i333, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.228.i332, i64 1
  %.not.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph335, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.ad, %.lr.ph335, %.preheader
  %.228.i.lcssa = phi ptr [ %i.fr, %.preheader ], [ %.228.i332, %.lr.ph335 ], [ %scevgep382, %bb.ad ]
  %i.ga = ptrtoint ptr %.228.i.lcssa to i64
  %i.gb = ptrtoint ptr %i.ff to i64
  %i.gc = sub i64 %i.ga, %i.gb
  br label %FindMatchLengthWithLimit.exit259

FindMatchLengthWithLimit.exit259:                 ; preds = %.critedge.i, %bb.ab, %.critedge.i254, %bb.s
  %.1210 = phi i64 [ %i.eo, %.critedge.i254 ], [ %i.eb, %bb.s ], [ %i.gc, %.critedge.i ], [ %i.fp, %bb.ab ] ; 2 uses
  %i.gd = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0211349
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !92
  %i.gg = fadd float %i.cu, %i.gf
  %.0205339 = add i64 %.0213348, 1                ; 2 uses
  %.not236340 = icmp ugt i64 %.0205339, %.1210
  br i1 %.not236340, label %.loopexit, label %.lr.ph344

.lr.ph344:                                        ; preds = %FindMatchLengthWithLimit.exit259
  %i.gh = icmp eq i64 %.0211349, 0
  %or.cond.i = and i1 %i.cw, %i.gh
  %i.gi = shl nuw nsw i64 %.0211349, 27
  %i.gj = add nuw nsw i64 %i.gi, 134217728
  %i.gk = or i64 %i.gj, %i.bl
  %i.gl = trunc i64 %i.gk to i32
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph344, %bb.al
  %.0205343 = phi i64 [ %.0205339, %.lr.ph344 ], [ %.0205, %bb.al ] ; 10 uses
  %.1214342 = phi i64 [ %.0213348, %.lr.ph344 ], [ %.0205343, %bb.al ] ; 2 uses
  %.2219341 = phi i64 [ %.1218347, %.lr.ph344 ], [ %.3, %bb.al ] ; 2 uses
  %i.gm = icmp ult i64 %.0205343, 10
  br i1 %i.gm, label %GetCopyLengthCode.exit241, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = icmp ult i64 %.0205343, 134
  br i1 %i.gn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = add nsw i64 %.1214342, -5               ; 2 uses
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true)
  %i.gr = sub nsw i32 30, %i.gq                   ; 2 uses
  %i.gs = shl nuw nsw i32 %i.gr, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = zext nneg i32 %i.gr to i64
  %i.gv = lshr i64 %i.go, %i.gu
  %i.gw = add nuw nsw i64 %i.gv, %i.gt
  br label %GetCopyLengthCode.exit241

bb.ah:                                            ; preds = %bb.af
  %i.gx = icmp ult i64 %.0205343, 2118
  br i1 %i.gx, label %bb.ai, label %GetCopyLengthCode.exit241.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gy = trunc i64 %.1214342 to i32
  %i.gz = add i32 %i.gy, -69
  %i.ha = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = trunc nuw nsw i32 %i.ha to i16
  %i.hc = sub nuw nsw i16 43, %i.hb
  br label %GetCopyLengthCode.exit241.thread

GetCopyLengthCode.exit241:                        ; preds = %bb.ae, %bb.ag
  %.0205343.sink = phi i64 [ %i.gw, %bb.ag ], [ %.0205343, %bb.ae ]
  %.sink439 = phi i16 [ 4, %bb.ag ], [ -2, %bb.ae ]
  %i.hd = trunc nuw nsw i64 %.0205343.sink to i16
  %i.he = add nsw i16 %.sink439, %i.hd            ; 4 uses
  %i.hf = icmp ult i16 %i.he, 16
  %or.cond5.i = and i1 %or.cond.i, %i.hf
  br i1 %or.cond5.i, label %bb.aj, label %GetCopyLengthCode.exit241.thread

bb.aj:                                            ; preds = %GetCopyLengthCode.exit241
  %i.hg = shl nuw nsw i16 %i.he, 3
  %i.hh = and i16 %i.hg, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit241.thread:                 ; preds = %bb.ah, %bb.ai, %GetCopyLengthCode.exit241
  %.0.i240285 = phi i16 [ %i.he, %GetCopyLengthCode.exit241 ], [ 23, %bb.ah ], [ %i.hc, %bb.ai ] ; 2 uses
  %i.hi = lshr i16 %.0.i240285, 3
  %narrow21.i244 = add nuw nsw i16 %i.hi, %narrow.i243
  %i.hj = zext nneg i16 %narrow21.i244 to i32     ; 2 uses
  %i.hk = shl nuw nsw i32 %i.hj, 1
  %i.hl = shl nuw nsw i32 %i.hj, 6
  %i.hm = add nuw nsw i32 %i.hl, 64
  %i.hn = lshr i32 5377344, %i.hk
  %i.ho = and i32 %i.hn, 192
  %i.hp = add nuw nsw i32 %i.hm, %i.ho
  %i.hq = trunc i32 %i.hp to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.aj, %GetCopyLengthCode.exit241.thread
  %.0.i240286 = phi i16 [ %i.he, %bb.aj ], [ %.0.i240285, %GetCopyLengthCode.exit241.thread ] ; 2 uses
  %.pn.i = phi i16 [ %i.hh, %bb.aj ], [ %i.hq, %GetCopyLengthCode.exit241.thread ] ; 2 uses
  %i.hr = and i16 %.0.i240286, 7
  %i.hs = or disjoint i16 %i.hr, %i.cz
  %.0.i245 = or disjoint i16 %i.hs, %.pn.i
  %i.ht = icmp ult i16 %.pn.i, 128
  %i.hu = select i1 %i.ht, float %i.cu, float %i.gg
  %i.hv = zext i16 %.0.i240286 to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !21
  %i.hy = uitofp i32 %i.hx to float
  %i.hz = fadd float %i.hu, %i.hy
  %i.ia = zext i16 %.0.i245 to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !92
  %i.id = fadd float %i.ic, %i.hz                 ; 2 uses
  %i.ie = getelementptr [16 x i8], ptr %i.bc, i64 %.0205343 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !22
  %i.ih = fcmp olt float %i.id, %i.ig
  br i1 %i.ih, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %CombineLengthCodes.exit
  %i.ii = trunc i64 %.0205343 to i32
  %i.ij = or i32 %i.ii, 301989888
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !45
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.dh, ptr %i.ik, align 4, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.gl, ptr %i.il, align 4, !tbaa !46
  store float %i.id, ptr %i.if, align 4, !tbaa !22
  %i.im = tail call i64 @llvm.umax.i64(i64 %.2219341, i64 %.0205343)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %CombineLengthCodes.exit
  %.3 = phi i64 [ %i.im, %bb.ak ], [ %.2219341, %CombineLengthCodes.exit ] ; 2 uses
  %.0205 = add i64 %.0205343, 1                   ; 2 uses
  %.not236 = icmp ugt i64 %.0205, %.1210
  br i1 %.not236, label %.loopexit, label %bb.ae, !llvm.loop !179

.loopexit:                                        ; preds = %bb.al, %FindMatchLengthWithLimit.exit259, %bb.p, %bb.m, %bb.o, %bb.v, %bb.q, %bb.y, %bb.z
  %.4.ph = phi i64 [ %.1218347, %bb.z ], [ %.1218347, %bb.y ], [ %.1218347, %bb.q ], [ %.1218347, %bb.p ], [ %.1218347, %bb.v ], [ %.1218347, %bb.o ], [ %.1218347, %bb.m ], [ %.1218347, %FindMatchLengthWithLimit.exit259 ], [ %.3, %bb.al ] ; 2 uses
  %.2215.ph = phi i64 [ %.0213348, %bb.z ], [ %.0213348, %bb.y ], [ %.0213348, %bb.q ], [ %.0213348, %bb.p ], [ %.0213348, %bb.v ], [ %.0213348, %bb.o ], [ %.0213348, %bb.m ], [ %.0213348, %FindMatchLengthWithLimit.exit259 ], [ %.0205343, %bb.al ] ; 2 uses
  %i.in = add nuw nsw i64 %.0211349, 1
  %i.io = icmp samesign ult i64 %.0211349, 15
  %i.ip = icmp ult i64 %.2215.ph, %i.h
  %i.iq = and i1 %i.io, %i.ip
  br i1 %i.iq, label %bb.l, label %FindMatchLengthWithLimit.exit, !llvm.loop !180

FindMatchLengthWithLimit.exit:                    ; preds = %.loopexit, %bb.l, %GetInsertLengthCode.exit
  %.1218.lcssa = phi i64 [ %.0217365, %GetInsertLengthCode.exit ], [ %.1218347, %bb.l ], [ %.4.ph, %.loopexit ] ; 2 uses
  %i.ir = icmp samesign ugt i64 %.0216366, 1
  %brmerge = or i1 %i.ir, %.not368
  br i1 %brmerge, label %.loopexit303, label %.lr.ph363

.lr.ph363:                                        ; preds = %FindMatchLengthWithLimit.exit
  %i.is = lshr i16 %.0.i, 3
  %narrow.i = mul nuw nsw i16 %i.is, 3
  %i.it = shl nuw nsw i16 %.0.i, 3
  %i.iu = and i16 %i.it, 56
  %i.iv = trunc i64 %i.bl to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph363, %._crit_edge
  %.0362 = phi i64 [ %.017.lcssa.i, %.lr.ph363 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.1212361 = phi i64 [ 0, %.lr.ph363 ], [ %i.mu, %._crit_edge ] ; 2 uses
  %.6360 = phi i64 [ %.1218.lcssa, %.lr.ph363 ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1212361
  %i.ix = load i64, ptr %i.iw, align 4            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ix to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.ix, 32
  %i.iy = and i64 %i.ix, 4294967295               ; 3 uses
  %i.iz = icmp ult i64 %i.aw, %i.iy               ; 2 uses
  %i.ja = add nuw nsw i64 %i.iy, 15               ; 2 uses
  %i.jb = load i32, ptr %i.bd, align 4, !tbaa !185
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 16               ; 2 uses
  %i.je = icmp samesign ult i64 %i.ja, %i.jd
  br i1 %i.je, label %PrefixEncodeCopyDistance.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.be, align 8, !tbaa !186 ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 3 uses
  %i.jh = shl nuw i64 4, %i.jg
  %i.ji = xor i64 %i.jc, -1
  %i.jj = add nsw i64 %i.iy, %i.ji
  %i.jk = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jl, i1 true)
  %i.jn = sub nsw i32 30, %i.jm
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.jf
  %i.jp = xor i32 %notmask.i, -1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = and i64 %i.jk, %i.jq
  %i.js = lshr i64 %i.jk, %i.jo
  %i.jt = sub nsw i64 %i.jo, %i.jg                ; 2 uses
  %i.ju = shl nsw i64 %i.jt, 10
  %i.jv = shl nsw i64 %i.jt, 1
  %i.jw = or i64 %i.js, -2
  %i.jx = add nsw i64 %i.jv, %i.jw
  %i.jy = shl i64 %i.jx, %i.jg
  %i.jz = add nuw nsw i64 %i.jr, %i.jd
  %i.ka = add i64 %i.jz, %i.jy
  %i.kb = or i64 %i.ka, %i.ju
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %bb.am, %bb.an
  %.0269.in = phi i64 [ %i.kb, %bb.an ], [ %i.ja, %bb.am ] ; 2 uses
  %.0269 = trunc i64 %.0269.in to i32
  %i.kc = lshr i32 %.0269, 10
  %i.kd = and i32 %i.kc, 63
  %i.ke = uitofp nneg i32 %i.kd to float
  %i.kf = fadd float %i.cu, %i.ke
  %i.kg = and i64 %.0269.in, 1023
  %i.kh = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kg
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !92
  %i.kk = fadd float %i.kj, %i.kf
  %i.kl = lshr i64 %i.ix, 37                      ; 7 uses
  %i.km = icmp ult i64 %.0362, %i.kl
  %i.kn = icmp samesign ugt i64 %i.kl, %i.l
  %or.cond = select i1 %i.iz, i1 true, i1 %i.kn
  %or.cond238 = select i1 %i.km, i1 %or.cond, i1 false
  %.1 = select i1 %or.cond238, i64 %i.kl, i64 %.0362 ; 3 uses
  %.not237355 = icmp ugt i64 %.1, %i.kl
  br i1 %.not237355, label %._crit_edge, label %BackwardMatchLengthCode.exit.lr.ph

BackwardMatchLengthCode.exit.lr.ph:               ; preds = %PrefixEncodeCopyDistance.exit
  %i.ko = and i64 %i.ix, 133143986176
  %.not.i263 = icmp eq i64 %i.ko, 0
  %i.kp = and i64 %.sroa.4.0.extract.shift, 31
  %spec.select = select i1 %.not.i263, i64 %i.kl, i64 %i.kp
  %i.kq = add nuw nsw i64 %i.kl, 1
  br label %BackwardMatchLengthCode.exit

BackwardMatchLengthCode.exit:                     ; preds = %BackwardMatchLengthCode.exit.lr.ph, %bb.au
  %.2357 = phi i64 [ %.1, %BackwardMatchLengthCode.exit.lr.ph ], [ %i.mt, %bb.au ] ; 7 uses
  %.7356 = phi i64 [ %.6360, %BackwardMatchLengthCode.exit.lr.ph ], [ %.8, %bb.au ] ; 2 uses
  %i.kr = select i1 %i.iz, i64 %spec.select, i64 %.2357 ; 7 uses
  %i.ks = icmp ult i64 %i.kr, 10
  br i1 %i.ks, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %BackwardMatchLengthCode.exit
  %i.kt = trunc nuw nsw i64 %i.kr to i16
  %i.ku = add nsw i16 %i.kt, -2
  br label %GetCopyLengthCode.exit

bb.ap:                                            ; preds = %BackwardMatchLengthCode.exit
  %i.kv = icmp ult i64 %i.kr, 134
  br i1 %i.kv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kw = add nsw i64 %i.kr, -6                   ; 2 uses
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kx, i1 true)
  %i.kz = sub nuw nsw i32 30, %i.ky               ; 2 uses
  %i.la = shl nuw nsw i32 %i.kz, 1
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = zext nneg i32 %i.kz to i64
  %i.ld = lshr i64 %i.kw, %i.lc
  %i.le = add nuw nsw i64 %i.ld, %i.lb
  %i.lf = trunc nuw nsw i64 %i.le to i16
  %i.lg = add nuw nsw i16 %i.lf, 4
  br label %GetCopyLengthCode.exit

bb.ar:                                            ; preds = %bb.ap
  %i.lh = icmp ult i64 %i.kr, 2118
  br i1 %i.lh, label %bb.as, label %GetCopyLengthCode.exit

bb.as:                                            ; preds = %bb.ar
  %i.li = trunc nuw nsw i64 %i.kr to i32
  %i.lj = add nsw i32 %i.li, -70
  %i.lk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lj, i1 true)
  %i.ll = trunc nuw nsw i32 %i.lk to i16
  %i.lm = sub nuw nsw i16 43, %i.ll
  br label %GetCopyLengthCode.exit

GetCopyLengthCode.exit:                           ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.as
  %.0.i239 = phi i16 [ %i.ku, %bb.ao ], [ %i.lg, %bb.aq ], [ %i.lm, %bb.as ], [ 23, %bb.ar ] ; 3 uses
  %i.ln = lshr i16 %.0.i239, 3
  %narrow21.i = add nuw nsw i16 %i.ln, %narrow.i
  %i.lo = zext nneg i16 %narrow21.i to i32        ; 2 uses
  %i.lp = shl nuw nsw i32 %i.lo, 1
  %i.lq = shl nuw nsw i32 %i.lo, 6
  %i.lr = add nuw nsw i32 %i.lq, 64
  %i.ls = lshr i32 5377344, %i.lp
  %i.lt = and i32 %i.ls, 192
  %i.lu = add nuw nsw i32 %i.lr, %i.lt
  %i.lv = trunc i32 %i.lu to i16
  %i.lw = and i16 %.0.i239, 7
  %i.lx = or disjoint i16 %i.lw, %i.iu
  %.0.i242 = or disjoint i16 %i.lx, %i.lv
  %i.ly = zext i16 %.0.i239 to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !21
  %i.mb = uitofp i32 %i.ma to float
  %i.mc = fadd float %i.kk, %i.mb
  %i.md = zext i16 %.0.i242 to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !92
  %i.mg = fadd float %i.mf, %i.mc                 ; 2 uses
  %i.mh = getelementptr [16 x i8], ptr %i.bc, i64 %.2357 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 12 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !22
  %i.mk = fcmp olt float %i.mg, %i.mj
  br i1 %i.mk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %GetCopyLengthCode.exit
  %i.ml = add i64 %.2357, 9
  %i.mm = sub i64 %i.ml, %i.kr
  %i.mn = shl i64 %i.mm, 25
  %i.mo = or i64 %i.mn, %.2357
  %i.mp = trunc i64 %i.mo to i32
  store i32 %i.mp, ptr %i.mh, align 4, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.mq, align 4, !tbaa !48
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %i.iv, ptr %i.mr, align 4, !tbaa !46
  store float %i.mg, ptr %i.mi, align 4, !tbaa !22
  %i.ms = tail call i64 @llvm.umax.i64(i64 %.7356, i64 %.2357)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %GetCopyLengthCode.exit
  %.8 = phi i64 [ %i.ms, %bb.at ], [ %.7356, %GetCopyLengthCode.exit ] ; 2 uses
  %i.mt = add i64 %.2357, 1
  %exitcond.not = icmp eq i64 %.2357, %i.kl
  br i1 %exitcond.not, label %._crit_edge, label %BackwardMatchLengthCode.exit, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.au, %PrefixEncodeCopyDistance.exit
  %.7.lcssa = phi i64 [ %.6360, %PrefixEncodeCopyDistance.exit ], [ %.8, %bb.au ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1, %PrefixEncodeCopyDistance.exit ], [ %i.kq, %bb.au ]
  %i.mu = add nuw i64 %.1212361, 1                ; 2 uses
  %exitcond383.not = icmp eq i64 %i.mu, %8
  br i1 %exitcond383.not, label %.loopexit303, label %bb.am, !llvm.loop !182

.loopexit303:                                     ; preds = %._crit_edge, %FindMatchLengthWithLimit.exit
  %.9 = phi i64 [ %.1218.lcssa, %FindMatchLengthWithLimit.exit ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %i.mv = add nuw nsw i64 %.0216366, 1
  %i.mw = icmp samesign ult i64 %.0216366, 4
  %i.mx = select i1 %i.k, i1 %i.mw, i1 false
  br i1 %i.mx, label %bb.c, label %.critedge, !llvm.loop !183

end_hunk_0
