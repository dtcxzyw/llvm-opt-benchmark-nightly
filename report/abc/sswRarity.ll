Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswRarity?download=true
inline.NumInlined: 245
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ssw_RarDeriveCex:Vec_IntAlloc.exit.i
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ci = sext i32 %.val to i64
  %i.cj = icmp slt i64 %indvars.iv.next81, %i.ci
  br i1 %i.cj, label %bb.b, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %bb.d, %bb.a
  %.1.lcssa = phi i32 [ %.04875, %bb.a ], [ %i.ch, %bb.d ]
  %i.ck = add nuw i32 %.04974, 1
  %exitcond.not = icmp eq i32 %.04974, %1
  br i1 %exitcond.not, label %._crit_edge78.thread, label %bb.a, !llvm.loop !59

._crit_edge78.thread:                             ; preds = %.critedge, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.g) #22
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.cm = tail call i32 @Saig_ManVerifyCex(ptr noundef %i.cl, ptr noundef nonnull %i.aw) #22
  %.not52 = icmp eq i32 %i.cm, 0
  br i1 %.not52, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge78.thread
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge78.thread, %bb.e
  ret ptr %i.aw
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Saig_ManVerifyCex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !49
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #22 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #22
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #22 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #22 ; 0 uses
  call void @free(ptr noundef %i.d) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !60, !noalias !62
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #22, !inline_history !65 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @transpose32(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load <4 x i32>, ptr %0, align 4, !tbaa !49 ; 2 uses
  %i.h = load <4 x i32>, ptr %i.a, align 4, !tbaa !49 ; 3 uses
  %i.i = lshr <4 x i32> %i.h, splat (i32 16)
  %i.j = and <4 x i32> %i.g, splat (i32 65535)
  %i.k = xor <4 x i32> %i.i, %i.j                 ; 3 uses
  %i.l = xor <4 x i32> %i.k, %i.g
  store <4 x i32> %i.l, ptr %0, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load <4 x i32>, ptr %i.m, align 4, !tbaa !49 ; 2 uses
  %i.t = load <4 x i32>, ptr %i.n, align 4, !tbaa !49 ; 3 uses
  %i.u = lshr <4 x i32> %i.t, splat (i32 16)
  %i.v = and <4 x i32> %i.s, splat (i32 65535)
  %i.w = xor <4 x i32> %i.u, %i.v                 ; 3 uses
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.y = shl nuw <4 x i32> %i.x, splat (i32 16)
  %i.z = shufflevector <4 x i32> %i.t, <4 x i32> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.aa = xor <4 x i32> %i.y, %i.z
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ab, ptr %i.f, align 4, !tbaa !49
  %i.ac = xor <4 x i32> %i.w, %i.s
  store <4 x i32> %i.ac, ptr %i.m, align 4, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.ar = load <4 x i32>, ptr %i.ad, align 4, !tbaa !49 ; 2 uses
  %i.as = load <4 x i32>, ptr %i.ae, align 4, !tbaa !49 ; 3 uses
  %i.at = lshr <4 x i32> %i.as, splat (i32 16)
  %i.au = and <4 x i32> %i.ar, splat (i32 65535)
  %i.av = xor <4 x i32> %i.at, %i.au              ; 3 uses
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ax = shl nuw <4 x i32> %i.aw, splat (i32 16)
  %i.ay = shufflevector <4 x i32> %i.as, <4 x i32> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.az = xor <4 x i32> %i.ax, %i.ay
  %i.ba = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ba, ptr %i.r, align 4, !tbaa !49
  %i.bb = xor <4 x i32> %i.av, %i.ar              ; 2 uses
  %i.bc = load <4 x i32>, ptr %0, align 4, !tbaa !49 ; 2 uses
  %i.bd = lshr <4 x i32> %i.bb, splat (i32 8)
  %i.be = xor <4 x i32> %i.bd, %i.bc
  %i.bf = and <4 x i32> %i.be, splat (i32 16711935) ; 2 uses
  %i.bg = xor <4 x i32> %i.bf, %i.bc
  store <4 x i32> %i.bg, ptr %0, align 4, !tbaa !49
  %i.bh = shl nuw <4 x i32> %i.bf, splat (i32 8)
  %i.bi = xor <4 x i32> %i.bh, %i.bb
  store <4 x i32> %i.bi, ptr %i.ad, align 4, !tbaa !49
  %i.bj = load <4 x i32>, ptr %i.aj, align 4, !tbaa !49 ; 2 uses
  %i.bk = load <4 x i32>, ptr %i.ak, align 4, !tbaa !49 ; 3 uses
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = and <4 x i32> %i.bj, splat (i32 65535)
  %i.bn = xor <4 x i32> %i.bl, %i.bm              ; 3 uses
  %i.bo = shufflevector <4 x i32> %i.av, <4 x i32> %i.bn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bp = shl nuw <4 x i32> %i.bo, splat (i32 16)
  %i.bq = shufflevector <4 x i32> %i.as, <4 x i32> %i.bk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.br = xor <4 x i32> %i.bp, %i.bq
  store <4 x i32> %i.br, ptr %i.ai, align 4, !tbaa !49
  %i.bs = xor <4 x i32> %i.bn, %i.bj              ; 2 uses
  %i.bt = shufflevector <4 x i32> %i.k, <4 x i32> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bu = shl nuw <4 x i32> %i.bt, splat (i32 16)
  %i.bv = shufflevector <4 x i32> %i.h, <4 x i32> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bw = xor <4 x i32> %i.bu, %i.bv              ; 4 uses
  %i.bx = extractelement <4 x i32> %i.bw, i64 0
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !49
  %i.by = extractelement <4 x i32> %i.bw, i64 1
  store i32 %i.by, ptr %i.c, align 4, !tbaa !49
  %i.bz = extractelement <4 x i32> %i.bw, i64 2
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !49
  %i.ca = extractelement <4 x i32> %i.bw, i64 3
  store i32 %i.ca, ptr %i.aq, align 4, !tbaa !49
  %i.cb = load <4 x i32>, ptr %i.m, align 4, !tbaa !49 ; 2 uses
  %i.cc = lshr <4 x i32> %i.bs, splat (i32 8)
  %i.cd = xor <4 x i32> %i.cc, %i.cb
  %i.ce = and <4 x i32> %i.cd, splat (i32 16711935) ; 2 uses
  %i.cf = xor <4 x i32> %i.ce, %i.cb
  store <4 x i32> %i.cf, ptr %i.m, align 4, !tbaa !49
  %i.cg = shl nuw <4 x i32> %i.ce, splat (i32 8)
  %i.ch = xor <4 x i32> %i.cg, %i.bs              ; 4 uses
  %i.ci = extractelement <4 x i32> %i.ch, i64 0
  store i32 %i.ci, ptr %i.aj, align 4, !tbaa !49
  %i.cj = extractelement <4 x i32> %i.ch, i64 1
  store i32 %i.cj, ptr %i.al, align 4, !tbaa !49
  %i.ck = extractelement <4 x i32> %i.ch, i64 2
  store i32 %i.ck, ptr %i.an, align 4, !tbaa !49
  %i.cl = extractelement <4 x i32> %i.ch, i64 3
  store i32 %i.cl, ptr %i.ap, align 4, !tbaa !49
  %i.cm = load <4 x i32>, ptr %i.a, align 4, !tbaa !49 ; 2 uses
  %i.cn = load <4 x i32>, ptr %i.ae, align 4, !tbaa !49 ; 2 uses
  %i.co = lshr <4 x i32> %i.cn, splat (i32 8)
  %i.cp = xor <4 x i32> %i.co, %i.cm
  %i.cq = and <4 x i32> %i.cp, splat (i32 16711935) ; 2 uses
  %i.cr = xor <4 x i32> %i.cq, %i.cm
  store <4 x i32> %i.cr, ptr %i.a, align 4, !tbaa !49
  %i.cs = shl nuw <4 x i32> %i.cq, splat (i32 8)
  %i.ct = xor <4 x i32> %i.cs, %i.cn
  store <4 x i32> %i.ct, ptr %i.ae, align 4, !tbaa !49
  %i.cu = load <4 x i32>, ptr %i.n, align 4, !tbaa !49 ; 2 uses
  %i.cv = load <4 x i32>, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 8)
  %i.cx = xor <4 x i32> %i.cw, %i.cu
  %i.cy = and <4 x i32> %i.cx, splat (i32 16711935) ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.cu
  store <4 x i32> %i.cz, ptr %i.n, align 4, !tbaa !49
  %i.da = shl nuw <4 x i32> %i.cy, splat (i32 8)
  %i.db = xor <4 x i32> %i.da, %i.cv
  store <4 x i32> %i.db, ptr %i.ak, align 4, !tbaa !49
  %i.dc = load <2 x i32>, ptr %i.d, align 4, !tbaa !49
  %i.dd = load <4 x i32>, ptr %i.p, align 4, !tbaa !49 ; 3 uses
  %1 = load <4 x i32>, ptr %i.aj, align 4
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> %1, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.df = lshr <4 x i32> %i.de, splat (i32 4)
  %i.dg = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.di = xor <4 x i32> %i.df, %i.dh
  %i.dj = and <4 x i32> %i.di, splat (i32 252645135) ; 3 uses
  %i.dk = load <4 x i32>, ptr %0, align 4, !tbaa !49 ; 2 uses
  %i.dl = load <2 x i32>, ptr %i.m, align 4, !tbaa !49 ; 2 uses
  %i.dm = lshr <2 x i32> %i.dl, splat (i32 4)
  %i.dn = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.do = xor <2 x i32> %i.dm, %i.dn
  %i.dp = and <2 x i32> %i.do, splat (i32 252645135)
  %i.dq = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.dr = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> %i.dq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dt = xor <4 x i32> %i.ds, %i.dk
  store <4 x i32> %i.dt, ptr %0, align 4, !tbaa !49
  %i.du = shl nuw <4 x i32> %i.dj, <i32 4, i32 4, i32 0, i32 0>
  %i.dv = xor <4 x i32> %i.du, %i.dd
  store <4 x i32> %i.dv, ptr %i.p, align 4, !tbaa !49
  %i.dw = load <2 x i32>, ptr %i.ag, align 4, !tbaa !49
  %i.dx = load <4 x i32>, ptr %i.an, align 4, !tbaa !49 ; 3 uses
  %i.dy = load <4 x i32>, ptr %i.n, align 4
  %i.dz = shufflevector <4 x i32> %i.dx, <4 x i32> %i.dy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ea = lshr <4 x i32> %i.dz, splat (i32 4)
  %i.eb = shufflevector <2 x i32> %i.dw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> %i.dx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ed = xor <4 x i32> %i.ea, %i.ec
  %i.ee = and <4 x i32> %i.ed, splat (i32 252645135) ; 3 uses
  %i.ef = load <4 x i32>, ptr %i.ag, align 4, !tbaa !49
  %i.eg = shufflevector <4 x i32> %i.ee, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eh = shl nuw <4 x i32> %i.eg, <i32 0, i32 0, i32 4, i32 4>
  %i.ei = xor <4 x i32> %i.eh, %i.ef
  store <4 x i32> %i.ei, ptr %i.ag, align 4, !tbaa !49
  %i.ej = shl nuw <4 x i32> %i.ee, <i32 4, i32 4, i32 0, i32 0>
  %i.ek = xor <4 x i32> %i.ej, %i.dx
  store <4 x i32> %i.ek, ptr %i.an, align 4, !tbaa !49
  %i.el = load <2 x i32>, ptr %i.e, align 4, !tbaa !49
  %i.em = load <4 x i32>, ptr %i.q, align 4, !tbaa !49 ; 3 uses
  %2 = load <4 x i32>, ptr %i.ak, align 4
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = lshr <4 x i32> %i.en, splat (i32 4)
  %i.ep = shufflevector <2 x i32> %i.el, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x i32> %i.ep, <4 x i32> %i.em, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.er = xor <4 x i32> %i.eo, %i.eq
  %i.es = and <4 x i32> %i.er, splat (i32 252645135) ; 3 uses
  %i.et = load <4 x i32>, ptr %i.e, align 4, !tbaa !49
  %i.eu = shufflevector <4 x i32> %i.es, <4 x i32> %i.ee, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ev = shl nuw <4 x i32> %i.eu, <i32 0, i32 0, i32 4, i32 4>
  %i.ew = xor <4 x i32> %i.ev, %i.et
  store <4 x i32> %i.ew, ptr %i.e, align 4, !tbaa !49
  %i.ex = shl nuw <4 x i32> %i.es, <i32 4, i32 4, i32 0, i32 0>
  %i.ey = xor <4 x i32> %i.ex, %i.em
  store <4 x i32> %i.ey, ptr %i.q, align 4, !tbaa !49
  %i.ez = load <4 x i32>, ptr %i.ah, align 4, !tbaa !49 ; 2 uses
  %i.fa = load <2 x i32>, ptr %i.ao, align 4, !tbaa !49 ; 2 uses
  %i.fb = lshr <2 x i32> %i.fa, splat (i32 4)
  %i.fc = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fd = xor <2 x i32> %i.fb, %i.fc
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> %i.es, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fg = and <4 x i32> %i.ff, <i32 252645135, i32 252645135, i32 poison, i32 poison>
  %i.fh = shl nuw <4 x i32> %i.ff, <i32 252645135, i32 252645135, i32 4, i32 4>
  %i.fi = shufflevector <4 x i32> %i.fg, <4 x i32> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fj = xor <4 x i32> %i.fi, %i.ez
  store <4 x i32> %i.fj, ptr %i.ah, align 4, !tbaa !49
  %i.fk = shufflevector <4 x i32> %i.dr, <4 x i32> %i.fi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fl = shl nuw <4 x i32> %i.fk, splat (i32 4)
  %i.fm = shufflevector <2 x i32> %i.dl, <2 x i32> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = xor <4 x i32> %i.fl, %i.fm              ; 4 uses
  %i.fo = extractelement <4 x i32> %i.fn, i64 0
  store i32 %i.fo, ptr %i.m, align 4, !tbaa !49
  %i.fp = extractelement <4 x i32> %i.fn, i64 1
  store i32 %i.fp, ptr %i.o, align 4, !tbaa !49
  %i.fq = extractelement <4 x i32> %i.fn, i64 2
  store i32 %i.fq, ptr %i.ao, align 4, !tbaa !49
  %i.fr = extractelement <4 x i32> %i.fn, i64 3
  store i32 %i.fr, ptr %i.aq, align 4, !tbaa !49
  %i.fs = load <4 x i32>, ptr %0, align 4, !tbaa !49 ; 3 uses
  %i.ft = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.fu = lshr <2 x i32> %i.ft, splat (i32 2)
  %i.fv = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.fw = xor <2 x i32> %i.fu, %i.fv
  %i.fx = and <2 x i32> %i.fw, splat (i32 858993459) ; 2 uses
  %i.fy = shl nuw <2 x i32> %i.fx, splat (i32 2)
  %i.fz = shufflevector <2 x i32> %i.fx, <2 x i32> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ga = xor <4 x i32> %i.fz, %i.fs
  store <4 x i32> %i.ga, ptr %0, align 4, !tbaa !49
  %i.gb = load <4 x i32>, ptr %i.m, align 4, !tbaa !49 ; 3 uses
  %i.gc = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gd = lshr <2 x i32> %i.gc, splat (i32 2)
  %i.ge = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = xor <2 x i32> %i.gd, %i.ge
  %i.gg = and <2 x i32> %i.gf, splat (i32 858993459) ; 2 uses
  %i.gh = shl nuw <2 x i32> %i.gg, splat (i32 2)
  %i.gi = shufflevector <2 x i32> %i.gg, <2 x i32> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gj = xor <4 x i32> %i.gi, %i.gb
  store <4 x i32> %i.gj, ptr %i.m, align 4, !tbaa !49
  %i.gk = load <4 x i32>, ptr %i.ad, align 4, !tbaa !49 ; 3 uses
  %i.gl = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gm = lshr <2 x i32> %i.gl, splat (i32 2)
  %i.gn = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.go = xor <2 x i32> %i.gm, %i.gn
  %i.gp = and <2 x i32> %i.go, splat (i32 858993459) ; 2 uses
  %i.gq = shl nuw <2 x i32> %i.gp, splat (i32 2)
  %i.gr = shufflevector <2 x i32> %i.gp, <2 x i32> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gs = xor <4 x i32> %i.gr, %i.gk
  store <4 x i32> %i.gs, ptr %i.ad, align 4, !tbaa !49
  %i.gt = load <4 x i32>, ptr %i.aj, align 4, !tbaa !49 ; 3 uses
  %i.gu = shufflevector <4 x i32> %i.gt, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.gv = lshr <2 x i32> %i.gu, splat (i32 2)
  %i.gw = shufflevector <4 x i32> %i.gt, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.gx = xor <2 x i32> %i.gv, %i.gw
  %i.gy = and <2 x i32> %i.gx, splat (i32 858993459) ; 2 uses
  %i.gz = shl nuw <2 x i32> %i.gy, splat (i32 2)
  %i.ha = shufflevector <2 x i32> %i.gy, <2 x i32> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = xor <4 x i32> %i.ha, %i.gt
  store <4 x i32> %i.hb, ptr %i.aj, align 4, !tbaa !49
  %i.hc = load <4 x i32>, ptr %i.a, align 4, !tbaa !49 ; 3 uses
  %i.hd = shufflevector <4 x i32> %i.hc, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.he = lshr <2 x i32> %i.hd, splat (i32 2)
  %i.hf = shufflevector <4 x i32> %i.hc, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hg = xor <2 x i32> %i.he, %i.hf
  %i.hh = and <2 x i32> %i.hg, splat (i32 858993459) ; 2 uses
  %i.hi = shl nuw <2 x i32> %i.hh, splat (i32 2)
  %i.hj = shufflevector <2 x i32> %i.hh, <2 x i32> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hk = xor <4 x i32> %i.hj, %i.hc
  store <4 x i32> %i.hk, ptr %i.a, align 4, !tbaa !49
  %i.hl = load <4 x i32>, ptr %i.n, align 4, !tbaa !49 ; 3 uses
  %i.hm = shufflevector <4 x i32> %i.hl, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.hn = lshr <2 x i32> %i.hm, splat (i32 2)
  %i.ho = shufflevector <4 x i32> %i.hl, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hp = xor <2 x i32> %i.hn, %i.ho
  %i.hq = and <2 x i32> %i.hp, splat (i32 858993459) ; 2 uses
  %i.hr = shl nuw <2 x i32> %i.hq, splat (i32 2)
  %i.hs = shufflevector <2 x i32> %i.hq, <2 x i32> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ht = xor <4 x i32> %i.hs, %i.hl
  store <4 x i32> %i.ht, ptr %i.n, align 4, !tbaa !49
  %i.hu = load <4 x i32>, ptr %i.ae, align 4, !tbaa !49 ; 3 uses
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.hw = lshr <2 x i32> %i.hv, splat (i32 2)
  %i.hx = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.hy = xor <2 x i32> %i.hw, %i.hx
  %i.hz = and <2 x i32> %i.hy, splat (i32 858993459) ; 2 uses
  %i.ia = shl nuw <2 x i32> %i.hz, splat (i32 2)
  %i.ib = shufflevector <2 x i32> %i.hz, <2 x i32> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ic = xor <4 x i32> %i.ib, %i.hu
  store <4 x i32> %i.ic, ptr %i.ae, align 4, !tbaa !49
  %i.id = load <4 x i32>, ptr %i.ak, align 4, !tbaa !49 ; 3 uses
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.if = lshr <2 x i32> %i.ie, splat (i32 2)
  %i.ig = shufflevector <4 x i32> %i.id, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ih = xor <2 x i32> %i.if, %i.ig
  %i.ii = and <2 x i32> %i.ih, splat (i32 858993459) ; 2 uses
  %i.ij = shl nuw <2 x i32> %i.ii, splat (i32 2)
  %i.ik = shufflevector <2 x i32> %i.ii, <2 x i32> %i.ij, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.il = xor <4 x i32> %i.ik, %i.id
  store <4 x i32> %i.il, ptr %i.ak, align 4, !tbaa !49
  %i.im = load i32, ptr %0, align 4, !tbaa !49    ; 2 uses
  %i.in = load i32, ptr %i.af, align 4, !tbaa !49 ; 2 uses
  %i.io = load <8 x i32>, ptr %i.b, align 4, !tbaa !49 ; 3 uses
  %i.ip = insertelement <8 x i32> poison, i32 %i.in, i64 0
  %i.iq = shufflevector <8 x i32> %i.io, <8 x i32> %i.ip, <8 x i32> <i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8>
  %i.ir = lshr <8 x i32> %i.iq, splat (i32 1)
  %i.is = insertelement <8 x i32> poison, i32 %i.im, i64 0
  %i.it = shufflevector <8 x i32> %i.is, <8 x i32> %i.io, <8 x i32> <i32 0, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15>
  %i.iu = xor <8 x i32> %i.ir, %i.it
  %i.iv = and <8 x i32> %i.iu, splat (i32 1431655765) ; 3 uses
  %i.iw = extractelement <8 x i32> %i.iv, i64 0
  %i.ix = xor i32 %i.iw, %i.im
  store i32 %i.ix, ptr %0, align 4, !tbaa !49
  %i.iy = shl nuw <8 x i32> %i.iv, <i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0>
  %i.iz = xor <8 x i32> %i.iy, %i.io
  store <8 x i32> %i.iz, ptr %i.b, align 4, !tbaa !49
  %i.ja = extractelement <8 x i32> %i.iv, i64 7
  %i.jb = shl nuw i32 %i.ja, 1
  %i.jc = xor i32 %i.jb, %i.in
  store i32 %i.jc, ptr %i.af, align 4, !tbaa !49
  %i.jd = load <8 x i32>, ptr %i.ag, align 4, !tbaa !49 ; 3 uses
  %i.je = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jf = lshr <4 x i32> %i.je, splat (i32 1)
  %i.jg = shufflevector <8 x i32> %i.jd, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jh = xor <4 x i32> %i.jf, %i.jg
  %i.ji = and <4 x i32> %i.jh, splat (i32 1431655765) ; 2 uses
  %i.jj = shl nuw <4 x i32> %i.ji, splat (i32 1)
  %i.jk = shufflevector <4 x i32> %i.ji, <4 x i32> %i.jj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.jl = xor <8 x i32> %i.jk, %i.jd
  store <8 x i32> %i.jl, ptr %i.ag, align 4, !tbaa !49
  %i.jm = load <8 x i32>, ptr %i.e, align 4, !tbaa !49 ; 3 uses
  %i.jn = shufflevector <8 x i32> %i.jm, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jo = lshr <4 x i32> %i.jn, splat (i32 1)
  %i.jp = shufflevector <8 x i32> %i.jm, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jq = xor <4 x i32> %i.jo, %i.jp
  %i.jr = and <4 x i32> %i.jq, splat (i32 1431655765) ; 2 uses
  %i.js = shl nuw <4 x i32> %i.jr, splat (i32 1)
  %i.jt = shufflevector <4 x i32> %i.jr, <4 x i32> %i.js, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ju = xor <8 x i32> %i.jt, %i.jm
  store <8 x i32> %i.ju, ptr %i.e, align 4, !tbaa !49
  %i.jv = load i32, ptr %i.ah, align 4, !tbaa !49 ; 2 uses
  %i.jw = load i32, ptr %i.ai, align 4, !tbaa !49 ; 2 uses
  %i.jx = lshr i32 %i.jw, 1
  %i.jy = xor i32 %i.jx, %i.jv
  %i.jz = and i32 %i.jy, 1431655765               ; 2 uses
  %i.ka = xor i32 %i.jz, %i.jv
  store i32 %i.ka, ptr %i.ah, align 4, !tbaa !49
  %i.kb = shl nuw i32 %i.jz, 1
  %i.kc = xor i32 %i.kb, %i.jw
  store i32 %i.kc, ptr %i.ai, align 4, !tbaa !49
  %i.kd = load i32, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.ke = load i32, ptr %i.am, align 4, !tbaa !49 ; 2 uses
  %i.kf = lshr i32 %i.ke, 1
  %i.kg = xor i32 %i.kf, %i.kd
  %i.kh = and i32 %i.kg, 1431655765               ; 2 uses
  %i.ki = xor i32 %i.kh, %i.kd
  store i32 %i.ki, ptr %i.ak, align 4, !tbaa !49
  %i.kj = shl nuw i32 %i.kh, 1
  %i.kk = xor i32 %i.kj, %i.ke
  store i32 %i.kk, ptr %i.am, align 4, !tbaa !49
  %i.kl = load i32, ptr %i.ao, align 4, !tbaa !49 ; 2 uses
  %i.km = load i32, ptr %i.aq, align 4, !tbaa !49 ; 2 uses
  %i.kn = lshr i32 %i.km, 1
  %i.ko = xor i32 %i.kn, %i.kl
  %i.kp = and i32 %i.ko, 1431655765               ; 2 uses
  %i.kq = xor i32 %i.kp, %i.kl
  store i32 %i.kq, ptr %i.ao, align 4, !tbaa !49
  %i.kr = shl nuw i32 %i.kp, 1
  %i.ks = xor i32 %i.kr, %i.km
  store i32 %i.ks, ptr %i.aq, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @transpose64(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43   ; 2 uses
end_hunk_0
