Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.and = mul nsw <4 x i32> %i.anc, %i.ana
  %i.ane = add nsw <4 x i32> %i.and, %.epil.init
  %i.anf = getelementptr inbounds nuw i8, ptr %.06721468.epil.init, i64 4
  %i.ang = getelementptr inbounds nuw i8, ptr %.117591467.epil.init, i64 4
  br label %._crit_edge1476.loopexit

._crit_edge1476.loopexit:                         ; preds = %._crit_edge1476.loopexit.unr-lcssa, %.lr.ph1475.epil.preheader
  %.lcssa1994 = phi <4 x i32> [ %i.amw, %._crit_edge1476.loopexit.unr-lcssa ], [ %i.ane, %.lr.ph1475.epil.preheader ]
  %.lcssa1993 = phi ptr [ %i.amx, %._crit_edge1476.loopexit.unr-lcssa ], [ %i.anf, %.lr.ph1475.epil.preheader ]
  %.lcssa1992 = phi ptr [ %i.amy, %._crit_edge1476.loopexit.unr-lcssa ], [ %i.ang, %.lr.ph1475.epil.preheader ]
  %i.anh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa1994)
  br label %._crit_edge1476

._crit_edge1476:                                  ; preds = %._crit_edge1476.loopexit, %bb.aa
  %.11759.lcssa = phi ptr [ %.107581493, %bb.aa ], [ %.lcssa1992, %._crit_edge1476.loopexit ] ; 4 uses
  %.0672.lcssa = phi ptr [ %.26971501, %bb.aa ], [ %.lcssa1993, %._crit_edge1476.loopexit ] ; 3 uses
  %.0671.lcssa = phi i32 [ 0, %bb.aa ], [ %i.om, %._crit_edge1476.loopexit ] ; 4 uses
  %i.ani = phi i32 [ 0, %bb.aa ], [ %i.anh, %._crit_edge1476.loopexit ]
  %op.rdx = add i32 %i.ani, %.0674                ; 3 uses
  %i.anj = icmp slt i32 %.0671.lcssa, %8
  br i1 %i.anj, label %.lr.ph1489.preheader, label %._crit_edge1490

.lr.ph1489.preheader:                             ; preds = %._crit_edge1476
  %i.ank = xor i32 %.0671.lcssa, -1
  %i.anl = add i32 %8, %i.ank                     ; 2 uses
  %i.anm = zext i32 %i.anl to i64
  %i.ann = add nuw nsw i64 %i.anm, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.anl, 7
  br i1 %min.iters.check, label %.lr.ph1489.preheader1959, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1489.preheader
  %n.vec = and i64 %i.ann, 8589934584             ; 5 uses
  %i.ano = trunc i64 %n.vec to i32
  %i.anp = add i32 %.0671.lcssa, %i.ano
  %i.anq = getelementptr i8, ptr %.0672.lcssa, i64 %n.vec
  %i.anr = getelementptr i8, ptr %.11759.lcssa, i64 %n.vec ; 2 uses
  %i.ans = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ans, %vector.ph ], [ %i.aob, %vector.body ]
  %vec.phi1952 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aoc, %vector.body ]
  %next.gep = getelementptr i8, ptr %.0672.lcssa, i64 %index ; 2 uses
  %next.gep1953 = getelementptr i8, ptr %.11759.lcssa, i64 %index ; 2 uses
  %i.ant = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !113
  %wide.load1954 = load <4 x i8>, ptr %i.ant, align 1, !tbaa !113
  %i.anu = sext <4 x i8> %wide.load to <4 x i32>
  %i.anv = sext <4 x i8> %wide.load1954 to <4 x i32>
  %i.anw = getelementptr i8, ptr %next.gep1953, i64 4
  %wide.load1955 = load <4 x i8>, ptr %next.gep1953, align 1, !tbaa !113
  %wide.load1956 = load <4 x i8>, ptr %i.anw, align 1, !tbaa !113
  %i.anx = sext <4 x i8> %wide.load1955 to <4 x i32>
  %i.any = sext <4 x i8> %wide.load1956 to <4 x i32>
  %i.anz = mul nsw <4 x i32> %i.anx, %i.anu
  %i.aoa = mul nsw <4 x i32> %i.any, %i.anv
  %i.aob = add <4 x i32> %i.anz, %vec.phi         ; 2 uses
  %i.aoc = add <4 x i32> %i.aoa, %vec.phi1952     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aod = icmp eq i64 %index.next, %n.vec
  br i1 %i.aod, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aoc, %i.aob
  %i.aoe = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ann, %n.vec
  br i1 %cmp.n, label %._crit_edge1490, label %.lr.ph1489.preheader1959

.lr.ph1489.preheader1959:                         ; preds = %.lr.ph1489.preheader, %middle.block
  %.11487.ph = phi i32 [ %.0671.lcssa, %.lr.ph1489.preheader ], [ %i.anp, %middle.block ]
  %.16731486.ph = phi ptr [ %.0672.lcssa, %.lr.ph1489.preheader ], [ %i.anq, %middle.block ]
  %.16751485.ph = phi i32 [ %op.rdx, %.lr.ph1489.preheader ], [ %i.aoe, %middle.block ]
  %.127601484.ph = phi ptr [ %.11759.lcssa, %.lr.ph1489.preheader ], [ %i.anr, %middle.block ]
  br label %.lr.ph1489

.lr.ph1489:                                       ; preds = %.lr.ph1489.preheader1959, %.lr.ph1489
  %.11487 = phi i32 [ %i.aon, %.lr.ph1489 ], [ %.11487.ph, %.lr.ph1489.preheader1959 ]
  %.16731486 = phi ptr [ %i.aol, %.lr.ph1489 ], [ %.16731486.ph, %.lr.ph1489.preheader1959 ] ; 2 uses
  %.16751485 = phi i32 [ %i.aok, %.lr.ph1489 ], [ %.16751485.ph, %.lr.ph1489.preheader1959 ]
  %.127601484 = phi ptr [ %i.aom, %.lr.ph1489 ], [ %.127601484.ph, %.lr.ph1489.preheader1959 ] ; 2 uses
  %i.aof = load i8, ptr %.16731486, align 1, !tbaa !113
  %i.aog = sext i8 %i.aof to i32
  %i.aoh = load i8, ptr %.127601484, align 1, !tbaa !113
  %i.aoi = sext i8 %i.aoh to i32
  %i.aoj = mul nsw i32 %i.aoi, %i.aog
  %i.aok = add nsw i32 %i.aoj, %.16751485         ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.16731486, i64 1
  %i.aom = getelementptr inbounds nuw i8, ptr %.127601484, i64 1 ; 2 uses
  %i.aon = add nuw nsw i32 %.11487, 1             ; 2 uses
  %exitcond1682.not = icmp eq i32 %i.aon, %8
  br i1 %exitcond1682.not, label %._crit_edge1490, label %.lr.ph1489, !llvm.loop !559

._crit_edge1490:                                  ; preds = %.lr.ph1489, %middle.block, %._crit_edge1476
  %.12760.lcssa = phi ptr [ %.11759.lcssa, %._crit_edge1476 ], [ %i.anr, %middle.block ], [ %i.aom, %.lr.ph1489 ]
  %.1675.lcssa = phi i32 [ %op.rdx, %._crit_edge1476 ], [ %i.aoe, %middle.block ], [ %i.aok, %.lr.ph1489 ]
  store i32 %.1675.lcssa, ptr %.141495, align 4, !tbaa !45
  %i.aoo = getelementptr inbounds nuw i8, ptr %.141495, i64 4 ; 2 uses
  %i.aop = add nuw nsw i32 %.37471494, 1          ; 2 uses
  %exitcond1683.not = icmp eq i32 %i.aop, %6
  br i1 %exitcond1683.not, label %._crit_edge1497, label %.lr.ph1496, !llvm.loop !560

._crit_edge1497:                                  ; preds = %._crit_edge1490, %.preheader1056
  %.14.lcssa = phi ptr [ %.13.lcssa, %.preheader1056 ], [ %i.aoo, %._crit_edge1490 ]
  %i.aoq = getelementptr inbounds i8, ptr %.26971501, i64 %i.ob
  %i.aor = add nuw nsw i32 %.27031499, 1          ; 2 uses
  %scevgep1679 = getelementptr i8, ptr %indvars.iv1678, i64 %i.ob
  %exitcond1684.not = icmp eq i32 %i.aor, %4
  br i1 %exitcond1684.not, label %.loopexit, label %.preheader1059, !llvm.loop !561

.loopexit:                                        ; preds = %._crit_edge1497, %.preheader1060, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr nofree readonly %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 47 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !85
  %i.n = icmp eq i32 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = select i1 %i.n, i64 %i.p, i64 %i.s       ; 14 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.v = icmp sgt i32 %4, 3
  br i1 %i.v, label %.lr.ph932.i, label %.preheader885.i

