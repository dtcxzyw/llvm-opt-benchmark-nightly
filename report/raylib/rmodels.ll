Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@BuildPoseFromParentJoints:bb.a
  %i.dd = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.de = insertelement <2 x float> %i.dd, float %i.cl, i64 0
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.bs, <2 x float> %i.de)
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.df, <2 x float> %i.da) ; 2 uses
  %i.dh = extractelement <4 x float> %i.cg, i64 3
  %i.di = fmul float %i.bj, %i.dh
  %i.dj = extractelement <4 x float> %i.cg, i64 2
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.dj, float %i.di)
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.bl, float %.sroa.01.4.vec.extract.i, float %i.cs)
  %i.dm = tail call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i, float %.sroa.25.8.vec.extract.i, float %i.dl)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.dm, float %i.dk) ; 2 uses
  store <2 x float> %i.dg, ptr %i.i, align 4
  store float %i.dn, ptr %.sroa.221.0..sroa_idx, align 4
  %i.do = load i32, ptr %i.c, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [40 x i8], ptr %2, i64 %i.dp ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.dq, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.dr = fadd <2 x float> %.sroa.01.0.copyload, %i.dg
  %i.ds = fadd float %.sroa.22.0.copyload, %i.dn
  store <2 x float> %i.dr, ptr %i.i, align 4
  store float %i.ds, ptr %.sroa.221.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float>, <2 x float>) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @LoadFileGLTFCallback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.b = call ptr @LoadFileData(ptr noundef %2, ptr noundef nonnull %i.a) #54 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %3, align 8
  store ptr %i.b, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ReleaseFileGLTFCallback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 %3) #0 {
bb.a:
  tail call void @UnloadFileData(ptr noundef %2) #54
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadImageFromCgltfImage(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.cgltf_options, align 8      ; 6 uses
  %4 = alloca %struct.Image, align 8              ; 4 uses
  %5 = alloca %struct.Image, align 8              ; 4 uses
  %6 = alloca %struct.Image, align 8              ; 4 uses
  %7 = alloca %struct.Image, align 8              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #51
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.d, align 1
  %i.h = icmp eq i8 %i.g, 100
  br i1 %i.h, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 97
  br i1 %i.k, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 116
  br i1 %i.n, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 97
  br i1 %i.q, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 58
  br i1 %i.t, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.u = phi i8 [ %.pre, %bb.i ], [ 100, %bb.h ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  switch i8 %i.u, label %bb.i [
    i8 0, label %bb.j
    i8 44, label %bb.k
  ]

bb.i:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.preheader

bb.j:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.369) #54
  br label %bb.aa

bb.k:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #51
  %sext = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext, 32
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %indvars.iv
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv82
  %i.z = load i8, ptr %gep, align 1
  %i.aa = icmp eq i8 %i.z, 61
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = trunc nsw i64 %indvars.iv82 to i32
  %i.ac = mul nsw i32 %i.ab, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @LoadFileGLTFCallback, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @ReleaseFileGLTFCallback, ptr %i.af, align 8
  %i.ag = sext i32 %i.ad to i64
  %i.ah = call i32 @cgltf_load_buffer_base64(ptr noundef nonnull %3, i64 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %4, ptr noundef nonnull @.str.9, ptr noundef %i.aj, i32 noundef %i.ad) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @free(ptr noundef %i.aj) #54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.aa

bb.p:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ak = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef nonnull %i.d) #54
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %5, ptr noundef %i.ak) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.aa

