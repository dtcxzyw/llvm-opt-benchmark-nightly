Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@GenMeshCone:bb.a
  store float 0.000000e+00, ptr %i.j, align 8
  store <2 x float> zeroinitializer, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float -1.000000e+00, ptr %i.k, align 8
  %i.l = call ptr @par_shapes_create_disk(float noundef %1, i32 noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = shl i32 %i.n, 1                          ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #56 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.r, ptr %i.s, align 8
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> splat (float f0x3F733333), ptr %i.u, align 4
  store <4 x float> splat (float f0x3F733333), ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float 0.000000e+00, ptr %i.x, align 8
  call void @par_shapes_rotate(ptr noundef nonnull %i.l, float noundef f0x3FC90FDB, ptr noundef nonnull %i.e)
  tail call void @par_shapes_merge(ptr noundef %i.g, ptr noundef nonnull %i.l)
  %i.y = load ptr, ptr %i.l, align 8
  tail call void @free(ptr noundef %i.y) #54
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @free(ptr noundef %i.aa) #54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @free(ptr noundef %i.ac) #54
  tail call void @free(ptr noundef %i.r) #54
  tail call void @free(ptr noundef nonnull %i.l) #54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ae = load i32, ptr %i.ad, align 8            ; 5 uses
  %i.af = mul nsw i32 %i.ae, 9
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #56 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = mul nsw i32 %i.ae, 6
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 2
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ah) #56 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = mul i32 %i.ae, 3                        ; 2 uses
  store i32 %i.ar, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ae, ptr %i.as, align 4
  %i.at = icmp sgt i32 %i.ae, 0
  %.pre = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  br i1 %i.at, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %._crit_edge
  %smax77 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1)
  %wide.trip.count78 = zext nneg i32 %smax77 to i64
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader86, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader86 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store float f0x3F733333, ptr %i.ba, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge72:                                    ; preds = %bb.c, %._crit_edge
  tail call void @free(ptr noundef %.pre) #54
  tail call void @free(ptr noundef %i.av) #54
  tail call void @free(ptr noundef %i.ax) #54
  tail call void @free(ptr noundef %i.az) #54
  tail call void @free(ptr noundef nonnull %i.g) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph71, %bb.c
  %indvars.iv74 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next75, %bb.c ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv74 ; 8 uses
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i64
  %.idx = mul nuw nsw i64 %i.bd, 12
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = mul nuw nsw i64 %indvars.iv74, 3        ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bg
  store float %i.bf, ptr %i.bh, align 4
  %i.bi = load i16, ptr %i.bb, align 2
  %i.bj = zext i16 %i.bi to i64
  %.idx61 = mul nuw nsw i64 %i.bj, 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bn
  store float %i.bm, ptr %i.bo, align 4
  %i.bp = load i16, ptr %i.bb, align 2
  %i.bq = zext i16 %i.bp to i64
  %.idx62 = mul nuw nsw i64 %i.bq, 12
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bu
  store float %i.bt, ptr %i.bv, align 4
  %i.bw = load i16, ptr %i.bb, align 2
  %i.bx = zext i16 %i.bw to i64
  %.idx63 = mul nuw nsw i64 %i.bx, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx63
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bg
  store float %i.bz, ptr %i.ca, align 4
  %i.cb = load i16, ptr %i.bb, align 2
  %i.cc = zext i16 %i.cb to i64
  %.idx64 = mul nuw nsw i64 %i.cc, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bn
  store float %i.cf, ptr %i.cg, align 4
  %i.ch = load i16, ptr %i.bb, align 2
  %i.ci = zext i16 %i.ch to i64
  %.idx65 = mul nuw nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bu
  store float %i.cl, ptr %i.cm, align 4
  %i.cn = load i16, ptr %i.bb, align 2
  %i.co = zext i16 %i.cn to i64
  %.idx66 = shl nuw nsw i64 %i.co, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx66
  %i.cq = load float, ptr %i.cp, align 4
  %.idx85 = shl nuw nsw i64 %indvars.iv74, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx85 ; 2 uses
  store float %i.cq, ptr %i.cr, align 4
  %i.cs = load i16, ptr %i.bb, align 2
  %i.ct = zext i16 %i.cs to i64
  %.idx67 = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.cw, ptr %i.cx, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge72, label %bb.c

bb.d:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.98) #54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge72
  ret void
}