.lr.ph932.i:                                      ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %.not1268.i = icmp eq i32 %10, 0                ; 5 uses
  %i.y = sext i32 %5 to i64                       ; 2 uses
  %i.z = mul i64 %i.k, %i.y
  %i.aa = mul nsw i32 %i.b, %5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sext i32 %3 to i64                      ; 5 uses
  %i.ad = icmp eq i32 %2, 0                       ; 5 uses
  %i.ae = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.ae, 2              ; 5 uses
  %i.af = mul nsw i32 %i.x, %5
  %i.ag = sext i32 %i.af to i64
  %i.ah = insertelement <4 x float> poison, float %9, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.aj = icmp sgt i32 %6, 7
  %i.ak = icmp eq i32 %i.x, 4                     ; 5 uses
  %.idx1286.i = shl i64 %i.t, 3                   ; 5 uses
  %.idx1287.i = mul i64 %i.t, 12                  ; 5 uses
  %i.al = fcmp fast oeq float %9, 1.000000e+00    ; 4 uses
  %i.am = fcmp fast une float %8, 1.000000e+00    ; 3 uses
  %i.an = insertelement <4 x float> poison, float %8, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 14 uses
  %.idx1293.i = shl i64 %i.k, 3                   ; 7 uses
  %.idx1294.i = mul i64 %i.k, 12                  ; 6 uses
  %.idx1295.i = shl i64 %i.k, 4                   ; 3 uses
  %.idx1296.i = mul i64 %i.k, 20
  %.idx1297.i = mul i64 %i.k, 24
  %.idx1298.i = mul i64 %i.k, 28
  %.idx1299.i = shl i64 %i.k, 5
  %i.ap = select ninf nsz i1 %i.am, <4 x float> %i.ao, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aq = and i32 %6, -8
  %i.ar = zext nneg i32 %4 to i64
  %i.as = sext i32 %i.b to i64
  %i.at = insertelement <4 x float> poison, float %9, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = insertelement <4 x float> poison, float %9, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %9, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader885.loopexit.i:                         ; preds = %._crit_edge.i
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader885.i

.preheader885.i:                                  ; preds = %.preheader885.loopexit.i, %bb.a
  %.01190.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.az, %.preheader885.loopexit.i ] ; 3 uses
  %.01175.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.41179.lcssa.i, %.preheader885.loopexit.i ] ; 2 uses
  %.01166.lcssa.i = phi ptr [ %i.u, %bb.a ], [ %.16.lcssa.i, %.preheader885.loopexit.i ] ; 2 uses
  %i.ba = or disjoint i32 %.01190.lcssa.i, 1
  %i.bb = icmp slt i32 %i.ba, %4
  br i1 %i.bb, label %.lr.ph981.i, label %.preheader881.i

