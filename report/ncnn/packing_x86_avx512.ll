Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bp = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.bq = mul i64 %i.r, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bq ; 4 uses
  %i.bs = or disjoint i64 %i.bp, 1
  %i.bt = mul i64 %i.r, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bt ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bn
  %i.bx = getelementptr i8, ptr %i.bu, i64 %i.bo
  %i.by = getelementptr i8, ptr %i.br, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.bz
  %i.ca = shl i64 %index, 4                       ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.bu, i64 %i.ca
  %next.gep68 = getelementptr i8, ptr %i.br, i64 %i.ca
  %wide.vec = load <32 x float>, ptr %next.gep68, align 4, !tbaa !51, !alias.scope !160
  %wide.vec72 = load <32 x float>, ptr %next.gep67, align 4, !tbaa !51, !alias.scope !161
  %interleaved.vec = shufflevector <32 x float> %wide.vec, <32 x float> %wide.vec72, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 4, i32 5, i32 6, i32 7, i32 36, i32 37, i32 38, i32 39, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 42, i32 43, i32 12, i32 13, i32 14, i32 15, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 50, i32 51, i32 20, i32 21, i32 22, i32 23, i32 52, i32 53, i32 54, i32 55, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 58, i32 59, i32 28, i32 29, i32 30, i32 31, i32 60, i32 61, i32 62, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !51, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.047.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.bm, %middle.block ]
  %.04046.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph ], [ %i.bw, %middle.block ]
  %.04145.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph ], [ %i.bx, %middle.block ]
  %.04244.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph ], [ %i.by, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge52.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i32 [ %i.da, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ]
  %.04046 = phi ptr [ %i.cz, %scalar.ph ], [ %.04046.ph, %scalar.ph.preheader ] ; 9 uses
  %.04145 = phi ptr [ %i.cy, %scalar.ph ], [ %.04145.ph, %scalar.ph.preheader ] ; 5 uses
  %.04244 = phi ptr [ %i.cx, %scalar.ph ], [ %.04244.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cc = load float, ptr %.04244, align 4, !tbaa !51
  store float %i.cc, ptr %.04046, align 4, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %.04244, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.04046, i64 4
  store float %i.ce, ptr %i.cf, align 4, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %.04244, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  store float %i.ch, ptr %i.ci, align 4, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %.04244, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.04046, i64 12
  store float %i.ck, ptr %i.cl, align 4, !tbaa !51
  %i.cm = load float, ptr %.04145, align 4, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.04046, i64 16
  store float %i.cm, ptr %i.cn, align 4, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !51
  %i.cq = getelementptr inbounds nuw i8, ptr %.04046, i64 20
  store float %i.cp, ptr %i.cq, align 4, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.04145, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %.04046, i64 24
  store float %i.cs, ptr %i.ct, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.04145, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.04046, i64 28
  store float %i.cv, ptr %i.cw, align 4, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.04244, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.04145, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.04046, i64 32
  %i.da = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !159

._crit_edge52.split:                              ; preds = %._crit_edge, %.lr.ph51, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge52.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge52.split, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !36     ; 18 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = sext i32 %i.t to i64                     ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 6 uses
  %i.x = mul i64 %i.w, %i.u                       ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge52.split

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = shl i64 %i.ad, 1                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = shl nsw i64 %i.aa, 1                    ; 3 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = add nsw i64 %i.af, %i.ai
  %i.ak = mul i64 %i.w, %i.aj
  %i.al = mul i64 %i.ak, %i.u                     ; 3 uses
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 4                ; 5 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.aq, i64 4
  %i.ar = mul i64 %i.w, %i.u
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.at = add i64 %i.al, %i.ao                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.r, i64 %i.at   ; 3 uses
  %i.av = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = getelementptr i8, <2 x ptr> %i.aw, <2 x i64> <i64 4, i64 8>
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ae   ; 2 uses
  %i.ba = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %i.az, i64 1 ; 2 uses
  %i.bc = getelementptr i8, <2 x ptr> %i.bb, <2 x i64> <i64 4, i64 8> ; 4 uses
  %i.bd = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.be = getelementptr i8, <2 x ptr> %i.bb, <2 x i64> <i64 4, i64 8>
  %scevgep61 = getelementptr i8, ptr %i.az, i64 8
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.at   ; 4 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bf, i64 1
  %i.bi = getelementptr i8, <2 x ptr> %i.bh, <2 x i64> <i64 8, i64 12>
  %i.bj = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep62 = getelementptr i8, ptr %i.bf, i64 12
  %i.bk = getelementptr i8, ptr %i.r, i64 %i.ae
  %scevgep63 = getelementptr i8, ptr %i.bk, i64 12 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.r, i64 %i.al
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ao  ; 3 uses
  %i.bn = or disjoint i64 %i.af, 1
  %i.bo = mul i64 %i.w, %i.bn
  %i.bp = mul i64 %i.bo, %i.u                     ; 4 uses
  %scevgep65 = getelementptr i8, ptr %i.r, i64 %i.bp ; 4 uses
  %i.bq = add nsw i64 %i.af, %i.ai
  %i.br = or disjoint i64 %i.bq, 1
  %i.bs = mul i64 %i.w, %i.br
  %i.bt = mul i64 %i.bs, %i.u                     ; 2 uses
  %i.bu = add i64 %i.bt, %i.ao                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.r, i64 %i.bu   ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.bv, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, <2 x i64> <i64 16, i64 4>
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bw = insertelement <4 x ptr> poison, ptr %i.au, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %i.bf, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.bm, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.bv, i64 3
  %i.ca = getelementptr i8, <4 x ptr> %i.bz, <4 x i64> <i64 8, i64 12, i64 16, i64 4>
  %i.cb = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.cc = getelementptr i8, ptr %i.r, i64 %i.bu   ; 3 uses
  %i.cd = getelementptr i8, ptr %i.r, i64 %i.bp   ; 2 uses
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = getelementptr i8, <2 x ptr> %i.cf, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.ch = add i64 %i.bt, %i.ao                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.r, i64 %i.ch   ; 4 uses
  %i.cj = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.ck = insertelement <2 x ptr> %i.cj, ptr %i.ci, i64 1
  %i.cl = getelementptr i8, <2 x ptr> %i.ck, <2 x i64> <i64 8, i64 12>
  %scevgep70 = getelementptr i8, ptr %i.ci, i64 12 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.r, i64 %i.bp   ; 2 uses
  %i.cn = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %i.co = insertelement <2 x ptr> %i.cn, ptr %i.cm, i64 1
  %i.cp = getelementptr i8, <2 x ptr> %i.co, <2 x i64> <i64 8, i64 12> ; 4 uses
  %scevgep71 = getelementptr i8, ptr %i.cm, i64 12 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.r, i64 %i.ch   ; 3 uses
  %scevgep72 = getelementptr i8, ptr %i.cq, i64 16
  %i.cr = mul i64 %i.q, %i.o
  %i.cs = mul i64 %i.cr, %i.aa
  %scevgep73 = getelementptr i8, ptr %i.l, i64 %i.cs ; 5 uses
  %i.ct = add nsw i64 %i.aa, %i.ah
  %i.cu = mul i64 %i.q, %i.ct
  %i.cv = mul i64 %i.cu, %i.o
  %i.cw = shl nuw nsw i64 %i.an, 5
  %i.cx = getelementptr i8, ptr %i.l, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 3 uses
  %i.cz = insertelement <8 x ptr> poison, ptr %i.bv, i64 0
  %i.da = insertelement <8 x ptr> %i.cz, ptr %i.cc, i64 1
  %i.db = insertelement <8 x ptr> %i.da, ptr %i.ci, i64 2
  %i.dc = insertelement <8 x ptr> %i.db, ptr %i.cq, i64 3
  %i.dd = insertelement <8 x ptr> %i.dc, ptr %i.cy, i64 4
  %i.de = shufflevector <8 x ptr> %i.dd, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.df = getelementptr i8, <8 x ptr> %i.de, <8 x i64> <i64 4, i64 8, i64 12, i64 16, i64 32, i64 8, i64 12, i64 16> ; 4 uses
  %i.dg = insertelement <8 x ptr> poison, ptr %i.cq, i64 0
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.cy, i64 1
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.bf, i64 2
  %i.dj = insertelement <8 x ptr> %i.di, ptr %i.bm, i64 3
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.bv, i64 4
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %i.cc, i64 5
  %i.dm = insertelement <8 x ptr> %i.dl, ptr %i.ci, i64 6
  %i.dn = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.do = getelementptr i8, <8 x ptr> %i.dn, <8 x i64> <i64 16, i64 32, i64 12, i64 16, i64 4, i64 8, i64 12, i64 16> ; 4 uses
  %scevgep74 = getelementptr i8, ptr %i.cy, i64 32 ; 2 uses
  %i.dp = mul i64 %i.q, %i.o
  %i.dq = insertelement <8 x ptr> poison, ptr %scevgep63, i64 0
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep65, i64 1
  %i.ds = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dt = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.du = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.dv = insertelement <8 x ptr> poison, ptr %scevgep65, i64 0
  %i.dw = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dx = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.dy = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.ea = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eb = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %scevgep, i64 0
  %i.ed = shufflevector <2 x ptr> %i.ec, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ee = shufflevector <2 x ptr> %i.cp, <2 x ptr> %i.bc, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %scevgep73, i64 1
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep63, i64 3
  %i.eh = insertelement <8 x ptr> %i.eg, ptr %scevgep65, i64 4
  %i.ei = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ek = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.el = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep58, i64 0 ; 2 uses
  %i.en = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eo = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <8 x ptr> %i.eh, <8 x ptr> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 7> ; 2 uses
  %i.er = shufflevector <8 x ptr> %i.dv, <8 x ptr> %i.ep, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.es = shufflevector <2 x ptr> %i.be, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.et = zext nneg i32 %i.y to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 44
  %i.eu = icmp ult <4 x ptr> %i.ek, %i.ca
  %i.ev = insertelement <4 x ptr> %i.es, ptr %scevgep63, i64 2
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep65, i64 3
  %i.ex = icmp ult <4 x ptr> %i.ew, %i.en
  %.mask = and i64 %i.ar, 4611686018427387904
  %i.ey = icmp ult <2 x ptr> %i.el, %i.cl
  %i.ez = icmp ult <2 x ptr> %i.cg, %i.eo
  %i.fa = icmp ult <8 x ptr> %i.ed, %i.do
  %i.fb = icmp ult <8 x ptr> %i.eq, %i.ay
  %i.fc = icmp ult <4 x ptr> %i.bd, %i.dx
  %i.fd = shufflevector <8 x ptr> %i.eq, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fe = icmp ult <4 x ptr> %i.fd, %i.bj
  %i.ff = icmp ult <2 x ptr> %i.dy, %i.dz
  %i.fg = icmp ult <2 x ptr> %i.cp, %i.ea
  %bound0151 = icmp ult ptr %scevgep61, %scevgep74
  %bound1152 = icmp ult ptr %scevgep73, %scevgep62
  %stride.check = icmp ne i64 %.mask, 0
  %i.fh = insertelement <16 x i1> poison, i1 %bound0151, i64 14
  %i.fi = insertelement <16 x i1> %i.fh, i1 %stride.check, i64 15
  %i.fj = shufflevector <8 x i1> %i.fa, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <16 x i1> %i.fj, <16 x i1> %i.fi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fl = shufflevector <4 x i1> %i.fc, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <16 x i1> %i.fk, <16 x i1> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fn = shufflevector <2 x i1> %i.ff, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fo = shufflevector <16 x i1> %i.fm, <16 x i1> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fp = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1152, i64 14
  %i.fq = shufflevector <8 x i1> %i.fb, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = shufflevector <16 x i1> %i.fq, <16 x i1> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fs = shufflevector <4 x i1> %i.fe, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <16 x i1> %i.fr, <16 x i1> %i.fs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fu = shufflevector <2 x i1> %i.fg, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fv = shufflevector <16 x i1> %i.ft, <16 x i1> %i.fu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fw = and <16 x i1> %i.fo, %i.fv
  %i.fx = icmp ult <8 x ptr> %i.ds, %i.df
  %i.fy = shufflevector <8 x ptr> %i.er, <8 x ptr> %i.ei, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = insertelement <8 x ptr> %i.fy, ptr %scevgep73, i64 4 ; 2 uses
  %i.ga = shufflevector <8 x ptr> %i.fz, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.gb = icmp ult <8 x ptr> %i.ga, %9
  %i.gc = shufflevector <8 x ptr> %i.er, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gd = icmp ult <4 x ptr> %i.gc, %i.dt
  %i.ge = shufflevector <8 x ptr> %i.fz, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.gf = icmp ult <4 x ptr> %i.ge, %i.dw
  %i.gg = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gh = icmp ult <2 x ptr> %i.gg, %i.du
  %bound1204 = icmp ult ptr %scevgep71, %scevgep70
  %bound1208 = icmp ult ptr %scevgep73, %scevgep70
  %bound0211 = icmp ult ptr %scevgep71, %scevgep74
  %bound1212 = icmp ult ptr %scevgep73, %scevgep72
  %stride.check101 = icmp slt i64 %i.dp, 0
  %i.gi = insertelement <16 x i1> poison, i1 %bound0211, i64 14
  %i.gj = insertelement <16 x i1> %i.gi, i1 %stride.check101, i64 15
  %i.gk = shufflevector <8 x i1> %i.fx, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <16 x i1> %i.gk, <16 x i1> %i.gj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gm = shufflevector <4 x i1> %i.gd, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <16 x i1> %i.gl, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.go = shufflevector <2 x i1> %i.gh, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <16 x i1> %i.gn, <16 x i1> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gq = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1204, i64 12
  %i.gr = insertelement <16 x i1> %i.gq, i1 %bound1208, i64 13
  %i.gs = insertelement <16 x i1> %i.gr, i1 %bound1212, i64 14
  %i.gt = shufflevector <8 x i1> %i.gb, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <16 x i1> %i.gt, <16 x i1> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.gv = shufflevector <4 x i1> %i.gf, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <16 x i1> %i.gu, <16 x i1> %i.gv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.gx = and <16 x i1> %i.gp, %i.gw
  %i.gy = bitcast <16 x i1> %i.gx to i16
  %i.gz = bitcast <16 x i1> %i.fw to i16
  %i.ha = insertelement <2 x i16> poison, i16 %i.gz, i64 0
  %i.hb = insertelement <2 x i16> %i.ha, i16 %i.gy, i64 1
  %i.hc = icmp ne <2 x i16> %i.hb, zeroinitializer
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.he = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i1> %i.he, <8 x i1> %i.hd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.hg = shufflevector <2 x i1> %i.ey, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <8 x i1> %i.hf, <8 x i1> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hi = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <8 x i1> %i.hi, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.hk = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <8 x i1> %i.hj, <8 x i1> %i.hk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hm = and <8 x i1> %i.hh, %i.hl
  %i.hn = bitcast <8 x i1> %i.hm to i8
  %.not = icmp eq i8 %i.hn, 0
  %n.vec = and i64 %i.et, 2147483644              ; 5 uses
  %i.ho = trunc nuw nsw i64 %n.vec to i32
  %i.hp = shl nuw nsw i64 %n.vec, 4               ; 2 uses
  %i.hq = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %i.et
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.hs = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ht = mul i64 %i.x, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ht ; 4 uses
  %i.hv = or disjoint i64 %i.hs, 1
  %i.hw = mul i64 %i.x, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hw ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hp
  %i.hz = getelementptr i8, ptr %i.hu, i64 %i.hp
  %i.ia = getelementptr i8, ptr %i.hr, i64 %i.hq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hx, i64 %i.ib
  %next.gep215 = getelementptr i8, ptr %i.hu, i64 %i.ib
  %i.ic = shl i64 %index, 5
  %next.gep216 = getelementptr i8, ptr %i.hr, i64 %i.ic
  %wide.vec = load <32 x float>, ptr %next.gep216, align 4, !tbaa !51, !alias.scope !168 ; 2 uses
  %interleaved.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  store <16 x float> %interleaved.vec, ptr %next.gep215, align 4, !tbaa !51
  %interleaved.vec224 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %interleaved.vec224, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.047.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ho, %middle.block ]
  %.04046.ph = phi ptr [ %i.hx, %vector.memcheck ], [ %i.hx, %.lr.ph ], [ %i.hy, %middle.block ]
  %.04145.ph = phi ptr [ %i.hu, %vector.memcheck ], [ %i.hu, %.lr.ph ], [ %i.hz, %middle.block ]
  %.04244.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.lr.ph ], [ %i.ia, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge52.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i32 [ %i.jc, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ]
  %.04046 = phi ptr [ %i.jb, %scalar.ph ], [ %.04046.ph, %scalar.ph.preheader ] ; 5 uses
  %.04145 = phi ptr [ %i.ja, %scalar.ph ], [ %.04145.ph, %scalar.ph.preheader ] ; 5 uses
  %.04244 = phi ptr [ %i.iz, %scalar.ph ], [ %.04244.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ie = load float, ptr %.04244, align 4, !tbaa !51
  store float %i.ie, ptr %.04145, align 4, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %.04244, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !51
  %i.ih = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  store float %i.ig, ptr %i.ih, align 4, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %.04244, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !51
  %i.ik = getelementptr inbounds nuw i8, ptr %.04145, i64 8
  store float %i.ij, ptr %i.ik, align 4, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %.04244, i64 12
  %i.im = load float, ptr %i.il, align 4, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %.04145, i64 12
  store float %i.im, ptr %i.in, align 4, !tbaa !51
  %i.io = getelementptr inbounds nuw i8, ptr %.04244, i64 16
  %i.ip = load float, ptr %i.io, align 4, !tbaa !51
  store float %i.ip, ptr %.04046, align 4, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %.04244, i64 20
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !51
  %i.is = getelementptr inbounds nuw i8, ptr %.04046, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %.04244, i64 24
  %i.iu = load float, ptr %i.it, align 4, !tbaa !51
  %i.iv = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  store float %i.iu, ptr %i.iv, align 4, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %.04244, i64 28
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !51
  %i.iy = getelementptr inbounds nuw i8, ptr %.04046, i64 12
  store float %i.ix, ptr %i.iy, align 4, !tbaa !51
  %i.iz = getelementptr inbounds nuw i8, ptr %.04244, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %.04145, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.04046, i64 16
  %i.jc = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.jc, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !167

._crit_edge52.split:                              ; preds = %._crit_edge, %.lr.ph51, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge52.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not270 = icmp sgt i32 %i.k, %i.j
  br i1 %.not270, label %._crit_edge274, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph273, %._crit_edge
  %i.r = phi i32 [ %.pre, %.lr.ph273 ], [ %i.cb, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph273 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.bh = shl nuw nsw i64 %n.vec, 5
  %i.bi = shl nuw nsw i64 %n.vec, 4               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  br label %.noexc44

.noexc44:                                         ; preds = %.noexc44.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc44.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bj = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %.reass = mul i64 %factor.op.mul, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.bl = or disjoint i64 %i.bj, 1
  %.reass108 = mul i64 %factor.op.mul, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass108 ; 4 uses
  %.reass110 = mul i64 %factor.op.mul109, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass110 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc44
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bh
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.bi
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.br
  %i.bs = shl i64 %index, 4                       ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.bm, i64 %i.bs
  %next.gep126 = getelementptr i8, ptr %i.bk, i64 %i.bs
  %wide.vec = load <32 x float>, ptr %next.gep126, align 4, !tbaa !51, !alias.scope !351
  %wide.vec130 = load <32 x float>, ptr %next.gep125, align 4, !tbaa !51, !alias.scope !352
  %interleaved.vec = shufflevector <32 x float> %wide.vec, <32 x float> %wide.vec130, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 4, i32 5, i32 6, i32 7, i32 36, i32 37, i32 38, i32 39, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 42, i32 43, i32 12, i32 13, i32 14, i32 15, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 50, i32 51, i32 20, i32 21, i32 22, i32 23, i32 52, i32 53, i32 54, i32 55, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 58, i32 59, i32 28, i32 29, i32 30, i32 31, i32 60, i32 61, i32 62, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !51, !alias.scope !353, !noalias !354
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc44, %middle.block
  %.0103.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc44 ], [ %i.bg, %middle.block ]
  %.040102.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.noexc44 ], [ %i.bo, %middle.block ]
  %.041101.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.noexc44 ], [ %i.bp, %middle.block ]
  %.042100.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.noexc44 ], [ %i.bq, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge106.split, label %.noexc44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0103 = phi i32 [ %i.cs, %scalar.ph ], [ %.0103.ph, %scalar.ph.preheader ]
  %.040102 = phi ptr [ %i.cr, %scalar.ph ], [ %.040102.ph, %scalar.ph.preheader ] ; 9 uses
  %.041101 = phi ptr [ %i.cq, %scalar.ph ], [ %.041101.ph, %scalar.ph.preheader ] ; 5 uses
  %.042100 = phi ptr [ %i.cp, %scalar.ph ], [ %.042100.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bu = load float, ptr %.042100, align 4, !tbaa !51
  store float %i.bu, ptr %.040102, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %.040102, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %.040102, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.042100, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %.040102, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !51
  %i.ce = load float, ptr %.041101, align 4, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.040102, i64 16
  store float %i.ce, ptr %i.cf, align 4, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %.041101, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.040102, i64 20
  store float %i.ch, ptr %i.ci, align 4, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %.041101, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.040102, i64 24
  store float %i.ck, ptr %i.cl, align 4, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %.041101, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %.040102, i64 28
  store float %i.cn, ptr %i.co, align 4, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %.042100, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.041101, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.040102, i64 32
  %i.cs = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !348

._crit_edge106.split:                             ; preds = %._crit_edge, %.noexc44.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge106.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.17(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not104 = icmp sgt i32 %i.k, %i.j
  br i1 %.not104, label %._crit_edge106.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !363 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !363 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !363 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !364 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !364 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !364 ; 4 uses
  %factor.op.mul107 = mul i64 %i.s, %i.u          ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge106.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = shl i64 %i.aa, 1                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.ac = shl nsw i64 %i.x, 1                     ; 3 uses
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ag = add nsw i64 %i.ac, %i.af
  %i.ah = mul i64 %i.z, %i.ag                     ; 3 uses
  %i.ai = add nsw i32 %i.v, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4                ; 5 uses
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak  ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.am, i64 4
  %i.an = mul i64 %i.u, %i.s
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.ab
  %i.ap = add i64 %i.ah, %i.ak                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.q, i64 %i.ap   ; 3 uses
  %i.ar = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.aq, i64 1
  %i.at = getelementptr i8, <2 x ptr> %i.as, <2 x i64> <i64 4, i64 8>
  %i.au = shufflevector <2 x ptr> %i.at, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.av = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.aw = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %i.av, i64 1 ; 2 uses
  %i.ay = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 4, i64 8> ; 4 uses
  %i.az = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ba = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 4, i64 8>
  %scevgep119 = getelementptr i8, ptr %i.av, i64 8
  %i.bb = getelementptr i8, ptr %i.q, i64 %i.ap   ; 4 uses
  %i.bc = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bd = insertelement <2 x ptr> %i.bc, ptr %i.bb, i64 1
  %i.be = getelementptr i8, <2 x ptr> %i.bd, <2 x i64> <i64 8, i64 12>
  %i.bf = shufflevector <2 x ptr> %i.be, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep120 = getelementptr i8, ptr %i.bb, i64 12
  %i.bg = getelementptr i8, ptr %i.q, i64 %i.ab
  %scevgep121 = getelementptr i8, ptr %i.bg, i64 12 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ak  ; 3 uses
  %i.bj = mul i64 %i.u, %i.s                      ; 2 uses
  %i.bk = or disjoint i64 %i.ac, 1
  %i.bl = mul i64 %i.bj, %i.bk                    ; 4 uses
  %scevgep123 = getelementptr i8, ptr %i.q, i64 %i.bl ; 4 uses
  %i.bm = add nsw i64 %i.ac, %i.af
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = mul i64 %i.bj, %i.bn                    ; 2 uses
  %i.bp = add i64 %i.bo, %i.ak                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.q, i64 %i.bp   ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.bi, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.bq, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, <2 x i64> <i64 16, i64 4>
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.br = insertelement <4 x ptr> poison, ptr %i.aq, i64 0
  %i.bs = insertelement <4 x ptr> %i.br, ptr %i.bb, i64 1
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.bi, i64 2
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.bq, i64 3
  %i.bv = getelementptr i8, <4 x ptr> %i.bu, <4 x i64> <i64 8, i64 12, i64 16, i64 4>
  %i.bw = getelementptr i8, ptr %i.q, i64 %i.bl
  %i.bx = getelementptr i8, ptr %i.q, i64 %i.bp   ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bl   ; 2 uses
  %i.bz = insertelement <2 x ptr> poison, ptr %i.bw, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %i.by, i64 1
  %i.cb = getelementptr i8, <2 x ptr> %i.ca, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.cc = add i64 %i.bo, %i.ak                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.q, i64 %i.cc   ; 4 uses
  %i.ce = insertelement <2 x ptr> poison, ptr %i.bx, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = getelementptr i8, <2 x ptr> %i.cf, <2 x i64> <i64 8, i64 12>
  %scevgep128 = getelementptr i8, ptr %i.cd, i64 12 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.bl   ; 2 uses
  %i.ci = insertelement <2 x ptr> poison, ptr %i.by, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %i.ch, i64 1
  %i.ck = getelementptr i8, <2 x ptr> %i.cj, <2 x i64> <i64 8, i64 12> ; 4 uses
  %scevgep129 = getelementptr i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.cc   ; 3 uses
  %scevgep130 = getelementptr i8, ptr %i.cl, i64 16
  %i.cm = mul i64 %i.p, %i.n                      ; 2 uses
  %i.cn = mul i64 %i.cm, %i.x
  %scevgep131 = getelementptr i8, ptr %i.l, i64 %i.cn ; 5 uses
  %i.co = add nsw i64 %i.x, %i.ae
  %i.cp = mul i64 %i.cm, %i.co
  %i.cq = shl nuw nsw i64 %i.aj, 5
  %i.cr = getelementptr i8, ptr %i.l, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq  ; 3 uses
  %i.ct = insertelement <8 x ptr> poison, ptr %i.bq, i64 0
  %i.cu = insertelement <8 x ptr> %i.ct, ptr %i.bx, i64 1
  %i.cv = insertelement <8 x ptr> %i.cu, ptr %i.cd, i64 2
  %i.cw = insertelement <8 x ptr> %i.cv, ptr %i.cl, i64 3
  %i.cx = insertelement <8 x ptr> %i.cw, ptr %i.cs, i64 4
  %i.cy = shufflevector <8 x ptr> %i.cx, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.cz = getelementptr i8, <8 x ptr> %i.cy, <8 x i64> <i64 4, i64 8, i64 12, i64 16, i64 32, i64 8, i64 12, i64 16> ; 4 uses
  %i.da = insertelement <8 x ptr> poison, ptr %i.cl, i64 0
  %i.db = insertelement <8 x ptr> %i.da, ptr %i.cs, i64 1
  %i.dc = insertelement <8 x ptr> %i.db, ptr %i.bb, i64 2
  %i.dd = insertelement <8 x ptr> %i.dc, ptr %i.bi, i64 3
  %i.de = insertelement <8 x ptr> %i.dd, ptr %i.bq, i64 4
  %i.df = insertelement <8 x ptr> %i.de, ptr %i.bx, i64 5
  %i.dg = insertelement <8 x ptr> %i.df, ptr %i.cd, i64 6
  %i.dh = shufflevector <8 x ptr> %i.dg, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.di = getelementptr i8, <8 x ptr> %i.dh, <8 x i64> <i64 16, i64 32, i64 12, i64 16, i64 4, i64 8, i64 12, i64 16> ; 4 uses
  %scevgep132 = getelementptr i8, ptr %i.cs, i64 32 ; 2 uses
  %i.dj = mul i64 %i.p, %i.n
  %i.dk = insertelement <8 x ptr> poison, ptr %scevgep121, i64 0
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %scevgep123, i64 1
  %i.dm = shufflevector <8 x ptr> %i.dl, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dn = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.do = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.dp = insertelement <8 x ptr> poison, ptr %scevgep123, i64 0
  %i.dq = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dr = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ds = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.du = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.dv = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %scevgep, i64 0
  %i.dx = shufflevector <2 x ptr> %i.dw, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dy = shufflevector <2 x ptr> %i.ck, <2 x ptr> %i.ay, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep131, i64 1
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %scevgep121, i64 3
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %scevgep123, i64 4
  %i.ec = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ee = shufflevector <4 x ptr> %i.ed, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ef = shufflevector <4 x ptr> %i.ed, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <4 x ptr> poison, ptr %scevgep116, i64 0 ; 2 uses
  %i.eh = shufflevector <4 x ptr> %i.eg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ei = shufflevector <4 x ptr> %i.eg, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x ptr> %i.cb, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ek = shufflevector <8 x ptr> %i.eb, <8 x ptr> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 7> ; 2 uses
  %i.el = shufflevector <8 x ptr> %i.dp, <8 x ptr> %i.ej, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.em = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.en = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 44
  %i.eo = icmp ult <4 x ptr> %i.ee, %i.bv
  %i.ep = insertelement <4 x ptr> %i.em, ptr %scevgep121, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %scevgep123, i64 3
  %i.er = icmp ult <4 x ptr> %i.eq, %i.eh
  %.mask = and i64 %i.an, 4611686018427387904
  %i.es = icmp ult <2 x ptr> %i.ef, %i.cg
  %i.et = icmp ult <2 x ptr> %i.cb, %i.ei
  %i.eu = icmp ult <8 x ptr> %i.dx, %i.di
  %i.ev = icmp ult <8 x ptr> %i.ek, %i.au
  %i.ew = icmp ult <4 x ptr> %i.az, %i.dr
  %i.ex = shufflevector <8 x ptr> %i.ek, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ey = icmp ult <4 x ptr> %i.ex, %i.bf
  %i.ez = icmp ult <2 x ptr> %i.ds, %i.dt
  %i.fa = icmp ult <2 x ptr> %i.ck, %i.du
  %bound0209 = icmp ult ptr %scevgep119, %scevgep132
  %bound1210 = icmp ult ptr %scevgep131, %scevgep120
  %stride.check = icmp ne i64 %.mask, 0
  %i.fb = insertelement <16 x i1> poison, i1 %bound0209, i64 14
  %i.fc = insertelement <16 x i1> %i.fb, i1 %stride.check, i64 15
  %i.fd = shufflevector <8 x i1> %i.eu, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = shufflevector <16 x i1> %i.fd, <16 x i1> %i.fc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ff = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <16 x i1> %i.fe, <16 x i1> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <16 x i1> %i.fg, <16 x i1> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fj = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1210, i64 14
  %i.fk = shufflevector <8 x i1> %i.ev, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <16 x i1> %i.fk, <16 x i1> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fm = shufflevector <4 x i1> %i.ey, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <16 x i1> %i.fl, <16 x i1> %i.fm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <16 x i1> %i.fn, <16 x i1> %i.fo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fq = and <16 x i1> %i.fi, %i.fp
  %i.fr = icmp ult <8 x ptr> %i.dm, %i.cz
  %i.fs = shufflevector <8 x ptr> %i.el, <8 x ptr> %i.ec, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = insertelement <8 x ptr> %i.fs, ptr %scevgep131, i64 4 ; 2 uses
  %i.fu = shufflevector <8 x ptr> %i.ft, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.fv = icmp ult <8 x ptr> %i.fu, %9
  %i.fw = shufflevector <8 x ptr> %i.el, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fx = icmp ult <4 x ptr> %i.fw, %i.dn
  %i.fy = shufflevector <8 x ptr> %i.ft, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.fz = icmp ult <4 x ptr> %i.fy, %i.dq
  %i.ga = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gb = icmp ult <2 x ptr> %i.ga, %i.do
  %bound1262 = icmp ult ptr %scevgep129, %scevgep128
  %bound1266 = icmp ult ptr %scevgep131, %scevgep128
  %bound0269 = icmp ult ptr %scevgep129, %scevgep132
  %bound1270 = icmp ult ptr %scevgep131, %scevgep130
  %stride.check159 = icmp slt i64 %i.dj, 0
  %i.gc = insertelement <16 x i1> poison, i1 %bound0269, i64 14
  %i.gd = insertelement <16 x i1> %i.gc, i1 %stride.check159, i64 15
  %i.ge = shufflevector <8 x i1> %i.fr, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <16 x i1> %i.ge, <16 x i1> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gg = shufflevector <4 x i1> %i.fx, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gf, <16 x i1> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gi = shufflevector <2 x i1> %i.gb, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i1> %i.gh, <16 x i1> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gk = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1262, i64 12
  %i.gl = insertelement <16 x i1> %i.gk, i1 %bound1266, i64 13
  %i.gm = insertelement <16 x i1> %i.gl, i1 %bound1270, i64 14
  %i.gn = shufflevector <8 x i1> %i.fv, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <16 x i1> %i.gn, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.gp = shufflevector <4 x i1> %i.fz, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <16 x i1> %i.go, <16 x i1> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.gr = and <16 x i1> %i.gj, %i.gq
  %i.gs = bitcast <16 x i1> %i.gr to i16
  %i.gt = bitcast <16 x i1> %i.fq to i16
  %i.gu = insertelement <2 x i16> poison, i16 %i.gt, i64 0
  %i.gv = insertelement <2 x i16> %i.gu, i16 %i.gs, i64 1
  %i.gw = icmp ne <2 x i16> %i.gv, zeroinitializer
  %i.gx = shufflevector <2 x i1> %i.gw, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.gy = shufflevector <4 x i1> %i.eo, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <8 x i1> %i.gy, <8 x i1> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ha = shufflevector <2 x i1> %i.es, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hb = shufflevector <8 x i1> %i.gz, <8 x i1> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hc = shufflevector <4 x i1> %i.er, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <8 x i1> %i.hc, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.he = shufflevector <2 x i1> %i.et, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i1> %i.hd, <8 x i1> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hg = and <8 x i1> %i.hb, %i.hf
  %i.hh = bitcast <8 x i1> %i.hg to i8
  %.not = icmp eq i8 %i.hh, 0
  %n.vec = and i64 %i.en, 2147483644              ; 5 uses
  %i.hi = trunc nuw nsw i64 %n.vec to i32
  %i.hj = shl nuw nsw i64 %n.vec, 4               ; 2 uses
  %i.hk = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.hm = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %.reass108 = mul i64 %factor.op.mul107, %i.hm
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass108 ; 4 uses
  %i.ho = or disjoint i64 %i.hm, 1
  %.reass110 = mul i64 %factor.op.mul107, %i.ho
  %i.hp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass110 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hj
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hj
  %i.hs = getelementptr i8, ptr %i.hl, i64 %i.hk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ht = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hp, i64 %i.ht
  %next.gep273 = getelementptr i8, ptr %i.hn, i64 %i.ht
  %i.hu = shl i64 %index, 5
  %next.gep274 = getelementptr i8, ptr %i.hl, i64 %i.hu
  %wide.vec = load <32 x float>, ptr %next.gep274, align 4, !tbaa !51, !alias.scope !365 ; 2 uses
  %interleaved.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  store <16 x float> %interleaved.vec, ptr %next.gep273, align 4, !tbaa !51
  %interleaved.vec282 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %interleaved.vec282, ptr %next.gep, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.0103.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.hi, %middle.block ]
  %.040102.ph = phi ptr [ %i.hp, %vector.memcheck ], [ %i.hp, %.noexc ], [ %i.hq, %middle.block ]
  %.041101.ph = phi ptr [ %i.hn, %vector.memcheck ], [ %i.hn, %.noexc ], [ %i.hr, %middle.block ]
  %.042100.ph = phi ptr [ %i.hl, %vector.memcheck ], [ %i.hl, %.noexc ], [ %i.hs, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge106.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0103 = phi i32 [ %i.iu, %scalar.ph ], [ %.0103.ph, %scalar.ph.preheader ]
  %.040102 = phi ptr [ %i.it, %scalar.ph ], [ %.040102.ph, %scalar.ph.preheader ] ; 5 uses
  %.041101 = phi ptr [ %i.is, %scalar.ph ], [ %.041101.ph, %scalar.ph.preheader ] ; 5 uses
  %.042100 = phi ptr [ %i.ir, %scalar.ph ], [ %.042100.ph, %scalar.ph.preheader ] ; 9 uses
  %i.hw = load float, ptr %.042100, align 4, !tbaa !51
  store float %i.hw, ptr %.041101, align 4, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.041101, i64 4
  store float %i.hy, ptr %i.hz, align 4, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %.041101, i64 8
  store float %i.ib, ptr %i.ic, align 4, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.042100, i64 12
  %i.ie = load float, ptr %i.id, align 4, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %.041101, i64 12
  store float %i.ie, ptr %i.if, align 4, !tbaa !51
  %i.ig = getelementptr inbounds nuw i8, ptr %.042100, i64 16
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !51
  store float %i.ih, ptr %.040102, align 4, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %.042100, i64 20
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !51
  %i.ik = getelementptr inbounds nuw i8, ptr %.040102, i64 4
  store float %i.ij, ptr %i.ik, align 4, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %.042100, i64 24
  %i.im = load float, ptr %i.il, align 4, !tbaa !51
  %i.in = getelementptr inbounds nuw i8, ptr %.040102, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !51
  %i.io = getelementptr inbounds nuw i8, ptr %.042100, i64 28
  %i.ip = load float, ptr %i.io, align 4, !tbaa !51
  %i.iq = getelementptr inbounds nuw i8, ptr %.040102, i64 12
  store float %i.ip, ptr %i.iq, align 4, !tbaa !51
  %i.ir = getelementptr inbounds nuw i8, ptr %.042100, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.041101, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %.040102, i64 16
  %i.iu = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.iu, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !362

._crit_edge106.split:                             ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge106.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not676 = icmp sgt i32 %i.k, %i.j
  br i1 %.not676, label %._crit_edge678, label %.noexc196.lr.ph

.noexc196.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !41
  br label %.noexc196

.noexc196:                                        ; preds = %.noexc196.lr.ph, %._crit_edge
  %i.r = phi i32 [ %.pre, %.noexc196.lr.ph ], [ %i.co, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc196.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.25:bb.a
  %i.hb = shufflevector <8 x i16> %wide.load163, <8 x i16> %wide.load164, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x i16> %wide.load165, <8 x i16> %wide.load166, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <8 x i16> %wide.load167, <8 x i16> %wide.load168, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = shufflevector <16 x i16> %i.ha, <16 x i16> %i.hb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hf = shufflevector <16 x i16> %i.hc, <16 x i16> %i.hd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec169 = shufflevector <32 x i16> %i.he, <32 x i16> %i.hf, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec169, ptr %next.gep152, align 2, !tbaa !62, !alias.scope !516, !noalias !517
  %index.next170 = add nuw i64 %index151, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next170, %n.vec150
  br i1 %i.hg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !506

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n171, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.es, %vec.epilog.iter.check ], [ %i.ev, %vec.epilog.middle.block ]
  %.05068.ph = phi ptr [ %i.fw, %iter.check ], [ %i.fw, %vector.memcheck ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  %.05167.ph = phi ptr [ %i.fv, %iter.check ], [ %i.fv, %vector.memcheck ], [ %i.fy, %vec.epilog.iter.check ], [ %i.gq, %vec.epilog.middle.block ]
  %.05266.ph = phi ptr [ %i.fs, %iter.check ], [ %i.fs, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  %.05365.ph = phi ptr [ %i.fp, %iter.check ], [ %i.fp, %vector.memcheck ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ]
  %.05464.ph = phi ptr [ %i.fm, %iter.check ], [ %i.fm, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gt, %vec.epilog.middle.block ]
  %.05563.ph = phi ptr [ %i.fj, %iter.check ], [ %i.fj, %vector.memcheck ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gu, %vec.epilog.middle.block ]
  %.05662.ph = phi ptr [ %i.fg, %iter.check ], [ %i.fg, %vector.memcheck ], [ %i.gd, %vec.epilog.iter.check ], [ %i.gv, %vec.epilog.middle.block ]
  %.05761.ph = phi ptr [ %i.fd, %iter.check ], [ %i.fd, %vector.memcheck ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ]
  %.05860.ph = phi ptr [ %i.fa, %iter.check ], [ %i.fa, %vector.memcheck ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.069 = phi i32 [ %i.if, %vec.epilog.scalar.ph ], [ %.069.ph, %vec.epilog.scalar.ph.preheader ]
  %.05068 = phi ptr [ %i.ie, %vec.epilog.scalar.ph ], [ %.05068.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.05167 = phi ptr [ %i.ib, %vec.epilog.scalar.ph ], [ %.05167.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.hy, %vec.epilog.scalar.ph ], [ %.05266.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.hv, %vec.epilog.scalar.ph ], [ %.05365.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.hs, %vec.epilog.scalar.ph ], [ %.05464.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.hp, %vec.epilog.scalar.ph ], [ %.05563.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.hm, %vec.epilog.scalar.ph ], [ %.05662.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.hj, %vec.epilog.scalar.ph ], [ %.05761.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.hh, %vec.epilog.scalar.ph ], [ %.05860.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.hi = load i16, ptr %.05860, align 2, !tbaa !62
  store i16 %i.hi, ptr %.05068, align 2, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  %i.hk = load i16, ptr %.05761, align 2, !tbaa !62
  %i.hl = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !62
  %i.hm = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  %i.hn = load i16, ptr %.05662, align 2, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %.05068, i64 4
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !62
  %i.hp = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  %i.hq = load i16, ptr %.05563, align 2, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %.05068, i64 6
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  %i.ht = load i16, ptr %.05464, align 2, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !62
  %i.hv = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  %i.hw = load i16, ptr %.05365, align 2, !tbaa !62
  %i.hx = getelementptr inbounds nuw i8, ptr %.05068, i64 10
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !62
  %i.hy = getelementptr inbounds nuw i8, ptr %.05266, i64 2
  %i.hz = load i16, ptr %.05266, align 2, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %.05068, i64 12
  store i16 %i.hz, ptr %i.ia, align 2, !tbaa !62
  %i.ib = getelementptr inbounds nuw i8, ptr %.05167, i64 2
  %i.ic = load i16, ptr %.05167, align 2, !tbaa !62
  %i.id = getelementptr inbounds nuw i8, ptr %.05068, i64 14
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %.05068, i64 16
  %i.if = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.if, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !507

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond76.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge74.split, label %iter.check

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
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.26(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !36     ; 24 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = sext i32 %i.t to i64                     ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 18 uses
  %i.x = mul i64 %i.w, %i.u                       ; 8 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = shl i64 %i.ad, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = shl nsw i64 %i.aa, 3                    ; 15 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3                ; 8 uses
  %i.aj = add nsw i64 %i.af, %i.ai
  %i.ak = mul i64 %i.w, %i.aj
  %i.al = mul i64 %i.ak, %i.u
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1                ; 8 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.aq, i64 2
  %i.ar = mul i64 %i.w, %i.u
  %i.as = or disjoint i64 %i.af, 1
  %i.at = mul i64 %i.w, %i.as
  %i.au = mul i64 %i.at, %i.u
  %scevgep81 = getelementptr i8, ptr %i.r, i64 %i.au ; 2 uses
  %i.av = add nsw i64 %i.af, %i.ai
  %i.aw = or disjoint i64 %i.av, 1
  %i.ax = mul i64 %i.w, %i.aw
  %i.ay = mul i64 %i.ax, %i.u
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ao  ; 3 uses
  %i.bb = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bc = insertelement <2 x ptr> %i.bb, ptr %i.ba, i64 1
  %i.bd = getelementptr i8, <2 x ptr> %i.bc, i64 2
  %i.be = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bf = or disjoint i64 %i.af, 2
  %i.bg = mul i64 %i.w, %i.bf
  %i.bh = mul i64 %i.bg, %i.u
  %scevgep83 = getelementptr i8, ptr %i.r, i64 %i.bh ; 3 uses
  %i.bi = add nsw i64 %i.af, %i.ai
  %i.bj = or disjoint i64 %i.bi, 2
  %i.bk = mul i64 %i.w, %i.bj
  %i.bl = mul i64 %i.bk, %i.u
  %i.bm = getelementptr i8, ptr %i.r, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.ao  ; 4 uses
  %i.bo = insertelement <2 x ptr> poison, ptr %i.ba, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, i64 2
  %i.br = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep84 = getelementptr i8, ptr %i.bn, i64 2
  %i.bs = or disjoint i64 %i.af, 3
  %i.bt = mul i64 %i.w, %i.bs
  %i.bu = mul i64 %i.bt, %i.u
  %scevgep85 = getelementptr i8, ptr %i.r, i64 %i.bu ; 3 uses
  %i.bv = add nsw i64 %i.af, %i.ai
  %i.bw = or disjoint i64 %i.bv, 3
  %i.bx = mul i64 %i.w, %i.bw
  %i.by = mul i64 %i.bx, %i.u
  %i.bz = getelementptr i8, ptr %i.r, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.ao  ; 3 uses
  %i.cb = or disjoint i64 %i.af, 4
  %i.cc = mul i64 %i.w, %i.cb
  %i.cd = mul i64 %i.cc, %i.u
  %scevgep87 = getelementptr i8, ptr %i.r, i64 %i.cd ; 4 uses
  %i.ce = add nsw i64 %i.af, %i.ai
  %i.cf = or disjoint i64 %i.ce, 4
  %i.cg = mul i64 %i.w, %i.cf
  %i.ch = mul i64 %i.cg, %i.u
  %i.ci = getelementptr i8, ptr %i.r, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.ao  ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.ca, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.cj, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 2
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ck = insertelement <4 x ptr> poison, ptr %i.ba, i64 0
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %i.bn, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %i.ca, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.cj, i64 3
  %i.co = getelementptr i8, <4 x ptr> %i.cn, i64 2
  %i.cp = or disjoint i64 %i.af, 5
  %i.cq = mul i64 %i.w, %i.cp
  %i.cr = mul i64 %i.cq, %i.u
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.cr ; 3 uses
  %i.cs = add nsw i64 %i.af, %i.ai
  %i.ct = or disjoint i64 %i.cs, 5
  %i.cu = mul i64 %i.w, %i.ct
  %i.cv = mul i64 %i.cu, %i.u
  %i.cw = getelementptr i8, ptr %i.r, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ao  ; 3 uses
  %i.cy = or disjoint i64 %i.af, 6
  %i.cz = mul i64 %i.w, %i.cy
  %i.da = mul i64 %i.cz, %i.u
  %scevgep91 = getelementptr i8, ptr %i.r, i64 %i.da ; 3 uses
  %i.db = add nsw i64 %i.af, %i.ai
  %i.dc = or disjoint i64 %i.db, 6
  %i.dd = mul i64 %i.w, %i.dc
  %i.de = mul i64 %i.dd, %i.u
  %i.df = getelementptr i8, ptr %i.r, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.ao  ; 3 uses
  %i.dh = insertelement <2 x ptr> poison, ptr %i.cx, i64 0
  %i.di = insertelement <2 x ptr> %i.dh, ptr %i.dg, i64 1
  %i.dj = getelementptr i8, <2 x ptr> %i.di, i64 2
  %i.dk = or disjoint i64 %i.af, 7
  %i.dl = mul i64 %i.w, %i.dk
  %i.dm = mul i64 %i.dl, %i.u
  %scevgep93 = getelementptr i8, ptr %i.r, i64 %i.dm ; 3 uses
  %i.dn = add nsw i64 %i.af, %i.ai
  %i.do = or disjoint i64 %i.dn, 7
  %i.dp = mul i64 %i.w, %i.do
  %i.dq = mul i64 %i.dp, %i.u
  %i.dr = getelementptr i8, ptr %i.r, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.ao  ; 3 uses
  %scevgep94 = getelementptr i8, ptr %i.ds, i64 2
  %i.dt = mul i64 %i.q, %i.o
  %i.du = mul i64 %i.dt, %i.aa
  %scevgep95 = getelementptr i8, ptr %i.l, i64 %i.du ; 4 uses
  %i.dv = add nsw i64 %i.aa, %i.ah
  %i.dw = mul i64 %i.q, %i.dv
  %i.dx = mul i64 %i.dw, %i.o
  %i.dy = shl nuw nsw i64 %i.an, 4
  %i.dz = getelementptr i8, ptr %i.l, i64 %i.dx
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dy  ; 3 uses
  %i.eb = insertelement <8 x ptr> poison, ptr %i.cj, i64 0
  %i.ec = insertelement <8 x ptr> %i.eb, ptr %i.cx, i64 1
  %i.ed = insertelement <8 x ptr> %i.ec, ptr %i.dg, i64 2
  %i.ee = insertelement <8 x ptr> %i.ed, ptr %i.ds, i64 3
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %i.ea, i64 4
  %i.eg = shufflevector <8 x ptr> %i.ef, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.eh = getelementptr i8, <8 x ptr> %i.eg, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.ei = insertelement <8 x ptr> poison, ptr %i.ds, i64 0
  %i.ej = insertelement <8 x ptr> %i.ei, ptr %i.ea, i64 1
  %i.ek = insertelement <8 x ptr> %i.ej, ptr %i.bn, i64 2
  %i.el = insertelement <8 x ptr> %i.ek, ptr %i.ca, i64 3
  %i.em = insertelement <8 x ptr> %i.el, ptr %i.cj, i64 4
  %i.en = insertelement <8 x ptr> %i.em, ptr %i.cx, i64 5
  %i.eo = insertelement <8 x ptr> %i.en, ptr %i.dg, i64 6
  %i.ep = shufflevector <8 x ptr> %i.eo, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.eq = getelementptr i8, <8 x ptr> %i.ep, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep96 = getelementptr i8, ptr %i.ea, i64 16 ; 2 uses
  %i.er = mul i64 %i.q, %i.o
  %i.es = insertelement <8 x ptr> poison, ptr %scevgep85, i64 0
  %i.et = insertelement <8 x ptr> %i.es, ptr %scevgep87, i64 1
  %i.eu = shufflevector <8 x ptr> %i.et, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ev = shufflevector <8 x ptr> %i.eh, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ew = shufflevector <8 x ptr> %i.eh, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ex = insertelement <8 x ptr> poison, ptr %scevgep87, i64 0
  %i.ey = insertelement <8 x ptr> %i.ex, ptr %scevgep89, i64 1 ; 2 uses
  %i.ez = insertelement <8 x ptr> %i.ey, ptr %scevgep91, i64 2 ; 2 uses
  %i.fa = insertelement <8 x ptr> %i.ez, ptr %scevgep93, i64 3
  %i.fb = insertelement <8 x ptr> %i.fa, ptr %scevgep95, i64 4 ; 3 uses
  %i.fc = shufflevector <8 x ptr> %i.fb, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.fd = shufflevector <8 x ptr> %i.fb, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.fe = shufflevector <8 x ptr> %i.eh, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ff = shufflevector <8 x ptr> %i.fb, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.fg = shufflevector <8 x ptr> %i.eh, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fh = shufflevector <8 x ptr> %i.ey, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fi = shufflevector <8 x ptr> %i.ez, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fj = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.fk = insertelement <8 x ptr> %i.fj, ptr %scevgep81, i64 1
  %i.fl = shufflevector <8 x ptr> %i.fk, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fm = insertelement <4 x ptr> poison, ptr %scevgep81, i64 0
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep83, i64 1 ; 3 uses
  %i.fo = shufflevector <4 x ptr> %i.fn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fp = shufflevector <8 x ptr> %i.eq, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fq = shufflevector <4 x ptr> %i.fn, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = shufflevector <8 x ptr> %i.eq, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.fs = insertelement <8 x ptr> poison, ptr %scevgep93, i64 0
  %i.ft = insertelement <8 x ptr> %i.fs, ptr %scevgep95, i64 1
  %i.fu = insertelement <8 x ptr> %i.ft, ptr %scevgep83, i64 2
  %i.fv = insertelement <8 x ptr> %i.fu, ptr %scevgep85, i64 3
  %i.fw = insertelement <8 x ptr> %i.fv, ptr %scevgep87, i64 4
  %i.fx = insertelement <8 x ptr> %i.fw, ptr %scevgep89, i64 5 ; 2 uses
  %i.fy = insertelement <8 x ptr> %i.fx, ptr %scevgep91, i64 6 ; 2 uses
  %i.fz = shufflevector <8 x ptr> %i.fy, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.ga = shufflevector <8 x ptr> %i.fx, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.gb = shufflevector <8 x ptr> %i.fy, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.gc = shufflevector <8 x ptr> %i.eq, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.gd = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ge = shufflevector <4 x ptr> %i.gd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gf = shufflevector <4 x ptr> %i.gd, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.gg = insertelement <4 x ptr> %i.fn, ptr %scevgep85, i64 2
  %i.gh = insertelement <4 x ptr> %i.gg, ptr %scevgep87, i64 3
  %i.gi = insertelement <4 x ptr> poison, ptr %scevgep80, i64 0 ; 2 uses
  %i.gj = shufflevector <4 x ptr> %i.gi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gk = insertelement <2 x ptr> poison, ptr %scevgep89, i64 0
  %i.gl = insertelement <2 x ptr> %i.gk, ptr %scevgep91, i64 1
  %i.gm = shufflevector <4 x ptr> %i.gi, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.gn = zext nneg i32 %i.y to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 48
  %i.go = icmp ult <4 x ptr> %i.ge, %i.co
  %i.gp = icmp ult <4 x ptr> %i.gh, %i.gj
  %.mask = and i64 %i.ar, 1152921504606846976
  %i.gq = icmp ult <2 x ptr> %i.gf, %i.dj
  %i.gr = icmp ult <2 x ptr> %i.gl, %i.gm
  %i.gs = icmp ult <8 x ptr> %i.fl, %i.eq
  %i.gt = icmp ult <8 x ptr> %i.fz, %i.be
  %i.gu = icmp ult <4 x ptr> %i.fo, %i.fp
  %i.gv = icmp ult <4 x ptr> %i.ga, %i.br
  %i.gw = icmp ult <2 x ptr> %i.fq, %i.fr
  %i.gx = icmp ult <2 x ptr> %i.gb, %i.gc
  %bound0173 = icmp ult ptr %scevgep83, %scevgep96
  %bound1174 = icmp ult ptr %scevgep95, %scevgep84
  %stride.check = icmp ne i64 %.mask, 0
  %i.gy = insertelement <16 x i1> poison, i1 %bound0173, i64 14
  %i.gz = insertelement <16 x i1> %i.gy, i1 %stride.check, i64 15
  %i.ha = shufflevector <8 x i1> %i.gs, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hb = shufflevector <16 x i1> %i.ha, <16 x i1> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.hc = shufflevector <4 x i1> %i.gu, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <16 x i1> %i.hb, <16 x i1> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.he = shufflevector <2 x i1> %i.gw, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <16 x i1> %i.hd, <16 x i1> %i.he, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.hg = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1174, i64 14
  %i.hh = shufflevector <8 x i1> %i.gt, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <16 x i1> %i.hh, <16 x i1> %i.hg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.hj = shufflevector <4 x i1> %i.gv, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = shufflevector <16 x i1> %i.hi, <16 x i1> %i.hj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.hl = shufflevector <2 x i1> %i.gx, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = shufflevector <16 x i1> %i.hk, <16 x i1> %i.hl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.hn = and <16 x i1> %i.hf, %i.hm
  %i.ho = icmp ult <8 x ptr> %i.eu, %i.eh
  %i.hp = icmp ult <8 x ptr> %i.fc, %9
  %i.hq = icmp ult <4 x ptr> %i.fh, %i.ev
  %i.hr = icmp ult <4 x ptr> %i.fd, %i.fe
  %i.hs = icmp ult <2 x ptr> %i.fi, %i.ew
  %i.ht = icmp ult <2 x ptr> %i.ff, %i.fg
  %bound0233 = icmp ult ptr %scevgep93, %scevgep96
  %bound1234 = icmp ult ptr %scevgep95, %scevgep94
  %stride.check123 = icmp slt i64 %i.er, 0
  %i.hu = insertelement <16 x i1> poison, i1 %bound0233, i64 14
  %i.hv = insertelement <16 x i1> %i.hu, i1 %stride.check123, i64 15
  %i.hw = shufflevector <8 x i1> %i.ho, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = shufflevector <16 x i1> %i.hw, <16 x i1> %i.hv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.hy = shufflevector <4 x i1> %i.hq, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hz = shufflevector <16 x i1> %i.hx, <16 x i1> %i.hy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ia = shufflevector <2 x i1> %i.hs, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ib = shufflevector <16 x i1> %i.hz, <16 x i1> %i.ia, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ic = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1234, i64 14
  %i.id = shufflevector <8 x i1> %i.hp, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ie = shufflevector <16 x i1> %i.id, <16 x i1> %i.ic, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.if = shufflevector <4 x i1> %i.hr, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ig = shufflevector <16 x i1> %i.ie, <16 x i1> %i.if, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ih = shufflevector <2 x i1> %i.ht, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = shufflevector <16 x i1> %i.ig, <16 x i1> %i.ih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ij = and <16 x i1> %i.ib, %i.ii
  %i.ik = bitcast <16 x i1> %i.ij to i16
  %i.il = bitcast <16 x i1> %i.hn to i16
  %i.im = insertelement <2 x i16> poison, i16 %i.il, i64 0
  %i.in = insertelement <2 x i16> %i.im, i16 %i.ik, i64 1
  %i.io = icmp ne <2 x i16> %i.in, zeroinitializer
  %i.ip = shufflevector <2 x i1> %i.io, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.iq = shufflevector <4 x i1> %i.go, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = shufflevector <8 x i1> %i.iq, <8 x i1> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.is = shufflevector <2 x i1> %i.gq, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <8 x i1> %i.ir, <8 x i1> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.iu = shufflevector <4 x i1> %i.gp, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iv = shufflevector <8 x i1> %i.iu, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.iw = shufflevector <2 x i1> %i.gr, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = shufflevector <8 x i1> %i.iv, <8 x i1> %i.iw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.iy = and <8 x i1> %i.it, %i.ix
  %i.iz = bitcast <8 x i1> %i.iy to i8
  %.not = icmp eq i8 %i.iz, 0
  %n.vec = and i64 %i.gn, 2147483640              ; 5 uses
  %i.ja = trunc nuw nsw i64 %n.vec to i32
  %i.jb = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.jc = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.gn
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.jd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.je = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %i.jf = mul i64 %i.x, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jf ; 4 uses
  %i.jh = or disjoint i64 %i.je, 1
  %i.ji = mul i64 %i.x, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ji ; 4 uses
  %i.jk = or disjoint i64 %i.je, 2
  %i.jl = mul i64 %i.x, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jl ; 4 uses
  %i.jn = or disjoint i64 %i.je, 3
  %i.jo = mul i64 %i.x, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jo ; 4 uses
  %i.jq = or disjoint i64 %i.je, 4
  %i.jr = mul i64 %i.x, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jr ; 4 uses
  %i.jt = or disjoint i64 %i.je, 5
  %i.ju = mul i64 %i.x, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ju ; 4 uses
  %i.jw = or disjoint i64 %i.je, 6
  %i.jx = mul i64 %i.x, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.jx ; 4 uses
  %i.jz = or disjoint i64 %i.je, 7
  %i.ka = mul i64 %i.x, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ka ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.kc = getelementptr i8, ptr %i.kb, i64 %i.jb
  %i.kd = getelementptr i8, ptr %i.jy, i64 %i.jb
  %i.ke = getelementptr i8, ptr %i.jv, i64 %i.jb
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.jb
  %i.kg = getelementptr i8, ptr %i.jp, i64 %i.jb
  %i.kh = getelementptr i8, ptr %i.jm, i64 %i.jb
  %i.ki = getelementptr i8, ptr %i.jj, i64 %i.jb
  %i.kj = getelementptr i8, ptr %i.jg, i64 %i.jb
  %i.kk = getelementptr i8, ptr %i.jd, i64 %i.jc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kl = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.kb, i64 %i.kl
  %next.gep237 = getelementptr i8, ptr %i.jy, i64 %i.kl
  %next.gep238 = getelementptr i8, ptr %i.jv, i64 %i.kl
  %next.gep239 = getelementptr i8, ptr %i.js, i64 %i.kl
  %next.gep240 = getelementptr i8, ptr %i.jp, i64 %i.kl
  %next.gep241 = getelementptr i8, ptr %i.jm, i64 %i.kl
  %next.gep242 = getelementptr i8, ptr %i.jj, i64 %i.kl
  %next.gep243 = getelementptr i8, ptr %i.jg, i64 %i.kl
  %i.km = shl i64 %index, 4
  %next.gep244 = getelementptr i8, ptr %i.jd, i64 %i.km
  %wide.vec = load <64 x i16>, ptr %next.gep244, align 2, !tbaa !62, !alias.scope !530 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec245 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec246 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec247 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec248 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec249 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec250 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec251 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep243, align 2, !tbaa !62, !alias.scope !531, !noalias !532
  store <8 x i16> %strided.vec245, ptr %next.gep242, align 2, !tbaa !62, !alias.scope !533, !noalias !534
  store <8 x i16> %strided.vec246, ptr %next.gep241, align 2, !tbaa !62, !alias.scope !535, !noalias !536
  store <8 x i16> %strided.vec247, ptr %next.gep240, align 2, !tbaa !62, !alias.scope !537, !noalias !538
  store <8 x i16> %strided.vec248, ptr %next.gep239, align 2, !tbaa !62, !alias.scope !539, !noalias !540
  store <8 x i16> %strided.vec249, ptr %next.gep238, align 2, !tbaa !62, !alias.scope !541, !noalias !542
  store <8 x i16> %strided.vec250, ptr %next.gep237, align 2, !tbaa !62, !alias.scope !543, !noalias !544
  store <8 x i16> %strided.vec251, ptr %next.gep, align 2, !tbaa !62, !alias.scope !545, !noalias !530
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.069.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ja, %middle.block ]
  %.05068.ph = phi ptr [ %i.kb, %vector.memcheck ], [ %i.kb, %.lr.ph ], [ %i.kc, %middle.block ]
  %.05167.ph = phi ptr [ %i.jy, %vector.memcheck ], [ %i.jy, %.lr.ph ], [ %i.kd, %middle.block ]
  %.05266.ph = phi ptr [ %i.jv, %vector.memcheck ], [ %i.jv, %.lr.ph ], [ %i.ke, %middle.block ]
  %.05365.ph = phi ptr [ %i.js, %vector.memcheck ], [ %i.js, %.lr.ph ], [ %i.kf, %middle.block ]
  %.05464.ph = phi ptr [ %i.jp, %vector.memcheck ], [ %i.jp, %.lr.ph ], [ %i.kg, %middle.block ]
  %.05563.ph = phi ptr [ %i.jm, %vector.memcheck ], [ %i.jm, %.lr.ph ], [ %i.kh, %middle.block ]
  %.05662.ph = phi ptr [ %i.jj, %vector.memcheck ], [ %i.jj, %.lr.ph ], [ %i.ki, %middle.block ]
  %.05761.ph = phi ptr [ %i.jg, %vector.memcheck ], [ %i.jg, %.lr.ph ], [ %i.kj, %middle.block ]
  %.05860.ph = phi ptr [ %i.jd, %vector.memcheck ], [ %i.jd, %.lr.ph ], [ %i.kk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.069 = phi i32 [ %i.lm, %scalar.ph ], [ %.069.ph, %scalar.ph.preheader ]
  %.05068 = phi ptr [ %i.lk, %scalar.ph ], [ %.05068.ph, %scalar.ph.preheader ] ; 2 uses
  %.05167 = phi ptr [ %i.lh, %scalar.ph ], [ %.05167.ph, %scalar.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.le, %scalar.ph ], [ %.05266.ph, %scalar.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.lb, %scalar.ph ], [ %.05365.ph, %scalar.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.ky, %scalar.ph ], [ %.05464.ph, %scalar.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.kv, %scalar.ph ], [ %.05563.ph, %scalar.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.ks, %scalar.ph ], [ %.05662.ph, %scalar.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.kp, %scalar.ph ], [ %.05761.ph, %scalar.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.ll, %scalar.ph ], [ %.05860.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ko = load i16, ptr %.05860, align 2, !tbaa !62
  %i.kp = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  store i16 %i.ko, ptr %.05761, align 2, !tbaa !62
  %i.kq = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !62
  %i.ks = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  store i16 %i.kr, ptr %.05662, align 2, !tbaa !62
  %i.kt = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !62
  %i.kv = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  store i16 %i.ku, ptr %.05563, align 2, !tbaa !62
  %i.kw = getelementptr inbounds nuw i8, ptr %.05860, i64 6
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !62
  %i.ky = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  store i16 %i.kx, ptr %.05464, align 2, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %.05860, i64 8
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !62
  %i.lb = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  store i16 %i.la, ptr %.05365, align 2, !tbaa !62
  %i.lc = getelementptr inbounds nuw i8, ptr %.05860, i64 10
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !62
  %i.le = getelementptr inbounds nuw i8, ptr %.05266, i64 2
  store i16 %i.ld, ptr %.05266, align 2, !tbaa !62
  %i.lf = getelementptr inbounds nuw i8, ptr %.05860, i64 12
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !62
  %i.lh = getelementptr inbounds nuw i8, ptr %.05167, i64 2
  store i16 %i.lg, ptr %.05167, align 2, !tbaa !62
  %i.li = getelementptr inbounds nuw i8, ptr %.05860, i64 14
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !62
  %i.lk = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.lj, ptr %.05068, align 2, !tbaa !62
  %i.ll = getelementptr inbounds nuw i8, ptr %.05860, i64 16
  %i.lm = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.lm, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !529

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond76.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond76.not, label %._crit_edge74.split, label %.lr.ph

._crit_edge74.split:                              ; preds = %._crit_edge, %.lr.ph73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.27:bb.a
  %next.gep68 = getelementptr i8, ptr %i.by, i64 %i.ce
  %next.gep69 = getelementptr i8, ptr %i.bv, i64 %i.ce
  %wide.vec = load <64 x i16>, ptr %next.gep69, align 2, !tbaa !62, !alias.scope !553
  %wide.vec73 = load <64 x i16>, ptr %next.gep68, align 2, !tbaa !62, !alias.scope !554
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> %wide.vec73, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  store <128 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !62, !alias.scope !555, !noalias !556
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cg = getelementptr i8, ptr %i.bz, i64 %i.br
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.bs
  %i.ci = getelementptr i8, ptr %i.bv, i64 %i.bs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.cj = shl i64 %index82, 4
  %next.gep83 = getelementptr i8, ptr %i.bz, i64 %i.cj
  %i.ck = shl i64 %index82, 3                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.by, i64 %i.ck
  %next.gep85 = getelementptr i8, ptr %i.bv, i64 %i.ck
  %wide.vec86 = load <16 x i16>, ptr %next.gep85, align 2, !tbaa !62, !alias.scope !553
  %wide.vec91 = load <16 x i16>, ptr %next.gep84, align 2, !tbaa !62, !alias.scope !554
  %interleaved.vec96 = shufflevector <16 x i16> %wide.vec86, <16 x i16> %wide.vec91, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %interleaved.vec96, ptr %next.gep83, align 2, !tbaa !62, !alias.scope !555, !noalias !556
  %index.next97 = add nuw i64 %index82, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next97, %n.vec81
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !551

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n98, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.047.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.04046.ph = phi ptr [ %i.bz, %iter.check ], [ %i.bz, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.04145.ph = phi ptr [ %i.by, %iter.check ], [ %i.by, %vector.memcheck ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  %.04244.ph = phi ptr [ %i.bv, %iter.check ], [ %i.bv, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge52.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.047 = phi i32 [ %i.dk, %vec.epilog.scalar.ph ], [ %.047.ph, %vec.epilog.scalar.ph.preheader ]
  %.04046 = phi ptr [ %i.dj, %vec.epilog.scalar.ph ], [ %.04046.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.04145 = phi ptr [ %i.di, %vec.epilog.scalar.ph ], [ %.04145.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.04244 = phi ptr [ %i.dh, %vec.epilog.scalar.ph ], [ %.04244.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.cm = load i16, ptr %.04244, align 2, !tbaa !62
  store i16 %i.cm, ptr %.04046, align 2, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %.04244, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %.04046, i64 2
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %.04244, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %.04046, i64 4
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %.04244, i64 6
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %.04046, i64 6
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !62
  %i.cw = load i16, ptr %.04145, align 2, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %.04145, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !62
  %i.da = getelementptr inbounds nuw i8, ptr %.04046, i64 10
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !62
  %i.dd = getelementptr inbounds nuw i8, ptr %.04046, i64 12
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %.04145, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !62
  %i.dg = getelementptr inbounds nuw i8, ptr %.04046, i64 14
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %.04244, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.04145, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.04046, i64 16
  %i.dk = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !552

._crit_edge52.split:                              ; preds = %._crit_edge, %.lr.ph51, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge52.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.28(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge52.split, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !36     ; 18 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = sext i32 %i.t to i64                     ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 6 uses
  %i.x = mul i64 %i.w, %i.u                       ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge52.split

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = shl i64 %i.ad, 1                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = shl nsw i64 %i.aa, 1                    ; 3 uses
  %i.ag = sub i32 %i.j, %i.k
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = add nsw i64 %i.af, %i.ai
  %i.ak = mul i64 %i.w, %i.aj
  %i.al = mul i64 %i.ak, %i.u                     ; 3 uses
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 3                ; 5 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao  ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.aq, i64 2
  %i.ar = mul i64 %i.w, %i.u
  %i.as = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.at = add i64 %i.al, %i.ao                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.r, i64 %i.at   ; 3 uses
  %i.av = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = getelementptr i8, <2 x ptr> %i.aw, <2 x i64> <i64 2, i64 4>
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.az = getelementptr i8, ptr %i.r, i64 %i.ae   ; 2 uses
  %i.ba = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %i.az, i64 1 ; 2 uses
  %i.bc = getelementptr i8, <2 x ptr> %i.bb, <2 x i64> <i64 2, i64 4> ; 4 uses
  %i.bd = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.be = getelementptr i8, <2 x ptr> %i.bb, <2 x i64> <i64 2, i64 4>
  %scevgep61 = getelementptr i8, ptr %i.az, i64 4
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.at   ; 4 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bf, i64 1
  %i.bi = getelementptr i8, <2 x ptr> %i.bh, <2 x i64> <i64 4, i64 6>
  %i.bj = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep62 = getelementptr i8, ptr %i.bf, i64 6
  %i.bk = getelementptr i8, ptr %i.r, i64 %i.ae
  %scevgep63 = getelementptr i8, ptr %i.bk, i64 6 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.r, i64 %i.al
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ao  ; 3 uses
  %i.bn = or disjoint i64 %i.af, 1
  %i.bo = mul i64 %i.w, %i.bn
  %i.bp = mul i64 %i.bo, %i.u                     ; 4 uses
  %scevgep65 = getelementptr i8, ptr %i.r, i64 %i.bp ; 4 uses
  %i.bq = add nsw i64 %i.af, %i.ai
  %i.br = or disjoint i64 %i.bq, 1
  %i.bs = mul i64 %i.w, %i.br
  %i.bt = mul i64 %i.bs, %i.u                     ; 2 uses
  %i.bu = add i64 %i.bt, %i.ao                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.r, i64 %i.bu   ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.bm, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.bv, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, <2 x i64> <i64 8, i64 2>
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.bw = insertelement <4 x ptr> poison, ptr %i.au, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %i.bf, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.bm, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %i.bv, i64 3
  %i.ca = getelementptr i8, <4 x ptr> %i.bz, <4 x i64> <i64 4, i64 6, i64 8, i64 2>
  %i.cb = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.cc = getelementptr i8, ptr %i.r, i64 %i.bu   ; 3 uses
  %i.cd = getelementptr i8, ptr %i.r, i64 %i.bp   ; 2 uses
  %i.ce = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = getelementptr i8, <2 x ptr> %i.cf, <2 x i64> <i64 2, i64 4> ; 2 uses
  %i.ch = add i64 %i.bt, %i.ao                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.r, i64 %i.ch   ; 4 uses
  %i.cj = insertelement <2 x ptr> poison, ptr %i.cc, i64 0
  %i.ck = insertelement <2 x ptr> %i.cj, ptr %i.ci, i64 1
  %i.cl = getelementptr i8, <2 x ptr> %i.ck, <2 x i64> <i64 4, i64 6>
  %scevgep70 = getelementptr i8, ptr %i.ci, i64 6 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.r, i64 %i.bp   ; 2 uses
  %i.cn = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %i.co = insertelement <2 x ptr> %i.cn, ptr %i.cm, i64 1
  %i.cp = getelementptr i8, <2 x ptr> %i.co, <2 x i64> <i64 4, i64 6> ; 4 uses
  %scevgep71 = getelementptr i8, ptr %i.cm, i64 6 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.r, i64 %i.ch   ; 3 uses
  %scevgep72 = getelementptr i8, ptr %i.cq, i64 8
  %i.cr = mul i64 %i.q, %i.o
  %i.cs = mul i64 %i.cr, %i.aa
  %scevgep73 = getelementptr i8, ptr %i.l, i64 %i.cs ; 5 uses
  %i.ct = add nsw i64 %i.aa, %i.ah
  %i.cu = mul i64 %i.q, %i.ct
  %i.cv = mul i64 %i.cu, %i.o
  %i.cw = shl nuw nsw i64 %i.an, 4
  %i.cx = getelementptr i8, ptr %i.l, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 3 uses
  %i.cz = insertelement <8 x ptr> poison, ptr %i.bv, i64 0
  %i.da = insertelement <8 x ptr> %i.cz, ptr %i.cc, i64 1
  %i.db = insertelement <8 x ptr> %i.da, ptr %i.ci, i64 2
  %i.dc = insertelement <8 x ptr> %i.db, ptr %i.cq, i64 3
  %i.dd = insertelement <8 x ptr> %i.dc, ptr %i.cy, i64 4
  %i.de = shufflevector <8 x ptr> %i.dd, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.df = getelementptr i8, <8 x ptr> %i.de, <8 x i64> <i64 2, i64 4, i64 6, i64 8, i64 16, i64 4, i64 6, i64 8> ; 4 uses
  %i.dg = insertelement <8 x ptr> poison, ptr %i.cq, i64 0
  %i.dh = insertelement <8 x ptr> %i.dg, ptr %i.cy, i64 1
  %i.di = insertelement <8 x ptr> %i.dh, ptr %i.bf, i64 2
  %i.dj = insertelement <8 x ptr> %i.di, ptr %i.bm, i64 3
  %i.dk = insertelement <8 x ptr> %i.dj, ptr %i.bv, i64 4
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %i.cc, i64 5
  %i.dm = insertelement <8 x ptr> %i.dl, ptr %i.ci, i64 6
  %i.dn = shufflevector <8 x ptr> %i.dm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.do = getelementptr i8, <8 x ptr> %i.dn, <8 x i64> <i64 8, i64 16, i64 6, i64 8, i64 2, i64 4, i64 6, i64 8> ; 4 uses
  %scevgep74 = getelementptr i8, ptr %i.cy, i64 16 ; 2 uses
  %i.dp = mul i64 %i.q, %i.o
  %i.dq = insertelement <8 x ptr> poison, ptr %scevgep63, i64 0
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep65, i64 1
  %i.ds = shufflevector <8 x ptr> %i.dr, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dt = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.du = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.dv = insertelement <8 x ptr> poison, ptr %scevgep65, i64 0
  %i.dw = shufflevector <8 x ptr> %i.df, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dx = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.dy = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.ea = shufflevector <8 x ptr> %i.do, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eb = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %scevgep, i64 0
  %i.ed = shufflevector <2 x ptr> %i.ec, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ee = shufflevector <2 x ptr> %i.cp, <2 x ptr> %i.bc, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.ef = insertelement <8 x ptr> %i.ee, ptr %scevgep73, i64 1
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep63, i64 3
  %i.eh = insertelement <8 x ptr> %i.eg, ptr %scevgep65, i64 4
  %i.ei = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ek = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.el = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep58, i64 0 ; 2 uses
  %i.en = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eo = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <8 x ptr> %i.eh, <8 x ptr> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 7> ; 2 uses
  %i.er = shufflevector <8 x ptr> %i.dv, <8 x ptr> %i.ep, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.es = shufflevector <2 x ptr> %i.be, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.et = zext nneg i32 %i.y to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 48
  %i.eu = icmp ult <4 x ptr> %i.ek, %i.ca
  %i.ev = insertelement <4 x ptr> %i.es, ptr %scevgep63, i64 2
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep65, i64 3
  %i.ex = icmp ult <4 x ptr> %i.ew, %i.en
  %.mask = and i64 %i.ar, 4611686018427387904
  %i.ey = icmp ult <2 x ptr> %i.el, %i.cl
  %i.ez = icmp ult <2 x ptr> %i.cg, %i.eo
  %i.fa = icmp ult <8 x ptr> %i.ed, %i.do
  %i.fb = icmp ult <8 x ptr> %i.eq, %i.ay
  %i.fc = icmp ult <4 x ptr> %i.bd, %i.dx
  %i.fd = shufflevector <8 x ptr> %i.eq, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fe = icmp ult <4 x ptr> %i.fd, %i.bj
  %i.ff = icmp ult <2 x ptr> %i.dy, %i.dz
  %i.fg = icmp ult <2 x ptr> %i.cp, %i.ea
  %bound0151 = icmp ult ptr %scevgep61, %scevgep74
  %bound1152 = icmp ult ptr %scevgep73, %scevgep62
  %stride.check = icmp ne i64 %.mask, 0
  %i.fh = insertelement <16 x i1> poison, i1 %bound0151, i64 14
  %i.fi = insertelement <16 x i1> %i.fh, i1 %stride.check, i64 15
  %i.fj = shufflevector <8 x i1> %i.fa, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <16 x i1> %i.fj, <16 x i1> %i.fi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fl = shufflevector <4 x i1> %i.fc, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <16 x i1> %i.fk, <16 x i1> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fn = shufflevector <2 x i1> %i.ff, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fo = shufflevector <16 x i1> %i.fm, <16 x i1> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fp = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1152, i64 14
  %i.fq = shufflevector <8 x i1> %i.fb, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = shufflevector <16 x i1> %i.fq, <16 x i1> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fs = shufflevector <4 x i1> %i.fe, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <16 x i1> %i.fr, <16 x i1> %i.fs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fu = shufflevector <2 x i1> %i.fg, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fv = shufflevector <16 x i1> %i.ft, <16 x i1> %i.fu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fw = and <16 x i1> %i.fo, %i.fv
  %i.fx = icmp ult <8 x ptr> %i.ds, %i.df
  %i.fy = shufflevector <8 x ptr> %i.er, <8 x ptr> %i.ei, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = insertelement <8 x ptr> %i.fy, ptr %scevgep73, i64 4 ; 2 uses
  %i.ga = shufflevector <8 x ptr> %i.fz, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.gb = icmp ult <8 x ptr> %i.ga, %9
  %i.gc = shufflevector <8 x ptr> %i.er, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gd = icmp ult <4 x ptr> %i.gc, %i.dt
  %i.ge = shufflevector <8 x ptr> %i.fz, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.gf = icmp ult <4 x ptr> %i.ge, %i.dw
  %i.gg = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gh = icmp ult <2 x ptr> %i.gg, %i.du
  %bound1204 = icmp ult ptr %scevgep71, %scevgep70
  %bound1208 = icmp ult ptr %scevgep73, %scevgep70
  %bound0211 = icmp ult ptr %scevgep71, %scevgep74
  %bound1212 = icmp ult ptr %scevgep73, %scevgep72
  %stride.check101 = icmp slt i64 %i.dp, 0
  %i.gi = insertelement <16 x i1> poison, i1 %bound0211, i64 14
  %i.gj = insertelement <16 x i1> %i.gi, i1 %stride.check101, i64 15
  %i.gk = shufflevector <8 x i1> %i.fx, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <16 x i1> %i.gk, <16 x i1> %i.gj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gm = shufflevector <4 x i1> %i.gd, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <16 x i1> %i.gl, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.go = shufflevector <2 x i1> %i.gh, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <16 x i1> %i.gn, <16 x i1> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gq = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1204, i64 12
  %i.gr = insertelement <16 x i1> %i.gq, i1 %bound1208, i64 13
  %i.gs = insertelement <16 x i1> %i.gr, i1 %bound1212, i64 14
  %i.gt = shufflevector <8 x i1> %i.gb, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <16 x i1> %i.gt, <16 x i1> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.gv = shufflevector <4 x i1> %i.gf, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <16 x i1> %i.gu, <16 x i1> %i.gv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.gx = and <16 x i1> %i.gp, %i.gw
  %i.gy = bitcast <16 x i1> %i.gx to i16
  %i.gz = bitcast <16 x i1> %i.fw to i16
  %i.ha = insertelement <2 x i16> poison, i16 %i.gz, i64 0
  %i.hb = insertelement <2 x i16> %i.ha, i16 %i.gy, i64 1
  %i.hc = icmp ne <2 x i16> %i.hb, zeroinitializer
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.he = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i1> %i.he, <8 x i1> %i.hd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.hg = shufflevector <2 x i1> %i.ey, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <8 x i1> %i.hf, <8 x i1> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hi = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <8 x i1> %i.hi, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.hk = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <8 x i1> %i.hj, <8 x i1> %i.hk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hm = and <8 x i1> %i.hh, %i.hl
  %i.hn = bitcast <8 x i1> %i.hm to i8
  %.not = icmp eq i8 %i.hn, 0
  %n.vec = and i64 %i.et, 2147483640              ; 5 uses
  %i.ho = trunc nuw nsw i64 %n.vec to i32
  %i.hp = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.hq = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.et
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.hs = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ht = mul i64 %i.x, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ht ; 4 uses
  %i.hv = or disjoint i64 %i.hs, 1
  %i.hw = mul i64 %i.x, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hw ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hp
  %i.hz = getelementptr i8, ptr %i.hu, i64 %i.hp
  %i.ia = getelementptr i8, ptr %i.hr, i64 %i.hq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hx, i64 %i.ib
  %next.gep215 = getelementptr i8, ptr %i.hu, i64 %i.ib
  %i.ic = shl i64 %index, 4
  %next.gep216 = getelementptr i8, ptr %i.hr, i64 %i.ic
  %wide.vec = load <64 x i16>, ptr %next.gep216, align 2, !tbaa !62, !alias.scope !561 ; 2 uses
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59>
  store <32 x i16> %interleaved.vec, ptr %next.gep215, align 2, !tbaa !62
  %interleaved.vec224 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63>
  store <32 x i16> %interleaved.vec224, ptr %next.gep, align 2, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.047.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ho, %middle.block ]
  %.04046.ph = phi ptr [ %i.hx, %vector.memcheck ], [ %i.hx, %.lr.ph ], [ %i.hy, %middle.block ]
  %.04145.ph = phi ptr [ %i.hu, %vector.memcheck ], [ %i.hu, %.lr.ph ], [ %i.hz, %middle.block ]
  %.04244.ph = phi ptr [ %i.hr, %vector.memcheck ], [ %i.hr, %.lr.ph ], [ %i.ia, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge52.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i32 [ %i.jc, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ]
  %.04046 = phi ptr [ %i.jb, %scalar.ph ], [ %.04046.ph, %scalar.ph.preheader ] ; 5 uses
  %.04145 = phi ptr [ %i.ja, %scalar.ph ], [ %.04145.ph, %scalar.ph.preheader ] ; 5 uses
  %.04244 = phi ptr [ %i.iz, %scalar.ph ], [ %.04244.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ie = load i16, ptr %.04244, align 2, !tbaa !62
  store i16 %i.ie, ptr %.04145, align 2, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %.04244, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !62
  %i.ih = getelementptr inbounds nuw i8, ptr %.04145, i64 2
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %.04244, i64 4
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !62
  %i.il = getelementptr inbounds nuw i8, ptr %.04244, i64 6
  %i.im = load i16, ptr %i.il, align 2, !tbaa !62
  %i.in = getelementptr inbounds nuw i8, ptr %.04145, i64 6
  store i16 %i.im, ptr %i.in, align 2, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %.04244, i64 8
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !62
  store i16 %i.ip, ptr %.04046, align 2, !tbaa !62
  %i.iq = getelementptr inbounds nuw i8, ptr %.04244, i64 10
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %.04046, i64 2
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !62
  %i.it = getelementptr inbounds nuw i8, ptr %.04244, i64 12
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !62
  %i.iv = getelementptr inbounds nuw i8, ptr %.04046, i64 4
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !62
  %i.iw = getelementptr inbounds nuw i8, ptr %.04244, i64 14
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !62
  %i.iy = getelementptr inbounds nuw i8, ptr %.04046, i64 6
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %.04244, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %.04145, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  %i.jc = add nuw nsw i32 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.jc, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !560

._crit_edge52.split:                              ; preds = %._crit_edge, %.lr.ph51, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge52.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.29(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge122.split, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = mul i64 %i.q, %i.o                       ; 16 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_3
begin_hunk_4_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.37:bb.a
  %wide.load383 = load <8 x i16>, ptr %next.gep378, align 2, !tbaa !62, !alias.scope !635
  %wide.load384 = load <8 x i16>, ptr %next.gep377, align 2, !tbaa !62, !alias.scope !636
  %wide.load385 = load <8 x i16>, ptr %next.gep376, align 2, !tbaa !62, !alias.scope !637
  %wide.load386 = load <8 x i16>, ptr %next.gep375, align 2, !tbaa !62, !alias.scope !638
  %wide.load387 = load <8 x i16>, ptr %next.gep374, align 2, !tbaa !62, !alias.scope !639
  %wide.load388 = load <8 x i16>, ptr %next.gep373, align 2, !tbaa !62, !alias.scope !640
  %i.gf = shufflevector <8 x i16> %wide.load381, <8 x i16> %wide.load382, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gg = shufflevector <8 x i16> %wide.load383, <8 x i16> %wide.load384, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = shufflevector <8 x i16> %wide.load385, <8 x i16> %wide.load386, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gi = shufflevector <8 x i16> %wide.load387, <8 x i16> %wide.load388, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gj = shufflevector <16 x i16> %i.gf, <16 x i16> %i.gg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gk = shufflevector <16 x i16> %i.gh, <16 x i16> %i.gi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec389 = shufflevector <32 x i16> %i.gj, <32 x i16> %i.gk, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec389, ptr %next.gep372, align 2, !tbaa !62, !alias.scope !641, !noalias !642
  %index.next390 = add nuw i64 %index371, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next390, %n.vec370
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n391, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0275.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ef, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  %.050274.ph = phi ptr [ %i.fb, %iter.check ], [ %i.fb, %vector.memcheck ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fu, %vec.epilog.middle.block ]
  %.051273.ph = phi ptr [ %i.fa, %iter.check ], [ %i.fa, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fv, %vec.epilog.middle.block ]
  %.052272.ph = phi ptr [ %i.ey, %iter.check ], [ %i.ey, %vector.memcheck ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fw, %vec.epilog.middle.block ]
  %.053271.ph = phi ptr [ %i.ew, %iter.check ], [ %i.ew, %vector.memcheck ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  %.054270.ph = phi ptr [ %i.eu, %iter.check ], [ %i.eu, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fy, %vec.epilog.middle.block ]
  %.055269.ph = phi ptr [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  %.056268.ph = phi ptr [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.ga, %vec.epilog.middle.block ]
  %.057267.ph = phi ptr [ %i.eo, %iter.check ], [ %i.eo, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ]
  %.058266.ph = phi ptr [ %i.em, %iter.check ], [ %i.em, %vector.memcheck ], [ %i.fk, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0275 = phi i32 [ %i.hk, %vec.epilog.scalar.ph ], [ %.0275.ph, %vec.epilog.scalar.ph.preheader ]
  %.050274 = phi ptr [ %i.hj, %vec.epilog.scalar.ph ], [ %.050274.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.051273 = phi ptr [ %i.hg, %vec.epilog.scalar.ph ], [ %.051273.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.052272 = phi ptr [ %i.hd, %vec.epilog.scalar.ph ], [ %.052272.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.053271 = phi ptr [ %i.ha, %vec.epilog.scalar.ph ], [ %.053271.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.054270 = phi ptr [ %i.gx, %vec.epilog.scalar.ph ], [ %.054270.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.055269 = phi ptr [ %i.gu, %vec.epilog.scalar.ph ], [ %.055269.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.056268 = phi ptr [ %i.gr, %vec.epilog.scalar.ph ], [ %.056268.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.057267 = phi ptr [ %i.go, %vec.epilog.scalar.ph ], [ %.057267.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.058266 = phi ptr [ %i.gm, %vec.epilog.scalar.ph ], [ %.058266.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.058266, i64 2
  %i.gn = load i16, ptr %.058266, align 2, !tbaa !62
  store i16 %i.gn, ptr %.050274, align 2, !tbaa !62
  %i.go = getelementptr inbounds nuw i8, ptr %.057267, i64 2
  %i.gp = load i16, ptr %.057267, align 2, !tbaa !62
  %i.gq = getelementptr inbounds nuw i8, ptr %.050274, i64 2
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !62
  %i.gr = getelementptr inbounds nuw i8, ptr %.056268, i64 2
  %i.gs = load i16, ptr %.056268, align 2, !tbaa !62
  %i.gt = getelementptr inbounds nuw i8, ptr %.050274, i64 4
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !62
  %i.gu = getelementptr inbounds nuw i8, ptr %.055269, i64 2
  %i.gv = load i16, ptr %.055269, align 2, !tbaa !62
  %i.gw = getelementptr inbounds nuw i8, ptr %.050274, i64 6
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %.054270, i64 2
  %i.gy = load i16, ptr %.054270, align 2, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %.050274, i64 8
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %.053271, i64 2
  %i.hb = load i16, ptr %.053271, align 2, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %.050274, i64 10
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !62
  %i.hd = getelementptr inbounds nuw i8, ptr %.052272, i64 2
  %i.he = load i16, ptr %.052272, align 2, !tbaa !62
  %i.hf = getelementptr inbounds nuw i8, ptr %.050274, i64 12
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !62
  %i.hg = getelementptr inbounds nuw i8, ptr %.051273, i64 2
  %i.hh = load i16, ptr %.051273, align 2, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %.050274, i64 14
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %.050274, i64 16
  %i.hk = add nuw nsw i32 %.0275, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hk, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !630

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond296.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond296.not, label %._crit_edge278.split, label %iter.check

._crit_edge278.split:                             ; preds = %._crit_edge, %.noexc72.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge278.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.38(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !659 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !659 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !659 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !660 ; 24 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !660 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !660 ; 9 uses
  %factor.op.mul279 = mul i64 %i.s, %i.u          ; 8 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge278.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = shl i64 %i.aa, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.ac = shl nsw i64 %i.x, 3                     ; 15 uses
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 8 uses
  %i.ag = add nsw i64 %i.ac, %i.af
  %i.ah = mul i64 %i.z, %i.ag
  %i.ai = add nsw i32 %i.v, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 1                ; 8 uses
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak  ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.am, i64 2
  %i.an = mul i64 %i.u, %i.s                      ; 3 uses
  %i.ao = or disjoint i64 %i.ac, 1
  %i.ap = mul i64 %i.an, %i.ao
  %scevgep301 = getelementptr i8, ptr %i.q, i64 %i.ap ; 2 uses
  %i.aq = add nsw i64 %i.ac, %i.af
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.q, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ak  ; 3 uses
  %i.av = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = getelementptr i8, <2 x ptr> %i.aw, i64 2
  %i.ay = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.az = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ba = or disjoint i64 %i.ac, 2
  %i.bb = mul i64 %i.az, %i.ba
  %scevgep303 = getelementptr i8, ptr %i.q, i64 %i.bb ; 3 uses
  %i.bc = add nsw i64 %i.ac, %i.af
  %i.bd = or disjoint i64 %i.bc, 2
  %i.be = mul i64 %i.az, %i.bd
  %i.bf = getelementptr i8, ptr %i.q, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ak  ; 4 uses
  %i.bh = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.bg, i64 1
  %i.bj = getelementptr i8, <2 x ptr> %i.bi, i64 2
  %i.bk = shufflevector <2 x ptr> %i.bj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep304 = getelementptr i8, ptr %i.bg, i64 2
  %i.bl = mul i64 %i.u, %i.s                      ; 2 uses
  %i.bm = or disjoint i64 %i.ac, 3
  %i.bn = mul i64 %i.bl, %i.bm
  %scevgep305 = getelementptr i8, ptr %i.q, i64 %i.bn ; 3 uses
  %i.bo = add nsw i64 %i.ac, %i.af
  %i.bp = or disjoint i64 %i.bo, 3
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr i8, ptr %i.q, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.ak  ; 3 uses
  %i.bt = mul i64 %i.u, %i.s                      ; 2 uses
  %i.bu = or disjoint i64 %i.ac, 4
  %i.bv = mul i64 %i.bt, %i.bu
  %scevgep307 = getelementptr i8, ptr %i.q, i64 %i.bv ; 4 uses
  %i.bw = add nsw i64 %i.ac, %i.af
  %i.bx = or disjoint i64 %i.bw, 4
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.q, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.ak  ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.bs, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.ca, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, i64 2
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.cb = insertelement <4 x ptr> poison, ptr %i.au, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %i.bg, i64 1
  %i.cd = insertelement <4 x ptr> %i.cc, ptr %i.bs, i64 2
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %i.ca, i64 3
  %i.cf = getelementptr i8, <4 x ptr> %i.ce, i64 2
  %i.cg = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ch = or disjoint i64 %i.ac, 5
  %i.ci = mul i64 %i.cg, %i.ch
  %scevgep309 = getelementptr i8, ptr %i.q, i64 %i.ci ; 3 uses
  %i.cj = add nsw i64 %i.ac, %i.af
  %i.ck = or disjoint i64 %i.cj, 5
  %i.cl = mul i64 %i.cg, %i.ck
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ak  ; 3 uses
  %i.co = mul i64 %i.u, %i.s                      ; 2 uses
  %i.cp = or disjoint i64 %i.ac, 6
  %i.cq = mul i64 %i.co, %i.cp
  %scevgep311 = getelementptr i8, ptr %i.q, i64 %i.cq ; 3 uses
  %i.cr = add nsw i64 %i.ac, %i.af
  %i.cs = or disjoint i64 %i.cr, 6
  %i.ct = mul i64 %i.co, %i.cs
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ak  ; 3 uses
  %i.cw = insertelement <2 x ptr> poison, ptr %i.cn, i64 0
  %i.cx = insertelement <2 x ptr> %i.cw, ptr %i.cv, i64 1
  %i.cy = getelementptr i8, <2 x ptr> %i.cx, i64 2
  %i.cz = mul i64 %i.u, %i.s                      ; 2 uses
  %i.da = or disjoint i64 %i.ac, 7
  %i.db = mul i64 %i.cz, %i.da
  %scevgep313 = getelementptr i8, ptr %i.q, i64 %i.db ; 3 uses
  %i.dc = add nsw i64 %i.ac, %i.af
  %i.dd = or disjoint i64 %i.dc, 7
  %i.de = mul i64 %i.cz, %i.dd
  %i.df = getelementptr i8, ptr %i.q, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.ak  ; 3 uses
  %scevgep314 = getelementptr i8, ptr %i.dg, i64 2
  %i.dh = mul i64 %i.p, %i.n                      ; 2 uses
  %i.di = mul i64 %i.dh, %i.x
  %scevgep315 = getelementptr i8, ptr %i.l, i64 %i.di ; 4 uses
  %i.dj = add nsw i64 %i.x, %i.ae
  %i.dk = mul i64 %i.dh, %i.dj
  %i.dl = shl nuw nsw i64 %i.aj, 4
  %i.dm = getelementptr i8, ptr %i.l, i64 %i.dk
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl  ; 3 uses
  %i.do = insertelement <8 x ptr> poison, ptr %i.ca, i64 0
  %i.dp = insertelement <8 x ptr> %i.do, ptr %i.cn, i64 1
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %i.cv, i64 2
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %i.dg, i64 3
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %i.dn, i64 4
  %i.dt = shufflevector <8 x ptr> %i.ds, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.du = getelementptr i8, <8 x ptr> %i.dt, <8 x i64> <i64 2, i64 2, i64 2, i64 2, i64 16, i64 2, i64 2, i64 2> ; 5 uses
  %i.dv = insertelement <8 x ptr> poison, ptr %i.dg, i64 0
  %i.dw = insertelement <8 x ptr> %i.dv, ptr %i.dn, i64 1
  %i.dx = insertelement <8 x ptr> %i.dw, ptr %i.bg, i64 2
  %i.dy = insertelement <8 x ptr> %i.dx, ptr %i.bs, i64 3
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %i.ca, i64 4
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %i.cn, i64 5
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %i.cv, i64 6
  %i.ec = shufflevector <8 x ptr> %i.eb, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.ed = getelementptr i8, <8 x ptr> %i.ec, <8 x i64> <i64 2, i64 16, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2> ; 4 uses
  %scevgep316 = getelementptr i8, ptr %i.dn, i64 16 ; 2 uses
  %i.ee = mul i64 %i.p, %i.n
  %i.ef = insertelement <8 x ptr> poison, ptr %scevgep305, i64 0
  %i.eg = insertelement <8 x ptr> %i.ef, ptr %scevgep307, i64 1
  %i.eh = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ei = shufflevector <8 x ptr> %i.du, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ej = shufflevector <8 x ptr> %i.du, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.ek = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.el = insertelement <8 x ptr> %i.ek, ptr %scevgep309, i64 1 ; 2 uses
  %i.em = insertelement <8 x ptr> %i.el, ptr %scevgep311, i64 2 ; 2 uses
  %i.en = insertelement <8 x ptr> %i.em, ptr %scevgep313, i64 3
  %i.eo = insertelement <8 x ptr> %i.en, ptr %scevgep315, i64 4 ; 3 uses
  %i.ep = shufflevector <8 x ptr> %i.eo, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.eq = shufflevector <8 x ptr> %i.eo, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.er = shufflevector <8 x ptr> %i.du, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.es = shufflevector <8 x ptr> %i.eo, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.et = shufflevector <8 x ptr> %i.du, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.eu = shufflevector <8 x ptr> %i.el, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ev = shufflevector <8 x ptr> %i.em, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.ew = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.ex = insertelement <8 x ptr> %i.ew, ptr %scevgep301, i64 1
  %i.ey = shufflevector <8 x ptr> %i.ex, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ez = insertelement <4 x ptr> poison, ptr %scevgep301, i64 0
  %i.fa = insertelement <4 x ptr> %i.ez, ptr %scevgep303, i64 1 ; 3 uses
  %i.fb = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fc = shufflevector <8 x ptr> %i.ed, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fd = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = shufflevector <8 x ptr> %i.ed, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.ff = insertelement <8 x ptr> poison, ptr %scevgep313, i64 0
  %i.fg = insertelement <8 x ptr> %i.ff, ptr %scevgep315, i64 1
  %i.fh = insertelement <8 x ptr> %i.fg, ptr %scevgep303, i64 2
  %i.fi = insertelement <8 x ptr> %i.fh, ptr %scevgep305, i64 3
  %i.fj = insertelement <8 x ptr> %i.fi, ptr %scevgep307, i64 4
  %i.fk = insertelement <8 x ptr> %i.fj, ptr %scevgep309, i64 5 ; 2 uses
  %i.fl = insertelement <8 x ptr> %i.fk, ptr %scevgep311, i64 6 ; 2 uses
  %i.fm = shufflevector <8 x ptr> %i.fl, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.fn = shufflevector <8 x ptr> %i.fk, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fo = shufflevector <8 x ptr> %i.fl, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.fp = shufflevector <8 x ptr> %i.ed, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.fq = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.fr = shufflevector <4 x ptr> %i.fq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fs = shufflevector <4 x ptr> %i.fq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ft = insertelement <4 x ptr> %i.fa, ptr %scevgep305, i64 2
  %i.fu = insertelement <4 x ptr> %i.ft, ptr %scevgep307, i64 3
  %i.fv = insertelement <4 x ptr> poison, ptr %scevgep300, i64 0 ; 2 uses
  %i.fw = shufflevector <4 x ptr> %i.fv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fx = insertelement <2 x ptr> poison, ptr %scevgep309, i64 0
  %i.fy = insertelement <2 x ptr> %i.fx, ptr %scevgep311, i64 1
  %i.fz = shufflevector <4 x ptr> %i.fv, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ga = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 48
  %i.gb = icmp ult <4 x ptr> %i.fr, %i.cf
  %i.gc = icmp ult <4 x ptr> %i.fu, %i.fw
  %.mask = and i64 %i.an, 1152921504606846976
  %i.gd = icmp ult <2 x ptr> %i.fs, %i.cy
  %i.ge = icmp ult <2 x ptr> %i.fy, %i.fz
  %i.gf = icmp ult <8 x ptr> %i.ey, %i.ed
  %i.gg = icmp ult <8 x ptr> %i.fm, %i.ay
  %i.gh = icmp ult <4 x ptr> %i.fb, %i.fc
  %i.gi = icmp ult <4 x ptr> %i.fn, %i.bk
  %i.gj = icmp ult <2 x ptr> %i.fd, %i.fe
  %i.gk = icmp ult <2 x ptr> %i.fo, %i.fp
  %bound0393 = icmp ult ptr %scevgep303, %scevgep316
  %bound1394 = icmp ult ptr %scevgep315, %scevgep304
  %stride.check = icmp ne i64 %.mask, 0
  %i.gl = insertelement <16 x i1> poison, i1 %bound0393, i64 14
  %i.gm = insertelement <16 x i1> %i.gl, i1 %stride.check, i64 15
  %i.gn = shufflevector <8 x i1> %i.gf, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <16 x i1> %i.gn, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gp = shufflevector <4 x i1> %i.gh, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <16 x i1> %i.go, <16 x i1> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gr = shufflevector <2 x i1> %i.gj, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <16 x i1> %i.gq, <16 x i1> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gt = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1394, i64 14
  %i.gu = shufflevector <8 x i1> %i.gg, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gv = shufflevector <16 x i1> %i.gu, <16 x i1> %i.gt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gw = shufflevector <4 x i1> %i.gi, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <16 x i1> %i.gv, <16 x i1> %i.gw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gy = shufflevector <2 x i1> %i.gk, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <16 x i1> %i.gx, <16 x i1> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ha = and <16 x i1> %i.gs, %i.gz
  %i.hb = icmp ult <8 x ptr> %i.eh, %i.du
  %i.hc = icmp ult <8 x ptr> %i.ep, %9
  %i.hd = icmp ult <4 x ptr> %i.eu, %i.ei
  %i.he = icmp ult <4 x ptr> %i.eq, %i.er
  %i.hf = icmp ult <2 x ptr> %i.ev, %i.ej
  %i.hg = icmp ult <2 x ptr> %i.es, %i.et
  %bound0453 = icmp ult ptr %scevgep313, %scevgep316
  %bound1454 = icmp ult ptr %scevgep315, %scevgep314
  %stride.check343 = icmp slt i64 %i.ee, 0
  %i.hh = insertelement <16 x i1> poison, i1 %bound0453, i64 14
  %i.hi = insertelement <16 x i1> %i.hh, i1 %stride.check343, i64 15
  %i.hj = shufflevector <8 x i1> %i.hb, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = shufflevector <16 x i1> %i.hj, <16 x i1> %i.hi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.hl = shufflevector <4 x i1> %i.hd, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = shufflevector <16 x i1> %i.hk, <16 x i1> %i.hl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.hn = shufflevector <2 x i1> %i.hf, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ho = shufflevector <16 x i1> %i.hm, <16 x i1> %i.hn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.hp = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1454, i64 14
  %i.hq = shufflevector <8 x i1> %i.hc, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = shufflevector <16 x i1> %i.hq, <16 x i1> %i.hp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.hs = shufflevector <4 x i1> %i.he, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <16 x i1> %i.hr, <16 x i1> %i.hs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.hu = shufflevector <2 x i1> %i.hg, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <16 x i1> %i.ht, <16 x i1> %i.hu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.hw = and <16 x i1> %i.ho, %i.hv
  %i.hx = bitcast <16 x i1> %i.hw to i16
  %i.hy = bitcast <16 x i1> %i.ha to i16
  %i.hz = insertelement <2 x i16> poison, i16 %i.hy, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hx, i64 1
  %i.ib = icmp ne <2 x i16> %i.ia, zeroinitializer
  %i.ic = shufflevector <2 x i1> %i.ib, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.id = shufflevector <4 x i1> %i.gb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ie = shufflevector <8 x i1> %i.id, <8 x i1> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.if = shufflevector <2 x i1> %i.gd, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ig = shufflevector <8 x i1> %i.ie, <8 x i1> %i.if, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ih = shufflevector <4 x i1> %i.gc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = shufflevector <8 x i1> %i.ih, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ij = shufflevector <2 x i1> %i.ge, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ik = shufflevector <8 x i1> %i.ii, <8 x i1> %i.ij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.il = and <8 x i1> %i.ig, %i.ik
  %i.im = bitcast <8 x i1> %i.il to i8
  %.not = icmp eq i8 %i.im, 0
  %n.vec = and i64 %i.ga, 2147483640              ; 5 uses
  %i.in = trunc nuw nsw i64 %n.vec to i32
  %i.io = shl nuw nsw i64 %n.vec, 1               ; 8 uses
  %i.ip = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.ga
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.iq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.ir = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %.reass280 = mul i64 %factor.op.mul279, %i.ir
  %i.is = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass280 ; 4 uses
  %i.it = or disjoint i64 %i.ir, 1
  %.reass282 = mul i64 %factor.op.mul279, %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass282 ; 4 uses
  %i.iv = or disjoint i64 %i.ir, 2
  %.reass284 = mul i64 %factor.op.mul279, %i.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass284 ; 4 uses
  %i.ix = or disjoint i64 %i.ir, 3
  %.reass286 = mul i64 %factor.op.mul279, %i.ix
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass286 ; 4 uses
  %i.iz = or disjoint i64 %i.ir, 4
  %.reass288 = mul i64 %factor.op.mul279, %i.iz
  %i.ja = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass288 ; 4 uses
  %i.jb = or disjoint i64 %i.ir, 5
  %.reass290 = mul i64 %factor.op.mul279, %i.jb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass290 ; 4 uses
  %i.jd = or disjoint i64 %i.ir, 6
  %.reass292 = mul i64 %factor.op.mul279, %i.jd
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass292 ; 4 uses
  %i.jf = or disjoint i64 %i.ir, 7
  %.reass294 = mul i64 %factor.op.mul279, %i.jf
  %i.jg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass294 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.io
  %i.ji = getelementptr i8, ptr %i.je, i64 %i.io
  %i.jj = getelementptr i8, ptr %i.jc, i64 %i.io
  %i.jk = getelementptr i8, ptr %i.ja, i64 %i.io
  %i.jl = getelementptr i8, ptr %i.iy, i64 %i.io
  %i.jm = getelementptr i8, ptr %i.iw, i64 %i.io
  %i.jn = getelementptr i8, ptr %i.iu, i64 %i.io
  %i.jo = getelementptr i8, ptr %i.is, i64 %i.io
  %i.jp = getelementptr i8, ptr %i.iq, i64 %i.ip
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jq = shl i64 %index, 1                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.jg, i64 %i.jq
  %next.gep457 = getelementptr i8, ptr %i.je, i64 %i.jq
  %next.gep458 = getelementptr i8, ptr %i.jc, i64 %i.jq
  %next.gep459 = getelementptr i8, ptr %i.ja, i64 %i.jq
  %next.gep460 = getelementptr i8, ptr %i.iy, i64 %i.jq
  %next.gep461 = getelementptr i8, ptr %i.iw, i64 %i.jq
  %next.gep462 = getelementptr i8, ptr %i.iu, i64 %i.jq
  %next.gep463 = getelementptr i8, ptr %i.is, i64 %i.jq
  %i.jr = shl i64 %index, 4
  %next.gep464 = getelementptr i8, ptr %i.iq, i64 %i.jr
  %wide.vec = load <64 x i16>, ptr %next.gep464, align 2, !tbaa !62, !alias.scope !661 ; 8 uses
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %strided.vec465 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %strided.vec466 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %strided.vec467 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec468 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec469 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec470 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec471 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <8 x i16> %strided.vec, ptr %next.gep463, align 2, !tbaa !62, !alias.scope !662, !noalias !663
  store <8 x i16> %strided.vec465, ptr %next.gep462, align 2, !tbaa !62, !alias.scope !664, !noalias !665
  store <8 x i16> %strided.vec466, ptr %next.gep461, align 2, !tbaa !62, !alias.scope !666, !noalias !667
  store <8 x i16> %strided.vec467, ptr %next.gep460, align 2, !tbaa !62, !alias.scope !668, !noalias !669
  store <8 x i16> %strided.vec468, ptr %next.gep459, align 2, !tbaa !62, !alias.scope !670, !noalias !671
  store <8 x i16> %strided.vec469, ptr %next.gep458, align 2, !tbaa !62, !alias.scope !672, !noalias !673
  store <8 x i16> %strided.vec470, ptr %next.gep457, align 2, !tbaa !62, !alias.scope !674, !noalias !675
  store <8 x i16> %strided.vec471, ptr %next.gep, align 2, !tbaa !62, !alias.scope !676, !noalias !661
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.0275.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.in, %middle.block ]
  %.050274.ph = phi ptr [ %i.jg, %vector.memcheck ], [ %i.jg, %.noexc ], [ %i.jh, %middle.block ]
  %.051273.ph = phi ptr [ %i.je, %vector.memcheck ], [ %i.je, %.noexc ], [ %i.ji, %middle.block ]
  %.052272.ph = phi ptr [ %i.jc, %vector.memcheck ], [ %i.jc, %.noexc ], [ %i.jj, %middle.block ]
  %.053271.ph = phi ptr [ %i.ja, %vector.memcheck ], [ %i.ja, %.noexc ], [ %i.jk, %middle.block ]
  %.054270.ph = phi ptr [ %i.iy, %vector.memcheck ], [ %i.iy, %.noexc ], [ %i.jl, %middle.block ]
  %.055269.ph = phi ptr [ %i.iw, %vector.memcheck ], [ %i.iw, %.noexc ], [ %i.jm, %middle.block ]
  %.056268.ph = phi ptr [ %i.iu, %vector.memcheck ], [ %i.iu, %.noexc ], [ %i.jn, %middle.block ]
  %.057267.ph = phi ptr [ %i.is, %vector.memcheck ], [ %i.is, %.noexc ], [ %i.jo, %middle.block ]
  %.058266.ph = phi ptr [ %i.iq, %vector.memcheck ], [ %i.iq, %.noexc ], [ %i.jp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0275 = phi i32 [ %i.kr, %scalar.ph ], [ %.0275.ph, %scalar.ph.preheader ]
  %.050274 = phi ptr [ %i.kp, %scalar.ph ], [ %.050274.ph, %scalar.ph.preheader ] ; 2 uses
  %.051273 = phi ptr [ %i.km, %scalar.ph ], [ %.051273.ph, %scalar.ph.preheader ] ; 2 uses
  %.052272 = phi ptr [ %i.kj, %scalar.ph ], [ %.052272.ph, %scalar.ph.preheader ] ; 2 uses
  %.053271 = phi ptr [ %i.kg, %scalar.ph ], [ %.053271.ph, %scalar.ph.preheader ] ; 2 uses
  %.054270 = phi ptr [ %i.kd, %scalar.ph ], [ %.054270.ph, %scalar.ph.preheader ] ; 2 uses
  %.055269 = phi ptr [ %i.ka, %scalar.ph ], [ %.055269.ph, %scalar.ph.preheader ] ; 2 uses
  %.056268 = phi ptr [ %i.jx, %scalar.ph ], [ %.056268.ph, %scalar.ph.preheader ] ; 2 uses
  %.057267 = phi ptr [ %i.ju, %scalar.ph ], [ %.057267.ph, %scalar.ph.preheader ] ; 2 uses
  %.058266 = phi ptr [ %i.kq, %scalar.ph ], [ %.058266.ph, %scalar.ph.preheader ] ; 9 uses
  %i.jt = load i16, ptr %.058266, align 2, !tbaa !62
  %i.ju = getelementptr inbounds nuw i8, ptr %.057267, i64 2
  store i16 %i.jt, ptr %.057267, align 2, !tbaa !62
  %i.jv = getelementptr inbounds nuw i8, ptr %.058266, i64 2
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !62
  %i.jx = getelementptr inbounds nuw i8, ptr %.056268, i64 2
  store i16 %i.jw, ptr %.056268, align 2, !tbaa !62
  %i.jy = getelementptr inbounds nuw i8, ptr %.058266, i64 4
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !62
  %i.ka = getelementptr inbounds nuw i8, ptr %.055269, i64 2
  store i16 %i.jz, ptr %.055269, align 2, !tbaa !62
  %i.kb = getelementptr inbounds nuw i8, ptr %.058266, i64 6
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !62
  %i.kd = getelementptr inbounds nuw i8, ptr %.054270, i64 2
  store i16 %i.kc, ptr %.054270, align 2, !tbaa !62
  %i.ke = getelementptr inbounds nuw i8, ptr %.058266, i64 8
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !62
  %i.kg = getelementptr inbounds nuw i8, ptr %.053271, i64 2
  store i16 %i.kf, ptr %.053271, align 2, !tbaa !62
  %i.kh = getelementptr inbounds nuw i8, ptr %.058266, i64 10
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !62
  %i.kj = getelementptr inbounds nuw i8, ptr %.052272, i64 2
  store i16 %i.ki, ptr %.052272, align 2, !tbaa !62
  %i.kk = getelementptr inbounds nuw i8, ptr %.058266, i64 12
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !62
  %i.km = getelementptr inbounds nuw i8, ptr %.051273, i64 2
  store i16 %i.kl, ptr %.051273, align 2, !tbaa !62
  %i.kn = getelementptr inbounds nuw i8, ptr %.058266, i64 14
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !62
  %i.kp = getelementptr inbounds nuw i8, ptr %.050274, i64 2
  store i16 %i.ko, ptr %.050274, align 2, !tbaa !62
  %i.kq = getelementptr inbounds nuw i8, ptr %.058266, i64 16
  %i.kr = add nuw nsw i32 %.0275, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.kr, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !658

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond296.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond296.not, label %._crit_edge278.split, label %.noexc

._crit_edge278.split:                             ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
end_hunk_4
begin_hunk_5_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.39:bb.a
  %i.bv = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.bv
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.bq, i64 %i.bw
  %next.gep127 = getelementptr i8, ptr %i.bo, i64 %i.bw
  %wide.vec = load <64 x i16>, ptr %next.gep127, align 2, !tbaa !62, !alias.scope !690
  %wide.vec131 = load <64 x i16>, ptr %next.gep126, align 2, !tbaa !62, !alias.scope !691
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> %wide.vec131, <128 x i32> <i32 0, i32 1, i32 2, i32 3, i32 64, i32 65, i32 66, i32 67, i32 4, i32 5, i32 6, i32 7, i32 68, i32 69, i32 70, i32 71, i32 8, i32 9, i32 10, i32 11, i32 72, i32 73, i32 74, i32 75, i32 12, i32 13, i32 14, i32 15, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 80, i32 81, i32 82, i32 83, i32 20, i32 21, i32 22, i32 23, i32 84, i32 85, i32 86, i32 87, i32 24, i32 25, i32 26, i32 27, i32 88, i32 89, i32 90, i32 91, i32 28, i32 29, i32 30, i32 31, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 96, i32 97, i32 98, i32 99, i32 36, i32 37, i32 38, i32 39, i32 100, i32 101, i32 102, i32 103, i32 40, i32 41, i32 42, i32 43, i32 104, i32 105, i32 106, i32 107, i32 44, i32 45, i32 46, i32 47, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 112, i32 113, i32 114, i32 115, i32 52, i32 53, i32 54, i32 55, i32 116, i32 117, i32 118, i32 119, i32 56, i32 57, i32 58, i32 59, i32 120, i32 121, i32 122, i32 123, i32 60, i32 61, i32 62, i32 63, i32 124, i32 125, i32 126, i32 127>
  store <128 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !62, !alias.scope !692, !noalias !693
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.by = getelementptr i8, ptr %i.br, i64 %i.bl
  %i.bz = getelementptr i8, ptr %i.bq, i64 %i.bm
  %i.ca = getelementptr i8, ptr %i.bo, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index140 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = shl i64 %index140, 4
  %next.gep141 = getelementptr i8, ptr %i.br, i64 %i.cb
  %i.cc = shl i64 %index140, 3                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.bq, i64 %i.cc
  %next.gep143 = getelementptr i8, ptr %i.bo, i64 %i.cc
  %wide.vec144 = load <16 x i16>, ptr %next.gep143, align 2, !tbaa !62, !alias.scope !690
  %wide.vec149 = load <16 x i16>, ptr %next.gep142, align 2, !tbaa !62, !alias.scope !691
  %interleaved.vec154 = shufflevector <16 x i16> %wide.vec144, <16 x i16> %wide.vec149, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %interleaved.vec154, ptr %next.gep141, align 2, !tbaa !62, !alias.scope !692, !noalias !693
  %index.next155 = add nuw i64 %index140, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next155, %n.vec139
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !686

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n156, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0103.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.040102.ph = phi ptr [ %i.br, %iter.check ], [ %i.br, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.041101.ph = phi ptr [ %i.bq, %iter.check ], [ %i.bq, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.042100.ph = phi ptr [ %i.bo, %iter.check ], [ %i.bo, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge106.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0103 = phi i32 [ %i.dc, %vec.epilog.scalar.ph ], [ %.0103.ph, %vec.epilog.scalar.ph.preheader ]
  %.040102 = phi ptr [ %i.db, %vec.epilog.scalar.ph ], [ %.040102.ph, %vec.epilog.scalar.ph.preheader ] ; 9 uses
  %.041101 = phi ptr [ %i.da, %vec.epilog.scalar.ph ], [ %.041101.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.042100 = phi ptr [ %i.cz, %vec.epilog.scalar.ph ], [ %.042100.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.ce = load i16, ptr %.042100, align 2, !tbaa !62
  store i16 %i.ce, ptr %.040102, align 2, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %.042100, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %.040102, i64 2
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %.040102, i64 4
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %.042100, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %.040102, i64 6
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !62
  %i.co = load i16, ptr %.041101, align 2, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %.040102, i64 8
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %.041101, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %.040102, i64 10
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %.041101, i64 4
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %.040102, i64 12
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %.041101, i64 6
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %.040102, i64 14
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.041101, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.040102, i64 16
  %i.dc = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !687

._crit_edge106.split:                             ; preds = %._crit_edge, %.noexc44.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge106.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.40(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not104 = icmp sgt i32 %i.k, %i.j
  br i1 %.not104, label %._crit_edge106.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !702 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !702 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !702 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !703 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !703 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !703 ; 4 uses
  %factor.op.mul107 = mul i64 %i.s, %i.u          ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge106.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = shl i64 %i.aa, 1                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.ac = shl nsw i64 %i.x, 1                     ; 3 uses
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ag = add nsw i64 %i.ac, %i.af
  %i.ah = mul i64 %i.z, %i.ag                     ; 3 uses
  %i.ai = add nsw i32 %i.v, -1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 5 uses
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak  ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.am, i64 2
  %i.an = mul i64 %i.u, %i.s
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.ab
  %i.ap = add i64 %i.ah, %i.ak                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.q, i64 %i.ap   ; 3 uses
  %i.ar = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.aq, i64 1
  %i.at = getelementptr i8, <2 x ptr> %i.as, <2 x i64> <i64 2, i64 4>
  %i.au = shufflevector <2 x ptr> %i.at, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.av = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.aw = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %i.av, i64 1 ; 2 uses
  %i.ay = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 2, i64 4> ; 4 uses
  %i.az = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ba = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 2, i64 4>
  %scevgep119 = getelementptr i8, ptr %i.av, i64 4
  %i.bb = getelementptr i8, ptr %i.q, i64 %i.ap   ; 4 uses
  %i.bc = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bd = insertelement <2 x ptr> %i.bc, ptr %i.bb, i64 1
  %i.be = getelementptr i8, <2 x ptr> %i.bd, <2 x i64> <i64 4, i64 6>
  %i.bf = shufflevector <2 x ptr> %i.be, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep120 = getelementptr i8, ptr %i.bb, i64 6
  %i.bg = getelementptr i8, ptr %i.q, i64 %i.ab
  %scevgep121 = getelementptr i8, ptr %i.bg, i64 6 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ak  ; 3 uses
  %i.bj = mul i64 %i.u, %i.s                      ; 2 uses
  %i.bk = or disjoint i64 %i.ac, 1
  %i.bl = mul i64 %i.bj, %i.bk                    ; 4 uses
  %scevgep123 = getelementptr i8, ptr %i.q, i64 %i.bl ; 4 uses
  %i.bm = add nsw i64 %i.ac, %i.af
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = mul i64 %i.bj, %i.bn                    ; 2 uses
  %i.bp = add i64 %i.bo, %i.ak                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.q, i64 %i.bp   ; 4 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.bi, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.bq, i64 1
  %8 = getelementptr i8, <2 x ptr> %7, <2 x i64> <i64 8, i64 2>
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.br = insertelement <4 x ptr> poison, ptr %i.aq, i64 0
  %i.bs = insertelement <4 x ptr> %i.br, ptr %i.bb, i64 1
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.bi, i64 2
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.bq, i64 3
  %i.bv = getelementptr i8, <4 x ptr> %i.bu, <4 x i64> <i64 4, i64 6, i64 8, i64 2>
  %i.bw = getelementptr i8, ptr %i.q, i64 %i.bl
  %i.bx = getelementptr i8, ptr %i.q, i64 %i.bp   ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bl   ; 2 uses
  %i.bz = insertelement <2 x ptr> poison, ptr %i.bw, i64 0
  %i.ca = insertelement <2 x ptr> %i.bz, ptr %i.by, i64 1
  %i.cb = getelementptr i8, <2 x ptr> %i.ca, <2 x i64> <i64 2, i64 4> ; 2 uses
  %i.cc = add i64 %i.bo, %i.ak                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.q, i64 %i.cc   ; 4 uses
  %i.ce = insertelement <2 x ptr> poison, ptr %i.bx, i64 0
  %i.cf = insertelement <2 x ptr> %i.ce, ptr %i.cd, i64 1
  %i.cg = getelementptr i8, <2 x ptr> %i.cf, <2 x i64> <i64 4, i64 6>
  %scevgep128 = getelementptr i8, ptr %i.cd, i64 6 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.bl   ; 2 uses
  %i.ci = insertelement <2 x ptr> poison, ptr %i.by, i64 0
  %i.cj = insertelement <2 x ptr> %i.ci, ptr %i.ch, i64 1
  %i.ck = getelementptr i8, <2 x ptr> %i.cj, <2 x i64> <i64 4, i64 6> ; 4 uses
  %scevgep129 = getelementptr i8, ptr %i.ch, i64 6 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.cc   ; 3 uses
  %scevgep130 = getelementptr i8, ptr %i.cl, i64 8
  %i.cm = mul i64 %i.p, %i.n                      ; 2 uses
  %i.cn = mul i64 %i.cm, %i.x
  %scevgep131 = getelementptr i8, ptr %i.l, i64 %i.cn ; 5 uses
  %i.co = add nsw i64 %i.x, %i.ae
  %i.cp = mul i64 %i.cm, %i.co
  %i.cq = shl nuw nsw i64 %i.aj, 4
  %i.cr = getelementptr i8, ptr %i.l, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq  ; 3 uses
  %i.ct = insertelement <8 x ptr> poison, ptr %i.bq, i64 0
  %i.cu = insertelement <8 x ptr> %i.ct, ptr %i.bx, i64 1
  %i.cv = insertelement <8 x ptr> %i.cu, ptr %i.cd, i64 2
  %i.cw = insertelement <8 x ptr> %i.cv, ptr %i.cl, i64 3
  %i.cx = insertelement <8 x ptr> %i.cw, ptr %i.cs, i64 4
  %i.cy = shufflevector <8 x ptr> %i.cx, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.cz = getelementptr i8, <8 x ptr> %i.cy, <8 x i64> <i64 2, i64 4, i64 6, i64 8, i64 16, i64 4, i64 6, i64 8> ; 4 uses
  %i.da = insertelement <8 x ptr> poison, ptr %i.cl, i64 0
  %i.db = insertelement <8 x ptr> %i.da, ptr %i.cs, i64 1
  %i.dc = insertelement <8 x ptr> %i.db, ptr %i.bb, i64 2
  %i.dd = insertelement <8 x ptr> %i.dc, ptr %i.bi, i64 3
  %i.de = insertelement <8 x ptr> %i.dd, ptr %i.bq, i64 4
  %i.df = insertelement <8 x ptr> %i.de, ptr %i.bx, i64 5
  %i.dg = insertelement <8 x ptr> %i.df, ptr %i.cd, i64 6
  %i.dh = shufflevector <8 x ptr> %i.dg, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.di = getelementptr i8, <8 x ptr> %i.dh, <8 x i64> <i64 8, i64 16, i64 6, i64 8, i64 2, i64 4, i64 6, i64 8> ; 4 uses
  %scevgep132 = getelementptr i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dj = mul i64 %i.p, %i.n
  %i.dk = insertelement <8 x ptr> poison, ptr %scevgep121, i64 0
  %i.dl = insertelement <8 x ptr> %i.dk, ptr %scevgep123, i64 1
  %i.dm = shufflevector <8 x ptr> %i.dl, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.dn = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.do = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %i.dp = insertelement <8 x ptr> poison, ptr %scevgep123, i64 0
  %i.dq = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dr = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ds = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.du = shufflevector <8 x ptr> %i.di, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.dv = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %scevgep, i64 0
  %i.dx = shufflevector <2 x ptr> %i.dw, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dy = shufflevector <2 x ptr> %i.ck, <2 x ptr> %i.ay, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.dz = insertelement <8 x ptr> %i.dy, ptr %scevgep131, i64 1
  %i.ea = insertelement <8 x ptr> %i.dz, ptr %scevgep121, i64 3
  %i.eb = insertelement <8 x ptr> %i.ea, ptr %scevgep123, i64 4
  %i.ec = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.ee = shufflevector <4 x ptr> %i.ed, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ef = shufflevector <4 x ptr> %i.ed, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <4 x ptr> poison, ptr %scevgep116, i64 0 ; 2 uses
  %i.eh = shufflevector <4 x ptr> %i.eg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ei = shufflevector <4 x ptr> %i.eg, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x ptr> %i.cb, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ek = shufflevector <8 x ptr> %i.eb, <8 x ptr> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 7> ; 2 uses
  %i.el = shufflevector <8 x ptr> %i.dp, <8 x ptr> %i.ej, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.em = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.en = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 48
  %i.eo = icmp ult <4 x ptr> %i.ee, %i.bv
  %i.ep = insertelement <4 x ptr> %i.em, ptr %scevgep121, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %scevgep123, i64 3
  %i.er = icmp ult <4 x ptr> %i.eq, %i.eh
  %.mask = and i64 %i.an, 4611686018427387904
  %i.es = icmp ult <2 x ptr> %i.ef, %i.cg
  %i.et = icmp ult <2 x ptr> %i.cb, %i.ei
  %i.eu = icmp ult <8 x ptr> %i.dx, %i.di
  %i.ev = icmp ult <8 x ptr> %i.ek, %i.au
  %i.ew = icmp ult <4 x ptr> %i.az, %i.dr
  %i.ex = shufflevector <8 x ptr> %i.ek, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ey = icmp ult <4 x ptr> %i.ex, %i.bf
  %i.ez = icmp ult <2 x ptr> %i.ds, %i.dt
  %i.fa = icmp ult <2 x ptr> %i.ck, %i.du
  %bound0209 = icmp ult ptr %scevgep119, %scevgep132
  %bound1210 = icmp ult ptr %scevgep131, %scevgep120
  %stride.check = icmp ne i64 %.mask, 0
  %i.fb = insertelement <16 x i1> poison, i1 %bound0209, i64 14
  %i.fc = insertelement <16 x i1> %i.fb, i1 %stride.check, i64 15
  %i.fd = shufflevector <8 x i1> %i.eu, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = shufflevector <16 x i1> %i.fd, <16 x i1> %i.fc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ff = shufflevector <4 x i1> %i.ew, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <16 x i1> %i.fe, <16 x i1> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <16 x i1> %i.fg, <16 x i1> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fj = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1210, i64 14
  %i.fk = shufflevector <8 x i1> %i.ev, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <16 x i1> %i.fk, <16 x i1> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.fm = shufflevector <4 x i1> %i.ey, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <16 x i1> %i.fl, <16 x i1> %i.fm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.fo = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = shufflevector <16 x i1> %i.fn, <16 x i1> %i.fo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.fq = and <16 x i1> %i.fi, %i.fp
  %i.fr = icmp ult <8 x ptr> %i.dm, %i.cz
  %i.fs = shufflevector <8 x ptr> %i.el, <8 x ptr> %i.ec, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ft = insertelement <8 x ptr> %i.fs, ptr %scevgep131, i64 4 ; 2 uses
  %i.fu = shufflevector <8 x ptr> %i.ft, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.fv = icmp ult <8 x ptr> %i.fu, %9
  %i.fw = shufflevector <8 x ptr> %i.el, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fx = icmp ult <4 x ptr> %i.fw, %i.dn
  %i.fy = shufflevector <8 x ptr> %i.ft, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.fz = icmp ult <4 x ptr> %i.fy, %i.dq
  %i.ga = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gb = icmp ult <2 x ptr> %i.ga, %i.do
  %bound1262 = icmp ult ptr %scevgep129, %scevgep128
  %bound1266 = icmp ult ptr %scevgep131, %scevgep128
  %bound0269 = icmp ult ptr %scevgep129, %scevgep132
  %bound1270 = icmp ult ptr %scevgep131, %scevgep130
  %stride.check159 = icmp slt i64 %i.dj, 0
  %i.gc = insertelement <16 x i1> poison, i1 %bound0269, i64 14
  %i.gd = insertelement <16 x i1> %i.gc, i1 %stride.check159, i64 15
  %i.ge = shufflevector <8 x i1> %i.fr, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <16 x i1> %i.ge, <16 x i1> %i.gd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.gg = shufflevector <4 x i1> %i.fx, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gf, <16 x i1> %i.gg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.gi = shufflevector <2 x i1> %i.gb, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <16 x i1> %i.gh, <16 x i1> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.gk = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1262, i64 12
  %i.gl = insertelement <16 x i1> %i.gk, i1 %bound1266, i64 13
  %i.gm = insertelement <16 x i1> %i.gl, i1 %bound1270, i64 14
  %i.gn = shufflevector <8 x i1> %i.fv, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <16 x i1> %i.gn, <16 x i1> %i.gm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.gp = shufflevector <4 x i1> %i.fz, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <16 x i1> %i.go, <16 x i1> %i.gp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.gr = and <16 x i1> %i.gj, %i.gq
  %i.gs = bitcast <16 x i1> %i.gr to i16
  %i.gt = bitcast <16 x i1> %i.fq to i16
  %i.gu = insertelement <2 x i16> poison, i16 %i.gt, i64 0
  %i.gv = insertelement <2 x i16> %i.gu, i16 %i.gs, i64 1
  %i.gw = icmp ne <2 x i16> %i.gv, zeroinitializer
  %i.gx = shufflevector <2 x i1> %i.gw, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.gy = shufflevector <4 x i1> %i.eo, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <8 x i1> %i.gy, <8 x i1> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ha = shufflevector <2 x i1> %i.es, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hb = shufflevector <8 x i1> %i.gz, <8 x i1> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hc = shufflevector <4 x i1> %i.er, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <8 x i1> %i.hc, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.he = shufflevector <2 x i1> %i.et, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i1> %i.hd, <8 x i1> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.hg = and <8 x i1> %i.hb, %i.hf
  %i.hh = bitcast <8 x i1> %i.hg to i8
  %.not = icmp eq i8 %i.hh, 0
  %n.vec = and i64 %i.en, 2147483640              ; 5 uses
  %i.hi = trunc nuw nsw i64 %n.vec to i32
  %i.hj = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.hk = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %i.hm = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %.reass108 = mul i64 %factor.op.mul107, %i.hm
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass108 ; 4 uses
  %i.ho = or disjoint i64 %i.hm, 1
  %.reass110 = mul i64 %factor.op.mul107, %i.ho
  %i.hp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass110 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hj
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hj
  %i.hs = getelementptr i8, ptr %i.hl, i64 %i.hk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ht = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hp, i64 %i.ht
  %next.gep273 = getelementptr i8, ptr %i.hn, i64 %i.ht
  %i.hu = shl i64 %index, 4
  %next.gep274 = getelementptr i8, ptr %i.hl, i64 %i.hu
  %wide.vec = load <64 x i16>, ptr %next.gep274, align 2, !tbaa !62, !alias.scope !704 ; 2 uses
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59>
  store <32 x i16> %interleaved.vec, ptr %next.gep273, align 2, !tbaa !62
  %interleaved.vec282 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63>
  store <32 x i16> %interleaved.vec282, ptr %next.gep, align 2, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !700

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.0103.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.hi, %middle.block ]
  %.040102.ph = phi ptr [ %i.hp, %vector.memcheck ], [ %i.hp, %.noexc ], [ %i.hq, %middle.block ]
  %.041101.ph = phi ptr [ %i.hn, %vector.memcheck ], [ %i.hn, %.noexc ], [ %i.hr, %middle.block ]
  %.042100.ph = phi ptr [ %i.hl, %vector.memcheck ], [ %i.hl, %.noexc ], [ %i.hs, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge106.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0103 = phi i32 [ %i.iu, %scalar.ph ], [ %.0103.ph, %scalar.ph.preheader ]
  %.040102 = phi ptr [ %i.it, %scalar.ph ], [ %.040102.ph, %scalar.ph.preheader ] ; 5 uses
  %.041101 = phi ptr [ %i.is, %scalar.ph ], [ %.041101.ph, %scalar.ph.preheader ] ; 5 uses
  %.042100 = phi ptr [ %i.ir, %scalar.ph ], [ %.042100.ph, %scalar.ph.preheader ] ; 9 uses
  %i.hw = load i16, ptr %.042100, align 2, !tbaa !62
  store i16 %i.hw, ptr %.041101, align 2, !tbaa !62
  %i.hx = getelementptr inbounds nuw i8, ptr %.042100, i64 2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !62
  %i.hz = getelementptr inbounds nuw i8, ptr %.041101, i64 2
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !62
  %i.ic = getelementptr inbounds nuw i8, ptr %.041101, i64 4
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !62
  %i.id = getelementptr inbounds nuw i8, ptr %.042100, i64 6
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %.041101, i64 6
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !62
  store i16 %i.ih, ptr %.040102, align 2, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %.042100, i64 10
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %.040102, i64 2
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !62
  %i.il = getelementptr inbounds nuw i8, ptr %.042100, i64 12
  %i.im = load i16, ptr %i.il, align 2, !tbaa !62
  %i.in = getelementptr inbounds nuw i8, ptr %.040102, i64 4
  store i16 %i.im, ptr %i.in, align 2, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %.042100, i64 14
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !62
  %i.iq = getelementptr inbounds nuw i8, ptr %.040102, i64 6
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !62
  %i.ir = getelementptr inbounds nuw i8, ptr %.042100, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %.041101, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.040102, i64 8
  %i.iu = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.iu, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !701

._crit_edge106.split:                             ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge106.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not524 = icmp sgt i32 %i.k, %i.j
  br i1 %.not524, label %._crit_edge526.split, label %.noexc128.lr.ph

.noexc128.lr.ph:                                  ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !710 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !710
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !710
  %factor.op.mul = mul i64 %i.n, %i.p             ; 16 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !711
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !711
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !711
  %factor.op.mul557 = mul i64 %i.s, %i.u
end_hunk_5