bb.q:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 28 uses
  %.not66 = icmp eq ptr %i.aq, null
  br i1 %.not66, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.as = load i64, ptr %i.ar, align 8            ; 14 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #56 ; 8 uses
  %.not76 = icmp eq i64 %i.as, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %sext92 = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext92, 32              ; 9 uses
  %i.ba = sext i32 %spec.select to i64            ; 28 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bb = add i64 %i.as, -1                       ; 2 uses
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp eq i64 %i.bc, 4294967295
  %i.be = icmp ugt i64 %i.bb, 4294967295
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.as
  %8 = add nsw i64 %i.as, -1
  %9 = mul i64 %8, %i.ba
  %10 = getelementptr i8, ptr %i.aq, i64 %9
  %scevgep95 = getelementptr i8, ptr %10, i64 %i.az ; 4 uses
  %scevgep96 = getelementptr i8, ptr %i.aq, i64 %i.az ; 4 uses
  %11 = icmp ult ptr %scevgep95, %scevgep96
  %umin = select i1 %11, ptr %scevgep95, ptr %scevgep96
  %12 = icmp ugt ptr %scevgep95, %scevgep96
  %umax = select i1 %12, ptr %scevgep95, ptr %scevgep96
  %scevgep97 = getelementptr i8, ptr %umax, i64 1
  %bound0 = icmp ult ptr %i.at, %scevgep97
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.as, 8
  %n.vec = and i64 %i.as, 8589934576              ; 6 uses
  %i.bh = mul i64 %n.vec, %i.ba
  %i.bi = add i64 %i.az, %i.bh
  %i.bj = trunc i64 %n.vec to i32
  %i.bk = shl nsw i64 %i.ba, 1
  %i.bl = mul nsw i64 %i.ba, 3
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = mul nsw i64 %i.ba, 5
  %i.bo = mul nsw i64 %i.ba, 6
  %i.bp = mul nsw i64 %i.ba, 7
  %i.bq = shl nsw i64 %i.ba, 3
  %i.br = mul nsw i64 %i.ba, 9
  %i.bs = mul nsw i64 %i.ba, 10
  %i.bt = mul nsw i64 %i.ba, 11
  %i.bu = mul nsw i64 %i.ba, 12
  %i.bv = mul nsw i64 %i.ba, 13
  %i.bw = mul nsw i64 %i.ba, 14
  %i.bx = mul nsw i64 %i.ba, 15
  %invariant.gep109 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep111 = getelementptr i8, ptr %i.aq, i64 %i.bk
  %invariant.gep113 = getelementptr i8, ptr %i.aq, i64 %i.bl
  %invariant.gep115 = getelementptr i8, ptr %i.aq, i64 %i.bm
  %invariant.gep117 = getelementptr i8, ptr %i.aq, i64 %i.bn
  %invariant.gep119 = getelementptr i8, ptr %i.aq, i64 %i.bo
  %invariant.gep121 = getelementptr i8, ptr %i.aq, i64 %i.bp
  %invariant.gep123 = getelementptr i8, ptr %i.aq, i64 %i.bq
  %invariant.gep125 = getelementptr i8, ptr %i.aq, i64 %i.br
  %invariant.gep127 = getelementptr i8, ptr %i.aq, i64 %i.bs
  %invariant.gep129 = getelementptr i8, ptr %i.aq, i64 %i.bt
  %invariant.gep131 = getelementptr i8, ptr %i.aq, i64 %i.bu
  %invariant.gep133 = getelementptr i8, ptr %i.aq, i64 %i.bv
  %invariant.gep135 = getelementptr i8, ptr %i.aq, i64 %i.bw
  %invariant.gep137 = getelementptr i8, ptr %i.aq, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = mul i64 %index, %i.ba
  %i.bz = add i64 %i.az, %i.by                    ; 16 uses
  %i.ca = getelementptr inbounds i8, ptr %i.aq, i64 %i.bz
  %gep110 = getelementptr i8, ptr %invariant.gep109, i64 %i.bz
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.bz
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %i.bz
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %i.bz
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %i.bz
  %gep120 = getelementptr i8, ptr %invariant.gep119, i64 %i.bz
  %gep122 = getelementptr i8, ptr %invariant.gep121, i64 %i.bz
  %gep124 = getelementptr i8, ptr %invariant.gep123, i64 %i.bz
  %gep126 = getelementptr i8, ptr %invariant.gep125, i64 %i.bz
  %gep128 = getelementptr i8, ptr %invariant.gep127, i64 %i.bz
  %gep130 = getelementptr i8, ptr %invariant.gep129, i64 %i.bz
  %gep132 = getelementptr i8, ptr %invariant.gep131, i64 %i.bz
  %gep134 = getelementptr i8, ptr %invariant.gep133, i64 %i.bz
  %gep136 = getelementptr i8, ptr %invariant.gep135, i64 %i.bz
  %gep138 = getelementptr i8, ptr %invariant.gep137, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !396
  %i.cc = load i8, ptr %gep110, align 1, !alias.scope !396
  %i.cd = load i8, ptr %gep112, align 1, !alias.scope !396
  %i.ce = load i8, ptr %gep114, align 1, !alias.scope !396
  %i.cf = load i8, ptr %gep116, align 1, !alias.scope !396
  %i.cg = load i8, ptr %gep118, align 1, !alias.scope !396
  %i.ch = load i8, ptr %gep120, align 1, !alias.scope !396
  %i.ci = load i8, ptr %gep122, align 1, !alias.scope !396
  %i.cj = load i8, ptr %gep124, align 1, !alias.scope !396
  %i.ck = load i8, ptr %gep126, align 1, !alias.scope !396
  %i.cl = load i8, ptr %gep128, align 1, !alias.scope !396
  %i.cm = load i8, ptr %gep130, align 1, !alias.scope !396
  %i.cn = load i8, ptr %gep132, align 1, !alias.scope !396
  %i.co = load i8, ptr %gep134, align 1, !alias.scope !396
  %i.cp = load i8, ptr %gep136, align 1, !alias.scope !396
  %i.cq = load i8, ptr %gep138, align 1, !alias.scope !396
  %i.cr = insertelement <16 x i8> poison, i8 %i.cb, i64 0
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 1
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 2
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 3
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 4
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 5
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 6
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 7
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 8
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 9
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 10
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 11
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 12
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 13
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 14
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  store <16 x i8> %i.dg, ptr %i.dh, align 1, !alias.scope !397, !noalias !396
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.as, 8589934584           ; 5 uses
  %i.dj = mul i64 %n.vec100, %i.ba
  %i.dk = add i64 %i.az, %i.dj
  %i.dl = trunc i64 %n.vec100 to i32
  %i.dm = shl nsw i64 %i.ba, 1
  %i.dn = mul nsw i64 %i.ba, 3
  %i.do = shl nsw i64 %i.ba, 2
  %i.dp = mul nsw i64 %i.ba, 5
  %i.dq = mul nsw i64 %i.ba, 6
  %i.dr = mul nsw i64 %i.ba, 7
  %invariant.gep139 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep141 = getelementptr i8, ptr %i.aq, i64 %i.dm
  %invariant.gep143 = getelementptr i8, ptr %i.aq, i64 %i.dn
  %invariant.gep145 = getelementptr i8, ptr %i.aq, i64 %i.do
  %invariant.gep147 = getelementptr i8, ptr %i.aq, i64 %i.dp
  %invariant.gep149 = getelementptr i8, ptr %i.aq, i64 %i.dq
  %invariant.gep151 = getelementptr i8, ptr %i.aq, i64 %i.dr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 3 uses
  %i.ds = mul i64 %index101, %i.ba
  %i.dt = add i64 %i.az, %i.ds                    ; 8 uses
  %i.du = getelementptr inbounds i8, ptr %i.aq, i64 %i.dt
  %gep140 = getelementptr i8, ptr %invariant.gep139, i64 %i.dt
  %gep142 = getelementptr i8, ptr %invariant.gep141, i64 %i.dt
  %gep144 = getelementptr i8, ptr %invariant.gep143, i64 %i.dt
  %gep146 = getelementptr i8, ptr %invariant.gep145, i64 %i.dt
  %gep148 = getelementptr i8, ptr %invariant.gep147, i64 %i.dt
  %gep150 = getelementptr i8, ptr %invariant.gep149, i64 %i.dt
  %gep152 = getelementptr i8, ptr %invariant.gep151, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !396
  %i.dw = load i8, ptr %gep140, align 1, !alias.scope !396
  %i.dx = load i8, ptr %gep142, align 1, !alias.scope !396
  %i.dy = load i8, ptr %gep144, align 1, !alias.scope !396
  %i.dz = load i8, ptr %gep146, align 1, !alias.scope !396
  %i.ea = load i8, ptr %gep148, align 1, !alias.scope !396
  %i.eb = load i8, ptr %gep150, align 1, !alias.scope !396
  %i.ec = load i8, ptr %gep152, align 1, !alias.scope !396
  %i.ed = insertelement <8 x i8> poison, i8 %i.dv, i64 0
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 1
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 2
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 3
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 4
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 5
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 6
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 7
  %i.el = getelementptr inbounds nuw i8, ptr %i.at, i64 %index101
  store <8 x i8> %i.ek, ptr %i.el, align 1, !alias.scope !397, !noalias !396
  %index.next102 = add nuw i64 %index101, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next102, %n.vec100
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.as, %n.vec100
  br i1 %cmp.n103, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.ph = phi i64 [ %i.az, %iter.check ], [ %i.az, %vector.scevcheck ], [ %i.az, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  %.075.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.en = trunc nuw i64 %i.as to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.lcssa = phi i32 [ 0, %bb.s ], [ %i.en, %._crit_edge.loopexit ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8            ; 4 uses
  %i.eq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull dereferenceable(11) @.str.370) #51
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ %indvars.iv85.ph, %.lr.ph.preheader ] ; 2 uses
  %i.es = phi i64 [ %i.ex, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.ew, %.lr.ph ], [ %.075.ph, %.lr.ph.preheader ]
  %i.et = getelementptr inbounds i8, ptr %i.aq, i64 %indvars.iv85
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.es
  store i8 %i.eu, ptr %i.ev, align 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, %i.ba
  %i.ew = add i32 %.075, 1                        ; 2 uses
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = icmp ugt i64 %i.as, %i.ex
  br i1 %i.ey, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !395