.lr.ph981.i:                                      ; preds = %.preheader885.i
  %.not1258.i = icmp eq i32 %10, 0                ; 6 uses
  %i.bc = sext i32 %5 to i64                      ; 4 uses
  %i.bd = mul i64 %i.k, %i.bc
  %11 = icmp eq i32 %2, 0                         ; 5 uses
  %or.cond11.i = icmp ult i32 %2, 3               ; 4 uses
  %i.be = sext i32 %3 to i64                      ; 3 uses
  %i.bf = icmp sgt i32 %6, 7
  %i.bg = insertelement <4 x float> poison, float %9, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.bi = fcmp fast oeq float %9, 1.000000e+00    ; 3 uses
  %i.bj = fcmp fast une float %8, 1.000000e+00    ; 2 uses
  %i.bk = insertelement <4 x float> poison, float %8, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx869.i = shl i64 %i.k, 3                    ; 3 uses
  %.idx870.i = mul i64 %i.k, 12                   ; 2 uses
  %.idx871.i = shl i64 %i.k, 4                    ; 5 uses
  %.idx872.i = mul i64 %i.k, 20
  %.idx873.i = mul i64 %i.k, 24
  %.idx874.i = mul i64 %i.k, 28
  %.idx1267.i = shl i64 %i.k, 5                   ; 3 uses
  %12 = add i32 %2, -1
  %or.cond19.i = icmp ult i32 %12, 2              ; 2 uses
  %i.bm = and i32 %6, -8
  %i.bn = zext nneg i32 %.01190.lcssa.i to i64
  %i.bo = sext i32 %4 to i64
  %i.bp = sext i32 %i.b to i64
  %i.bq = select ninf nsz i1 %i.bj, <4 x float> %i.bl, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op1108.i = add nsw i64 %i.bo, -1
  %..idx869.i = select i1 %.not1258.i, i64 8, i64 %.idx869.i
  %13 = insertelement <2 x i1> poison, i1 %11, i64 0
  %14 = insertelement <2 x i1> %13, i1 %or.cond19.i, i64 1
  %15 = insertelement <2 x float> poison, float %9, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = insertelement <2 x float> poison, float %8, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = insertelement <2 x i1> poison, i1 %.not1258.i, i64 0
  %i.bu = shufflevector <2 x i1> %i.bt, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.cg

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph932.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph932.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %.01166930.i = phi ptr [ %i.u, %.lr.ph932.i ], [ %.16.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.01175929.i = phi ptr [ %.0.val, %.lr.ph932.i ], [ %.41179.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  br i1 %.not1268.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.z
  %i.bx = add nsw i64 %indvars.iv.i, %i.ac
  %i.by = mul nsw i64 %i.bx, %i.as
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ca = add nsw i64 %indvars.iv.i, %i.ac
  %i.cb = mul i64 %i.ca, %i.k
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01193.i = phi ptr [ %i.bz, %bb.c ], [ %i.cd, %bb.d ] ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !18
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ac
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !tbaa !113 ; 15 uses
  %.not1269.i = icmp eq ptr %.01166930.i, null
  br i1 %.not1269.i, label %.thread675.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ad, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.ci = load float, ptr %.01166930.i, align 4, !tbaa !68
  %i.cj = fmul fast float %i.ci, %9
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread675.i

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr %0, align 8, !tbaa !18
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ac
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i ; 2 uses
  %i.cp = load <4 x float>, ptr %i.co, align 1, !tbaa !113
  %i.cq = fmul fast <4 x float> %i.cp, %i.ai
  br label %.thread675.i

bb.i:                                             ; preds = %bb.g
  switch i32 %2, label %.thread675.i [
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !18
  %i.cs = add nsw i64 %indvars.iv.i, %i.ac
  %i.ct = mul i64 %i.cs, %i.t
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ag
  br label %.thread675.i

bb.k:                                             ; preds = %bb.i
  %i.cw = load ptr, ptr %0, align 8, !tbaa !18
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.y
  br label %.thread675.i

.thread675.i:                                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.thread.i, %bb.e
  %.2485.i = phi nsz <4 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.j ], [ %i.cl, %.thread.i ], [ %i.cq, %bb.h ] ; 2 uses
  %.31169.i = phi ptr [ null, %bb.e ], [ %i.cx, %bb.k ], [ %.01166930.i, %bb.i ], [ %i.cv, %bb.j ], [ %.01166930.i, %.thread.i ], [ %i.co, %bb.h ] ; 2 uses
  br i1 %i.aj, label %.lr.ph.i, label %.preheader888.i

.preheader888.i:                                  ; preds = %bb.aj, %.thread675.i
  %.3486.lcssa.i = phi <4 x float> [ %.2485.i, %.thread675.i ], [ %.7490.i, %bb.aj ] ; 2 uses
  %.01206.lcssa.i = phi i32 [ 0, %.thread675.i ], [ %i.aq, %bb.aj ] ; 3 uses
  %.11194.lcssa.i = phi ptr [ %.01193.i, %.thread675.i ], [ %.31196.i, %bb.aj ] ; 2 uses
  %.11176.lcssa.i = phi ptr [ %.01175929.i, %.thread675.i ], [ %i.lv, %bb.aj ] ; 2 uses
  %.41170.lcssa.i = phi ptr [ %.31169.i, %.thread675.i ], [ %.71173.i, %bb.aj ] ; 2 uses
  %i.cy = or disjoint i32 %.01206.lcssa.i, 3
  %i.cz = icmp slt i32 %i.cy, %6
  br i1 %i.cz, label %.lr.ph903.i, label %.preheader887.i

.lr.ph.i:                                         ; preds = %.thread675.i, %bb.aj
  %.41170893.i = phi ptr [ %.71173.i, %bb.aj ], [ %.31169.i, %.thread675.i ] ; 23 uses
  %.11176892.i = phi ptr [ %i.lv, %bb.aj ], [ %.01175929.i, %.thread675.i ] ; 9 uses
  %.11194891.i = phi ptr [ %.31196.i, %bb.aj ], [ %.01193.i, %.thread675.i ] ; 30 uses
  %.01206890.i = phi i32 [ %i.lw, %bb.aj ], [ 0, %.thread675.i ]
  %.3486889.i = phi <4 x float> [ %.7490.i, %bb.aj ], [ %.2485.i, %.thread675.i ] ; 20 uses
  %i.da = load <4 x i32>, ptr %.11176892.i, align 16, !tbaa !113
  %i.db = sitofp fast <4 x i32> %i.da to <4 x float> ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 16
  %i.dd = load <4 x i32>, ptr %i.dc, align 16, !tbaa !113
  %i.de = sitofp fast <4 x i32> %i.dd to <4 x float> ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 32
  %i.dg = load <4 x i32>, ptr %i.df, align 16, !tbaa !113
  %i.dh = sitofp fast <4 x i32> %i.dg to <4 x float> ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 48
  %i.dj = load <4 x i32>, ptr %i.di, align 16, !tbaa !113
  %i.dk = sitofp fast <4 x i32> %i.dj to <4 x float> ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 64
  %i.dm = load <4 x i32>, ptr %i.dl, align 16, !tbaa !113
  %i.dn = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 80
  %i.do = load <4 x i32>, ptr %i.dn, align 16, !tbaa !113
  %i.dp = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 96
  %i.dq = load <4 x i32>, ptr %i.dp, align 16, !tbaa !113
  %i.dr = getelementptr inbounds nuw i8, ptr %.11176892.i, i64 112
  %i.ds = load <4 x i32>, ptr %i.dr, align 16, !tbaa !113
  %i.dt = sitofp <4 x i32> %i.dm to <4 x float>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dv = sitofp <4 x i32> %i.do to <4 x float>
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dx = sitofp <4 x i32> %i.dq to <4 x float>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dz = sitofp <4 x i32> %i.ds to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.eb = shufflevector <4 x float> %i.db, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.db, <4 x float> %i.dy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.de, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.de, <4 x float> %i.ea, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.dh, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dh, <4 x float> %i.du, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.dk, <4 x float> %i.dw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.dk, <4 x float> %i.dw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.eb, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ek = shufflevector <4 x float> %i.eb, <4 x float> %i.ef, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.el = shufflevector <4 x float> %i.eg, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.em = shufflevector <4 x float> %i.eg, <4 x float> %i.ec, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.en = shufflevector <4 x float> %i.ed, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = shufflevector <4 x float> %i.ed, <4 x float> %i.eh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ep = shufflevector <4 x float> %i.ei, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = shufflevector <4 x float> %i.ei, <4 x float> %i.ee, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.es = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.et = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.eu = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ev = fmul fast <4 x float> %i.ch, %i.ej      ; 6 uses
  %i.ew = fmul fast <4 x float> %i.er, %i.ch      ; 6 uses
  %i.ex = fmul fast <4 x float> %i.ch, %i.el      ; 6 uses
  %i.ey = fmul fast <4 x float> %i.es, %i.ch      ; 6 uses
  %i.ez = fmul fast <4 x float> %i.ch, %i.en      ; 7 uses
  %i.fa = fmul fast <4 x float> %i.et, %i.ch      ; 7 uses
  %i.fb = fmul fast <4 x float> %i.ch, %i.ep      ; 7 uses
  %i.fc = fmul fast <4 x float> %i.eu, %i.ch      ; 7 uses
  %.not1285.i = icmp eq ptr %.41170893.i, null
  br i1 %.not1285.i, label %.thread699.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  br i1 %i.ad, label %.thread678.i, label %bb.m

.thread678.i:                                     ; preds = %bb.l
  %i.fd = fadd fast <4 x float> %i.ev, %.3486889.i
  %i.fe = fadd fast <4 x float> %i.ew, %.3486889.i
  %i.ff = fadd fast <4 x float> %i.ex, %.3486889.i
  %i.fg = fadd fast <4 x float> %i.ey, %.3486889.i
  %i.fh = fadd fast <4 x float> %i.ez, %.3486889.i
  %i.fi = fadd fast <4 x float> %i.fa, %.3486889.i
  %i.fj = fadd fast <4 x float> %i.fb, %.3486889.i
  %i.fk = fadd fast <4 x float> %i.fc, %.3486889.i
  br label %.thread699.i

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fl = fadd fast <4 x float> %i.ev, %.3486889.i
  %i.fm = fadd fast <4 x float> %i.ew, %.3486889.i
  %i.fn = fadd fast <4 x float> %i.ex, %.3486889.i
  %i.fo = fadd fast <4 x float> %i.ey, %.3486889.i
  %i.fp = fadd fast <4 x float> %i.ez, %.3486889.i
  %i.fq = fadd fast <4 x float> %i.fa, %.3486889.i
  %i.fr = fadd fast <4 x float> %i.fb, %.3486889.i
  %i.fs = fadd fast <4 x float> %i.fc, %.3486889.i
  br label %.thread699.i

bb.o:                                             ; preds = %bb.m
  switch i32 %2, label %.thread699.i [
    i32 3, label %bb.p
    i32 4, label %bb.aa
  ]

bb.p:                                             ; preds = %bb.o
  %i.ft = load <4 x float>, ptr %.41170893.i, align 1, !tbaa !113 ; 3 uses
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 16
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !tbaa !113
  %i.fw = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 32
  %i.fx = load <4 x float>, ptr %i.fw, align 1, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %.41170893.i, i64 48
  %i.fz = load <4 x float>, ptr %i.fy, align 1, !tbaa !113
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
.lr.ph925.i:                                      ; preds = %.preheader886.i, %bb.cf
  %.16924.i = phi ptr [ %.19.i, %bb.cf ], [ %.12.lcssa.i, %.preheader886.i ] ; 12 uses
  %.41179923.i = phi ptr [ %i.ur, %bb.cf ], [ %.31178.lcssa.i, %.preheader886.i ] ; 2 uses
  %.101203922.i = phi ptr [ %.121205.i, %bb.cf ], [ %.71200.lcssa.i, %.preheader886.i ] ; 10 uses
  %.31209921.i = phi i32 [ %i.us, %bb.cf ], [ %.21208.lcssa.i, %.preheader886.i ]
  %.16499920.i = phi <4 x float> [ %.19502.i, %bb.cf ], [ %.12495.lcssa.i, %.preheader886.i ] ; 6 uses
  %i.tk = load <4 x i32>, ptr %.41179923.i, align 16, !tbaa !113
  %i.tl = sitofp fast <4 x i32> %i.tk to <4 x float>
  %i.tm = fmul fast <4 x float> %i.ch, %i.tl      ; 6 uses
  %.not1270.i = icmp eq ptr %.16924.i, null
  br i1 %.not1270.i, label %.thread757.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph925.i
  br i1 %i.ad, label %.thread750.i, label %bb.bu

.thread750.i:                                     ; preds = %bb.bt
  %i.tn = fadd fast <4 x float> %i.tm, %.16499920.i
  br label %.thread757.i

bb.bu:                                            ; preds = %bb.bt
  br i1 %or.cond.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.to = fadd fast <4 x float> %i.tm, %.16499920.i
  br label %.thread757.i

bb.bw:                                            ; preds = %bb.bu
  switch i32 %2, label %.thread757.i [
    i32 3, label %bb.bx
    i32 4, label %bb.cb
  ]

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.ak, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tp = load <4 x float>, ptr %.16924.i, align 1, !tbaa !113
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.tq = load float, ptr %.16924.i, align 4, !tbaa !68
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.16924.i, i64 %i.t
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !68
  %i.tt = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.idx1286.i
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !68
  %i.tv = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.idx1287.i
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !68
  %i.tx = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.ty = insertelement <4 x float> %i.tx, float %i.ts, i64 1
  %i.tz = insertelement <4 x float> %i.ty, float %i.tu, i64 2
  %i.ua = insertelement <4 x float> %i.tz, float %i.tw, i64 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink1111.i = phi i64 [ 4, %bb.bz ], [ 16, %bb.by ]
  %.17500.i = phi nsz <4 x float> [ %i.ua, %bb.bz ], [ %i.tp, %bb.by ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.16924.i, i64 %.sink1111.i
  %i.uc = fmul fast <4 x float> %.17500.i, %i.ai
  %i.ud = fadd fast <4 x float> %i.uc, %i.tm
  br label %.thread757.i

bb.cb:                                            ; preds = %bb.bw
  %i.ue = load float, ptr %.16924.i, align 4, !tbaa !68
  %i.uf = fmul fast float %i.ue, %9
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ui = fadd fast <4 x float> %i.uh, %i.tm
  %i.uj = getelementptr inbounds nuw i8, ptr %.16924.i, i64 4
  br label %.thread757.i

.thread757.i:                                     ; preds = %bb.cb, %bb.ca, %bb.bw, %bb.bv, %.thread750.i, %.lr.ph925.i
  %.3652.i = phi nsz <4 x float> [ %i.tm, %.lr.ph925.i ], [ %i.ui, %bb.cb ], [ %i.tm, %bb.bw ], [ %i.ud, %bb.ca ], [ %i.tn, %.thread750.i ], [ %i.to, %bb.bv ]
  %.19502.i = phi nsz <4 x float> [ %.16499920.i, %.lr.ph925.i ], [ %i.uh, %bb.cb ], [ %.16499920.i, %bb.bw ], [ %.17500.i, %bb.ca ], [ %.16499920.i, %.thread750.i ], [ %.16499920.i, %bb.bv ]
  %.19.i = phi ptr [ null, %.lr.ph925.i ], [ %i.uj, %bb.cb ], [ %.16924.i, %bb.bw ], [ %i.ub, %bb.ca ], [ %.16924.i, %.thread750.i ], [ %.16924.i, %bb.bv ] ; 2 uses
  %i.uk = fmul fast <4 x float> %.3652.i, %i.ao   ; 6 uses
  br i1 %.not1268.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread757.i
  store <4 x float> %i.uk, ptr %.101203922.i, align 1, !tbaa !113
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.101203922.i, i64 %i.k
  br label %bb.cf

bb.cd:                                            ; preds = %.thread757.i
  switch i32 %i.b, label %bb.cf [
    i32 4, label %.thread761.i
    i32 1, label %bb.ce
  ]

.thread761.i:                                     ; preds = %bb.cd
  store <4 x float> %i.uk, ptr %.101203922.i, align 16, !tbaa !113
  %i.um = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0140.0.vec.extract.i = extractelement <4 x float> %i.uk, i64 0
  store float %.sroa.0140.0.vec.extract.i, ptr %.101203922.i, align 4, !tbaa !68
  %.sroa.0140.4.vec.extract.i = extractelement <4 x float> %i.uk, i64 1
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.101203922.i, i64 %i.k
  store float %.sroa.0140.4.vec.extract.i, ptr %i.un, align 4, !tbaa !68
  %.sroa.0140.8.vec.extract.i = extractelement <4 x float> %i.uk, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1293.i
  store float %.sroa.0140.8.vec.extract.i, ptr %i.uo, align 4, !tbaa !68
  %.sroa.0140.12.vec.extract.i = extractelement <4 x float> %i.uk, i64 3
  %i.up = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 %.idx1294.i
  store float %.sroa.0140.12.vec.extract.i, ptr %i.up, align 4, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %.101203922.i, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.thread761.i, %bb.cd, %bb.cc
  %.121205.i = phi ptr [ %i.ul, %bb.cc ], [ %i.uq, %bb.ce ], [ %.101203922.i, %bb.cd ], [ %i.um, %.thread761.i ]
  %i.ur = getelementptr inbounds nuw i8, ptr %.41179923.i, i64 16 ; 2 uses
  %i.us = add nuw nsw i32 %.31209921.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.us, %6
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph925.i, !llvm.loop !565

._crit_edge.i:                                    ; preds = %bb.cf, %.preheader886.i
  %.41179.lcssa.i = phi ptr [ %.31178.lcssa.i, %.preheader886.i ], [ %i.ur, %bb.cf ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader886.i ], [ %.19.i, %bb.cf ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.ut = or disjoint i64 %indvars.iv.next.i, 3
  %i.uu = icmp samesign ult i64 %i.ut, %i.ar
  br i1 %i.uu, label %bb.b, label %.preheader885.loopexit.i, !llvm.loop !566

.preheader881.loopexit.i:                         ; preds = %._crit_edge974.i
  %i.uv = trunc nuw nsw i64 %indvars.iv.next1058.i to i32
  br label %.preheader881.i

.preheader881.i:                                  ; preds = %.preheader881.loopexit.i, %.preheader885.i
  %.11191.lcssa.i = phi i32 [ %.01190.lcssa.i, %.preheader885.i ], [ %i.uv, %.preheader881.loopexit.i ] ; 2 uses
  %.51180.lcssa.i = phi ptr [ %.01175.lcssa.i, %.preheader885.i ], [ %.91184.lcssa.i, %.preheader881.loopexit.i ]
  %.20.lcssa.i = phi ptr [ %.01166.lcssa.i, %.preheader885.i ], [ %.33.lcssa.i, %.preheader881.loopexit.i ]
  %i.uw = icmp slt i32 %.11191.lcssa.i, %4
  br i1 %i.uw, label %.lr.ph1026.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1026.i:                                     ; preds = %.preheader881.i
  %.not.i = icmp eq i32 %10, 0                    ; 5 uses
  %i.ux = sext i32 %5 to i64                      ; 4 uses
  %i.uy = mul i64 %i.k, %i.ux
  %i.uz = icmp eq i32 %2, 0
  %or.cond21.i = icmp ult i32 %2, 3               ; 5 uses
  %i.va = sext i32 %3 to i64                      ; 3 uses
  %i.vb = icmp sgt i32 %6, 7
  %i.vc = add i32 %2, -3
  %or.cond27.i = icmp ult i32 %i.vc, 2            ; 4 uses
  %i.vd = insertelement <4 x float> poison, float %9, i64 0
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.vf = fcmp fast une float %8, 1.000000e+00
  %i.vg = insertelement <4 x float> poison, float %8, i64 0
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vi = select ninf nsz i1 %i.vf, <4 x float> %i.vh, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.vj = icmp eq i64 %i.k, 1                     ; 2 uses
  %.idx1251.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1252.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1253.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1254.i = mul i64 %i.k, 20
  %.idx1255.i = mul i64 %i.k, 24
  %.idx1256.i = mul i64 %i.k, 28
  %.idx1257.i = shl i64 %i.k, 5                   ; 3 uses
  %i.vk = and i32 %6, -8
  %i.vl = zext nneg i32 %.11191.lcssa.i to i64
  %i.vm = sext i32 %i.b to i64
  %wide.trip.count.i = zext i32 %4 to i64
  %i.vn = insertelement <2 x float> poison, float %9, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ed

bb.cg:                                            ; preds = %._crit_edge974.i, %.lr.ph981.i
  %indvars.iv1057.i = phi i64 [ %i.bn, %.lr.ph981.i ], [ %indvars.iv.next1058.i, %._crit_edge974.i ] ; 4 uses
  %.20980.i = phi ptr [ %.01166.lcssa.i, %.lr.ph981.i ], [ %.33.lcssa.i, %._crit_edge974.i ] ; 4 uses
  %.51180979.i = phi ptr [ %.01175.lcssa.i, %.lr.ph981.i ], [ %.91184.lcssa.i, %._crit_edge974.i ] ; 2 uses
  %i.vp = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  br i1 %.not1258.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.bd
  %i.vr = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.vs = mul nsw i64 %i.vr, %i.bp
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.vs
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.vu = add nsw i64 %indvars.iv1057.i, %i.be    ; 2 uses
  %i.vv = mul i64 %i.vu, %i.k
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.vv
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.bc
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pre-phi.i = phi i64 [ %i.vu, %bb.ci ], [ %i.vr, %bb.ch ] ; 2 uses
  %.01210.i = phi ptr [ %i.vx, %bb.ci ], [ %i.vt, %bb.ch ] ; 2 uses
  %i.vy = load ptr, ptr %7, align 8, !tbaa !18
  %i.vz = getelementptr [4 x i8], ptr %i.vy, i64 %.pre-phi.i
  %i.wa = load <2 x float>, ptr %i.vz, align 4, !tbaa !68 ; 4 uses
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wc = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.wd = shufflevector <2 x float> %i.wa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1259.i = icmp eq ptr %.20980.i, null
  br i1 %.not1259.i, label %.thread779.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %11, label %.thread763.i, label %bb.cl

.thread763.i:                                     ; preds = %bb.ck
  %i.we = load float, ptr %.20980.i, align 4, !tbaa !68
  %i.wf = fmul fast float %i.we, %9               ; 3 uses
  %i.wg = insertelement <4 x float> poison, float %i.wf, i64 0
  %i.wh = shufflevector <4 x float> %i.wg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wf, i64 0
  br label %.thread779.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %or.cond11.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.wj = load ptr, ptr %0, align 8, !tbaa !18
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.wj, i64 %i.be
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv1057.i ; 2 uses
  %i.wm = load <2 x float>, ptr %i.wl, align 4, !tbaa !68
  %i.wn = fmul fast <2 x float> %i.wm, %16        ; 4 uses
  %i.wo = extractelement <2 x float> %i.wn, i64 0
  %i.wp = shufflevector <2 x float> %i.wn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.wq = shufflevector <2 x float> %i.wn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread779.i

bb.cn:                                            ; preds = %bb.cl
  switch i32 %2, label %.thread779.i [
    i32 3, label %bb.co
    i32 4, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.wr = load ptr, ptr %0, align 8, !tbaa !18
  %i.ws = mul i64 %.pre-phi.i, %i.t
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %i.bc
  br label %.thread779.i

bb.cp:                                            ; preds = %bb.cn
  %i.wv = load ptr, ptr %0, align 8, !tbaa !18
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.bc
  br label %.thread779.i

.thread779.i:                                     ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %.thread763.i, %bb.cj
  %.2635.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wh, %.thread763.i ], [ %i.wp, %bb.cm ] ; 2 uses
  %.1626.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ zeroinitializer, %.thread763.i ], [ %i.wq, %bb.cm ] ; 2 uses
  %.21227.i = phi nsz float [ 0.000000e+00, %bb.cj ], [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ 0.000000e+00, %bb.co ], [ %i.wf, %.thread763.i ], [ %i.wo, %bb.cm ]
  %.23.i = phi ptr [ null, %bb.cj ], [ %i.ww, %bb.cp ], [ %.20980.i, %bb.cn ], [ %i.wu, %bb.co ], [ %.20980.i, %.thread763.i ], [ %i.wl, %bb.cm ] ; 2 uses
  %i.wx = phi <2 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.wi, %.thread763.i ], [ %i.wn, %bb.cm ] ; 3 uses
  %i.wy = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.bf, label %.lr.ph942.i, label %.preheader884.i

.preheader884.i:                                  ; preds = %bb.de, %.thread779.i
  %.3636.lcssa.i = phi <4 x float> [ %.2635.i, %.thread779.i ], [ %.5638.i, %bb.de ]
  %.2627.lcssa.i = phi <4 x float> [ %.1626.i, %.thread779.i ], [ %.4629.i, %bb.de ]
  %.01219.lcssa.i = phi i32 [ 0, %.thread779.i ], [ %i.bm, %bb.de ] ; 3 uses
  %.11211.lcssa.i = phi ptr [ %.01210.i, %.thread779.i ], [ %i.aaf, %bb.de ] ; 2 uses
  %.61181.lcssa.i = phi ptr [ %.51180979.i, %.thread779.i ], [ %i.aag, %bb.de ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread779.i ], [ %.26.i, %bb.de ] ; 2 uses
  %i.wz = or disjoint i32 %.01219.lcssa.i, 3
  %i.xa = icmp slt i32 %i.wz, %6
  br i1 %i.xa, label %.lr.ph955.i, label %.preheader883.i

.lr.ph942.i:                                      ; preds = %.thread779.i, %bb.de
  %.24941.i = phi ptr [ %.26.i, %bb.de ], [ %.23.i, %.thread779.i ] ; 11 uses
  %.61181940.i = phi ptr [ %i.aag, %bb.de ], [ %.51180979.i, %.thread779.i ] ; 5 uses
  %.11211939.i = phi ptr [ %i.aaf, %bb.de ], [ %.01210.i, %.thread779.i ] ; 16 uses
  %.01219938.i = phi i32 [ %i.aah, %bb.de ], [ 0, %.thread779.i ]
  %.2627937.i = phi <4 x float> [ %.4629.i, %bb.de ], [ %.1626.i, %.thread779.i ] ; 6 uses
  %.3636936.i = phi <4 x float> [ %.5638.i, %bb.de ], [ %.2635.i, %.thread779.i ] ; 10 uses
  %i.xb = load <4 x i32>, ptr %.61181940.i, align 16, !tbaa !113
  %i.xc = sitofp fast <4 x i32> %i.xb to <4 x float> ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 16
  %i.xe = load <4 x i32>, ptr %i.xd, align 16, !tbaa !113
  %i.xf = sitofp fast <4 x i32> %i.xe to <4 x float> ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 32
  %i.xh = load <4 x i32>, ptr %i.xg, align 16, !tbaa !113
  %i.xi = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 48
  %i.xj = load <4 x i32>, ptr %i.xi, align 16, !tbaa !113
  %i.xk = sitofp <4 x i32> %i.xh to <4 x float>
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xm = sitofp <4 x i32> %i.xj to <4 x float>
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xo = shufflevector <4 x float> %i.xc, <4 x float> %i.xl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xp = shufflevector <4 x float> %i.xc, <4 x float> %i.xl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.xq = shufflevector <4 x float> %i.xf, <4 x float> %i.xn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xf, <4 x float> %i.xn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.xs = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xt = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xu = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xv = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.xw = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xx = shufflevector <4 x float> %i.xv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xy = fmul fast <4 x float> %i.wc, %i.xs      ; 6 uses
  %i.xz = fmul fast <4 x float> %i.wc, %i.xt      ; 6 uses
  %i.ya = fmul fast <4 x float> %i.xw, %i.wd      ; 6 uses
  %i.yb = fmul fast <4 x float> %i.xx, %i.wd      ; 6 uses
  %.not1265.i = icmp eq ptr %.24941.i, null
  br i1 %.not1265.i, label %.thread798.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph942.i
  br i1 %11, label %.thread785.i, label %bb.cr

.thread785.i:                                     ; preds = %bb.cq
  %i.yc = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yd = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.ye = fadd fast <4 x float> %i.ya, %.3636936.i
  %i.yf = fadd fast <4 x float> %i.yb, %.3636936.i
  br label %.thread798.i

bb.cr:                                            ; preds = %bb.cq
  br i1 %or.cond11.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yg = fadd fast <4 x float> %i.xy, %.3636936.i
  %i.yh = fadd fast <4 x float> %i.xz, %.3636936.i
  %i.yi = fadd fast <4 x float> %i.ya, %.2627937.i
  %i.yj = fadd fast <4 x float> %i.yb, %.2627937.i
  br label %.thread798.i

bb.ct:                                            ; preds = %bb.cr
  switch i32 %2, label %.thread798.i [
    i32 3, label %bb.cu
    i32 4, label %bb.cx
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.yk = load <4 x float>, ptr %.24941.i, align 1, !tbaa !113 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.ym = load <4 x float>, ptr %i.yl, align 1, !tbaa !113 ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.24941.i, i64 %i.t ; 2 uses
  %i.yo = load <4 x float>, ptr %i.yn, align 1, !tbaa !113 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load <4 x float>, ptr %i.yp, align 1, !tbaa !113 ; 2 uses
  br i1 %i.bi, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yr = fmul fast <4 x float> %i.yk, %i.bh
  %i.ys = fmul fast <4 x float> %i.ym, %i.bh
  %i.yt = fmul fast <4 x float> %i.yo, %i.bh
  %i.yu = fmul fast <4 x float> %i.yq, %i.bh
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i = phi <4 x float> [ %i.yr, %bb.cv ], [ %i.yk, %bb.cu ]
  %.pn1028.i = phi <4 x float> [ %i.ys, %bb.cv ], [ %i.ym, %bb.cu ]
  %.pn1029.i = phi <4 x float> [ %i.yt, %bb.cv ], [ %i.yo, %bb.cu ]
  %.pn1030.i = phi <4 x float> [ %i.yu, %bb.cv ], [ %i.yq, %bb.cu ]
  %.2603.i = fadd fast <4 x float> %.pn1030.i, %i.yb
  %.2609.i = fadd fast <4 x float> %.pn1029.i, %i.ya
  %.2615.i = fadd fast <4 x float> %.pn1028.i, %i.xz
  %.2621.i = fadd fast <4 x float> %.pn.i, %i.xy
  %i.yv = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

bb.cx:                                            ; preds = %bb.ct
  %i.yw = load <4 x float>, ptr %.24941.i, align 1, !tbaa !113
  %i.yx = getelementptr inbounds nuw i8, ptr %.24941.i, i64 16
  %i.yy = load <4 x float>, ptr %i.yx, align 1, !tbaa !113
  %i.yz = fmul fast <4 x float> %i.yw, %i.bh      ; 3 uses
  %i.za = fmul fast <4 x float> %i.yy, %i.bh      ; 3 uses
  %i.zb = fadd fast <4 x float> %i.yz, %i.xy
  %i.zc = fadd fast <4 x float> %i.za, %i.xz
  %i.zd = fadd fast <4 x float> %i.yz, %i.ya
  %i.ze = fadd fast <4 x float> %i.za, %i.yb
  %i.zf = getelementptr inbounds nuw i8, ptr %.24941.i, i64 32
  br label %.thread798.i

.thread798.i:                                     ; preds = %bb.cx, %bb.cw, %bb.ct, %bb.cs, %.thread785.i, %.lr.ph942.i
  %.5638.i = phi nsz <4 x float> [ %.3636936.i, %.lr.ph942.i ], [ %i.yz, %bb.cx ], [ %.3636936.i, %bb.ct ], [ %i.yk, %bb.cw ], [ %.3636936.i, %.thread785.i ], [ %.3636936.i, %bb.cs ] ; 2 uses
  %.4629.i = phi nsz <4 x float> [ %.2627937.i, %.lr.ph942.i ], [ %i.za, %bb.cx ], [ %.2627937.i, %bb.ct ], [ %i.ym, %bb.cw ], [ %.2627937.i, %.thread785.i ], [ %.2627937.i, %bb.cs ] ; 2 uses
  %.4623.i = phi nsz <4 x float> [ %i.xy, %.lr.ph942.i ], [ %i.zb, %bb.cx ], [ %i.xy, %bb.ct ], [ %.2621.i, %bb.cw ], [ %i.yc, %.thread785.i ], [ %i.yg, %bb.cs ] ; 2 uses
  %.4617.i = phi nsz <4 x float> [ %i.xz, %.lr.ph942.i ], [ %i.zc, %bb.cx ], [ %i.xz, %bb.ct ], [ %.2615.i, %bb.cw ], [ %i.yd, %.thread785.i ], [ %i.yh, %bb.cs ] ; 2 uses
  %.4611.i = phi nsz <4 x float> [ %i.ya, %.lr.ph942.i ], [ %i.zd, %bb.cx ], [ %i.ya, %bb.ct ], [ %.2609.i, %bb.cw ], [ %i.ye, %.thread785.i ], [ %i.yi, %bb.cs ] ; 2 uses
  %.4605.i = phi nsz <4 x float> [ %i.yb, %.lr.ph942.i ], [ %i.ze, %bb.cx ], [ %i.yb, %bb.ct ], [ %.2603.i, %bb.cw ], [ %i.yf, %.thread785.i ], [ %i.yj, %bb.cs ] ; 2 uses
  %.26.i = phi ptr [ null, %.lr.ph942.i ], [ %i.zf, %bb.cx ], [ %.24941.i, %bb.ct ], [ %i.yv, %bb.cw ], [ %.24941.i, %.thread785.i ], [ %.24941.i, %bb.cs ] ; 2 uses
  br i1 %i.bj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread798.i
  %i.zg = fmul fast <4 x float> %.4623.i, %i.bl
  %i.zh = fmul fast <4 x float> %.4617.i, %i.bl
  %i.zi = fmul fast <4 x float> %.4611.i, %i.bl
  %i.zj = fmul fast <4 x float> %.4605.i, %i.bl
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread798.i
  %.5624.i = phi nsz <4 x float> [ %i.zg, %bb.cy ], [ %.4623.i, %.thread798.i ] ; 6 uses
  %.5618.i = phi nsz <4 x float> [ %i.zh, %bb.cy ], [ %.4617.i, %.thread798.i ] ; 6 uses
  %.5612.i = phi nsz <4 x float> [ %i.zi, %bb.cy ], [ %.4611.i, %.thread798.i ] ; 6 uses
  %.5606.i = phi nsz <4 x float> [ %i.zj, %bb.cy ], [ %.4605.i, %.thread798.i ] ; 6 uses
  br i1 %.not1258.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  switch i32 %i.b, label %bb.de [
    i32 4, label %bb.db
    i32 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  store <4 x float> %.5624.i, ptr %.11211939.i, align 16, !tbaa !113
  %i.zk = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5612.i, ptr %i.zk, align 16, !tbaa !113
  %i.zl = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store <4 x float> %.5618.i, ptr %i.zl, align 16, !tbaa !113
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  store <4 x float> %.5606.i, ptr %i.zm, align 16, !tbaa !113
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %.sroa.054.0.vec.extract.i = extractelement <4 x float> %.5624.i, i64 0
  store float %.sroa.054.0.vec.extract.i, ptr %.11211939.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.5612.i, i64 0
  %i.zn = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.zn, align 4, !tbaa !68
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k
  %i.zp = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zp, ptr %i.zo, align 4, !tbaa !68
  %i.zq = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx869.i
  %i.zr = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zr, ptr %i.zq, align 4, !tbaa !68
  %i.zs = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx870.i
  %i.zt = shufflevector <4 x float> %.5624.i, <4 x float> %.5612.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.zt, ptr %i.zs, align 4, !tbaa !68
  %.sroa.755.16.vec.extract.i = extractelement <4 x float> %.5618.i, i64 0
  %i.zu = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx871.i ; 2 uses
  store float %.sroa.755.16.vec.extract.i, ptr %i.zu, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.5606.i, i64 0
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.zv, align 4, !tbaa !68
  %i.zw = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx872.i
  %i.zx = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.zx, ptr %i.zw, align 4, !tbaa !68
  %i.zy = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx873.i
  %i.zz = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.zz, ptr %i.zy, align 4, !tbaa !68
  %i.aaa = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.idx874.i
  %i.aab = shufflevector <4 x float> %.5618.i, <4 x float> %.5606.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.aab, ptr %i.aaa, align 4, !tbaa !68
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  store <4 x float> %.5624.i, ptr %.11211939.i, align 1, !tbaa !113
  %i.aac = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 16
  store <4 x float> %.5618.i, ptr %i.aac, align 1, !tbaa !113
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.11211939.i, i64 %i.k ; 2 uses
  store <4 x float> %.5612.i, ptr %i.aad, align 1, !tbaa !113
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  store <4 x float> %.5606.i, ptr %i.aae, align 1, !tbaa !113
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %.sink1112.i = phi i64 [ 32, %bb.dd ], [ %.idx1267.i, %bb.db ], [ %.idx1267.i, %bb.da ], [ %.idx1267.i, %bb.dc ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %.11211939.i, i64 %.sink1112.i ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.61181940.i, i64 64 ; 2 uses
  %i.aah = add nuw nsw i32 %.01219938.i, 8        ; 2 uses
  %i.aai = or disjoint i32 %i.aah, 7
  %i.aaj = icmp slt i32 %i.aai, %6
  br i1 %i.aaj, label %.lr.ph942.i, label %.preheader884.i, !llvm.loop !567

.preheader883.i:                                  ; preds = %bb.dp, %.preheader884.i
  %.11220.lcssa.i = phi i32 [ %.01219.lcssa.i, %.preheader884.i ], [ %i.abz, %bb.dp ] ; 3 uses
  %.31213.lcssa.i = phi ptr [ %.11211.lcssa.i, %.preheader884.i ], [ %i.abx, %bb.dp ] ; 2 uses
  %.71182.lcssa.i = phi ptr [ %.61181.lcssa.i, %.preheader884.i ], [ %i.aby, %bb.dp ] ; 2 uses
  %.27.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader884.i ], [ %.29.i, %bb.dp ] ; 2 uses
  %i.aak = or disjoint i32 %.11220.lcssa.i, 1
  %i.aal = icmp slt i32 %i.aak, %6
  br i1 %i.aal, label %.lr.ph964.i.preheader, label %.preheader882.i

.lr.ph964.i.preheader:                            ; preds = %.preheader883.i
  %i.aam = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph964.i

.lr.ph955.i:                                      ; preds = %.preheader884.i, %bb.dp
  %.27954.i = phi ptr [ %.29.i, %bb.dp ], [ %.24.lcssa.i, %.preheader884.i ] ; 9 uses
  %.71182953.i = phi ptr [ %i.aby, %bb.dp ], [ %.61181.lcssa.i, %.preheader884.i ] ; 3 uses
  %.31213952.i = phi ptr [ %i.abx, %bb.dp ], [ %.11211.lcssa.i, %.preheader884.i ] ; 10 uses
  %.11220951.i = phi i32 [ %i.abz, %bb.dp ], [ %.01219.lcssa.i, %.preheader884.i ]
  %.5630950.i = phi <4 x float> [ %.7632.i, %bb.dp ], [ %.2627.lcssa.i, %.preheader884.i ] ; 6 uses
  %.6639949.i = phi <4 x float> [ %.8641.i, %bb.dp ], [ %.3636.lcssa.i, %.preheader884.i ] ; 7 uses
  %i.aan = load <4 x i32>, ptr %.71182953.i, align 16, !tbaa !113
  %i.aao = sitofp fast <4 x i32> %i.aan to <4 x float> ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 16
  %i.aaq = load <4 x i32>, ptr %i.aap, align 16, !tbaa !113
  %i.aar = sitofp fast <4 x i32> %i.aaq to <4 x float> ; 2 uses
  %i.aas = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aat = shufflevector <4 x float> %i.aao, <4 x float> %i.aar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aau = shufflevector <4 x float> %i.aas, <4 x float> %i.aat, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aav = shufflevector <4 x float> %i.aat, <4 x float> %i.aas, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aax = fmul fast <4 x float> %i.wc, %i.aau    ; 6 uses
  %i.aay = fmul fast <4 x float> %i.aaw, %i.wd    ; 6 uses
  %.not1263.i = icmp eq ptr %.27954.i, null
  br i1 %.not1263.i, label %.thread815.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph955.i
  br i1 %11, label %.thread806.i, label %bb.dg

.thread806.i:                                     ; preds = %bb.df
  %i.aaz = fadd fast <4 x float> %i.aax, %.6639949.i
  %i.aba = fadd fast <4 x float> %i.aay, %.6639949.i
  br label %.thread815.i

bb.dg:                                            ; preds = %bb.df
  br i1 %or.cond11.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.abb = fadd fast <4 x float> %i.aax, %.6639949.i
  %i.abc = fadd fast <4 x float> %i.aay, %.5630950.i
  br label %.thread815.i

bb.di:                                            ; preds = %bb.dg
  switch i32 %2, label %.thread815.i [
    i32 3, label %bb.dj
    i32 4, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  %i.abd = load <4 x float>, ptr %.27954.i, align 1, !tbaa !113 ; 3 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.27954.i, i64 %i.t
  %i.abf = load <4 x float>, ptr %i.abe, align 1, !tbaa !113 ; 3 uses
  %i.abg = fmul fast <4 x float> %i.abd, %i.bh
  %i.abh = fmul fast <4 x float> %i.abf, %i.bh
  %.pn1031.i = select i1 %i.bi, <4 x float> %i.abd, <4 x float> %i.abg
  %.pn1032.i = select i1 %i.bi, <4 x float> %i.abf, <4 x float> %i.abh
  %.2570.i = fadd fast <4 x float> %.pn1032.i, %i.aay
  %.2576.i = fadd fast <4 x float> %.pn1031.i, %i.aax
  %i.abi = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

bb.dk:                                            ; preds = %bb.di
  %i.abj = load <4 x float>, ptr %.27954.i, align 1, !tbaa !113
  %i.abk = fmul fast <4 x float> %i.abj, %i.bh    ; 3 uses
  %i.abl = fadd fast <4 x float> %i.abk, %i.aax
  %i.abm = fadd fast <4 x float> %i.abk, %i.aay
  %i.abn = getelementptr inbounds nuw i8, ptr %.27954.i, i64 16
  br label %.thread815.i

.thread815.i:                                     ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %.thread806.i, %.lr.ph955.i
  %.8641.i = phi nsz <4 x float> [ %.6639949.i, %.lr.ph955.i ], [ %i.abk, %bb.dk ], [ %.6639949.i, %bb.di ], [ %i.abd, %bb.dj ], [ %.6639949.i, %.thread806.i ], [ %.6639949.i, %bb.dh ]
  %.7632.i = phi nsz <4 x float> [ %.5630950.i, %.lr.ph955.i ], [ %.5630950.i, %bb.dk ], [ %.5630950.i, %bb.di ], [ %i.abf, %bb.dj ], [ %.5630950.i, %.thread806.i ], [ %.5630950.i, %bb.dh ]
  %.4578.i = phi nsz <4 x float> [ %i.aax, %.lr.ph955.i ], [ %i.abl, %bb.dk ], [ %i.aax, %bb.di ], [ %.2576.i, %bb.dj ], [ %i.aaz, %.thread806.i ], [ %i.abb, %bb.dh ]
  %.4572.i = phi nsz <4 x float> [ %i.aay, %.lr.ph955.i ], [ %i.abm, %bb.dk ], [ %i.aay, %bb.di ], [ %.2570.i, %bb.dj ], [ %i.aba, %.thread806.i ], [ %i.abc, %bb.dh ]
  %.29.i = phi ptr [ null, %.lr.ph955.i ], [ %i.abn, %bb.dk ], [ %.27954.i, %bb.di ], [ %i.abi, %bb.dj ], [ %.27954.i, %.thread806.i ], [ %.27954.i, %bb.dh ] ; 2 uses
  %.5579.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4578.i, %i.bq ; 6 uses
  %.5573.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.4572.i, %i.bq ; 6 uses
  br i1 %.not1258.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %.thread815.i
  switch i32 %i.b, label %bb.dp [
    i32 4, label %bb.dm
    i32 1, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  store <4 x float> %.5579.i, ptr %.31213952.i, align 16, !tbaa !113
  %i.abo = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 16
  store <4 x float> %.5573.i, ptr %i.abo, align 16, !tbaa !113
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.sroa.027.0.vec.extract.i = extractelement <4 x float> %.5579.i, i64 0
  store float %.sroa.027.0.vec.extract.i, ptr %.31213952.i, align 4, !tbaa !68
  %.sroa.728.16.vec.extract.i = extractelement <4 x float> %.5573.i, i64 0
  %i.abp = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 4
  store float %.sroa.728.16.vec.extract.i, ptr %i.abp, align 4, !tbaa !68
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  %i.abr = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.abr, ptr %i.abq, align 4, !tbaa !68
  %i.abs = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx869.i
  %i.abt = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.abt, ptr %i.abs, align 4, !tbaa !68
  %i.abu = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.idx870.i
  %i.abv = shufflevector <4 x float> %.5579.i, <4 x float> %.5573.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.abv, ptr %i.abu, align 4, !tbaa !68
  br label %bb.dp

bb.do:                                            ; preds = %.thread815.i
  store <4 x float> %.5579.i, ptr %.31213952.i, align 1, !tbaa !113
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.31213952.i, i64 %i.k
  store <4 x float> %.5573.i, ptr %i.abw, align 1, !tbaa !113
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.sink1113.i = phi i64 [ 16, %bb.do ], [ %.idx871.i, %bb.dm ], [ %.idx871.i, %bb.dl ], [ %.idx871.i, %bb.dn ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.31213952.i, i64 %.sink1113.i ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.71182953.i, i64 32 ; 2 uses
  %i.abz = add nuw nsw i32 %.11220951.i, 4        ; 3 uses
  %i.aca = or disjoint i32 %i.abz, 3
  %i.acb = icmp slt i32 %i.aca, %6
  br i1 %i.acb, label %.lr.ph955.i, label %.preheader883.i, !llvm.loop !568

.preheader882.i:                                  ; preds = %.thread834.i, %.preheader883.i
  %.21221.lcssa.i = phi i32 [ %.11220.lcssa.i, %.preheader883.i ], [ %i.adn, %.thread834.i ] ; 2 uses
  %.51215.lcssa.i = phi ptr [ %.31213.lcssa.i, %.preheader883.i ], [ %i.adl, %.thread834.i ]
  %.81183.lcssa.i = phi ptr [ %.71182.lcssa.i, %.preheader883.i ], [ %i.adm, %.thread834.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader883.i ], [ %.32.i, %.thread834.i ] ; 2 uses
  %i.acc = icmp slt i32 %.21221.lcssa.i, %6
  br i1 %i.acc, label %.lr.ph973.i, label %._crit_edge974.i

.lr.ph973.i:                                      ; preds = %.preheader882.i
  %i.acd = select <2 x i1> %14, <2 x float> %i.wx, <2 x float> zeroinitializer ; 2 uses
  %i.ace = select ninf nsz i1 %or.cond19.i, float %.21227.i, float 0.000000e+00
  %17 = shufflevector <2 x float> %i.acd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %18 = insertelement <2 x float> %17, float %i.ace, i64 0
  %i.acf = fadd reassoc nsz arcp contract afn <2 x float> %i.acd, %18
  br label %bb.dw

.lr.ph964.i:                                      ; preds = %.lr.ph964.i.preheader, %.thread834.i
  %.30963.i = phi ptr [ %.32.i, %.thread834.i ], [ %.27.lcssa.i, %.lr.ph964.i.preheader ] ; 9 uses
  %.81183962.i = phi ptr [ %i.adm, %.thread834.i ], [ %.71182.lcssa.i, %.lr.ph964.i.preheader ] ; 2 uses
  %.51215961.i = phi ptr [ %i.adl, %.thread834.i ], [ %.31213.lcssa.i, %.lr.ph964.i.preheader ] ; 4 uses
  %.21221960.i = phi i32 [ %i.adn, %.thread834.i ], [ %.11220.lcssa.i, %.lr.ph964.i.preheader ]
  %i.acg = load <4 x i32>, ptr %.81183962.i, align 4, !tbaa !45
  %i.ach = sitofp <4 x i32> %i.acg to <4 x float>
  %i.aci = fmul fast <4 x float> %i.wb, %i.ach    ; 6 uses
  %.not1261.i = icmp eq ptr %.30963.i, null
  br i1 %.not1261.i, label %.thread834.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph964.i
  br i1 %11, label %.thread821.i, label %bb.dr

.thread821.i:                                     ; preds = %bb.dq
  %i.acj = fadd fast <4 x float> %i.aci, %i.aam
  br label %.thread834.i

bb.dr:                                            ; preds = %bb.dq
  br i1 %or.cond11.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ack = fadd fast <4 x float> %i.aci, %i.wy
  br label %.thread834.i

bb.dt:                                            ; preds = %bb.dr
  switch i32 %2, label %.thread834.i [
    i32 3, label %bb.du
    i32 4, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %.30963.i, i64 %i.t
  %i.acm = load <2 x float>, ptr %.30963.i, align 4, !tbaa !68
  %i.acn = load <2 x float>, ptr %i.acl, align 4, !tbaa !68
  %i.aco = shufflevector <2 x float> %i.acm, <2 x float> %i.acn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acp = fmul fast <4 x float> %i.aco, %i.bh
  %i.acq = fadd fast <4 x float> %i.acp, %i.aci
  %i.acr = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

bb.dv:                                            ; preds = %bb.dt
  %i.acs = load <2 x float>, ptr %.30963.i, align 4, !tbaa !68
  %i.act = fmul fast <2 x float> %i.acs, %16
  %i.acu = shufflevector <2 x float> %i.act, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acv = fadd fast <4 x float> %i.acu, %i.aci
  %i.acw = getelementptr inbounds nuw i8, ptr %.30963.i, i64 8
  br label %.thread834.i

.thread834.i:                                     ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %.thread821.i, %.lr.ph964.i
  %.32.i = phi ptr [ %i.acw, %bb.dv ], [ %.30963.i, %bb.dt ], [ null, %.lr.ph964.i ], [ %i.acr, %bb.du ], [ %.30963.i, %.thread821.i ], [ %.30963.i, %bb.ds ] ; 2 uses
  %i.acx = phi <4 x float> [ %i.acv, %bb.dv ], [ %i.aci, %bb.dt ], [ %i.aci, %.lr.ph964.i ], [ %i.acq, %bb.du ], [ %i.acj, %.thread821.i ], [ %i.ack, %bb.ds ] ; 2 uses
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.acz = fmul fast <2 x float> %i.acy, %i.bs    ; 2 uses
  %i.ada = extractelement <2 x float> %i.acz, i64 0
  store float %i.ada, ptr %.51215961.i, align 4, !tbaa !68
  %i.adb = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 4
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.51215961.i, i64 %i.k ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 4
  %i.ade = shufflevector <4 x float> %i.acx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.adf = fmul fast <2 x float> %i.ade, %i.bs    ; 2 uses
  %i.adg = shufflevector <2 x float> %i.adf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.adh = select <2 x i1> %i.bu, <2 x float> %i.adf, <2 x float> %i.adg ; 2 uses
  %i.adi = extractelement <2 x float> %i.adh, i64 0
  store float %i.adi, ptr %i.adb, align 4, !tbaa !68
  %i.adj = extractelement <2 x float> %i.adh, i64 1
  store float %i.adj, ptr %i.adc, align 4, !tbaa !68
  %i.adk = extractelement <2 x float> %i.acz, i64 1
  store float %i.adk, ptr %i.add, align 4, !tbaa !68
  %i.adl = getelementptr inbounds nuw i8, ptr %.51215961.i, i64 %..idx869.i ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.81183962.i, i64 16 ; 2 uses
  %i.adn = add nuw nsw i32 %.21221960.i, 2        ; 3 uses
  %i.ado = or disjoint i32 %i.adn, 1
  %i.adp = icmp slt i32 %i.ado, %6
  br i1 %i.adp, label %.lr.ph964.i, label %.preheader882.i, !llvm.loop !569

bb.dw:                                            ; preds = %bb.ec, %.lr.ph973.i
  %.33972.i = phi ptr [ %.30.lcssa.i, %.lr.ph973.i ], [ %.35.i, %bb.ec ] ; 7 uses
  %.91184971.i = phi ptr [ %.81183.lcssa.i, %.lr.ph973.i ], [ %i.aer, %bb.ec ] ; 2 uses
  %.71217970.i = phi ptr [ %.51215.lcssa.i, %.lr.ph973.i ], [ %.81218.i, %bb.ec ] ; 5 uses
  %.31222969.i = phi i32 [ %.21221.lcssa.i, %.lr.ph973.i ], [ %i.aes, %bb.ec ]
  %i.adq = load <2 x i32>, ptr %.91184971.i, align 4, !tbaa !45
  %i.adr = sitofp <2 x i32> %i.adq to <2 x float>
  %i.ads = fmul fast <2 x float> %i.wa, %i.adr    ; 3 uses
  %.not1260.i = icmp eq ptr %.33972.i, null
  br i1 %.not1260.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.adt = fadd reassoc nsz arcp contract afn <2 x float> %i.acf, %i.ads ; 2 uses
  switch i32 %2, label %bb.dz [
    i32 3, label %.thread840.i
    i32 4, label %bb.dy
  ]

.thread840.i:                                     ; preds = %bb.dx
  %i.adu = load float, ptr %.33972.i, align 4, !tbaa !68
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.33972.i, i64 %i.t
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !68
  %i.adx = insertelement <2 x float> poison, float %i.adu, i64 0
  %i.ady = insertelement <2 x float> %i.adx, float %i.adw, i64 1
  %i.adz = fmul fast <2 x float> %i.ady, %16
  %i.aea = fadd fast <2 x float> %i.adz, %i.ads
  %i.aeb = getelementptr inbounds nuw i8, ptr %.33972.i, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aec = load float, ptr %.33972.i, align 4, !tbaa !68
  %i.aed = fmul fast float %i.aec, %9
  %i.aee = insertelement <2 x float> poison, float %i.aed, i64 0
  %i.aef = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeg = fadd fast <2 x float> %i.aef, %i.adt
  %i.aeh = getelementptr inbounds nuw i8, ptr %.33972.i, i64 4
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.thread840.i, %bb.dx, %bb.dw
  %.35.i = phi ptr [ %i.aeh, %bb.dy ], [ %.33972.i, %bb.dx ], [ null, %bb.dw ], [ %i.aeb, %.thread840.i ] ; 2 uses
  %i.aei = phi <2 x float> [ %i.aeg, %bb.dy ], [ %i.adt, %bb.dx ], [ %i.ads, %bb.dw ], [ %i.aea, %.thread840.i ] ; 2 uses
  %i.aej = extractelement <2 x float> %i.aei, i64 0
  %i.aek = fmul fast float %i.aej, %8
  %i.ael = extractelement <2 x float> %i.aei, i64 1
  %i.aem = fmul fast float %i.ael, %8             ; 2 uses
  store float %i.aek, ptr %.71217970.i, align 4, !tbaa !68
  br i1 %.not1258.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aen = getelementptr inbounds nuw i8, ptr %.71217970.i, i64 4
  store float %i.aem, ptr %i.aen, align 4, !tbaa !68
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.71217970.i, i64 %i.k
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.71217970.i, i64 %i.k
  store float %i.aem, ptr %i.aep, align 4, !tbaa !68
  %i.aeq = getelementptr inbounds nuw i8, ptr %.71217970.i, i64 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.81218.i = phi ptr [ %i.aeo, %bb.ea ], [ %i.aeq, %bb.eb ]
  %i.aer = getelementptr inbounds nuw i8, ptr %.91184971.i, i64 8 ; 2 uses
  %i.aes = add nuw nsw i32 %.31222969.i, 1        ; 2 uses
  %exitcond1056.not.i = icmp eq i32 %i.aes, %6
  br i1 %exitcond1056.not.i, label %._crit_edge974.i, label %bb.dw, !llvm.loop !570

._crit_edge974.i:                                 ; preds = %bb.ec, %.preheader882.i
  %.91184.lcssa.i = phi ptr [ %.81183.lcssa.i, %.preheader882.i ], [ %i.aer, %bb.ec ] ; 2 uses
  %.33.lcssa.i = phi ptr [ %.30.lcssa.i, %.preheader882.i ], [ %.35.i, %bb.ec ] ; 2 uses
  %indvars.iv.next1058.i = add nuw nsw i64 %indvars.iv1057.i, 2 ; 3 uses
  %i.aet = icmp slt i64 %indvars.iv.next1058.i, %invariant.op1108.i
  br i1 %i.aet, label %bb.cg, label %.preheader881.loopexit.i, !llvm.loop !571

bb.ed:                                            ; preds = %._crit_edge1020.i, %.lr.ph1026.i
  %indvars.iv1061.i = phi i64 [ %i.vl, %.lr.ph1026.i ], [ %indvars.iv.next1062.i, %._crit_edge1020.i ] ; 4 uses
  %.361025.i = phi ptr [ %.20.lcssa.i, %.lr.ph1026.i ], [ %.46.lcssa.i, %._crit_edge1020.i ] ; 4 uses
  %.1011851024.i = phi ptr [ %.51180.lcssa.i, %.lr.ph1026.i ], [ %.141189.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %i.aeu = load ptr, ptr %1, align 8, !tbaa !18   ; 2 uses
  br i1 %.not.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.uy
  %i.aew = add nsw i64 %indvars.iv1061.i, %i.va   ; 2 uses
  %i.aex = mul nsw i64 %i.aew, %i.vm
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aex
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.aez = add nsw i64 %indvars.iv1061.i, %i.va   ; 2 uses
  %i.afa = mul i64 %i.aez, %i.k
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.afa
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %i.ux
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pre-phi1065.i = phi i64 [ %i.aez, %bb.ef ], [ %i.aew, %bb.ee ] ; 2 uses
  %.01138.i = phi ptr [ %i.afc, %bb.ef ], [ %i.aey, %bb.ee ] ; 2 uses
  %i.afd = load ptr, ptr %7, align 8, !tbaa !18
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %.pre-phi1065.i
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !68 ; 3 uses
  %i.afg = insertelement <4 x float> poison, float %i.aff, i64 0
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not1242.i = icmp eq ptr %.361025.i, null
  br i1 %.not1242.i, label %.thread856.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.uz, label %.thread844.i, label %bb.ei

.thread844.i:                                     ; preds = %bb.eh
  %i.afi = load float, ptr %.361025.i, align 4, !tbaa !68
  %i.afj = fmul fast float %i.afi, %9             ; 2 uses
  %i.afk = insertelement <4 x float> poison, float %i.afj, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread856.i

bb.ei:                                            ; preds = %bb.eh
  br i1 %or.cond21.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.afm = load ptr, ptr %0, align 8, !tbaa !18
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.va
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv1061.i ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !68
  %i.afq = fmul fast float %i.afp, %9             ; 2 uses
  %i.afr = insertelement <4 x float> poison, float %i.afq, i64 0
  %i.afs = shufflevector <4 x float> %i.afr, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread856.i

bb.ek:                                            ; preds = %bb.ei
  switch i32 %2, label %.thread856.i [
    i32 3, label %bb.el
    i32 4, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.aft = load ptr, ptr %0, align 8, !tbaa !18
end_hunk_1
