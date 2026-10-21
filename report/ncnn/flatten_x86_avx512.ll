Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86_avx512?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.bt
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge122.split, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0117 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %bb.c ]
  %.082116 = phi ptr [ %i.bu, %.lr.ph ], [ %i.dp, %bb.c ] ; 2 uses
  %.083115 = phi ptr [ %i.br, %.lr.ph ], [ %i.dm, %bb.c ] ; 2 uses
  %.084114 = phi ptr [ %i.bo, %.lr.ph ], [ %i.dj, %bb.c ] ; 2 uses
  %.085113 = phi ptr [ %i.bl, %.lr.ph ], [ %i.dg, %bb.c ] ; 2 uses
  %.086112 = phi ptr [ %i.bi, %.lr.ph ], [ %i.dd, %bb.c ] ; 2 uses
  %.087111 = phi ptr [ %i.bf, %.lr.ph ], [ %i.da, %bb.c ] ; 2 uses
  %.088110 = phi ptr [ %i.bc, %.lr.ph ], [ %i.cx, %bb.c ] ; 2 uses
  %.089109 = phi ptr [ %i.az, %.lr.ph ], [ %i.cu, %bb.c ] ; 2 uses
  %.090108 = phi ptr [ %i.aw, %.lr.ph ], [ %i.cr, %bb.c ] ; 2 uses
  %.091107 = phi ptr [ %i.at, %.lr.ph ], [ %i.co, %bb.c ] ; 2 uses
  %.092106 = phi ptr [ %i.aq, %.lr.ph ], [ %i.cl, %bb.c ] ; 2 uses
  %.093105 = phi ptr [ %i.an, %.lr.ph ], [ %i.ci, %bb.c ] ; 2 uses
  %.094104 = phi ptr [ %i.ak, %.lr.ph ], [ %i.cf, %bb.c ] ; 2 uses
  %.095103 = phi ptr [ %i.ah, %.lr.ph ], [ %i.cc, %bb.c ] ; 2 uses
  %.096102 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bz, %bb.c ] ; 2 uses
  %.097101 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bw, %bb.c ] ; 2 uses
  %.098100 = phi ptr [ %i.x, %.lr.ph ], [ %i.dq, %bb.c ] ; 17 uses
  %i.bv = load i16, ptr %.098100, align 2, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %.097101, i64 2
  store i16 %i.bv, ptr %.097101, align 2, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %.098100, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %.096102, i64 2
  store i16 %i.by, ptr %.096102, align 2, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %.098100, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %.095103, i64 2
  store i16 %i.cb, ptr %.095103, align 2, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %.098100, i64 6
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %.094104, i64 2
  store i16 %i.ce, ptr %.094104, align 2, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %.098100, i64 8
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %.093105, i64 2
  store i16 %i.ch, ptr %.093105, align 2, !tbaa !49
  %i.cj = getelementptr inbounds nuw i8, ptr %.098100, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %.092106, i64 2
  store i16 %i.ck, ptr %.092106, align 2, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %.098100, i64 12
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %.091107, i64 2
  store i16 %i.cn, ptr %.091107, align 2, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %.098100, i64 14
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.090108, i64 2
  store i16 %i.cq, ptr %.090108, align 2, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %.098100, i64 16
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %.089109, i64 2
  store i16 %i.ct, ptr %.089109, align 2, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %.098100, i64 18
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %.088110, i64 2
  store i16 %i.cw, ptr %.088110, align 2, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %.098100, i64 20
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %.087111, i64 2
  store i16 %i.cz, ptr %.087111, align 2, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %.098100, i64 22
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %.086112, i64 2
  store i16 %i.dc, ptr %.086112, align 2, !tbaa !49
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
  %6 = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.bs, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 2
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bt = insertelement <4 x ptr> poison, ptr %i.aq, i64 0
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.ay, i64 1
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %i.bk, i64 2
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %i.bs, i64 3
  %i.bx = getelementptr i8, <4 x ptr> %i.bw, i64 2
  %i.by = or disjoint i64 %i.ae, 5
  %i.bz = mul i64 %i.by, %i.v
  %i.ca = shl i64 %i.bz, 1
  %scevgep91 = getelementptr i8, ptr %i.r, i64 %i.ca ; 4 uses
  %i.cb = add nsw i64 %i.ai, %i.al
  %i.cc = or disjoint i64 %i.cb, 10
  %i.cd = mul i64 %i.cc, %i.v
  %i.ce = getelementptr i8, ptr %i.r, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.z   ; 3 uses
  %scevgep92 = getelementptr i8, ptr %i.cf, i64 2
  %i.cg = or disjoint i64 %i.ae, 6
  %i.ch = mul i64 %i.cg, %i.v
  %i.ci = shl i64 %i.ch, 1
  %scevgep93 = getelementptr i8, ptr %i.r, i64 %i.ci ; 4 uses
  %i.cj = add nsw i64 %i.ai, %i.al
  %i.ck = or disjoint i64 %i.cj, 12
  %i.cl = mul i64 %i.ck, %i.v
  %i.cm = getelementptr i8, ptr %i.r, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.z   ; 3 uses
  %scevgep94 = getelementptr i8, ptr %i.cn, i64 2
  %i.co = or disjoint i64 %i.ae, 7
  %i.cp = mul i64 %i.co, %i.v
  %i.cq = shl i64 %i.cp, 1
  %scevgep95 = getelementptr i8, ptr %i.r, i64 %i.cq ; 4 uses
  %i.cr = add nsw i64 %i.ai, %i.al
  %i.cs = or disjoint i64 %i.cr, 14
  %i.ct = mul i64 %i.cs, %i.v
  %i.cu = getelementptr i8, ptr %i.r, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.z   ; 3 uses
  %scevgep96 = getelementptr i8, ptr %i.cv, i64 2
  %i.cw = mul i64 %i.q, %i.o
  %i.cx = mul i64 %i.cw, %i.u
  %scevgep97 = getelementptr i8, ptr %i.l, i64 %i.cx ; 5 uses
  %i.cy = add nsw i64 %i.u, %i.ak
  %i.cz = mul i64 %i.q, %i.cy
  %i.da = mul i64 %i.cz, %i.o
  %i.db = shl nuw nsw i64 %i.y, 4
  %i.dc = getelementptr i8, ptr %i.l, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.db  ; 3 uses
  %i.de = insertelement <8 x ptr> poison, ptr %i.bs, i64 0
  %i.df = insertelement <8 x ptr> %i.de, ptr %i.cf, i64 1
  %i.dg = insertelement <8 x ptr> %i.df, ptr %i.cn, i64 2
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.cv, i64 3
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.dd, i64 4
  %i.dj = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.dk = getelementptr i8, <8 x ptr> %i.dj, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.dl = insertelement <8 x ptr> poison, ptr %i.cv, i64 0
  %i.dm = insertelement <8 x ptr> %i.dl, ptr %i.dd, i64 1
  %i.dn = insertelement <8 x ptr> %i.dm, ptr %i.ay, i64 2
  %i.do = insertelement <8 x ptr> %i.dn, ptr %i.bk, i64 3
  %i.dp = insertelement <8 x ptr> %i.do, ptr %i.bs, i64 4
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %i.cf, i64 5
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %i.cn, i64 6
  %i.ds = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.dt = getelementptr i8, <8 x ptr> %i.ds, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep98 = getelementptr i8, ptr %i.dd, i64 16 ; 2 uses
  %i.du = mul i64 %i.q, %i.o
  %i.dv = insertelement <8 x ptr> poison, ptr %scevgep87, i64 0
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %scevgep89, i64 1
  %i.dx = shufflevector <8 x ptr> %i.dw, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dy = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.dz = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ea = insertelement <8 x ptr> poison, ptr %scevgep89, i64 0
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %scevgep91, i64 1 ; 2 uses
  %i.ec = insertelement <8 x ptr> %i.eb, ptr %scevgep93, i64 2 ; 2 uses
  %i.ed = insertelement <8 x ptr> %i.ec, ptr %scevgep95, i64 3
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %scevgep97, i64 4 ; 3 uses
  %i.ef = shufflevector <8 x ptr> %i.ee, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.eg = shufflevector <8 x ptr> %i.ee, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.eh = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ei = shufflevector <8 x ptr> %i.ee, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ej = shufflevector <8 x ptr> %i.dk, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.ek = shufflevector <8 x ptr> %i.eb, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.el = shufflevector <8 x ptr> %i.ec, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep83, i64 0
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep85, i64 1 ; 3 uses
  %i.eo = shufflevector <4 x ptr> %i.en, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ep = shufflevector <8 x ptr> %i.dt, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.eq = shufflevector <4 x ptr> %i.en, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.er = shufflevector <8 x ptr> %i.dt, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.es = insertelement <8 x ptr> poison, ptr %scevgep95, i64 0
  %i.et = insertelement <8 x ptr> %i.es, ptr %scevgep97, i64 1
  %i.eu = insertelement <8 x ptr> %i.et, ptr %scevgep85, i64 2
  %i.ev = insertelement <8 x ptr> %i.eu, ptr %scevgep87, i64 3
  %i.ew = insertelement <8 x ptr> %i.ev, ptr %scevgep89, i64 4
  %i.ex = insertelement <8 x ptr> %i.ew, ptr %scevgep91, i64 5
  %i.ey = insertelement <8 x ptr> %i.ex, ptr %scevgep93, i64 6
  %i.ez = shufflevector <8 x ptr> %i.ey, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.fa = insertelement <4 x ptr> poison, ptr %scevgep97, i64 0
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep87, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep89, i64 2
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep91, i64 3
  %i.fe = insertelement <2 x ptr> poison, ptr %scevgep93, i64 0
  %i.ff = insertelement <2 x ptr> %i.fe, ptr %scevgep95, i64 1
  %i.fg = shufflevector <8 x ptr> %i.dt, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fh = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <4 x ptr> %i.en, ptr %scevgep87, i64 2
  %i.fj = insertelement <4 x ptr> %i.fi, ptr %scevgep89, i64 3
  %min.iters.check = icmp ult i32 %i.s, 40
  %i.fk = insertelement <8 x ptr> poison, ptr %scevgep83, i64 1
  %i.fl = icmp ult <4 x ptr> %i.eo, %i.ep
  %i.fm = icmp ult <4 x ptr> %i.fd, %i.bc
  %i.fn = icmp ult <2 x ptr> %i.eq, %i.er
  %i.fo = icmp ult <2 x ptr> %i.ff, %i.fg
  %bound0174 = icmp ult ptr %scevgep85, %scevgep98
  %bound1175 = icmp ult ptr %scevgep97, %scevgep86
  %i.fp = icmp ult <8 x ptr> %i.dx, %i.dk
  %i.fq = icmp ult <8 x ptr> %i.ef, %9
  %i.fr = icmp ult <4 x ptr> %i.ek, %i.dy
  %i.fs = icmp ult <4 x ptr> %i.eg, %i.eh
  %i.ft = icmp ult <2 x ptr> %i.el, %i.dz
  %i.fu = icmp ult <2 x ptr> %i.ei, %i.ej
  %bound0234 = icmp ult ptr %scevgep95, %scevgep98
  %bound1235 = icmp ult ptr %scevgep97, %scevgep96
  %stride.check = icmp slt i64 %i.du, 0
  %i.fv = insertelement <16 x i1> poison, i1 %bound0234, i64 14
  %i.fw = insertelement <16 x i1> %i.fv, i1 %stride.check, i64 15
  %i.fx = shufflevector <8 x i1> %i.fp, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fy = shufflevector <16 x i1> %i.fx, <16 x i1> %i.fw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fz = shufflevector <4 x i1> %i.fr, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <16 x i1> %i.fy, <16 x i1> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gb = shufflevector <2 x i1> %i.ft, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <16 x i1> %i.ga, <16 x i1> %i.gb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gd = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1235, i64 14
  %i.ge = shufflevector <8 x i1> %i.fq, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <16 x i1> %i.ge, <16 x i1> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gg = shufflevector <4 x i1> %i.fs, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gf, <16 x i1> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gi = shufflevector <2 x i1> %i.fu, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i1> %i.gh, <16 x i1> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gk = and <16 x i1> %i.gc, %i.gj
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = icmp ne i16 %i.gl, 0
  %i.gn = insertelement <16 x i1> poison, i1 %bound0174, i64 14
  %i.go = insertelement <16 x i1> %i.gn, i1 %i.gm, i64 15
  %i.gp = shufflevector <4 x i1> %i.fl, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <2 x i1> %i.fn, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1175, i64 14
  %i.gs = shufflevector <4 x i1> %i.fm, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <2 x i1> %i.fo, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %n.vec = and i64 %i.v, 2147483640               ; 5 uses
  %i.gu = trunc nuw nsw i64 %n.vec to i32
  %i.gv = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.gw = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.gy = trunc i64 %indvars.iv to i32
  %.reass76 = mul i32 %factor.op.mul75, %i.gy
  %i.gz = sext i32 %.reass76 to i64
  %i.ha = getelementptr [2 x i8], ptr %i.r, i64 %i.gz ; 8 uses
  %i.hb = shl nsw i64 %indvars.iv, 3              ; 7 uses
  %i.hc = or disjoint i64 %i.hb, 1
  %i.hd = mul nsw i64 %i.hc, %i.v
  %i.he = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hd ; 4 uses
  %i.hf = or disjoint i64 %i.hb, 2
  %i.hg = mul nsw i64 %i.hf, %i.v
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hg ; 4 uses
  %i.hi = or disjoint i64 %i.hb, 3
  %i.hj = mul nsw i64 %i.hi, %i.v
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hj ; 4 uses
  %i.hl = or disjoint i64 %i.hb, 4
  %i.hm = mul nsw i64 %i.hl, %i.v
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hm ; 4 uses
  %i.ho = or disjoint i64 %i.hb, 5
  %i.hp = mul nsw i64 %i.ho, %i.v
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hp ; 4 uses
  %i.hr = or disjoint i64 %i.hb, 6
  %i.hs = mul nsw i64 %i.hr, %i.v
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hs ; 4 uses
  %i.hu = or disjoint i64 %i.hb, 7
  %i.hv = mul nsw i64 %i.hu, %i.v
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.hv ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hx = mul i32 %i.ad, %indvar
  %i.hy = add i32 %i.ac, %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 1
  %scevgep82 = getelementptr i8, ptr %scevgep, i64 %i.ia ; 4 uses
  %i.ib = insertelement <4 x ptr> poison, ptr %i.ha, i64 0
  %i.ic = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.id = icmp ult <4 x ptr> %i.ic, %i.bx
  %i.ie = insertelement <4 x ptr> poison, ptr %scevgep82, i64 0
  %i.if = shufflevector <4 x ptr> %i.ie, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ig = icmp ult <4 x ptr> %i.fj, %i.if
  %i.ih = and <4 x i1> %i.id, %i.ig
  %bound0110 = icmp ult ptr %i.ha, %scevgep92
  %bound1111 = icmp ult ptr %scevgep91, %scevgep82
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0114 = icmp ult ptr %i.ha, %scevgep94
  %bound1115 = icmp ult ptr %scevgep93, %scevgep82
  %found.conflict116 = and i1 %bound0114, %bound1115
  %i.ii = insertelement <8 x ptr> %i.fk, ptr %i.ha, i64 0
  %i.ij = shufflevector <8 x ptr> %i.ii, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ik = icmp ult <8 x ptr> %i.ij, %i.dt
  %i.il = insertelement <2 x ptr> %i.fh, ptr %scevgep82, i64 0
  %i.im = shufflevector <2 x ptr> %i.il, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.in = icmp ult <8 x ptr> %i.ez, %i.im
  %i.io = shufflevector <8 x i1> %i.ik, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <16 x i1> %i.io, <16 x i1> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.iq = shufflevector <16 x i1> %i.ip, <16 x i1> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ir = shufflevector <16 x i1> %i.iq, <16 x i1> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.is = shufflevector <8 x i1> %i.in, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <16 x i1> %i.is, <16 x i1> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.iu = shufflevector <16 x i1> %i.it, <16 x i1> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.iv = shufflevector <16 x i1> %i.iu, <16 x i1> %i.gt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.iw = and <16 x i1> %i.ir, %i.iv
  %i.ix = bitcast <16 x i1> %i.iw to i16
  %i.iy = icmp ne i16 %i.ix, 0
  %i.iz = bitcast <4 x i1> %i.ih to i4
  %i.ja = icmp ne i4 %i.iz, 0
  %op.rdx = or i1 %i.ja, %found.conflict112
  %op.rdx288 = or i1 %found.conflict116, %i.iy
  %op.rdx289 = or i1 %op.rdx, %op.rdx288
  br i1 %op.rdx289, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jb = getelementptr i8, ptr %i.hw, i64 %i.gv
  %i.jc = getelementptr i8, ptr %i.ht, i64 %i.gv
  %i.jd = getelementptr i8, ptr %i.hq, i64 %i.gv
  %i.je = getelementptr i8, ptr %i.hn, i64 %i.gv
  %i.jf = getelementptr i8, ptr %i.hk, i64 %i.gv
  %i.jg = getelementptr i8, ptr %i.hh, i64 %i.gv
  %i.jh = getelementptr i8, ptr %i.he, i64 %i.gv
  %i.ji = getelementptr i8, ptr %i.ha, i64 %i.gv
  %i.jj = getelementptr i8, ptr %i.gx, i64 %i.gw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jk = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.hw, i64 %i.jk
  %next.gep238 = getelementptr i8, ptr %i.ht, i64 %i.jk
  %next.gep239 = getelementptr i8, ptr %i.hq, i64 %i.jk
  %next.gep240 = getelementptr i8, ptr %i.hn, i64 %i.jk
  %next.gep241 = getelementptr i8, ptr %i.hk, i64 %i.jk
  %next.gep242 = getelementptr i8, ptr %i.hh, i64 %i.jk
  %next.gep243 = getelementptr i8, ptr %i.he, i64 %i.jk
  %next.gep244 = getelementptr i8, ptr %i.ha, i64 %i.jk
  %i.jl = shl i64 %index, 4
  %next.gep245 = getelementptr i8, ptr %i.gx, i64 %i.jl
  %wide.vec = load <64 x i16>, ptr %next.gep245, align 2, !tbaa !49, !alias.scope !199 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec246 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec247 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec248 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec249 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec250 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec251 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec252 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep244, align 2, !tbaa !49, !alias.scope !200, !noalias !201
  store <8 x i16> %strided.vec246, ptr %next.gep243, align 2, !tbaa !49, !alias.scope !202, !noalias !203
  store <8 x i16> %strided.vec247, ptr %next.gep242, align 2, !tbaa !49, !alias.scope !204, !noalias !205
  store <8 x i16> %strided.vec248, ptr %next.gep241, align 2, !tbaa !49, !alias.scope !206, !noalias !207
  store <8 x i16> %strided.vec249, ptr %next.gep240, align 2, !tbaa !49, !alias.scope !208, !noalias !209
  store <8 x i16> %strided.vec250, ptr %next.gep239, align 2, !tbaa !49, !alias.scope !210, !noalias !211
  store <8 x i16> %strided.vec251, ptr %next.gep238, align 2, !tbaa !49, !alias.scope !212, !noalias !213
  store <8 x i16> %strided.vec252, ptr %next.gep, align 2, !tbaa !49, !alias.scope !214, !noalias !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.069.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.gu, %middle.block ]
  %.05068.ph = phi ptr [ %i.hw, %vector.memcheck ], [ %i.hw, %.lr.ph ], [ %i.jb, %middle.block ]
  %.05167.ph = phi ptr [ %i.ht, %vector.memcheck ], [ %i.ht, %.lr.ph ], [ %i.jc, %middle.block ]
  %.05266.ph = phi ptr [ %i.hq, %vector.memcheck ], [ %i.hq, %.lr.ph ], [ %i.jd, %middle.block ]
  %.05365.ph = phi ptr [ %i.hn, %vector.memcheck ], [ %i.hn, %.lr.ph ], [ %i.je, %middle.block ]
  %.05464.ph = phi ptr [ %i.hk, %vector.memcheck ], [ %i.hk, %.lr.ph ], [ %i.jf, %middle.block ]
  %.05563.ph = phi ptr [ %i.hh, %vector.memcheck ], [ %i.hh, %.lr.ph ], [ %i.jg, %middle.block ]
  %.05662.ph = phi ptr [ %i.he, %vector.memcheck ], [ %i.he, %.lr.ph ], [ %i.jh, %middle.block ]
  %.05761.ph = phi ptr [ %i.ha, %vector.memcheck ], [ %i.ha, %.lr.ph ], [ %i.ji, %middle.block ]
  %.05860.ph = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph ], [ %i.jj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond78.not = icmp eq i32 %i.w, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond78.not, label %._crit_edge74.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.069 = phi i32 [ %i.kl, %scalar.ph ], [ %.069.ph, %scalar.ph.preheader ]
  %.05068 = phi ptr [ %i.kj, %scalar.ph ], [ %.05068.ph, %scalar.ph.preheader ] ; 2 uses
  %.05167 = phi ptr [ %i.kg, %scalar.ph ], [ %.05167.ph, %scalar.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.kd, %scalar.ph ], [ %.05266.ph, %scalar.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.ka, %scalar.ph ], [ %.05365.ph, %scalar.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.jx, %scalar.ph ], [ %.05464.ph, %scalar.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.ju, %scalar.ph ], [ %.05563.ph, %scalar.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.jr, %scalar.ph ], [ %.05662.ph, %scalar.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.jo, %scalar.ph ], [ %.05761.ph, %scalar.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.kk, %scalar.ph ], [ %.05860.ph, %scalar.ph.preheader ] ; 9 uses
  %i.jn = load i16, ptr %.05860, align 2, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  store i16 %i.jn, ptr %.05761, align 2, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !49
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.bs = mul nsw i64 %i.br, %i.u
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bs
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond131.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond131.not, label %._crit_edge127.split, label %.noexc

bb.c:                                             ; preds = %.noexc, %bb.c
  %.0124 = phi i32 [ 0, %.noexc ], [ %i.dq, %bb.c ]
  %.082123 = phi ptr [ %i.bt, %.noexc ], [ %i.do, %bb.c ] ; 2 uses
  %.083122 = phi ptr [ %i.bq, %.noexc ], [ %i.dl, %bb.c ] ; 2 uses
  %.084121 = phi ptr [ %i.bn, %.noexc ], [ %i.di, %bb.c ] ; 2 uses
  %.085120 = phi ptr [ %i.bk, %.noexc ], [ %i.df, %bb.c ] ; 2 uses
  %.086119 = phi ptr [ %i.bh, %.noexc ], [ %i.dc, %bb.c ] ; 2 uses
  %.087118 = phi ptr [ %i.be, %.noexc ], [ %i.cz, %bb.c ] ; 2 uses
  %.088117 = phi ptr [ %i.bb, %.noexc ], [ %i.cw, %bb.c ] ; 2 uses
  %.089116 = phi ptr [ %i.ay, %.noexc ], [ %i.ct, %bb.c ] ; 2 uses
  %.090115 = phi ptr [ %i.av, %.noexc ], [ %i.cq, %bb.c ] ; 2 uses
  %.091114 = phi ptr [ %i.as, %.noexc ], [ %i.cn, %bb.c ] ; 2 uses
  %.092113 = phi ptr [ %i.ap, %.noexc ], [ %i.ck, %bb.c ] ; 2 uses
  %.093112 = phi ptr [ %i.am, %.noexc ], [ %i.ch, %bb.c ] ; 2 uses
  %.094111 = phi ptr [ %i.aj, %.noexc ], [ %i.ce, %bb.c ] ; 2 uses
  %.095110 = phi ptr [ %i.ag, %.noexc ], [ %i.cb, %bb.c ] ; 2 uses
  %.096109 = phi ptr [ %i.ad, %.noexc ], [ %i.by, %bb.c ] ; 2 uses
  %.097108 = phi ptr [ %i.z, %.noexc ], [ %i.bv, %bb.c ] ; 2 uses
  %.098107 = phi ptr [ %i.w, %.noexc ], [ %i.dp, %bb.c ] ; 17 uses
  %i.bu = load i16, ptr %.098107, align 2, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %.097108, i64 2
  store i16 %i.bu, ptr %.097108, align 2, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %.098107, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %.096109, i64 2
  store i16 %i.bx, ptr %.096109, align 2, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %.098107, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !49
  %i.cb = getelementptr inbounds nuw i8, ptr %.095110, i64 2
  store i16 %i.ca, ptr %.095110, align 2, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %.098107, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %.094111, i64 2
  store i16 %i.cd, ptr %.094111, align 2, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %.098107, i64 8
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %.093112, i64 2
  store i16 %i.cg, ptr %.093112, align 2, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %.098107, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %.092113, i64 2
  store i16 %i.cj, ptr %.092113, align 2, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %.098107, i64 12
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %.091114, i64 2
  store i16 %i.cm, ptr %.091114, align 2, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %.098107, i64 14
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %.090115, i64 2
  store i16 %i.cp, ptr %.090115, align 2, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.098107, i64 16
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %.089116, i64 2
  store i16 %i.cs, ptr %.089116, align 2, !tbaa !49
  %i.cu = getelementptr inbounds nuw i8, ptr %.098107, i64 18
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !49
  %i.cw = getelementptr inbounds nuw i8, ptr %.088117, i64 2
  store i16 %i.cv, ptr %.088117, align 2, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %.098107, i64 20
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %.087118, i64 2
  store i16 %i.cy, ptr %.087118, align 2, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %.098107, i64 22
  %i.db = load i16, ptr %i.da, align 2, !tbaa !49
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
  %6 = insertelement <2 x ptr> poison, ptr %i.bj, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.br, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 2
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bs = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.ax, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.bj, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %i.br, i64 3
  %i.bw = getelementptr i8, <4 x ptr> %i.bv, i64 2
  %i.bx = or disjoint i64 %i.ad, 5
  %i.by = mul i64 %i.bx, %i.u
  %i.bz = shl i64 %i.by, 1
  %scevgep96 = getelementptr i8, ptr %i.q, i64 %i.bz ; 4 uses
  %i.ca = add nsw i64 %i.ah, %i.ak
  %i.cb = or disjoint i64 %i.ca, 10
  %i.cc = mul i64 %i.cb, %i.u
  %i.cd = getelementptr i8, ptr %i.q, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.y   ; 3 uses
  %scevgep97 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = or disjoint i64 %i.ad, 6
  %i.cg = mul i64 %i.cf, %i.u
  %i.ch = shl i64 %i.cg, 1
  %scevgep98 = getelementptr i8, ptr %i.q, i64 %i.ch ; 4 uses
  %i.ci = add nsw i64 %i.ah, %i.ak
  %i.cj = or disjoint i64 %i.ci, 12
  %i.ck = mul i64 %i.cj, %i.u
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.y   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %i.cm, i64 2
  %i.cn = or disjoint i64 %i.ad, 7
  %i.co = mul i64 %i.cn, %i.u
  %i.cp = shl i64 %i.co, 1
  %scevgep100 = getelementptr i8, ptr %i.q, i64 %i.cp ; 4 uses
  %i.cq = add nsw i64 %i.ah, %i.ak
  %i.cr = or disjoint i64 %i.cq, 14
  %i.cs = mul i64 %i.cr, %i.u
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.y   ; 3 uses
  %scevgep101 = getelementptr i8, ptr %i.cu, i64 2
  %i.cv = mul i64 %i.p, %i.n                      ; 2 uses
  %i.cw = mul i64 %i.cv, %i.t
  %scevgep102 = getelementptr i8, ptr %i.l, i64 %i.cw ; 5 uses
  %i.cx = add nsw i64 %i.t, %i.aj
  %i.cy = mul i64 %i.cv, %i.cx
  %i.cz = shl nuw nsw i64 %i.x, 4
  %i.da = getelementptr i8, ptr %i.l, i64 %i.cy
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cz  ; 3 uses
  %i.dc = insertelement <8 x ptr> poison, ptr %i.br, i64 0
  %i.dd = insertelement <8 x ptr> %i.dc, ptr %i.ce, i64 1
  %i.de = insertelement <8 x ptr> %i.dd, ptr %i.cm, i64 2
  %i.df = insertelement <8 x ptr> %i.de, ptr %i.cu, i64 3
  %i.dg = insertelement <8 x ptr> %i.df, ptr %i.db, i64 4
  %i.dh = shufflevector <8 x ptr> %i.dg, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.di = getelementptr i8, <8 x ptr> %i.dh, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.dj = insertelement <8 x ptr> poison, ptr %i.cu, i64 0
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.db, i64 1
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %i.ax, i64 2
  %i.dm = insertelement <8 x ptr> %i.dl, ptr %i.bj, i64 3
  %i.dn = insertelement <8 x ptr> %i.dm, ptr %i.br, i64 4
  %i.do = insertelement <8 x ptr> %i.dn, ptr %i.ce, i64 5
  %i.dp = insertelement <8 x ptr> %i.do, ptr %i.cm, i64 6
  %i.dq = shufflevector <8 x ptr> %i.dp, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.dr = getelementptr i8, <8 x ptr> %i.dq, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep103 = getelementptr i8, ptr %i.db, i64 16 ; 2 uses
  %i.ds = mul i64 %i.p, %i.n
  %i.dt = insertelement <8 x ptr> poison, ptr %scevgep92, i64 0
  %i.du = insertelement <8 x ptr> %i.dt, ptr %scevgep94, i64 1
  %i.dv = shufflevector <8 x ptr> %i.du, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dw = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.dx = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.dy = insertelement <8 x ptr> poison, ptr %scevgep94, i64 0
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep96, i64 1 ; 2 uses
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %scevgep98, i64 2 ; 2 uses
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %scevgep100, i64 3
  %i.ec = insertelement <8 x ptr> %i.eb, ptr %scevgep102, i64 4 ; 3 uses
  %i.ed = shufflevector <8 x ptr> %i.ec, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <8 x ptr> %i.ec, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ef = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.eg = shufflevector <8 x ptr> %i.ec, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.eh = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.ei = shufflevector <8 x ptr> %i.dz, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ej = shufflevector <8 x ptr> %i.ea, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.ek = insertelement <4 x ptr> poison, ptr %scevgep88, i64 0
  %i.el = insertelement <4 x ptr> %i.ek, ptr %scevgep90, i64 1 ; 3 uses
  %i.em = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.en = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.eo = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.eq = insertelement <8 x ptr> poison, ptr %scevgep100, i64 0
  %i.er = insertelement <8 x ptr> %i.eq, ptr %scevgep102, i64 1
  %i.es = insertelement <8 x ptr> %i.er, ptr %scevgep90, i64 2
  %i.et = insertelement <8 x ptr> %i.es, ptr %scevgep92, i64 3
  %i.eu = insertelement <8 x ptr> %i.et, ptr %scevgep94, i64 4
  %i.ev = insertelement <8 x ptr> %i.eu, ptr %scevgep96, i64 5
  %i.ew = insertelement <8 x ptr> %i.ev, ptr %scevgep98, i64 6
  %i.ex = shufflevector <8 x ptr> %i.ew, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.ey = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %scevgep92, i64 1
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %scevgep94, i64 2
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep96, i64 3
  %i.fc = insertelement <2 x ptr> poison, ptr %scevgep98, i64 0
  %i.fd = insertelement <2 x ptr> %i.fc, ptr %scevgep100, i64 1
  %i.fe = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.ff = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.fg = insertelement <4 x ptr> %i.el, ptr %scevgep92, i64 2
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep94, i64 3
  %min.iters.check = icmp ult i32 %i.r, 40
  %i.fi = insertelement <8 x ptr> poison, ptr %scevgep88, i64 1
  %i.fj = icmp ult <4 x ptr> %i.em, %i.en
  %i.fk = icmp ult <4 x ptr> %i.fb, %i.bb
  %i.fl = icmp ult <2 x ptr> %i.eo, %i.ep
  %i.fm = icmp ult <2 x ptr> %i.fd, %i.fe
  %bound0179 = icmp ult ptr %scevgep90, %scevgep103
  %bound1180 = icmp ult ptr %scevgep102, %scevgep91
  %i.fn = icmp ult <8 x ptr> %i.dv, %i.di
  %i.fo = icmp ult <8 x ptr> %i.ed, %9
  %i.fp = icmp ult <4 x ptr> %i.ei, %i.dw
  %i.fq = icmp ult <4 x ptr> %i.ee, %i.ef
  %i.fr = icmp ult <2 x ptr> %i.ej, %i.dx
  %i.fs = icmp ult <2 x ptr> %i.eg, %i.eh
  %bound0239 = icmp ult ptr %scevgep100, %scevgep103
  %bound1240 = icmp ult ptr %scevgep102, %scevgep101
  %stride.check = icmp slt i64 %i.ds, 0
  %i.ft = insertelement <16 x i1> poison, i1 %bound0239, i64 14
  %i.fu = insertelement <16 x i1> %i.ft, i1 %stride.check, i64 15
  %i.fv = shufflevector <8 x i1> %i.fn, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fw = shufflevector <16 x i1> %i.fv, <16 x i1> %i.fu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fx = shufflevector <4 x i1> %i.fp, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fy = shufflevector <16 x i1> %i.fw, <16 x i1> %i.fx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fz = shufflevector <2 x i1> %i.fr, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <16 x i1> %i.fy, <16 x i1> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gb = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1240, i64 14
  %i.gc = shufflevector <8 x i1> %i.fo, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <16 x i1> %i.gc, <16 x i1> %i.gb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ge = shufflevector <4 x i1> %i.fq, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <16 x i1> %i.gd, <16 x i1> %i.ge, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gg = shufflevector <2 x i1> %i.fs, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gf, <16 x i1> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gi = and <16 x i1> %i.ga, %i.gh
  %i.gj = bitcast <16 x i1> %i.gi to i16
  %i.gk = icmp ne i16 %i.gj, 0
  %i.gl = insertelement <16 x i1> poison, i1 %bound0179, i64 14
  %i.gm = insertelement <16 x i1> %i.gl, i1 %i.gk, i64 15
  %i.gn = shufflevector <4 x i1> %i.fj, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <2 x i1> %i.fl, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1180, i64 14
  %i.gq = shufflevector <4 x i1> %i.fk, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = shufflevector <2 x i1> %i.fm, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %n.vec = and i64 %i.u, 2147483640               ; 5 uses
  %i.gs = trunc nuw nsw i64 %n.vec to i32
  %i.gt = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.gu = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.noexc.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.gw = trunc i64 %indvars.iv to i32
  %.reass81 = mul i32 %factor.op.mul80, %i.gw
  %i.gx = sext i32 %.reass81 to i64
  %i.gy = getelementptr [2 x i8], ptr %i.q, i64 %i.gx ; 8 uses
  %i.gz = shl nsw i64 %indvars.iv, 3              ; 7 uses
  %i.ha = or disjoint i64 %i.gz, 1
  %i.hb = mul nsw i64 %i.ha, %i.u
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hb ; 4 uses
  %i.hd = or disjoint i64 %i.gz, 2
  %i.he = mul nsw i64 %i.hd, %i.u
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.he ; 4 uses
  %i.hg = or disjoint i64 %i.gz, 3
  %i.hh = mul nsw i64 %i.hg, %i.u
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hh ; 4 uses
  %i.hj = or disjoint i64 %i.gz, 4
  %i.hk = mul nsw i64 %i.hj, %i.u
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hk ; 4 uses
  %i.hm = or disjoint i64 %i.gz, 5
  %i.hn = mul nsw i64 %i.hm, %i.u
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hn ; 4 uses
  %i.hp = or disjoint i64 %i.gz, 6
  %i.hq = mul nsw i64 %i.hp, %i.u
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.hq ; 4 uses
  %i.hs = or disjoint i64 %i.gz, 7
  %i.ht = mul nsw i64 %i.hs, %i.u
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ht ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  %i.hv = mul i32 %i.ac, %indvar
  %i.hw = add i32 %i.ab, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 1
  %scevgep87 = getelementptr i8, ptr %scevgep, i64 %i.hy ; 4 uses
  %i.hz = insertelement <4 x ptr> poison, ptr %i.gy, i64 0
  %i.ia = shufflevector <4 x ptr> %i.hz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ib = icmp ult <4 x ptr> %i.ia, %i.bw
  %i.ic = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.id = shufflevector <4 x ptr> %i.ic, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ie = icmp ult <4 x ptr> %i.fh, %i.id
  %i.if = and <4 x i1> %i.ib, %i.ie
  %bound0115 = icmp ult ptr %i.gy, %scevgep97
  %bound1116 = icmp ult ptr %scevgep96, %scevgep87
  %found.conflict117 = and i1 %bound0115, %bound1116
  %bound0119 = icmp ult ptr %i.gy, %scevgep99
  %bound1120 = icmp ult ptr %scevgep98, %scevgep87
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.ig = insertelement <8 x ptr> %i.fi, ptr %i.gy, i64 0
  %i.ih = shufflevector <8 x ptr> %i.ig, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ii = icmp ult <8 x ptr> %i.ih, %i.dr
  %i.ij = insertelement <2 x ptr> %i.ff, ptr %scevgep87, i64 0
  %i.ik = shufflevector <2 x ptr> %i.ij, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.il = icmp ult <8 x ptr> %i.ex, %i.ik
  %i.im = shufflevector <8 x i1> %i.ii, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <16 x i1> %i.im, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.io = shufflevector <16 x i1> %i.in, <16 x i1> %i.gn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ip = shufflevector <16 x i1> %i.io, <16 x i1> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.iq = shufflevector <8 x i1> %i.il, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = shufflevector <16 x i1> %i.iq, <16 x i1> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.is = shufflevector <16 x i1> %i.ir, <16 x i1> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.it = shufflevector <16 x i1> %i.is, <16 x i1> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.iu = and <16 x i1> %i.ip, %i.it
  %i.iv = bitcast <16 x i1> %i.iu to i16
  %i.iw = icmp ne i16 %i.iv, 0
  %i.ix = bitcast <4 x i1> %i.if to i4
  %i.iy = icmp ne i4 %i.ix, 0
  %op.rdx = or i1 %i.iy, %found.conflict117
  %op.rdx293 = or i1 %found.conflict121, %i.iw
  %op.rdx294 = or i1 %op.rdx, %op.rdx293
  br i1 %op.rdx294, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iz = getelementptr i8, ptr %i.hu, i64 %i.gt
  %i.ja = getelementptr i8, ptr %i.hr, i64 %i.gt
  %i.jb = getelementptr i8, ptr %i.ho, i64 %i.gt
  %i.jc = getelementptr i8, ptr %i.hl, i64 %i.gt
  %i.jd = getelementptr i8, ptr %i.hi, i64 %i.gt
  %i.je = getelementptr i8, ptr %i.hf, i64 %i.gt
  %i.jf = getelementptr i8, ptr %i.hc, i64 %i.gt
  %i.jg = getelementptr i8, ptr %i.gy, i64 %i.gt
  %i.jh = getelementptr i8, ptr %i.gv, i64 %i.gu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ji = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.hu, i64 %i.ji
  %next.gep243 = getelementptr i8, ptr %i.hr, i64 %i.ji
  %next.gep244 = getelementptr i8, ptr %i.ho, i64 %i.ji
  %next.gep245 = getelementptr i8, ptr %i.hl, i64 %i.ji
  %next.gep246 = getelementptr i8, ptr %i.hi, i64 %i.ji
  %next.gep247 = getelementptr i8, ptr %i.hf, i64 %i.ji
  %next.gep248 = getelementptr i8, ptr %i.hc, i64 %i.ji
  %next.gep249 = getelementptr i8, ptr %i.gy, i64 %i.ji
  %i.jj = shl i64 %index, 4
  %next.gep250 = getelementptr i8, ptr %i.gv, i64 %i.jj
  %wide.vec = load <64 x i16>, ptr %next.gep250, align 2, !tbaa !49, !alias.scope !251 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec251 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec252 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec253 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec254 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec255 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec256 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec257 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep249, align 2, !tbaa !49, !alias.scope !252, !noalias !253
  store <8 x i16> %strided.vec251, ptr %next.gep248, align 2, !tbaa !49, !alias.scope !254, !noalias !255
  store <8 x i16> %strided.vec252, ptr %next.gep247, align 2, !tbaa !49, !alias.scope !256, !noalias !257
  store <8 x i16> %strided.vec253, ptr %next.gep246, align 2, !tbaa !49, !alias.scope !258, !noalias !259
  store <8 x i16> %strided.vec254, ptr %next.gep245, align 2, !tbaa !49, !alias.scope !260, !noalias !261
  store <8 x i16> %strided.vec255, ptr %next.gep244, align 2, !tbaa !49, !alias.scope !262, !noalias !263
  store <8 x i16> %strided.vec256, ptr %next.gep243, align 2, !tbaa !49, !alias.scope !264, !noalias !265
  store <8 x i16> %strided.vec257, ptr %next.gep, align 2, !tbaa !49, !alias.scope !266, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.076.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.gs, %middle.block ]
  %.05075.ph = phi ptr [ %i.hu, %vector.memcheck ], [ %i.hu, %.noexc ], [ %i.iz, %middle.block ]
  %.05174.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.noexc ], [ %i.ja, %middle.block ]
  %.05273.ph = phi ptr [ %i.ho, %vector.memcheck ], [ %i.ho, %.noexc ], [ %i.jb, %middle.block ]
  %.05372.ph = phi ptr [ %i.hl, %vector.memcheck ], [ %i.hl, %.noexc ], [ %i.jc, %middle.block ]
  %.05471.ph = phi ptr [ %i.hi, %vector.memcheck ], [ %i.hi, %.noexc ], [ %i.jd, %middle.block ]
  %.05570.ph = phi ptr [ %i.hf, %vector.memcheck ], [ %i.hf, %.noexc ], [ %i.je, %middle.block ]
  %.05669.ph = phi ptr [ %i.hc, %vector.memcheck ], [ %i.hc, %.noexc ], [ %i.jf, %middle.block ]
  %.05768.ph = phi ptr [ %i.gy, %vector.memcheck ], [ %i.gy, %.noexc ], [ %i.jg, %middle.block ]
  %.05867.ph = phi ptr [ %i.gv, %vector.memcheck ], [ %i.gv, %.noexc ], [ %i.jh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond83.not = icmp eq i32 %i.v, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond83.not, label %._crit_edge79.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.076 = phi i32 [ %i.kj, %scalar.ph ], [ %.076.ph, %scalar.ph.preheader ]
  %.05075 = phi ptr [ %i.kh, %scalar.ph ], [ %.05075.ph, %scalar.ph.preheader ] ; 2 uses
  %.05174 = phi ptr [ %i.ke, %scalar.ph ], [ %.05174.ph, %scalar.ph.preheader ] ; 2 uses
  %.05273 = phi ptr [ %i.kb, %scalar.ph ], [ %.05273.ph, %scalar.ph.preheader ] ; 2 uses
  %.05372 = phi ptr [ %i.jy, %scalar.ph ], [ %.05372.ph, %scalar.ph.preheader ] ; 2 uses
  %.05471 = phi ptr [ %i.jv, %scalar.ph ], [ %.05471.ph, %scalar.ph.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.js, %scalar.ph ], [ %.05570.ph, %scalar.ph.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.jp, %scalar.ph ], [ %.05669.ph, %scalar.ph.preheader ] ; 2 uses
  %.05768 = phi ptr [ %i.jm, %scalar.ph ], [ %.05768.ph, %scalar.ph.preheader ] ; 2 uses
  %.05867 = phi ptr [ %i.ki, %scalar.ph ], [ %.05867.ph, %scalar.ph.preheader ] ; 9 uses
  %i.jl = load i16, ptr %.05867, align 2, !tbaa !49
  %i.jm = getelementptr inbounds nuw i8, ptr %.05768, i64 2
  store i16 %i.jl, ptr %.05768, align 2, !tbaa !49
  %i.jn = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !49
end_hunk_1
