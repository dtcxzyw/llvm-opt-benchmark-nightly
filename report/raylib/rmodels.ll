Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@BuildPoseFromParentJoints:bb.a
  %i.df = insertelement <2 x float> %i.de, float %i.cj, i64 1
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.bm, <2 x float> %i.df)
  %i.dh = shufflevector <4 x float> %i.co, <4 x float> %i.dd, <2 x i32> <i32 0, i32 5>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.bn, <2 x float> %i.dh)
  %i.dj = fmul <2 x float> %i.bo, %i.di
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.dg, <2 x float> %i.dj)
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ct, <2 x float> %i.dk) ; 2 uses
  %i.dm = extractelement <4 x float> %i.dd, i64 3
  %i.dn = tail call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i, float %.sroa.25.8.vec.extract.i, float %i.dm)
  %i.do = extractelement <4 x float> %i.dd, i64 2
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.dn, float %i.do) ; 2 uses
  store <2 x float> %i.dl, ptr %i.i, align 4
  store float %i.dp, ptr %.sroa.221.0..sroa_idx, align 4
  %i.dq = load i32, ptr %i.c, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [40 x i8], ptr %2, i64 %i.dr ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ds, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.dt = fadd <2 x float> %.sroa.01.0.copyload, %i.dl
  %i.du = fadd float %.sroa.22.0.copyload, %i.dp
  store <2 x float> %i.dt, ptr %i.i, align 4
  store float %i.du, ptr %.sroa.221.0..sroa_idx, align 4
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
  %i.y = shl i64 %i.x, 32
  %i.z = ashr exact i64 %i.y, 32
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %indvars.iv
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.l ], [ %i.z, %bb.k ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv82
  %i.aa = load i8, ptr %gep, align 1
  %i.ab = icmp eq i8 %i.aa, 61
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br i1 %i.ab, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = trunc nsw i64 %indvars.iv82 to i32
  %i.ad = mul nsw i32 %i.ac, 3
  %i.ae = sdiv i32 %i.ad, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @LoadFileGLTFCallback, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @ReleaseFileGLTFCallback, ptr %i.ag, align 8
  %i.ah = sext i32 %i.ae to i64
  %i.ai = call i32 @cgltf_load_buffer_base64(ptr noundef nonnull %3, i64 noundef %i.ah, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %4, ptr noundef nonnull @.str.9, ptr noundef %i.ak, i32 noundef %i.ae) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @free(ptr noundef %i.ak) #54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.aa

bb.p:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.al = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef nonnull %i.d) #54
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %5, ptr noundef %i.al) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.aa

