Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86_avx512?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %.098100, i64 24
  %i.df = load i16, ptr %i.de, align 2, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %.085113, i64 2
  store i16 %i.df, ptr %.085113, align 2, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %.098100, i64 26
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !49
  %i.dj = getelementptr inbounds nuw i8, ptr %.084114, i64 2
  store i16 %i.di, ptr %.084114, align 2, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %.098100, i64 28
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %.083115, i64 2
  store i16 %i.dl, ptr %.083115, align 2, !tbaa !49
  %i.dn = getelementptr inbounds nuw i8, ptr %.098100, i64 30
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %.082116, i64 2
  store i16 %i.do, ptr %.082116, align 2, !tbaa !49
  %i.dq = getelementptr inbounds nuw i8, ptr %.098100, i64 32
  %i.dr = add nuw nsw i32 %.0117, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !186

._crit_edge122.split:                             ; preds = %._crit_edge, %.lr.ph121, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge122.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !20     ; 23 uses
  %i.s = load i32, ptr %5, align 4, !tbaa !25     ; 8 uses
  %factor.op.mul75 = shl i32 %i.s, 3
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.u = sext i32 %i.k to i64                     ; 5 uses
  %i.v = zext nneg i32 %i.s to i64                ; 23 uses
  %i.w = add nsw i32 %i.j, 1
  %i.x = add nsw i32 %i.s, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1                  ; 8 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2
  %i.ab = mul i32 %i.k, %i.s
  %i.ac = shl i32 %i.ab, 3
  %i.ad = shl i32 %i.s, 3
  %i.ae = shl nsw i64 %i.u, 3                     ; 7 uses
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = mul i64 %i.af, %i.v
  %i.ah = shl i64 %i.ag, 1
  %scevgep83 = getelementptr i8, ptr %i.r, i64 %i.ah ; 2 uses
  %i.ai = shl nsw i64 %i.u, 4                     ; 7 uses
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4                ; 7 uses
  %i.am = add nsw i64 %i.ai, %i.al
  %i.an = or disjoint i64 %i.am, 2
  %i.ao = mul i64 %i.an, %i.v
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.z   ; 2 uses
  %i.ar = or disjoint i64 %i.ae, 2
  %i.as = mul i64 %i.ar, %i.v
  %i.at = shl i64 %i.as, 1
  %scevgep85 = getelementptr i8, ptr %i.r, i64 %i.at ; 3 uses
  %i.au = add nsw i64 %i.ai, %i.al
  %i.av = or disjoint i64 %i.au, 4
  %i.aw = mul i64 %i.av, %i.v
  %i.ax = getelementptr i8, ptr %i.r, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.z   ; 4 uses
  %i.az = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.ba = insertelement <2 x ptr> %i.az, ptr %i.ay, i64 1
  %i.bb = getelementptr i8, <2 x ptr> %i.ba, i64 2 ; 2 uses
  %i.bc = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep86 = getelementptr i8, ptr %i.ay, i64 2
  %i.bd = or disjoint i64 %i.ae, 3
  %i.be = mul i64 %i.bd, %i.v
  %i.bf = shl i64 %i.be, 1
  %scevgep87 = getelementptr i8, ptr %i.r, i64 %i.bf ; 4 uses
  %i.bg = add nsw i64 %i.ai, %i.al
  %i.bh = or disjoint i64 %i.bg, 6
  %i.bi = mul i64 %i.bh, %i.v
  %i.bj = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.z   ; 3 uses
  %i.bl = or disjoint i64 %i.ae, 4
  %i.bm = mul i64 %i.bl, %i.v
  %i.bn = shl i64 %i.bm, 1
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.bn ; 5 uses
  %i.bo = add nsw i64 %i.ai, %i.al
  %i.bp = or disjoint i64 %i.bo, 8
  %i.bq = mul i64 %i.bp, %i.v
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.z   ; 4 uses
  %i.bt = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %i.bs, i64 1
  %i.bv = getelementptr i8, <2 x ptr> %i.bu, i64 2
  %i.bw = shufflevector <2 x ptr> %i.bv, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bx = insertelement <4 x ptr> poison, ptr %i.aq, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.ay, i64 1
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.bk, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %i.bs, i64 3
  %i.cb = getelementptr i8, <4 x ptr> %i.ca, i64 2
  %i.cc = or disjoint i64 %i.ae, 5
  %i.cd = mul i64 %i.cc, %i.v
  %i.ce = shl i64 %i.cd, 1
  %scevgep91 = getelementptr i8, ptr %i.r, i64 %i.ce ; 4 uses
  %i.cf = add nsw i64 %i.ai, %i.al
  %i.cg = or disjoint i64 %i.cf, 10
  %i.ch = mul i64 %i.cg, %i.v
  %i.ci = getelementptr i8, ptr %i.r, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.z   ; 3 uses
  %scevgep92 = getelementptr i8, ptr %i.cj, i64 2
  %i.ck = or disjoint i64 %i.ae, 6
  %i.cl = mul i64 %i.ck, %i.v
  %i.cm = shl i64 %i.cl, 1
  %scevgep93 = getelementptr i8, ptr %i.r, i64 %i.cm ; 4 uses
  %i.cn = add nsw i64 %i.ai, %i.al
  %i.co = or disjoint i64 %i.cn, 12
  %i.cp = mul i64 %i.co, %i.v
  %i.cq = getelementptr i8, ptr %i.r, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.z   ; 3 uses
  %scevgep94 = getelementptr i8, ptr %i.cr, i64 2
  %i.cs = or disjoint i64 %i.ae, 7
  %i.ct = mul i64 %i.cs, %i.v
  %i.cu = shl i64 %i.ct, 1
  %scevgep95 = getelementptr i8, ptr %i.r, i64 %i.cu ; 4 uses
  %i.cv = add nsw i64 %i.ai, %i.al
  %i.cw = or disjoint i64 %i.cv, 14
  %i.cx = mul i64 %i.cw, %i.v
  %i.cy = getelementptr i8, ptr %i.r, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.z   ; 3 uses
  %scevgep96 = getelementptr i8, ptr %i.cz, i64 2
  %i.da = mul i64 %i.q, %i.o
  %i.db = mul i64 %i.da, %i.u
  %scevgep97 = getelementptr i8, ptr %i.l, i64 %i.db ; 5 uses
  %i.dc = add nsw i64 %i.u, %i.ak
  %i.dd = mul i64 %i.q, %i.dc
  %i.de = mul i64 %i.dd, %i.o
  %i.df = shl nuw nsw i64 %i.y, 4
  %i.dg = getelementptr i8, ptr %i.l, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.df  ; 3 uses
  %i.di = insertelement <8 x ptr> poison, ptr %i.bs, i64 0
  %i.dj = insertelement <8 x ptr> %i.di, ptr %i.cj, i64 1
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.cr, i64 2
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %i.cz, i64 3
  %i.dm = insertelement <8 x ptr> %i.dl, ptr %i.dh, i64 4
  %i.dn = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.do = getelementptr i8, <8 x ptr> %i.dn, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.dp = insertelement <8 x ptr> poison, ptr %i.cz, i64 0
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %i.dh, i64 1
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %i.ay, i64 2
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %i.bk, i64 3
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %i.bs, i64 4
  %i.du = insertelement <8 x ptr> %i.dt, ptr %i.cj, i64 5
  %i.dv = insertelement <8 x ptr> %i.du, ptr %i.cr, i64 6
  %i.dw = shufflevector <8 x ptr> %i.dv, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.dx = getelementptr i8, <8 x ptr> %i.dw, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep98 = getelementptr i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dy = mul i64 %i.q, %i.o                      ; 3 uses
  %i.dz = insertelement <8 x ptr> poison, ptr %scevgep87, i64 0
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %scevgep89, i64 1
  %i.eb = shufflevector <8 x ptr> %i.ea, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ec = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ed = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ee = insertelement <8 x ptr> poison, ptr %scevgep89, i64 0
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %scevgep91, i64 1 ; 2 uses
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep93, i64 2 ; 2 uses
  %i.eh = insertelement <8 x ptr> %i.eg, ptr %scevgep95, i64 3
  %i.ei = insertelement <8 x ptr> %i.eh, ptr %scevgep97, i64 4 ; 3 uses
  %i.ej = shufflevector <8 x ptr> %i.ei, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.ek = shufflevector <8 x ptr> %i.ei, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.el = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.em = shufflevector <8 x ptr> %i.ei, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.en = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eo = shufflevector <8 x ptr> %i.ef, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ep = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep83, i64 0
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep85, i64 1 ; 3 uses
  %i.es = shufflevector <4 x ptr> %i.er, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.et = shufflevector <8 x ptr> %i.dx, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.eu = shufflevector <4 x ptr> %i.er, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = shufflevector <8 x ptr> %i.dx, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.ew = insertelement <8 x ptr> poison, ptr %scevgep95, i64 0
  %i.ex = insertelement <8 x ptr> %i.ew, ptr %scevgep97, i64 1
  %i.ey = insertelement <8 x ptr> %i.ex, ptr %scevgep85, i64 2
  %i.ez = insertelement <8 x ptr> %i.ey, ptr %scevgep87, i64 3
  %i.fa = insertelement <8 x ptr> %i.ez, ptr %scevgep89, i64 4
  %i.fb = insertelement <8 x ptr> %i.fa, ptr %scevgep91, i64 5
  %i.fc = insertelement <8 x ptr> %i.fb, ptr %scevgep93, i64 6
  %i.fd = shufflevector <8 x ptr> %i.fc, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.fe = insertelement <4 x ptr> poison, ptr %scevgep97, i64 0
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %scevgep87, i64 1
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %scevgep89, i64 2
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep91, i64 3
  %i.fi = insertelement <2 x ptr> poison, ptr %scevgep93, i64 0
  %i.fj = insertelement <2 x ptr> %i.fi, ptr %scevgep95, i64 1
  %i.fk = shufflevector <8 x ptr> %i.dx, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fl = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.fm = insertelement <4 x ptr> %i.er, ptr %scevgep87, i64 2
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep89, i64 3
  %min.iters.check = icmp ult i32 %i.s, 48
  %i.fo = insertelement <8 x ptr> poison, ptr %scevgep83, i64 1
  %i.fp = icmp ult <4 x ptr> %i.es, %i.et
  %i.fq = icmp ult <4 x ptr> %i.fh, %i.bc
  %i.fr = icmp ult <2 x ptr> %i.eu, %i.ev
  %i.fs = icmp ult <2 x ptr> %i.fj, %i.fk
  %bound0175 = icmp ult ptr %scevgep85, %scevgep98
  %bound1176 = icmp ult ptr %scevgep97, %scevgep86
  %stride.check178 = icmp slt i64 %i.dy, 0
  %6 = insertelement <16 x i1> poison, i1 %bound0175, i64 14
  %7 = insertelement <16 x i1> %6, i1 %stride.check178, i64 15
  %8 = shufflevector <4 x i1> %i.fp, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <2 x i1> %i.fr, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1176, i64 14
  %11 = shufflevector <4 x i1> %i.fq, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <2 x i1> %i.fs, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = icmp ult <8 x ptr> %i.eb, %i.do
  %i.fu = icmp ult <8 x ptr> %i.ej, %i.bw
  %i.fv = icmp ult <4 x ptr> %i.eo, %i.ec
  %i.fw = icmp ult <4 x ptr> %i.ek, %i.el
  %stride.check216 = icmp slt i64 %i.dy, 0
  %i.fx = icmp ult <2 x ptr> %i.ep, %i.ed
  %i.fy = icmp ult <2 x ptr> %i.em, %i.en
  %bound0240 = icmp ult ptr %scevgep95, %scevgep98
  %bound1241 = icmp ult ptr %scevgep97, %scevgep96
  %stride.check = icmp slt i64 %i.dy, 0
  %i.fz = insertelement <16 x i1> poison, i1 %bound0240, i64 14
  %i.ga = insertelement <16 x i1> %i.fz, i1 %stride.check, i64 15
  %i.gb = shufflevector <8 x i1> %i.ft, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <16 x i1> %i.gb, <16 x i1> %i.ga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gd = shufflevector <4 x i1> %i.fv, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <16 x i1> %i.gc, <16 x i1> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gf = shufflevector <2 x i1> %i.fx, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <16 x i1> %i.ge, <16 x i1> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gh = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1241, i64 14
  %i.gi = shufflevector <8 x i1> %i.fu, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i1> %i.gi, <16 x i1> %i.gh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gk = shufflevector <4 x i1> %i.fw, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <16 x i1> %i.gj, <16 x i1> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gm = shufflevector <2 x i1> %i.fy, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <16 x i1> %i.gl, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.go = and <16 x i1> %i.gg, %i.gn
  %i.gp = bitcast <16 x i1> %i.go to i16
  %i.gq = icmp ne i16 %i.gp, 0
  %op.rdx300 = or i1 %i.gq, %stride.check216
  %n.vec = and i64 %i.v, 2147483640               ; 5 uses
  %i.gr = trunc nuw nsw i64 %n.vec to i32
  %i.gs = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.gt = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.gv = trunc i64 %indvars.iv to i32
  %.reass76 = mul i32 %factor.op.mul75, %i.gv
  %i.gw = sext i32 %.reass76 to i64
  %i.gx = getelementptr [2 x i8], ptr %i.r, i64 %i.gw ; 8 uses
  %i.gy = shl nsw i64 %indvars.iv, 3              ; 7 uses
  %i.gz = or disjoint i64 %i.gy, 1
  %i.ha = mul nsw i64 %i.gz, %i.v
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ha ; 4 uses
  %i.hc = or disjoint i64 %i.gy, 2
  %i.hd = mul nsw i64 %i.hc, %i.v
  %i.he = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hd ; 4 uses
  %i.hf = or disjoint i64 %i.gy, 3
  %i.hg = mul nsw i64 %i.hf, %i.v
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hg ; 4 uses
  %i.hi = or disjoint i64 %i.gy, 4
  %i.hj = mul nsw i64 %i.hi, %i.v
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hj ; 4 uses
  %i.hl = or disjoint i64 %i.gy, 5
  %i.hm = mul nsw i64 %i.hl, %i.v
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hm ; 4 uses
  %i.ho = or disjoint i64 %i.gy, 6
  %i.hp = mul nsw i64 %i.ho, %i.v
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hp ; 4 uses
  %i.hr = or disjoint i64 %i.gy, 7
  %i.hs = mul nsw i64 %i.hr, %i.v
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hs ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hu = mul i32 %i.ad, %indvar
  %i.hv = add i32 %i.ac, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 1
  %scevgep82 = getelementptr i8, ptr %scevgep, i64 %i.hx ; 4 uses
  %i.hy = insertelement <4 x ptr> poison, ptr %i.gx, i64 0
  %i.hz = shufflevector <4 x ptr> %i.hy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ia = icmp ult <4 x ptr> %i.hz, %i.cb
  %i.ib = insertelement <4 x ptr> poison, ptr %scevgep82, i64 0
  %i.ic = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.id = icmp ult <4 x ptr> %i.fn, %i.ic
  %i.ie = and <4 x i1> %i.ia, %i.id
  %bound0110 = icmp ult ptr %i.gx, %scevgep92
  %bound1111 = icmp ult ptr %scevgep91, %scevgep82
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0114 = icmp ult ptr %i.gx, %scevgep94
  %bound1115 = icmp ult ptr %scevgep93, %scevgep82
  %found.conflict116 = and i1 %bound0114, %bound1115
  %i.if = insertelement <8 x ptr> %i.fo, ptr %i.gx, i64 0
  %i.ig = shufflevector <8 x ptr> %i.if, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ih = icmp ult <8 x ptr> %i.ig, %i.dx
  %i.ii = insertelement <2 x ptr> %i.fl, ptr %scevgep82, i64 0
  %i.ij = shufflevector <2 x ptr> %i.ii, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ik = icmp ult <8 x ptr> %i.fd, %i.ij
  %i.il = shufflevector <8 x i1> %i.ih, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.im = shufflevector <16 x i1> %i.il, <16 x i1> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.in = shufflevector <16 x i1> %i.im, <16 x i1> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.io = shufflevector <16 x i1> %i.in, <16 x i1> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ip = shufflevector <8 x i1> %i.ik, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <16 x i1> %i.ip, <16 x i1> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ir = shufflevector <16 x i1> %i.iq, <16 x i1> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.is = shufflevector <16 x i1> %i.ir, <16 x i1> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.it = and <16 x i1> %i.io, %i.is
  %i.iu = bitcast <16 x i1> %i.it to i16
  %i.iv = icmp ne i16 %i.iu, 0
  %i.iw = bitcast <4 x i1> %i.ie to i4
  %i.ix = icmp ne i4 %i.iw, 0
  %op.rdx = or i1 %i.ix, %found.conflict112
  %op.rdx299 = or i1 %found.conflict116, %i.iv
  %op.rdx301 = or i1 %op.rdx, %op.rdx299
  %op.rdx302 = or i1 %op.rdx301, %op.rdx300
  br i1 %op.rdx302, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iy = getelementptr i8, ptr %i.ht, i64 %i.gs
  %i.iz = getelementptr i8, ptr %i.hq, i64 %i.gs
  %i.ja = getelementptr i8, ptr %i.hn, i64 %i.gs
  %i.jb = getelementptr i8, ptr %i.hk, i64 %i.gs
  %i.jc = getelementptr i8, ptr %i.hh, i64 %i.gs
  %i.jd = getelementptr i8, ptr %i.he, i64 %i.gs
  %i.je = getelementptr i8, ptr %i.hb, i64 %i.gs
  %i.jf = getelementptr i8, ptr %i.gx, i64 %i.gs
  %i.jg = getelementptr i8, ptr %i.gu, i64 %i.gt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jh = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ht, i64 %i.jh
  %next.gep245.a = getelementptr i8, ptr %i.hq, i64 %i.jh
  %next.gep246 = getelementptr i8, ptr %i.hn, i64 %i.jh
  %next.gep247 = getelementptr i8, ptr %i.hk, i64 %i.jh
  %next.gep248 = getelementptr i8, ptr %i.hh, i64 %i.jh
  %next.gep249 = getelementptr i8, ptr %i.he, i64 %i.jh
  %next.gep250 = getelementptr i8, ptr %i.hb, i64 %i.jh
  %next.gep251 = getelementptr i8, ptr %i.gx, i64 %i.jh
  %i.ji = shl i64 %index, 4
  %next.gep252 = getelementptr i8, ptr %i.gu, i64 %i.ji
  %wide.vec = load <64 x i16>, ptr %next.gep252, align 2, !tbaa !49, !alias.scope !199 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec253 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec254 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec255 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec256 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec257 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec258 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec259 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep251, align 2, !tbaa !49, !alias.scope !200, !noalias !201
  store <8 x i16> %strided.vec253, ptr %next.gep250, align 2, !tbaa !49, !alias.scope !202, !noalias !203
  store <8 x i16> %strided.vec254, ptr %next.gep249, align 2, !tbaa !49, !alias.scope !204, !noalias !205
  store <8 x i16> %strided.vec255, ptr %next.gep248, align 2, !tbaa !49, !alias.scope !206, !noalias !207
  store <8 x i16> %strided.vec256, ptr %next.gep247, align 2, !tbaa !49, !alias.scope !208, !noalias !209
  store <8 x i16> %strided.vec257, ptr %next.gep246, align 2, !tbaa !49, !alias.scope !210, !noalias !211
  store <8 x i16> %strided.vec258, ptr %next.gep245.a, align 2, !tbaa !49, !alias.scope !212, !noalias !213
  store <8 x i16> %strided.vec259, ptr %next.gep, align 2, !tbaa !49, !alias.scope !214, !noalias !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.069.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.gr, %middle.block ]
  %.05068.ph = phi ptr [ %i.ht, %vector.memcheck ], [ %i.ht, %.lr.ph ], [ %i.iy, %middle.block ]
  %.05167.ph = phi ptr [ %i.hq, %vector.memcheck ], [ %i.hq, %.lr.ph ], [ %i.iz, %middle.block ]
  %.05266.ph = phi ptr [ %i.hn, %vector.memcheck ], [ %i.hn, %.lr.ph ], [ %i.ja, %middle.block ]
  %.05365.ph = phi ptr [ %i.hk, %vector.memcheck ], [ %i.hk, %.lr.ph ], [ %i.jb, %middle.block ]
  %.05464.ph = phi ptr [ %i.hh, %vector.memcheck ], [ %i.hh, %.lr.ph ], [ %i.jc, %middle.block ]
  %.05563.ph = phi ptr [ %i.he, %vector.memcheck ], [ %i.he, %.lr.ph ], [ %i.jd, %middle.block ]
  %.05662.ph = phi ptr [ %i.hb, %vector.memcheck ], [ %i.hb, %.lr.ph ], [ %i.je, %middle.block ]
  %.05761.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph ], [ %i.jf, %middle.block ]
  %.05860.ph = phi ptr [ %i.gu, %vector.memcheck ], [ %i.gu, %.lr.ph ], [ %i.jg, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond78.not = icmp eq i32 %i.w, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond78.not, label %._crit_edge74.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.069 = phi i32 [ %i.ki, %scalar.ph ], [ %.069.ph, %scalar.ph.preheader ]
  %.05068 = phi ptr [ %i.kg, %scalar.ph ], [ %.05068.ph, %scalar.ph.preheader ] ; 2 uses
  %.05167 = phi ptr [ %i.kd, %scalar.ph ], [ %.05167.ph, %scalar.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.ka, %scalar.ph ], [ %.05266.ph, %scalar.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.jx, %scalar.ph ], [ %.05365.ph, %scalar.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.ju, %scalar.ph ], [ %.05464.ph, %scalar.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.jr, %scalar.ph ], [ %.05563.ph, %scalar.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.jo, %scalar.ph ], [ %.05662.ph, %scalar.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.jl, %scalar.ph ], [ %.05761.ph, %scalar.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.kh, %scalar.ph ], [ %.05860.ph, %scalar.ph.preheader ] ; 9 uses
  %i.jk = load i16, ptr %.05860, align 2, !tbaa !49
  %i.jl = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  store i16 %i.jk, ptr %.05761, align 2, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  store i16 %i.jn, ptr %.05662, align 2, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !49
  %i.jr = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  store i16 %i.jq, ptr %.05563, align 2, !tbaa !49
  %i.js = getelementptr inbounds nuw i8, ptr %.05860, i64 6
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !49
  %i.ju = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  store i16 %i.jt, ptr %.05464, align 2, !tbaa !49
  %i.jv = getelementptr inbounds nuw i8, ptr %.05860, i64 8
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !49
  %i.jx = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  store i16 %i.jw, ptr %.05365, align 2, !tbaa !49
  %i.jy = getelementptr inbounds nuw i8, ptr %.05860, i64 10
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !49
  %i.ka = getelementptr inbounds nuw i8, ptr %.05266, i64 2
  store i16 %i.jz, ptr %.05266, align 2, !tbaa !49
  %i.kb = getelementptr inbounds nuw i8, ptr %.05860, i64 12
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !49
  %i.kd = getelementptr inbounds nuw i8, ptr %.05167, i64 2
  store i16 %i.kc, ptr %.05167, align 2, !tbaa !49
  %i.ke = getelementptr inbounds nuw i8, ptr %.05860, i64 14
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !49
  %i.kg = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.kf, ptr %.05068, align 2, !tbaa !49
  %i.kh = getelementptr inbounds nuw i8, ptr %.05860, i64 16
  %i.ki = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ki, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !198

._crit_edge74.split:                              ; preds = %._crit_edge, %.lr.ph73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge74.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not46 = icmp sgt i32 %i.k, %i.j
  br i1 %.not46, label %._crit_edge50.split, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !20     ; 11 uses
  %i.s = load i32, ptr %5, align 4, !tbaa !25     ; 11 uses
  %factor.op.mul51 = shl i32 %i.s, 2
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge50.split

.lr.ph.preheader:                                 ; preds = %.lr.ph49
  %i.u = sext i32 %i.k to i64                     ; 5 uses
  %i.v = zext nneg i32 %i.s to i64                ; 14 uses
  %i.w = add nsw i32 %i.j, 1
  %i.x = add nsw i32 %i.s, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1                  ; 4 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2
  %i.ab = mul i32 %i.k, %i.s
  %i.ac = shl i32 %i.ab, 2
  %i.ad = shl i32 %i.s, 2
  %i.ae = shl nsw i64 %i.u, 2                     ; 3 uses
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = mul i64 %i.af, %i.v
  %i.ah = shl i64 %i.ag, 1
  %scevgep59 = getelementptr i8, ptr %i.r, i64 %i.ah
  %i.ai = shl nsw i64 %i.u, 3                     ; 3 uses
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 3 uses
  %i.am = add nsw i64 %i.ai, %i.al
  %i.an = or disjoint i64 %i.am, 2
  %i.ao = mul i64 %i.an, %i.v
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.z
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %.086119, i64 2
  store i16 %i.db, ptr %.086119, align 2, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %.098107, i64 24
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %.085120, i64 2
  store i16 %i.de, ptr %.085120, align 2, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %.098107, i64 26
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !49
  %i.di = getelementptr inbounds nuw i8, ptr %.084121, i64 2
  store i16 %i.dh, ptr %.084121, align 2, !tbaa !49
  %i.dj = getelementptr inbounds nuw i8, ptr %.098107, i64 28
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %.083122, i64 2
  store i16 %i.dk, ptr %.083122, align 2, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %.098107, i64 30
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !49
  %i.do = getelementptr inbounds nuw i8, ptr %.082123, i64 2
  store i16 %i.dn, ptr %.082123, align 2, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %.098107, i64 32
  %i.dq = add nuw nsw i32 %.0124, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !234

._crit_edge127.split:                             ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge127.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge79.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !250 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !250 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !250 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 23 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 8 uses
  %factor.op.mul80 = shl i32 %i.r, 3
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc.preheader, label %._crit_edge79.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.t = sext i32 %i.k to i64                     ; 5 uses
  %i.u = zext nneg i32 %i.r to i64                ; 23 uses
  %i.v = add nsw i32 %i.j, 1
  %i.w = add nsw i32 %i.r, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1                  ; 8 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 2
  %i.aa = mul i32 %i.k, %i.r
  %i.ab = shl i32 %i.aa, 3
  %i.ac = shl i32 %i.r, 3
  %i.ad = shl nsw i64 %i.t, 3                     ; 7 uses
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.u
  %i.ag = shl i64 %i.af, 1
  %scevgep88 = getelementptr i8, ptr %i.q, i64 %i.ag ; 2 uses
  %i.ah = shl nsw i64 %i.t, 4                     ; 7 uses
  %i.ai = sub i32 %i.j, %i.k
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4                ; 7 uses
  %i.al = add nsw i64 %i.ah, %i.ak
  %i.am = or disjoint i64 %i.al, 2
  %i.an = mul i64 %i.am, %i.u
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.y   ; 2 uses
  %i.aq = or disjoint i64 %i.ad, 2
  %i.ar = mul i64 %i.aq, %i.u
  %i.as = shl i64 %i.ar, 1
  %scevgep90 = getelementptr i8, ptr %i.q, i64 %i.as ; 3 uses
  %i.at = add nsw i64 %i.ah, %i.ak
  %i.au = or disjoint i64 %i.at, 4
  %i.av = mul i64 %i.au, %i.u
  %i.aw = getelementptr i8, ptr %i.q, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.y   ; 4 uses
  %i.ay = insertelement <2 x ptr> poison, ptr %i.ap, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.ax, i64 1
  %i.ba = getelementptr i8, <2 x ptr> %i.az, i64 2 ; 2 uses
  %i.bb = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep91 = getelementptr i8, ptr %i.ax, i64 2
  %i.bc = or disjoint i64 %i.ad, 3
  %i.bd = mul i64 %i.bc, %i.u
  %i.be = shl i64 %i.bd, 1
  %scevgep92 = getelementptr i8, ptr %i.q, i64 %i.be ; 4 uses
  %i.bf = add nsw i64 %i.ah, %i.ak
  %i.bg = or disjoint i64 %i.bf, 6
  %i.bh = mul i64 %i.bg, %i.u
  %i.bi = getelementptr i8, ptr %i.q, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.y   ; 3 uses
  %i.bk = or disjoint i64 %i.ad, 4
  %i.bl = mul i64 %i.bk, %i.u
  %i.bm = shl i64 %i.bl, 1
  %scevgep94 = getelementptr i8, ptr %i.q, i64 %i.bm ; 5 uses
  %i.bn = add nsw i64 %i.ah, %i.ak
  %i.bo = or disjoint i64 %i.bn, 8
  %i.bp = mul i64 %i.bo, %i.u
  %i.bq = getelementptr i8, ptr %i.q, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.y   ; 4 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.bj, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, i64 2
  %i.bv = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bw = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %i.ax, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.bj, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.br, i64 3
  %i.ca = getelementptr i8, <4 x ptr> %i.bz, i64 2
  %i.cb = or disjoint i64 %i.ad, 5
  %i.cc = mul i64 %i.cb, %i.u
  %i.cd = shl i64 %i.cc, 1
  %scevgep96 = getelementptr i8, ptr %i.q, i64 %i.cd ; 4 uses
  %i.ce = add nsw i64 %i.ah, %i.ak
  %i.cf = or disjoint i64 %i.ce, 10
  %i.cg = mul i64 %i.cf, %i.u
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.y   ; 3 uses
  %scevgep97 = getelementptr i8, ptr %i.ci, i64 2
  %i.cj = or disjoint i64 %i.ad, 6
  %i.ck = mul i64 %i.cj, %i.u
  %i.cl = shl i64 %i.ck, 1
  %scevgep98 = getelementptr i8, ptr %i.q, i64 %i.cl ; 4 uses
  %i.cm = add nsw i64 %i.ah, %i.ak
  %i.cn = or disjoint i64 %i.cm, 12
  %i.co = mul i64 %i.cn, %i.u
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.y   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %i.cq, i64 2
  %i.cr = or disjoint i64 %i.ad, 7
  %i.cs = mul i64 %i.cr, %i.u
  %i.ct = shl i64 %i.cs, 1
  %scevgep100 = getelementptr i8, ptr %i.q, i64 %i.ct ; 4 uses
  %i.cu = add nsw i64 %i.ah, %i.ak
  %i.cv = or disjoint i64 %i.cu, 14
  %i.cw = mul i64 %i.cv, %i.u
  %i.cx = getelementptr i8, ptr %i.q, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.y   ; 3 uses
  %scevgep101 = getelementptr i8, ptr %i.cy, i64 2
  %i.cz = mul i64 %i.p, %i.n                      ; 2 uses
  %i.da = mul i64 %i.cz, %i.t
  %scevgep102 = getelementptr i8, ptr %i.l, i64 %i.da ; 5 uses
  %i.db = add nsw i64 %i.t, %i.aj
  %i.dc = mul i64 %i.cz, %i.db
  %i.dd = shl nuw nsw i64 %i.x, 4
  %i.de = getelementptr i8, ptr %i.l, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd  ; 3 uses
  %i.dg = insertelement <8 x ptr> poison, ptr %i.br, i64 0
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.ci, i64 1
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.cq, i64 2
  %i.dj = insertelement <8 x ptr> %i.di, ptr %i.cy, i64 3
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.df, i64 4
  %i.dl = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.dm = getelementptr i8, <8 x ptr> %i.dl, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.dn = insertelement <8 x ptr> poison, ptr %i.cy, i64 0
  %i.do = insertelement <8 x ptr> %i.dn, ptr %i.df, i64 1
  %i.dp = insertelement <8 x ptr> %i.do, ptr %i.ax, i64 2
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %i.bj, i64 3
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %i.br, i64 4
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %i.ci, i64 5
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %i.cq, i64 6
  %i.du = shufflevector <8 x ptr> %i.dt, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.dv = getelementptr i8, <8 x ptr> %i.du, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep103 = getelementptr i8, ptr %i.df, i64 16 ; 2 uses
  %i.dw = mul i64 %i.p, %i.n                      ; 3 uses
  %i.dx = insertelement <8 x ptr> poison, ptr %scevgep92, i64 0
  %i.dy = insertelement <8 x ptr> %i.dx, ptr %scevgep94, i64 1
  %i.dz = shufflevector <8 x ptr> %i.dy, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ea = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.eb = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ec = insertelement <8 x ptr> poison, ptr %scevgep94, i64 0
  %i.ed = insertelement <8 x ptr> %i.ec, ptr %scevgep96, i64 1 ; 2 uses
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %scevgep98, i64 2 ; 2 uses
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %scevgep100, i64 3
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep102, i64 4 ; 3 uses
  %i.eh = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.ei = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ej = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ek = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.el = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.em = shufflevector <8 x ptr> %i.ed, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.en = shufflevector <8 x ptr> %i.ee, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eo = insertelement <4 x ptr> poison, ptr %scevgep88, i64 0
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep90, i64 1 ; 3 uses
  %i.eq = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.er = shufflevector <8 x ptr> %i.dv, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.es = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.et = shufflevector <8 x ptr> %i.dv, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.eu = insertelement <8 x ptr> poison, ptr %scevgep100, i64 0
  %i.ev = insertelement <8 x ptr> %i.eu, ptr %scevgep102, i64 1
  %i.ew = insertelement <8 x ptr> %i.ev, ptr %scevgep90, i64 2
  %i.ex = insertelement <8 x ptr> %i.ew, ptr %scevgep92, i64 3
  %i.ey = insertelement <8 x ptr> %i.ex, ptr %scevgep94, i64 4
  %i.ez = insertelement <8 x ptr> %i.ey, ptr %scevgep96, i64 5
  %i.fa = insertelement <8 x ptr> %i.ez, ptr %scevgep98, i64 6
  %i.fb = shufflevector <8 x ptr> %i.fa, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.fc = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep92, i64 1
  %i.fe = insertelement <4 x ptr> %i.fd, ptr %scevgep94, i64 2
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %scevgep96, i64 3
  %i.fg = insertelement <2 x ptr> poison, ptr %scevgep98, i64 0
  %i.fh = insertelement <2 x ptr> %i.fg, ptr %scevgep100, i64 1
  %i.fi = shufflevector <8 x ptr> %i.dv, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fj = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.fk = insertelement <4 x ptr> %i.ep, ptr %scevgep92, i64 2
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %scevgep94, i64 3
  %min.iters.check = icmp ult i32 %i.r, 48
  %i.fm = insertelement <8 x ptr> poison, ptr %scevgep88, i64 1
  %i.fn = icmp ult <4 x ptr> %i.eq, %i.er
  %i.fo = icmp ult <4 x ptr> %i.ff, %i.bb
  %i.fp = icmp ult <2 x ptr> %i.es, %i.et
  %i.fq = icmp ult <2 x ptr> %i.fh, %i.fi
  %bound0180 = icmp ult ptr %scevgep90, %scevgep103
  %bound1181 = icmp ult ptr %scevgep102, %scevgep91
  %stride.check183 = icmp slt i64 %i.dw, 0
  %6 = insertelement <16 x i1> poison, i1 %bound0180, i64 14
  %7 = insertelement <16 x i1> %6, i1 %stride.check183, i64 15
  %8 = shufflevector <4 x i1> %i.fn, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <2 x i1> %i.fp, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1181, i64 14
  %11 = shufflevector <4 x i1> %i.fo, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <2 x i1> %i.fq, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = icmp ult <8 x ptr> %i.dz, %i.dm
  %i.fs = icmp ult <8 x ptr> %i.eh, %i.bv
  %i.ft = icmp ult <4 x ptr> %i.em, %i.ea
  %i.fu = icmp ult <4 x ptr> %i.ei, %i.ej
  %stride.check221 = icmp slt i64 %i.dw, 0
  %i.fv = icmp ult <2 x ptr> %i.en, %i.eb
  %i.fw = icmp ult <2 x ptr> %i.ek, %i.el
  %bound0245 = icmp ult ptr %scevgep100, %scevgep103
  %bound1246 = icmp ult ptr %scevgep102, %scevgep101
  %stride.check = icmp slt i64 %i.dw, 0
  %i.fx = insertelement <16 x i1> poison, i1 %bound0245, i64 14
  %i.fy = insertelement <16 x i1> %i.fx, i1 %stride.check, i64 15
  %i.fz = shufflevector <8 x i1> %i.fr, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <16 x i1> %i.fz, <16 x i1> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gb = shufflevector <4 x i1> %i.ft, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <16 x i1> %i.ga, <16 x i1> %i.gb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gd = shufflevector <2 x i1> %i.fv, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <16 x i1> %i.gc, <16 x i1> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gf = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1246, i64 14
  %i.gg = shufflevector <8 x i1> %i.fs, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gg, <16 x i1> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gi = shufflevector <4 x i1> %i.fu, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i1> %i.gh, <16 x i1> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gk = shufflevector <2 x i1> %i.fw, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <16 x i1> %i.gj, <16 x i1> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gm = and <16 x i1> %i.ge, %i.gl
  %i.gn = bitcast <16 x i1> %i.gm to i16
  %i.go = icmp ne i16 %i.gn, 0
  %op.rdx305 = or i1 %i.go, %stride.check221
  %n.vec = and i64 %i.u, 2147483640               ; 5 uses
  %i.gp = trunc nuw nsw i64 %n.vec to i32
  %i.gq = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.gr = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.noexc.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.gt = trunc i64 %indvars.iv to i32
  %.reass81 = mul i32 %factor.op.mul80, %i.gt
  %i.gu = sext i32 %.reass81 to i64
  %i.gv = getelementptr [2 x i8], ptr %i.q, i64 %i.gu ; 8 uses
  %i.gw = shl nsw i64 %indvars.iv, 3              ; 7 uses
  %i.gx = or disjoint i64 %i.gw, 1
  %i.gy = mul nsw i64 %i.gx, %i.u
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.gy ; 4 uses
  %i.ha = or disjoint i64 %i.gw, 2
  %i.hb = mul nsw i64 %i.ha, %i.u
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hb ; 4 uses
  %i.hd = or disjoint i64 %i.gw, 3
  %i.he = mul nsw i64 %i.hd, %i.u
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.he ; 4 uses
  %i.hg = or disjoint i64 %i.gw, 4
  %i.hh = mul nsw i64 %i.hg, %i.u
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hh ; 4 uses
  %i.hj = or disjoint i64 %i.gw, 5
  %i.hk = mul nsw i64 %i.hj, %i.u
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hk ; 4 uses
  %i.hm = or disjoint i64 %i.gw, 6
  %i.hn = mul nsw i64 %i.hm, %i.u
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hn ; 4 uses
  %i.hp = or disjoint i64 %i.gw, 7
  %i.hq = mul nsw i64 %i.hp, %i.u
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hq ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  %i.hs = mul i32 %i.ac, %indvar
  %i.ht = add i32 %i.ab, %i.hs
  %i.hu = sext i32 %i.ht to i64
  %i.hv = shl nsw i64 %i.hu, 1
  %scevgep87 = getelementptr i8, ptr %scevgep, i64 %i.hv ; 4 uses
  %i.hw = insertelement <4 x ptr> poison, ptr %i.gv, i64 0
  %i.hx = shufflevector <4 x ptr> %i.hw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hy = icmp ult <4 x ptr> %i.hx, %i.ca
  %i.hz = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.ia = shufflevector <4 x ptr> %i.hz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ib = icmp ult <4 x ptr> %i.fl, %i.ia
  %i.ic = and <4 x i1> %i.hy, %i.ib
  %bound0115 = icmp ult ptr %i.gv, %scevgep97
  %bound1116 = icmp ult ptr %scevgep96, %scevgep87
  %found.conflict117 = and i1 %bound0115, %bound1116
  %bound0119 = icmp ult ptr %i.gv, %scevgep99
  %bound1120 = icmp ult ptr %scevgep98, %scevgep87
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.id = insertelement <8 x ptr> %i.fm, ptr %i.gv, i64 0
  %i.ie = shufflevector <8 x ptr> %i.id, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.if = icmp ult <8 x ptr> %i.ie, %i.dv
  %i.ig = insertelement <2 x ptr> %i.fj, ptr %scevgep87, i64 0
  %i.ih = shufflevector <2 x ptr> %i.ig, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ii = icmp ult <8 x ptr> %i.fb, %i.ih
  %i.ij = shufflevector <8 x i1> %i.if, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ik = shufflevector <16 x i1> %i.ij, <16 x i1> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.il = shufflevector <16 x i1> %i.ik, <16 x i1> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.im = shufflevector <16 x i1> %i.il, <16 x i1> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.in = shufflevector <8 x i1> %i.ii, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <16 x i1> %i.in, <16 x i1> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ip = shufflevector <16 x i1> %i.io, <16 x i1> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.iq = shufflevector <16 x i1> %i.ip, <16 x i1> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ir = and <16 x i1> %i.im, %i.iq
  %i.is = bitcast <16 x i1> %i.ir to i16
  %i.it = icmp ne i16 %i.is, 0
  %i.iu = bitcast <4 x i1> %i.ic to i4
  %i.iv = icmp ne i4 %i.iu, 0
  %op.rdx = or i1 %i.iv, %found.conflict117
  %op.rdx304 = or i1 %found.conflict121, %i.it
  %op.rdx306 = or i1 %op.rdx, %op.rdx304
  %op.rdx307 = or i1 %op.rdx306, %op.rdx305
  br i1 %op.rdx307, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iw = getelementptr i8, ptr %i.hr, i64 %i.gq
  %i.ix = getelementptr i8, ptr %i.ho, i64 %i.gq
  %i.iy = getelementptr i8, ptr %i.hl, i64 %i.gq
  %i.iz = getelementptr i8, ptr %i.hi, i64 %i.gq
  %i.ja = getelementptr i8, ptr %i.hf, i64 %i.gq
  %i.jb = getelementptr i8, ptr %i.hc, i64 %i.gq
  %i.jc = getelementptr i8, ptr %i.gz, i64 %i.gq
  %i.jd = getelementptr i8, ptr %i.gv, i64 %i.gq
  %i.je = getelementptr i8, ptr %i.gs, i64 %i.gr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jf = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.hr, i64 %i.jf
  %next.gep250.a = getelementptr i8, ptr %i.ho, i64 %i.jf
  %next.gep251 = getelementptr i8, ptr %i.hl, i64 %i.jf
  %next.gep252 = getelementptr i8, ptr %i.hi, i64 %i.jf
  %next.gep253 = getelementptr i8, ptr %i.hf, i64 %i.jf
  %next.gep254 = getelementptr i8, ptr %i.hc, i64 %i.jf
  %next.gep255 = getelementptr i8, ptr %i.gz, i64 %i.jf
  %next.gep256 = getelementptr i8, ptr %i.gv, i64 %i.jf
  %i.jg = shl i64 %index, 4
  %next.gep257 = getelementptr i8, ptr %i.gs, i64 %i.jg
  %wide.vec = load <64 x i16>, ptr %next.gep257, align 2, !tbaa !49, !alias.scope !251 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec258 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec259 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec260 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec261 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec262 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec263 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec264 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep256, align 2, !tbaa !49, !alias.scope !252, !noalias !253
  store <8 x i16> %strided.vec258, ptr %next.gep255, align 2, !tbaa !49, !alias.scope !254, !noalias !255
  store <8 x i16> %strided.vec259, ptr %next.gep254, align 2, !tbaa !49, !alias.scope !256, !noalias !257
  store <8 x i16> %strided.vec260, ptr %next.gep253, align 2, !tbaa !49, !alias.scope !258, !noalias !259
  store <8 x i16> %strided.vec261, ptr %next.gep252, align 2, !tbaa !49, !alias.scope !260, !noalias !261
  store <8 x i16> %strided.vec262, ptr %next.gep251, align 2, !tbaa !49, !alias.scope !262, !noalias !263
  store <8 x i16> %strided.vec263, ptr %next.gep250.a, align 2, !tbaa !49, !alias.scope !264, !noalias !265
  store <8 x i16> %strided.vec264, ptr %next.gep, align 2, !tbaa !49, !alias.scope !266, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.076.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.gp, %middle.block ]
  %.05075.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.noexc ], [ %i.iw, %middle.block ]
  %.05174.ph = phi ptr [ %i.ho, %vector.memcheck ], [ %i.ho, %.noexc ], [ %i.ix, %middle.block ]
  %.05273.ph = phi ptr [ %i.hl, %vector.memcheck ], [ %i.hl, %.noexc ], [ %i.iy, %middle.block ]
  %.05372.ph = phi ptr [ %i.hi, %vector.memcheck ], [ %i.hi, %.noexc ], [ %i.iz, %middle.block ]
  %.05471.ph = phi ptr [ %i.hf, %vector.memcheck ], [ %i.hf, %.noexc ], [ %i.ja, %middle.block ]
  %.05570.ph = phi ptr [ %i.hc, %vector.memcheck ], [ %i.hc, %.noexc ], [ %i.jb, %middle.block ]
  %.05669.ph = phi ptr [ %i.gz, %vector.memcheck ], [ %i.gz, %.noexc ], [ %i.jc, %middle.block ]
  %.05768.ph = phi ptr [ %i.gv, %vector.memcheck ], [ %i.gv, %.noexc ], [ %i.jd, %middle.block ]
  %.05867.ph = phi ptr [ %i.gs, %vector.memcheck ], [ %i.gs, %.noexc ], [ %i.je, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond83.not = icmp eq i32 %i.v, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond83.not, label %._crit_edge79.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.076 = phi i32 [ %i.kg, %scalar.ph ], [ %.076.ph, %scalar.ph.preheader ]
  %.05075 = phi ptr [ %i.ke, %scalar.ph ], [ %.05075.ph, %scalar.ph.preheader ] ; 2 uses
  %.05174 = phi ptr [ %i.kb, %scalar.ph ], [ %.05174.ph, %scalar.ph.preheader ] ; 2 uses
  %.05273 = phi ptr [ %i.jy, %scalar.ph ], [ %.05273.ph, %scalar.ph.preheader ] ; 2 uses
  %.05372 = phi ptr [ %i.jv, %scalar.ph ], [ %.05372.ph, %scalar.ph.preheader ] ; 2 uses
  %.05471 = phi ptr [ %i.js, %scalar.ph ], [ %.05471.ph, %scalar.ph.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.jp, %scalar.ph ], [ %.05570.ph, %scalar.ph.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.jm, %scalar.ph ], [ %.05669.ph, %scalar.ph.preheader ] ; 2 uses
  %.05768 = phi ptr [ %i.jj, %scalar.ph ], [ %.05768.ph, %scalar.ph.preheader ] ; 2 uses
  %.05867 = phi ptr [ %i.kf, %scalar.ph ], [ %.05867.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ji = load i16, ptr %.05867, align 2, !tbaa !49
  %i.jj = getelementptr inbounds nuw i8, ptr %.05768, i64 2
  store i16 %i.ji, ptr %.05768, align 2, !tbaa !49
  %i.jk = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %.05669, i64 2
  store i16 %i.jl, ptr %.05669, align 2, !tbaa !49
  %i.jn = getelementptr inbounds nuw i8, ptr %.05867, i64 4
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %.05570, i64 2
  store i16 %i.jo, ptr %.05570, align 2, !tbaa !49
  %i.jq = getelementptr inbounds nuw i8, ptr %.05867, i64 6
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !49
  %i.js = getelementptr inbounds nuw i8, ptr %.05471, i64 2
  store i16 %i.jr, ptr %.05471, align 2, !tbaa !49
  %i.jt = getelementptr inbounds nuw i8, ptr %.05867, i64 8
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !49
  %i.jv = getelementptr inbounds nuw i8, ptr %.05372, i64 2
  store i16 %i.ju, ptr %.05372, align 2, !tbaa !49
  %i.jw = getelementptr inbounds nuw i8, ptr %.05867, i64 10
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !49
  %i.jy = getelementptr inbounds nuw i8, ptr %.05273, i64 2
  store i16 %i.jx, ptr %.05273, align 2, !tbaa !49
  %i.jz = getelementptr inbounds nuw i8, ptr %.05867, i64 12
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !49
  %i.kb = getelementptr inbounds nuw i8, ptr %.05174, i64 2
  store i16 %i.ka, ptr %.05174, align 2, !tbaa !49
  %i.kc = getelementptr inbounds nuw i8, ptr %.05867, i64 14
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !49
  %i.ke = getelementptr inbounds nuw i8, ptr %.05075, i64 2
  store i16 %i.kd, ptr %.05075, align 2, !tbaa !49
  %i.kf = getelementptr inbounds nuw i8, ptr %.05867, i64 16
  %i.kg = add nuw nsw i32 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.kg, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !249

._crit_edge79.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge79.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge55.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !278 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !278 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !278 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 11 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 11 uses
  %factor.op.mul56 = shl i32 %i.r, 2
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc.preheader, label %._crit_edge55.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.t = sext i32 %i.k to i64                     ; 5 uses
  %i.u = zext nneg i32 %i.r to i64                ; 14 uses
  %i.v = add nsw i32 %i.j, 1
  %i.w = add nsw i32 %i.r, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1                  ; 4 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 2
  %i.aa = mul i32 %i.k, %i.r
  %i.ab = shl i32 %i.aa, 2
  %i.ac = shl i32 %i.r, 2
  %i.ad = shl nsw i64 %i.t, 2                     ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.u
  %i.ag = shl i64 %i.af, 1
  %scevgep64 = getelementptr i8, ptr %i.q, i64 %i.ag
  %i.ah = shl nsw i64 %i.t, 3                     ; 3 uses
  %i.ai = sub i32 %i.j, %i.k
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  %i.al = add nsw i64 %i.ah, %i.ak
  %i.am = or disjoint i64 %i.al, 2
  %i.an = mul i64 %i.am, %i.u
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.y
  %i.aq = or disjoint i64 %i.ad, 2
end_hunk_1