bb.t:                                             ; preds = %._crit_edge
  %i.ez = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull dereferenceable(10) @.str.371) #51
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull @.str.9, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull dereferenceable(12) @.str.372) #51
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull dereferenceable(11) @.str.373) #51
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull @.str.374, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ff = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef null) #54
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.375, ptr noundef %i.ff) #54
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  call void @free(ptr noundef %i.at) #54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.o, %bb.p, %bb.z, %bb.r, %bb.q, %bb.a
  ret void
}

declare void @LoadTextureFromImage(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare void @UnloadImage(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare i32 @GetImageColor(ptr noundef byval(%struct.Image) align 8, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: inlinehint nounwind uwtable
declare void @MatrixDecompose(ptr noundef byval(%struct.Matrix) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #36

declare void @LoadImageFromMemory(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

declare void @LoadImage(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #33 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [3 x float], align 8              ; 6 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca [4 x float], align 16             ; 13 uses
  %i.i = icmp ugt i32 %0, 2
  br i1 %i.i, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store float 0.000000e+00, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store float 0.000000e+00, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %.thread227

.lr.ph:                                           ; preds = %bb.b
  %i.n = add i64 %i.k, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.p = load i32, ptr %i.o, align 8
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %wide.trip.count = and i64 %i.n, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv) ; 2 uses
  %.not30.not.i = icmp eq ptr %i.w, null
  br i1 %.not30.not.i, label %.thread.i, label %cgltf_accessor_read_float.exit

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %cgltf_accessor_read_float.exit.thread216, label %bb.e

cgltf_accessor_read_float.exit.thread216:         ; preds = %.thread.i
  store i32 0, ptr %i.a, align 4
  br label %bb.g

bb.e:                                             ; preds = %.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.f, label %cgltf_buffer_view_data.exit.thread33.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i, label %.thread233, label %cgltf_buffer_view_data.exit.i

cgltf_buffer_view_data.exit.i:                    ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  br label %cgltf_buffer_view_data.exit.thread33.i

cgltf_buffer_view_data.exit.thread33.i:           ; preds = %cgltf_buffer_view_data.exit.i, %bb.e
  %.0.i35.i = phi ptr [ %i.ah, %cgltf_buffer_view_data.exit.i ], [ %i.aa, %bb.e ]
  %i.ai = load i64, ptr %i.u, align 8
  %i.aj = load i64, ptr %i.v, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv
  %i.al = getelementptr i8, ptr %.0.i35.i, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  br label %cgltf_accessor_read_float.exit

cgltf_accessor_read_float.exit:                   ; preds = %bb.d, %cgltf_buffer_view_data.exit.thread33.i
  %.sink = phi ptr [ %i.am, %cgltf_buffer_view_data.exit.thread33.i ], [ %i.w, %bb.d ]
  %i.an = load i32, ptr %i.q, align 8
  %i.ao = load i32, ptr %i.r, align 8
  %i.ap = load i32, ptr %i.s, align 4
  %i.aq = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.thread233, label %bb.g

bb.g:                                             ; preds = %cgltf_accessor_read_float.exit.thread216, %cgltf_accessor_read_float.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  br i1 %.not.i, label %.thread.i185, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv.next) ; 2 uses
  %.not30.not.i183 = icmp eq ptr %i.ar, null
  br i1 %.not30.not.i183, label %.thread.i185, label %cgltf_accessor_read_float.exit191

.thread.i185:                                     ; preds = %bb.h, %bb.g
  %i.as = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %cgltf_accessor_read_float.exit191.thread221, label %bb.i

cgltf_accessor_read_float.exit191.thread221:      ; preds = %.thread.i185
  store i32 0, ptr %i.b, align 4
  br label %bb.k

bb.i:                                             ; preds = %.thread.i185
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.av, null
  br i1 %.not.i.i186, label %bb.j, label %cgltf_buffer_view_data.exit.thread33.i187

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not10.i.i189 = icmp eq ptr %i.az, null
  br i1 %.not10.i.i189, label %.thread233, label %cgltf_buffer_view_data.exit.i190

cgltf_buffer_view_data.exit.i190:                 ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  br label %cgltf_buffer_view_data.exit.thread33.i187

cgltf_buffer_view_data.exit.thread33.i187:        ; preds = %cgltf_buffer_view_data.exit.i190, %bb.i
  %.0.i35.i188 = phi ptr [ %i.bc, %cgltf_buffer_view_data.exit.i190 ], [ %i.av, %bb.i ]
  %i.bd = load i64, ptr %i.u, align 8
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = mul i64 %i.be, %indvars.iv.next
  %i.bg = getelementptr i8, ptr %.0.i35.i188, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  br label %cgltf_accessor_read_float.exit191

cgltf_accessor_read_float.exit191:                ; preds = %bb.h, %cgltf_buffer_view_data.exit.thread33.i187
  %.sink266 = phi ptr [ %i.bh, %cgltf_buffer_view_data.exit.thread33.i187 ], [ %i.ar, %bb.h ]
end_hunk_0
begin_hunk_1_@llvm.abs.v4i32
!190 = distinct !{!190, !12, !11}
!191 = distinct !{!191, !11, !12}
!192 = distinct !{!192, !11, !12}
!193 = distinct !{!193, !12, !11}
!194 = distinct !{!194, !12, !11}
!195 = distinct !{!195, !11, !12}
!196 = distinct !{!196, !11, !12}
!197 = distinct !{!197, !12, !11}
!198 = distinct !{!198, !12, !11}
!199 = distinct !{!199, !11, !12}
!200 = distinct !{!200, !12, !11}
!201 = distinct !{!201, !11, !12}
!202 = distinct !{!202, !12, !11}
!203 = distinct !{!203, !11, !12}
!204 = distinct !{!204, !12, !11}
!205 = distinct !{!205, !11, !12}
!206 = distinct !{!206, !12, !11}
!207 = distinct !{!207, !15}
!208 = distinct !{!208, !11, !12}
!209 = distinct !{!209, !12, !11}
!210 = distinct !{!210, !"MatrixRotate"}
!211 = distinct !{!211, !210, !"MatrixRotate: argument 0"}
!212 = !{!211}
!213 = distinct !{!213, !13}
!214 = distinct !{!214, !13}
!215 = distinct !{!215, !13}
!216 = distinct !{null, null}
!217 = distinct !{null, ptr @cgltf_parse_json_extras}
!218 = distinct !{null, null, null}
!219 = distinct !{null, null, null}
!220 = distinct !{null, null, null}
!221 = distinct !{null, null, null, null}
!222 = distinct !{null, null, null, null, null}
!223 = distinct !{null, null, null, ptr @cgltf_parse_json_extras}
!224 = distinct !{null, null, null, null}
!225 = distinct !{null, null, null, null, null}
!226 = distinct !{null, null, null, null}
!227 = distinct !{null, null, null}
!228 = distinct !{null, null, null}
!229 = distinct !{null, ptr @cgltf_parse_json_extras}
!230 = distinct !{null, null, null}
!231 = distinct !{null, null, null}
!232 = distinct !{null, null, null}
!233 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!234 = distinct !{null, null, null}
!235 = distinct !{null, null, null}
!236 = distinct !{null, null, null}
!237 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!238 = distinct !{null, null, null, null}
!239 = distinct !{null, null, null}
!240 = distinct !{null, null, null}
!241 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!242 = distinct !{null, null, null}
!243 = distinct !{null, null, null}
!244 = distinct !{null, null, null}
!245 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!246 = distinct !{null, null, null, null}
!247 = distinct !{null, null, null}
!248 = distinct !{null, null, null}
!249 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!250 = distinct !{null, null, null}
!251 = distinct !{null, null, null}
!252 = distinct !{null, null, null}
!253 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!254 = distinct !{null, null, null, null}
!255 = distinct !{null, null, null}
!256 = distinct !{null, null, null}
!257 = distinct !{null, null, null, null}
!258 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!259 = distinct !{null, null, null, null}
!260 = distinct !{null, null}
!261 = distinct !{null, ptr @cgltf_parse_json_extras}
!262 = distinct !{null, null, null}
!263 = distinct !{null, null}
!264 = distinct !{null, null, null}
!265 = distinct !{null, null}
!266 = distinct !{null, null}
!267 = distinct !{null, null, null}
!268 = distinct !{null, ptr @cgltf_parse_json_extras}
!269 = distinct !{null, null, null}
!270 = distinct !{null, null}
!271 = distinct !{null, null, null}
!272 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!273 = distinct !{null, null, null, null}
!274 = distinct !{null, null, ptr @cgltf_parse_json_extras}
!275 = distinct !{null, null, null, null}
!276 = distinct !{null, ptr @cgltf_parse_json_extras}
!277 = distinct !{null, null, null}
!278 = distinct !{null, null}
!279 = distinct !{null, ptr @cgltf_parse_json_extras}
!280 = distinct !{null, null}
!281 = distinct !{null, ptr @cgltf_parse_json_extras}
!282 = distinct !{!282, !13}
!283 = distinct !{!283, !11}
!284 = distinct !{!284, !11, !12}
!285 = distinct !{!285, !11, !12}
!286 = distinct !{!286, !11, !12}
!287 = distinct !{!287, !11, !12}
!288 = distinct !{!288, !11, !12}
!289 = distinct !{!289, !11, !12}
!290 = distinct !{!290, !11, !12}
!291 = distinct !{!291, !11, !12}
!292 = distinct !{!292, !11, !12}
!293 = distinct !{!293, !11, !12}
!294 = distinct !{!294, !13}
!295 = distinct !{!295, !11, !12}
!296 = distinct !{!296, !11, !12}
!297 = distinct !{!297, !11}
!298 = distinct !{!298, !11}
!299 = distinct !{!299, !11}
!300 = distinct !{!300, !11}
!301 = distinct !{!301, !11}
!302 = distinct !{!302, !11}
!303 = distinct !{!303, !"LVerDomain"}
!304 = distinct !{!304, !303}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !11, !12}
!307 = distinct !{!307, !11, !12}
!308 = distinct !{!308, !13}
!309 = distinct !{!309, !11}
!310 = distinct !{!310, !"LVerDomain"}
!311 = distinct !{!311, !310}
!312 = distinct !{!312, !310}
!313 = distinct !{!313, !310}
!314 = distinct !{!314, !11, !12}
!315 = distinct !{!315, !11, !12}
!316 = distinct !{!316, !11}
!317 = distinct !{!317, !"LVerDomain"}
!318 = distinct !{!318, !317}
!319 = distinct !{!319, !317}
!320 = distinct !{!320, !317}
!321 = distinct !{!321, !11, !12}
!322 = distinct !{!322, !11, !12}
!323 = distinct !{!323, !13}
!324 = distinct !{!324, !11}
!325 = distinct !{!325, !"LVerDomain"}
!326 = distinct !{!326, !325}
!327 = distinct !{!327, !325}
!328 = distinct !{!328, !325}
!329 = distinct !{!329, !325}
!330 = distinct !{!330, !11, !12}
!331 = distinct !{!331, !11, !12}
!332 = distinct !{!332, !11}
!333 = distinct !{!333, !"LVerDomain"}
!334 = distinct !{!334, !333}
!335 = distinct !{!335, !333}
!336 = distinct !{!336, !333}
!337 = distinct !{!337, !333}
!338 = distinct !{!338, !333}
!339 = distinct !{!339, !11, !12}
!340 = distinct !{!340, !11, !12}
!341 = distinct !{!341, !11}
!342 = distinct !{!342, !"LVerDomain"}
!343 = distinct !{!343, !342}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !342}
!346 = distinct !{!346, !11, !12}
!347 = distinct !{!347, !11, !12}
!348 = distinct !{!348, !11}
!349 = distinct !{!349, !"LVerDomain"}
!350 = distinct !{!350, !349}
!351 = distinct !{!351, !349}
!352 = distinct !{!352, !349}
!353 = distinct !{!353, !11, !12}
!354 = distinct !{!354, !11, !12}
!355 = distinct !{!355, !11}
!356 = distinct !{!356, !13}
!357 = distinct !{!357, !13}
!358 = distinct !{!358, !11, !12}
!359 = distinct !{!359, !12, !11}
!360 = !{!"branch_weights", i32 8, i32 24}
!361 = !{!304}
!362 = !{!305}
!363 = !{!311}
!364 = !{!312}
!365 = !{!313}
!366 = !{!311, !312}
!367 = !{!318}
!368 = !{!319}
!369 = !{!320}
!370 = !{!318, !319}
!371 = !{!326}
!372 = !{!327}
!373 = !{!328}
!374 = !{!329}
!375 = !{!326, !327, !328}
!376 = !{!334}
!377 = !{!335}
!378 = !{!336}
!379 = !{!337}
!380 = !{!338}
!381 = !{!334, !335, !336, !337}
!382 = !{!343}
!383 = !{!344}
!384 = !{!345}
!385 = !{!343, !344}
!386 = !{!350}
!387 = !{!351}
!388 = !{!352}
!389 = !{!350, !351}
!390 = distinct !{!390, !"LVerDomain"}
!391 = distinct !{!391, !390}
!392 = distinct !{!392, !390}
!393 = distinct !{!393, !11, !12}
!394 = distinct !{!394, !11, !12}
!395 = distinct !{!395, !11}
!396 = !{!391}
!397 = !{!392}
!398 = !{!"branch_weights", i32 8, i32 8}
end_hunk_1