bb.q:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  %.not65 = icmp eq ptr %i.an, null
  br i1 %.not65, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 26 uses
  %.not66 = icmp eq ptr %i.ar, null
  br i1 %.not66, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 12 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #56 ; 6 uses
  %.not76 = icmp eq i64 %i.at, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = trunc i64 %i.aw to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = shl i64 %i.az, 32
  %i.bb = ashr exact i64 %i.ba, 32                ; 6 uses
  %i.bc = sext i32 %spec.select to i64            ; 27 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bd = add i64 %i.at, -1                       ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = icmp eq i64 %i.be, 4294967295
  %i.bg = icmp ugt i64 %i.bd, 4294967295
  %i.bh = or i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check97 = icmp ult i64 %i.at, 16
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.at, 8
  %n.vec = and i64 %i.at, 8589934576              ; 6 uses
  %i.bj = mul i64 %n.vec, %i.bc
  %i.bk = add i64 %i.bb, %i.bj
  %i.bl = trunc i64 %n.vec to i32
  %i.bm = shl nsw i64 %i.bc, 1
  %i.bn = mul nsw i64 %i.bc, 3
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = mul nsw i64 %i.bc, 5
  %i.bq = mul nsw i64 %i.bc, 6
  %i.br = mul nsw i64 %i.bc, 7
  %i.bs = shl nsw i64 %i.bc, 3
  %i.bt = mul nsw i64 %i.bc, 9
  %i.bu = mul nsw i64 %i.bc, 10
  %i.bv = mul nsw i64 %i.bc, 11
  %i.bw = mul nsw i64 %i.bc, 12
  %i.bx = mul nsw i64 %i.bc, 13
  %i.by = mul nsw i64 %i.bc, 14
  %i.bz = mul nsw i64 %i.bc, 15
  %invariant.gep108 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %invariant.gep110 = getelementptr i8, ptr %i.ar, i64 %i.bm
  %invariant.gep112 = getelementptr i8, ptr %i.ar, i64 %i.bn
  %invariant.gep114 = getelementptr i8, ptr %i.ar, i64 %i.bo
  %invariant.gep116 = getelementptr i8, ptr %i.ar, i64 %i.bp
  %invariant.gep118 = getelementptr i8, ptr %i.ar, i64 %i.bq
  %invariant.gep120 = getelementptr i8, ptr %i.ar, i64 %i.br
  %invariant.gep122 = getelementptr i8, ptr %i.ar, i64 %i.bs
  %invariant.gep124 = getelementptr i8, ptr %i.ar, i64 %i.bt
  %invariant.gep126 = getelementptr i8, ptr %i.ar, i64 %i.bu
  %invariant.gep128 = getelementptr i8, ptr %i.ar, i64 %i.bv
  %invariant.gep130 = getelementptr i8, ptr %i.ar, i64 %i.bw
  %invariant.gep132 = getelementptr i8, ptr %i.ar, i64 %i.bx
  %invariant.gep134 = getelementptr i8, ptr %i.ar, i64 %i.by
  %invariant.gep136 = getelementptr i8, ptr %i.ar, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = mul i64 %index, %i.bc
  %i.cb = add i64 %i.bb, %i.ca                    ; 16 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ar, i64 %i.cb
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %i.cb
  %gep111 = getelementptr i8, ptr %invariant.gep110, i64 %i.cb
  %gep113 = getelementptr i8, ptr %invariant.gep112, i64 %i.cb
  %gep115 = getelementptr i8, ptr %invariant.gep114, i64 %i.cb
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %i.cb
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %i.cb
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %i.cb
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %i.cb
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %i.cb
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %i.cb
  %gep129 = getelementptr i8, ptr %invariant.gep128, i64 %i.cb
  %gep131 = getelementptr i8, ptr %invariant.gep130, i64 %i.cb
  %gep133 = getelementptr i8, ptr %invariant.gep132, i64 %i.cb
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %i.cb
  %gep137 = getelementptr i8, ptr %invariant.gep136, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = load i8, ptr %gep109, align 1
  %i.cf = load i8, ptr %gep111, align 1
  %i.cg = load i8, ptr %gep113, align 1
  %i.ch = load i8, ptr %gep115, align 1
  %i.ci = load i8, ptr %gep117, align 1
  %i.cj = load i8, ptr %gep119, align 1
  %i.ck = load i8, ptr %gep121, align 1
  %i.cl = load i8, ptr %gep123, align 1
  %i.cm = load i8, ptr %gep125, align 1
  %i.cn = load i8, ptr %gep127, align 1
  %i.co = load i8, ptr %gep129, align 1
  %i.cp = load i8, ptr %gep131, align 1
  %i.cq = load i8, ptr %gep133, align 1
  %i.cr = load i8, ptr %gep135, align 1
  %i.cs = load i8, ptr %gep137, align 1
  %i.ct = insertelement <16 x i8> poison, i8 %i.cd, i64 0
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 1
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 2
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 3
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 4
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 5
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 6
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 7
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 8
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 9
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 10
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 11
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 12
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 13
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 14
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  store <16 x i8> %i.di, ptr %i.dj, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !393

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.at, 8589934584            ; 5 uses
  %i.dl = mul i64 %n.vec99, %i.bc
  %i.dm = add i64 %i.bb, %i.dl
  %i.dn = trunc i64 %n.vec99 to i32
  %i.do = shl nsw i64 %i.bc, 1
  %i.dp = mul nsw i64 %i.bc, 3
  %i.dq = shl nsw i64 %i.bc, 2
  %i.dr = mul nsw i64 %i.bc, 5
  %i.ds = mul nsw i64 %i.bc, 6
  %i.dt = mul nsw i64 %i.bc, 7
  %invariant.gep138 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %invariant.gep140 = getelementptr i8, ptr %i.ar, i64 %i.do
  %invariant.gep142 = getelementptr i8, ptr %i.ar, i64 %i.dp
  %invariant.gep144 = getelementptr i8, ptr %i.ar, i64 %i.dq
  %invariant.gep146 = getelementptr i8, ptr %i.ar, i64 %i.dr
  %invariant.gep148 = getelementptr i8, ptr %i.ar, i64 %i.ds
  %invariant.gep150 = getelementptr i8, ptr %i.ar, i64 %i.dt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %i.du = mul i64 %index100, %i.bc
  %i.dv = add i64 %i.bb, %i.du                    ; 8 uses
  %i.dw = getelementptr inbounds i8, ptr %i.ar, i64 %i.dv
  %gep139 = getelementptr i8, ptr %invariant.gep138, i64 %i.dv
  %gep141 = getelementptr i8, ptr %invariant.gep140, i64 %i.dv
  %gep143 = getelementptr i8, ptr %invariant.gep142, i64 %i.dv
  %gep145 = getelementptr i8, ptr %invariant.gep144, i64 %i.dv
  %gep147 = getelementptr i8, ptr %invariant.gep146, i64 %i.dv
  %gep149 = getelementptr i8, ptr %invariant.gep148, i64 %i.dv
  %gep151 = getelementptr i8, ptr %invariant.gep150, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = load i8, ptr %gep139, align 1
  %i.dz = load i8, ptr %gep141, align 1
  %i.ea = load i8, ptr %gep143, align 1
  %i.eb = load i8, ptr %gep145, align 1
  %i.ec = load i8, ptr %gep147, align 1
  %i.ed = load i8, ptr %gep149, align 1
  %i.ee = load i8, ptr %gep151, align 1
  %i.ef = insertelement <8 x i8> poison, i8 %i.dx, i64 0
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 1
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 2
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 3
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 4
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 5
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 6
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 7
  %i.en = getelementptr inbounds nuw i8, ptr %i.au, i64 %index100
  store <8 x i8> %i.em, ptr %i.en, align 1
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next101, %n.vec99
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !391

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.at, %n.vec99
  br i1 %cmp.n102, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.ph = phi i64 [ %i.bb, %iter.check ], [ %i.bb, %vector.scevcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.075.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.ep = trunc nuw i64 %i.at to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.lcssa = phi i32 [ 0, %bb.s ], [ %i.ep, %._crit_edge.loopexit ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load ptr, ptr %i.eq, align 8            ; 4 uses
  %i.es = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.er, ptr noundef nonnull dereferenceable(11) @.str.370) #51
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ %indvars.iv85.ph, %.lr.ph.preheader ] ; 2 uses
  %i.eu = phi i64 [ %i.ez, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.ey, %.lr.ph ], [ %.075.ph, %.lr.ph.preheader ]
  %i.ev = getelementptr inbounds i8, ptr %i.ar, i64 %indvars.iv85
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.eu
  store i8 %i.ew, ptr %i.ex, align 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, %i.bc
  %i.ey = add i32 %.075, 1                        ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = icmp ugt i64 %i.at, %i.ez
  br i1 %i.fa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !392