; Function Attrs: nounwind uwtable
define void @GenMeshTorus(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = icmp sgt i32 %4, 2
  %i.b = icmp sgt i32 %3, 2
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %5 = fcmp ogt float %1, 1.000000e+00
  %6 = fcmp olt float %1, 1.000000e-01
  %spec.store.select = select i1 %6, float 1.000000e-01, float %1
  %.051 = select i1 %5, float 1.000000e+00, float %spec.store.select
  %i.c = tail call ptr @par_shapes_create_torus(i32 noundef %3, i32 noundef %4, float noundef %.051) ; 7 uses
  %i.d = fmul float %2, 5.000000e-01              ; 3 uses
  tail call void @par_shapes_scale(ptr noundef %i.c, float noundef %i.d, float noundef %i.d, float noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = mul nsw i32 %i.f, 9
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = mul nsw i32 %i.f, 6
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.i) #56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.r, align 8
  %i.s = mul i32 %i.f, 3                          ; 2 uses
  store i32 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.t, align 4
  %i.u = icmp sgt i32 %i.f, 0
  %.pre = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef %.pre) #54
  tail call void @free(ptr noundef %i.w) #54
  tail call void @free(ptr noundef %i.y) #54
  tail call void @free(ptr noundef %i.aa) #54
  tail call void @free(ptr noundef nonnull %i.c) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv ; 8 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64
  %.idx = mul nuw nsw i64 %i.ad, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = mul nuw nsw i64 %indvars.iv, 3          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ag
  store float %i.af, ptr %i.ah, align 4
  %i.ai = load i16, ptr %i.ab, align 2
  %i.aj = zext i16 %i.ai to i64
  %.idx55 = mul nuw nsw i64 %i.aj, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4
  %i.an = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.an
  store float %i.am, ptr %i.ao, align 4
  %i.ap = load i16, ptr %i.ab, align 2
  %i.aq = zext i16 %i.ap to i64
  %.idx56 = mul nuw nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load float, ptr %i.as, align 4
  %i.au = add nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  store float %i.at, ptr %i.av, align 4
  %i.aw = load i16, ptr %i.ab, align 2
  %i.ax = zext i16 %i.aw to i64
  %.idx57 = mul nuw nsw i64 %i.ax, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx57
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ag
  store float %i.az, ptr %i.ba, align 4
  %i.bb = load i16, ptr %i.ab, align 2
  %i.bc = zext i16 %i.bb to i64
  %.idx58 = mul nuw nsw i64 %i.bc, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.an
  store float %i.bf, ptr %i.bg, align 4
  %i.bh = load i16, ptr %i.ab, align 2
  %i.bi = zext i16 %i.bh to i64
  %.idx59 = mul nuw nsw i64 %i.bi, 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.au
  store float %i.bl, ptr %i.bm, align 4
  %i.bn = load i16, ptr %i.ab, align 2
  %i.bo = zext i16 %i.bn to i64
  %.idx60 = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx60
  %i.bq = load float, ptr %i.bp, align 4
  %.idx71 = shl nuw nsw i64 %indvars.iv, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx71 ; 2 uses
  store float %i.bq, ptr %i.br, align 4
  %i.bs = load i16, ptr %i.ab, align 2
  %i.bt = zext i16 %i.bs to i64
  %.idx61 = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx61
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.d:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.99) #54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @GenMeshKnot(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.b = icmp sgt i32 %4, 2
  %i.c = icmp sgt i32 %3, 2
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %par_shapes_create_trefoil_knot.exit, label %bb.c

