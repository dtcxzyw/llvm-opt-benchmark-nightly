Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@QuaternionNormalize

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
  %i.ar = load ptr, ptr %i.aq, align 8            ; 28 uses
  %.not66 = icmp eq ptr %i.ar, null
  br i1 %.not66, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 14 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #56 ; 8 uses
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
  %i.bb = ashr exact i64 %i.ba, 32                ; 9 uses
  %i.bc = sext i32 %spec.select to i64            ; 28 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bd = add i64 %i.at, -1                       ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = icmp eq i64 %i.be, 4294967295
  %i.bg = icmp ugt i64 %i.bd, 4294967295
  %i.bh = or i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %8 = getelementptr i8, ptr %i.au, i64 %i.at
  %i.bi = add nsw i64 %i.at, -1
  %i.bj = mul i64 %i.bi, %i.bc
  %i.bk = getelementptr i8, ptr %i.ar, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bb  ; 4 uses
  %i.bm = getelementptr i8, ptr %i.ar, i64 %i.bb  ; 4 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = select i1 %i.bn, ptr %i.bl, ptr %i.bm
  %i.bp = icmp ugt ptr %i.bl, %i.bm
  %i.bq = select i1 %i.bp, ptr %i.bl, ptr %i.bm
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %bound0 = icmp ult ptr %i.au, %i.br
  %bound1 = icmp ult ptr %i.bo, %8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check97 = icmp ult i64 %i.at, 16
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.at, 8
  %n.vec = and i64 %i.at, 8589934576              ; 6 uses
  %i.bt = mul i64 %n.vec, %i.bc
  %i.bu = add i64 %i.bb, %i.bt
  %i.bv = trunc i64 %n.vec to i32
  %i.bw = shl nsw i64 %i.bc, 1
  %i.bx = mul nsw i64 %i.bc, 3
  %i.by = shl nsw i64 %i.bc, 2
  %i.bz = mul nsw i64 %i.bc, 5
  %i.ca = mul nsw i64 %i.bc, 6
  %i.cb = mul nsw i64 %i.bc, 7
  %i.cc = shl nsw i64 %i.bc, 3
  %i.cd = mul nsw i64 %i.bc, 9
  %i.ce = mul nsw i64 %i.bc, 10
  %i.cf = mul nsw i64 %i.bc, 11
  %i.cg = mul nsw i64 %i.bc, 12
  %i.ch = mul nsw i64 %i.bc, 13
  %i.ci = mul nsw i64 %i.bc, 14
  %i.cj = mul nsw i64 %i.bc, 15
  %invariant.gep108 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %invariant.gep110 = getelementptr i8, ptr %i.ar, i64 %i.bw
  %invariant.gep112 = getelementptr i8, ptr %i.ar, i64 %i.bx
  %invariant.gep114 = getelementptr i8, ptr %i.ar, i64 %i.by
  %invariant.gep116 = getelementptr i8, ptr %i.ar, i64 %i.bz
  %invariant.gep118 = getelementptr i8, ptr %i.ar, i64 %i.ca
  %invariant.gep120 = getelementptr i8, ptr %i.ar, i64 %i.cb
  %invariant.gep122 = getelementptr i8, ptr %i.ar, i64 %i.cc
  %invariant.gep124 = getelementptr i8, ptr %i.ar, i64 %i.cd
  %invariant.gep126 = getelementptr i8, ptr %i.ar, i64 %i.ce
  %invariant.gep128 = getelementptr i8, ptr %i.ar, i64 %i.cf
  %invariant.gep130 = getelementptr i8, ptr %i.ar, i64 %i.cg
  %invariant.gep132 = getelementptr i8, ptr %i.ar, i64 %i.ch
  %invariant.gep134 = getelementptr i8, ptr %i.ar, i64 %i.ci
  %invariant.gep136 = getelementptr i8, ptr %i.ar, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = mul i64 %index, %i.bc
  %i.cl = add i64 %i.bb, %i.ck                    ; 16 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ar, i64 %i.cl
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %i.cl
  %gep111 = getelementptr i8, ptr %invariant.gep110, i64 %i.cl
  %gep113 = getelementptr i8, ptr %invariant.gep112, i64 %i.cl
  %gep115 = getelementptr i8, ptr %invariant.gep114, i64 %i.cl
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %i.cl
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %i.cl
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %i.cl
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %i.cl
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %i.cl
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %i.cl
  %gep129 = getelementptr i8, ptr %invariant.gep128, i64 %i.cl
  %gep131 = getelementptr i8, ptr %invariant.gep130, i64 %i.cl
  %gep133 = getelementptr i8, ptr %invariant.gep132, i64 %i.cl
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %i.cl
  %gep137 = getelementptr i8, ptr %invariant.gep136, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !396
  %i.co = load i8, ptr %gep109, align 1, !alias.scope !396
  %i.cp = load i8, ptr %gep111, align 1, !alias.scope !396
  %i.cq = load i8, ptr %gep113, align 1, !alias.scope !396
  %i.cr = load i8, ptr %gep115, align 1, !alias.scope !396
  %i.cs = load i8, ptr %gep117, align 1, !alias.scope !396
  %i.ct = load i8, ptr %gep119, align 1, !alias.scope !396
  %i.cu = load i8, ptr %gep121, align 1, !alias.scope !396
  %i.cv = load i8, ptr %gep123, align 1, !alias.scope !396
  %i.cw = load i8, ptr %gep125, align 1, !alias.scope !396
  %i.cx = load i8, ptr %gep127, align 1, !alias.scope !396
  %i.cy = load i8, ptr %gep129, align 1, !alias.scope !396
  %i.cz = load i8, ptr %gep131, align 1, !alias.scope !396
  %i.da = load i8, ptr %gep133, align 1, !alias.scope !396
  %i.db = load i8, ptr %gep135, align 1, !alias.scope !396
  %i.dc = load i8, ptr %gep137, align 1, !alias.scope !396
  %i.dd = insertelement <16 x i8> poison, i8 %i.cn, i64 0
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 1
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 2
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 3
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 4
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 5
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 6
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 7
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 8
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 9
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 10
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 11
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 12
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 13
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 14
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.au, i64 %index
  store <16 x i8> %i.ds, ptr %i.dt, align 1, !alias.scope !397, !noalias !396
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %i.at, 8589934584            ; 5 uses
  %i.dv = mul i64 %n.vec99, %i.bc
  %i.dw = add i64 %i.bb, %i.dv
  %i.dx = trunc i64 %n.vec99 to i32
  %i.dy = shl nsw i64 %i.bc, 1
  %i.dz = mul nsw i64 %i.bc, 3
  %i.ea = shl nsw i64 %i.bc, 2
  %i.eb = mul nsw i64 %i.bc, 5
  %i.ec = mul nsw i64 %i.bc, 6
  %i.ed = mul nsw i64 %i.bc, 7
  %invariant.gep138 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %invariant.gep140 = getelementptr i8, ptr %i.ar, i64 %i.dy
  %invariant.gep142 = getelementptr i8, ptr %i.ar, i64 %i.dz
  %invariant.gep144 = getelementptr i8, ptr %i.ar, i64 %i.ea
  %invariant.gep146 = getelementptr i8, ptr %i.ar, i64 %i.eb
  %invariant.gep148 = getelementptr i8, ptr %i.ar, i64 %i.ec
  %invariant.gep150 = getelementptr i8, ptr %i.ar, i64 %i.ed
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %i.ee = mul i64 %index100, %i.bc
  %i.ef = add i64 %i.bb, %i.ee                    ; 8 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ar, i64 %i.ef
  %gep139 = getelementptr i8, ptr %invariant.gep138, i64 %i.ef
  %gep141 = getelementptr i8, ptr %invariant.gep140, i64 %i.ef
  %gep143 = getelementptr i8, ptr %invariant.gep142, i64 %i.ef
  %gep145 = getelementptr i8, ptr %invariant.gep144, i64 %i.ef
  %gep147 = getelementptr i8, ptr %invariant.gep146, i64 %i.ef
  %gep149 = getelementptr i8, ptr %invariant.gep148, i64 %i.ef
  %gep151 = getelementptr i8, ptr %invariant.gep150, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !396
  %i.ei = load i8, ptr %gep139, align 1, !alias.scope !396
  %i.ej = load i8, ptr %gep141, align 1, !alias.scope !396
  %i.ek = load i8, ptr %gep143, align 1, !alias.scope !396
  %i.el = load i8, ptr %gep145, align 1, !alias.scope !396
  %i.em = load i8, ptr %gep147, align 1, !alias.scope !396
  %i.en = load i8, ptr %gep149, align 1, !alias.scope !396
  %i.eo = load i8, ptr %gep151, align 1, !alias.scope !396
  %i.ep = insertelement <8 x i8> poison, i8 %i.eh, i64 0
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 1
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 2
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 3
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 4
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 5
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 6
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.au, i64 %index100
  store <8 x i8> %i.ew, ptr %i.ex, align 1, !alias.scope !397, !noalias !396
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next101, %n.vec99
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !394

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.at, %n.vec99
  br i1 %cmp.n102, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.ph = phi i64 [ %i.bb, %iter.check ], [ %i.bb, %vector.scevcheck ], [ %i.bb, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.075.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.ez = trunc nuw i64 %i.at to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.lcssa = phi i32 [ 0, %bb.s ], [ %i.ez, %._crit_edge.loopexit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8            ; 4 uses
  %i.fc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(11) @.str.370) #51
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ %indvars.iv85.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fe = phi i64 [ %i.fj, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.fi, %.lr.ph ], [ %.075.ph, %.lr.ph.preheader ]
  %i.ff = getelementptr inbounds i8, ptr %i.ar, i64 %indvars.iv85
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.fe
  store i8 %i.fg, ptr %i.fh, align 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, %i.bc
  %i.fi = add i32 %.075, 1                        ; 2 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = icmp ugt i64 %i.at, %i.fj
  br i1 %i.fk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !395

bb.t:                                             ; preds = %._crit_edge
  %i.fl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(10) @.str.371) #51
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull @.str.9, ptr noundef %i.au, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(12) @.str.372) #51
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(11) @.str.373) #51
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull @.str.374, ptr noundef %i.au, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fr = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef null) #54
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.375, ptr noundef %i.fr) #54
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
end_hunk_0