bb.t:                                             ; preds = %._crit_edge
  %i.fb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.er, ptr noundef nonnull dereferenceable(10) @.str.371) #51
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull @.str.9, ptr noundef %i.au, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.er, ptr noundef nonnull dereferenceable(12) @.str.372) #51
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.er, ptr noundef nonnull dereferenceable(11) @.str.373) #51
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull @.str.374, ptr noundef %i.au, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fh = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef null) #54
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.375, ptr noundef %i.fh) #54
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  call void @free(ptr noundef %i.au) #54
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
!210 = distinct !{!210, i1 false, !"MatrixRotate"}
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
!303 = distinct !{!303, i1 false, !"LVerDomain"}
!304 = distinct !{!304, !303}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !11, !12}
!307 = distinct !{!307, !11, !12}
!308 = distinct !{!308, !13}
!309 = distinct !{!309, !11}
!310 = distinct !{!310, i1 false, !"LVerDomain"}
!311 = distinct !{!311, !310}
!312 = distinct !{!312, !310}
!313 = distinct !{!313, !310}
!314 = distinct !{!314, !11, !12}
!315 = distinct !{!315, !11, !12}
!316 = distinct !{!316, !11}
!317 = distinct !{!317, i1 false, !"LVerDomain"}
!318 = distinct !{!318, !317}
!319 = distinct !{!319, !317}
!320 = distinct !{!320, !317}
!321 = distinct !{!321, !11, !12}
!322 = distinct !{!322, !11, !12}
!323 = distinct !{!323, !13}
!324 = distinct !{!324, !11}
!325 = distinct !{!325, i1 false, !"LVerDomain"}
!326 = distinct !{!326, !325}
!327 = distinct !{!327, !325}
!328 = distinct !{!328, !325}
!329 = distinct !{!329, !325}
!330 = distinct !{!330, !11, !12}
!331 = distinct !{!331, !11, !12}
!332 = distinct !{!332, !11}
!333 = distinct !{!333, i1 false, !"LVerDomain"}
!334 = distinct !{!334, !333}
!335 = distinct !{!335, !333}
!336 = distinct !{!336, !333}
!337 = distinct !{!337, !333}
!338 = distinct !{!338, !333}
!339 = distinct !{!339, !11, !12}
!340 = distinct !{!340, !11, !12}
!341 = distinct !{!341, !11}
!342 = distinct !{!342, i1 false, !"LVerDomain"}
!343 = distinct !{!343, !342}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !342}
!346 = distinct !{!346, !11, !12}
!347 = distinct !{!347, !11, !12}
!348 = distinct !{!348, !11}
!349 = distinct !{!349, i1 false, !"LVerDomain"}
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
!390 = distinct !{!390, !11, !12}
!391 = distinct !{!391, !11, !12}
!392 = distinct !{!392, !11}
!393 = !{!"branch_weights", i32 8, i32 8}
end_hunk_1