par_shapes_create_trefoil_knot.exit:              ; preds = %bb.a
  %5 = fcmp ogt float %1, 3.000000e+00
  %6 = fcmp olt float %1, 5.000000e-01
  %spec.store.select = select i1 %6, float 5.000000e-01, float %1
  %.051 = select i1 %5, float 3.000000e+00, float %spec.store.select
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.051, ptr %i.a, align 4
  %i.d = call ptr @par_shapes_create_parametric(ptr noundef nonnull @par_shapes__trefoil, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a) ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @par_shapes_scale(ptr noundef %i.d, float noundef %2, float noundef %2, float noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = mul nsw i32 %i.f, 9
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #56 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = mul nsw i32 %i.f, 6
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = call noalias ptr @malloc(i64 noundef %i.i) #56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.r, align 8
  %i.s = mul i32 %i.f, 3                          ; 2 uses
  store i32 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.t, align 4
  %i.u = icmp sgt i32 %i.f, 0
  %.pre = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %par_shapes_create_trefoil_knot.exit
  %smax = call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %par_shapes_create_trefoil_knot.exit
  call void @free(ptr noundef %.pre) #54
  call void @free(ptr noundef %i.w) #54
  call void @free(ptr noundef %i.y) #54
  call void @free(ptr noundef %i.aa) #54
  call void @free(ptr noundef nonnull %i.d) #54
  call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv ; 8 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64
  %.idx = mul nuw nsw i64 %i.ad, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = mul nuw nsw i64 %indvars.iv, 3          ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ag
  store float %i.af, ptr %i.ah, align 4
  %i.ai = load i16, ptr %i.ab, align 2
  %i.aj = zext i16 %i.ai to i64
  %.idx55 = mul nuw nsw i64 %i.aj, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4
  %i.an = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.an
  store float %i.am, ptr %i.ao, align 4
  %i.ap = load i16, ptr %i.ab, align 2
  %i.aq = zext i16 %i.ap to i64
  %.idx56 = mul nuw nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load float, ptr %i.as, align 4
  %i.au = add nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  store float %i.at, ptr %i.av, align 4
  %i.aw = load i16, ptr %i.ab, align 2
  %i.ax = zext i16 %i.aw to i64
  %.idx57 = mul nuw nsw i64 %i.ax, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx57
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ag
  store float %i.az, ptr %i.ba, align 4
  %i.bb = load i16, ptr %i.ab, align 2
  %i.bc = zext i16 %i.bb to i64
  %.idx58 = mul nuw nsw i64 %i.bc, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.an
  store float %i.bf, ptr %i.bg, align 4
  %i.bh = load i16, ptr %i.ab, align 2
  %i.bi = zext i16 %i.bh to i64
  %.idx59 = mul nuw nsw i64 %i.bi, 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.au
  store float %i.bl, ptr %i.bm, align 4
  %i.bn = load i16, ptr %i.ab, align 2
  %i.bo = zext i16 %i.bn to i64
  %.idx60 = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx60
  %i.bq = load float, ptr %i.bp, align 4
  %.idx71 = shl nuw nsw i64 %indvars.iv, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx71 ; 2 uses
  store float %i.bq, ptr %i.br, align 4
  %i.bs = load i16, ptr %i.ab, align 2
  %i.bt = zext i16 %i.bs to i64
  %.idx61 = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx61
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.100) #54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @GenMeshHeightmap(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, <2 x float> %2, float %3) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %1) #54 ; 5 uses
  %i.g = add nsw i32 %i.c, -1                     ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = mul nsw i32 %i.i, 6
  store i32 %i.l, ptr %0, align 8
  %i.m = mul nsw i32 %i.i, 18
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #56 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.o) #56 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.s, align 8
  %i.t = mul i32 %i.i, 12
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.y, align 8
  %.sroa.0228.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.z = sitofp i32 %i.g to float                 ; 3 uses
  %i.aa = fdiv float %.sroa.0228.0.vec.extract, %i.z ; 2 uses
  %.sroa.0228.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.ab = fdiv float %.sroa.0228.4.vec.extract, 2.550000e+02 ; 4 uses
  %i.ac = sitofp i32 %i.h to float                ; 2 uses
  %i.ad = fdiv float %3, %i.ac                    ; 2 uses
  %i.ae = icmp sgt i32 %i.e, 1
  %i.af = icmp sgt i32 %i.c, 1
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge255.split

.preheader.preheader:                             ; preds = %bb.a
  %i.ag = zext nneg i32 %i.c to i64               ; 2 uses
  %wide.trip.count275 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext i32 %i.g to i64
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv272 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next273, %._crit_edge ] ; 3 uses
  %.0254 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ]
  %.0229253 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next260, %._crit_edge ]
  %.0231252 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next262, %._crit_edge ]
  %i.aj = mul nuw nsw i64 %indvars.iv272, %i.ag   ; 2 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 4 uses
  %i.ak = mul nuw nsw i64 %indvars.iv.next273, %i.ag ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next273 to i32
  %i.am = trunc nuw nsw i64 %indvars.iv272 to i32
  %i.an = uitofp nneg i32 %i.al to float          ; 2 uses
  %i.ao = uitofp nneg i32 %i.am to float          ; 2 uses
  %i.ap = fmul float %i.ad, %i.ao                 ; 3 uses
  %i.aq = fmul float %i.ad, %i.an                 ; 3 uses
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
end_hunk_0
