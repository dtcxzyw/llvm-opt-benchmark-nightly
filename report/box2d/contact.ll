Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/contact?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b2DestroyContact:bb.a
bb.p:                                             ; preds = %bb.o
  store i32 %i.dw, ptr %i.eh, align 8, !tbaa !111
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !113
  %i.em = add nsw i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !113
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !106
  %.not157 = icmp eq i32 %i.eo, -1
  br i1 %.not157, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @b2UnlinkContact(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !68 ; 2 uses
  %.not158 = icmp eq i32 %i.eq, -1
  br i1 %.not158, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.es = load i32, ptr %i.er, align 4, !tbaa !72
  tail call void @b2RemoveContactFromGraph(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.eq, i32 noundef %i.es) #9
  br label %b2RemoveHelper.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !69
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !67
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [88 x i8], ptr %i.eu, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !155 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 56 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !72 ; 2 uses
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !76
  %i.ff = add nsw i32 %i.fe, -1                   ; 3 uses
  store i32 %i.ff, ptr %i.fb, align 8, !tbaa !76
  %.not.i = icmp eq i32 %i.fd, %i.ff
  br i1 %.not.i, label %b2RemoveHelper.exit.thread, label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %bb.u
  %i.fg = mul nsw i32 %i.fd, 208
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.fa, i64 %i.fh
  %i.fj = mul nsw i32 %i.ff, 208
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fa, i64 %i.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.fi, ptr noundef nonnull align 1 dereferenceable(208) %i.fl, i64 208, i1 false)
  %i.fm = load i32, ptr %i.fb, align 8, !tbaa !76
  %.not159 = icmp eq i32 %i.fm, -1
  br i1 %.not159, label %b2RemoveHelper.exit.thread, label %bb.v

bb.v:                                             ; preds = %b2RemoveHelper.exit
  %i.fn = load ptr, ptr %i.ez, align 8, !tbaa !155
  %i.fo = load i32, ptr %i.fc, align 4, !tbaa !72 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [208 x i8], ptr %i.fn, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !65
  %i.ft = load i32, ptr %i.fq, align 4, !tbaa !119
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [64 x i8], ptr %i.fs, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  store i32 %i.fo, ptr %i.fw, align 4, !tbaa !72
  br label %b2RemoveHelper.exit.thread

b2RemoveHelper.exit.thread:                       ; preds = %bb.u, %b2RemoveHelper.exit, %bb.v, %bb.t
  store i32 -1, ptr %i.da, align 4, !tbaa !94
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1, ptr %i.fx, align 4, !tbaa !67
  store i32 -1, ptr %i.ep, align 4, !tbaa !68
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.fy, align 4, !tbaa !72
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2016
  tail call void @b2FreeId(ptr noundef nonnull %i.fz, i32 noundef %i.db) #9
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %b2RemoveHelper.exit.thread
  %i.ga = tail call zeroext i1 @b2WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #9 ; 0 uses
  %i.gb = tail call zeroext i1 @b2WakeBody(ptr noundef nonnull %0, ptr noundef nonnull %i.w) #9 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %b2RemoveHelper.exit.thread
  ret void
}

declare zeroext i1 @b2RemoveKey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @b2UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b2RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @b2FreeId(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b2WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b2UpdateContact(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, ptr noundef %6, <2 x float> %7, <2 x float> %8, <2 x float> %9) local_unnamed_addr #5 {
bb.a:
  %10 = alloca %struct.b2Manifold, align 4        ; 6 uses
  %11 = alloca %struct.b2LocalManifold, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %10, ptr noundef nonnull align 4 dereferenceable(112) %i.a, i64 112, i1 false), !tbaa.struct !85
  %i.b = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.c = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %i.c, %8                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fadd <2 x float> %i.d, %i.g
  %i.i = fsub <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fsub <2 x float> %7, %3                  ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %4, %i.l                ; 2 uses
  %i.n = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = fadd <2 x float> %i.m, %i.p
  %i.r = fsub <2 x float> %i.m, %i.p
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [80 x i8], ptr @s_registers, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%struct.b2LocalManifold) align 4 %11, ptr noundef %2, ptr noundef %6, <2 x float> %i.s, <2 x float> %i.j, ptr noundef nonnull %i.ac) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %i.ad, i8 0, i64 100, i1 false)
  %i.ae = load <2 x float>, ptr %11, align 8      ; 2 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %4, %i.af              ; 2 uses
  %i.ah = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = fsub <2 x float> %i.ag, %i.aj
  %i.al = fadd <2 x float> %i.ag, %i.aj
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.am, ptr %i.a, align 4, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !161
  %i.aq = fsub <2 x float> %3, %7
  %i.ar = icmp sgt i32 %i.ao, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count = zext nneg i32 %i.ao to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !121
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !122
  %i.be = call float %i.av(float noundef %i.ax, i64 noundef %i.az, float noundef %i.bb, i64 noundef %i.bd) #9
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.be, ptr %i.bf, align 4, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !124
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !125
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !125
  %i.bn = load i64, ptr %i.bc, align 8, !tbaa !122
  %i.bo = call float %i.bh(float noundef %i.bj, i64 noundef %i.bk, float noundef %i.bm, i64 noundef %i.bn) #9
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store float %i.bo, ptr %i.bp, align 4, !tbaa !126
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.br = load float, ptr %i.bq, align 8, !tbaa !162 ; 3 uses
  %i.bs = fcmp ogt float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %indvars.iv ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv ; 3 uses
  %i.bv = load <2 x float>, ptr %i.bu, align 8    ; 2 uses
  %i.bw = fmul <2 x float> %4, %i.bv              ; 2 uses
  %i.bx = fmul <2 x float> %i.b, %i.bv            ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ca = fsub <2 x float> %i.by, %i.bz
  %i.cb = fadd <2 x float> %i.by, %i.bz
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x float> %i.cc, ptr %i.bt, align 4, !tbaa !83
  %13 = fadd <2 x float> %i.aq, %i.cc
  store <2 x float> %13, ptr %12, align 4, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !164
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.ce, ptr %i.cf, align 4, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !167
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  store i16 %i.ch, ptr %i.ci, align 4, !tbaa !168
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !156

bb.c:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !162
  %i.cl = fcmp ogt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cm = load i32, ptr %i.t, align 4, !tbaa !89
  switch i32 %i.cm, label %b2GetShapeRadius.exit [
    i32 1, label %.sink.split.i
    i32 0, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink5.i = phi i64 [ 280, %bb.f ], [ 152, %bb.e ], [ 160, %bb.d ]
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %.sink5.i
  %i.co = load float, ptr %i.cn, align 8, !tbaa !84
  br label %b2GetShapeRadius.exit

b2GetShapeRadius.exit:                            ; preds = %bb.d, %.sink.split.i
  %.0.i = phi float [ 0.000000e+00, %bb.d ], [ %i.co, %.sink.split.i ] ; 2 uses
  %i.cp = load i32, ptr %i.x, align 4, !tbaa !89
  switch i32 %i.cp, label %b2GetShapeRadius.exit159 [
    i32 1, label %.sink.split.i156
    i32 0, label %bb.g
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %b2GetShapeRadius.exit
  br label %.sink.split.i156

bb.h:                                             ; preds = %b2GetShapeRadius.exit
  br label %.sink.split.i156

.sink.split.i156:                                 ; preds = %bb.h, %bb.g, %b2GetShapeRadius.exit
  %.sink5.i157 = phi i64 [ 280, %bb.h ], [ 152, %bb.g ], [ 160, %b2GetShapeRadius.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 %.sink5.i157
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !84
  br label %b2GetShapeRadius.exit159

b2GetShapeRadius.exit159:                         ; preds = %b2GetShapeRadius.exit, %.sink.split.i156
  %.0.i158 = phi float [ 0.000000e+00, %b2GetShapeRadius.exit ], [ %i.cr, %.sink.split.i156 ] ; 2 uses
  %i.cs = fcmp ogt float %.0.i, %.0.i158
  %i.ct = select i1 %i.cs, float %.0.i, float %.0.i158
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !162 ; 2 uses
  %i.cw = fcmp ogt float %i.br, %i.cv
  %i.cx = select i1 %i.cw, float %i.br, float %i.cv
  %i.cy = fmul float %i.ct, %i.cx
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %b2GetShapeRadius.exit159
  %.sink = phi float [ %i.cy, %b2GetShapeRadius.exit159 ], [ 0.000000e+00, %bb.c ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 188
  store float %.sink, ptr %i.cz, align 4, !tbaa !170
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.db = load float, ptr %i.da, align 4, !tbaa !171
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !171
  %i.de = fadd float %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 192
  store float %i.de, ptr %i.df, align 4, !tbaa !127
  %i.dg = load i32, ptr %i.ap, align 4, !tbaa !161 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.j, label %.thread193

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !172 ; 2 uses
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !128
  %i.dm = and i32 %i.dl, 2097152
  %.not138 = icmp eq i32 %i.dm, 0
  br i1 %.not138, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = load i32, ptr %2, align 8, !tbaa !81
  %i.do = add nsw i32 %i.dn, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !129
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !82
  %i.dt = load i32, ptr %6, align 8, !tbaa !81
  %i.du = add nsw i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !173
  %.sroa.534.0.insert.ext = zext i16 %i.ds to i64
  %.sroa.534.0.insert.shift = shl nuw i64 %.sroa.534.0.insert.ext, 48
  %.sroa.433.0.insert.ext = zext i16 %i.dq to i64
  %.sroa.433.0.insert.shift = shl nuw nsw i64 %.sroa.433.0.insert.ext, 32 ; 2 uses
  %.sroa.032.0.insert.ext = zext i32 %i.do to i64
  %i.dz = or disjoint i64 %.sroa.534.0.insert.shift, %.sroa.032.0.insert.ext
  %.sroa.032.0.insert.insert = or disjoint i64 %i.dz, %.sroa.433.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.dw to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.031.0.insert.ext = zext i32 %i.du to i64
  %i.ea = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.031.0.insert.ext
  %.sroa.031.0.insert.insert = or disjoint i64 %i.ea, %.sroa.433.0.insert.shift
  call void %i.dj(i64 %.sroa.032.0.insert.insert, i64 %.sroa.031.0.insert.insert, ptr noundef nonnull %i.a, ptr noundef %i.dy) #9
  %i.eb = load i32, ptr %i.ap, align 4, !tbaa !161 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.thread, label %.thread193

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l
  %.0133179 = phi i32 [ %i.eb, %bb.l ], [ %i.dg, %bb.k ], [ %i.dg, %bb.j ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 293
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !174, !range !90, !noundef !91
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.thread183, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 293
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !174, !range !90, !noundef !91
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.thread183, label %bb.n

.thread183:                                       ; preds = %.thread, %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !128
  %i.el = or i32 %i.ek, 1048576                   ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !128
  br label %.lr.ph201

.thread193:                                       ; preds = %bb.i, %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !128
  %i.eo = and i32 %i.en, -1114113
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !128
  br label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !128
  %i.er = and i32 %i.eq, -1048577                 ; 2 uses
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !128
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.thread183, %bb.n
  %i.es = phi i32 [ %i.er, %bb.n ], [ %i.el, %.thread183 ]
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !175
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.eu, ptr %i.ev, align 4, !tbaa !176
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 108
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !177 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %wide.trip.count220 = zext nneg i32 %.0133179 to i64 ; 3 uses
  br i1 %i.ez, label %.critedge.lr.ph.us.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph201
  %xtraiter = and i64 %wide.trip.count220, 1
  %i.fc = icmp eq i32 %.0133179, 1
  br i1 %i.fc, label %.loopexit.epil.preheader, label %.loopexit.preheader.new

.loopexit.preheader.new:                          ; preds = %.loopexit.preheader
  %unroll_iter = and i64 %wide.trip.count220, 2147483646
  br label %.loopexit

.critedge.lr.ph.us.preheader:                     ; preds = %.lr.ph201
  %wide.trip.count214 = zext nneg i32 %i.ey to i64
  br label %.critedge.lr.ph.us

.critedge.lr.ph.us:                               ; preds = %.critedge.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv216 = phi i64 [ 0, %.critedge.lr.ph.us.preheader ], [ %indvars.iv.next217, %..loopexit_crit_edge.us ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %i.ew, i64 %indvars.iv216 ; 7 uses
  %i.fe = load <2 x float>, ptr %i.fd, align 4
  %14 = fsub <2 x float> %i.fe, %5
  store <2 x float> %14, ptr %i.fd, align 4, !tbaa !83
  %15 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %16 = load <2 x float>, ptr %15, align 4
  %17 = fsub <2 x float> %16, %9
  store <2 x float> %17, ptr %15, align 4, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 20 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 46 ; 2 uses
  store i8 0, ptr %i.fh, align 2, !tbaa !178
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ff, i8 0, i64 20, i1 false)
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !168
  br label %.critedge.us

bb.o:                                             ; preds = %.critedge.us
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %..loopexit_crit_edge.us, label %.critedge.us, !llvm.loop !157

.critedge.us:                                     ; preds = %.critedge.lr.ph.us, %bb.o
  %indvars.iv211 = phi i64 [ 0, %.critedge.lr.ph.us ], [ %indvars.iv.next212, %bb.o ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr %i.fa, i64 %indvars.iv211 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 44
  %i.fm = load i16, ptr %i.fl, align 4, !tbaa !168
  %.not139.us = icmp eq i16 %i.fm, %i.fj
  br i1 %.not139.us, label %bb.p, label %bb.o

bb.p:                                             ; preds = %.critedge.us
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fo = load <2 x float>, ptr %i.fn, align 4, !tbaa !83
  store <2 x float> %i.fo, ptr %i.ff, align 4, !tbaa !83
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !179
  %i.fr = fcmp ogt float %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 36
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !180 ; 2 uses
  %i.fu = load float, ptr %i.fb, align 8, !tbaa !181
  %i.fv = fneg float %i.fu
  %i.fw = fcmp olt float %i.ft, %i.fv
  br i1 %i.fw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fx = load float, ptr %i.bp, align 4, !tbaa !126
  %i.fy = fneg float %i.fx
  %i.fz = fmul float %i.ft, %i.fy
  store float %i.fz, ptr %i.fg, align 4, !tbaa !182
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  store i8 1, ptr %i.fh, align 2, !tbaa !178
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.o, %bb.s
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count220
  br i1 %exitcond221.not, label %._crit_edge202, label %.critedge.lr.ph.us, !llvm.loop !158

.loopexit:                                        ; preds = %.loopexit, %.loopexit.preheader.new
  %indvars.iv206 = phi i64 [ 0, %.loopexit.preheader.new ], [ %indvars.iv.next207.1, %.loopexit ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit.preheader.new ], [ %niter.next.1, %.loopexit ]
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %i.ew, i64 %indvars.iv206 ; 5 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 4
  %18 = fsub <2 x float> %i.gb, %5
  store <2 x float> %18, ptr %i.ga, align 4, !tbaa !83
  %19 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %20 = load <2 x float>, ptr %19, align 4
  %21 = fsub <2 x float> %20, %9
  store <2 x float> %21, ptr %19, align 4, !tbaa !83
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 46
  store i8 0, ptr %i.gd, align 2, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gc, i8 0, i64 20, i1 false)
  %i.ge = getelementptr inbounds nuw [48 x i8], ptr %i.ew, i64 %indvars.iv206 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48 ; 2 uses
  %i.gg = load <2 x float>, ptr %i.gf, align 4
  %22 = fsub <2 x float> %i.gg, %5
  store <2 x float> %22, ptr %i.gf, align 4, !tbaa !83
  %23 = getelementptr inbounds nuw i8, ptr %i.ge, i64 56 ; 2 uses
  %24 = load <2 x float>, ptr %23, align 4
  %25 = fsub <2 x float> %24, %9
  store <2 x float> %25, ptr %23, align 4, !tbaa !83
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 68
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 94
  store i8 0, ptr %i.gi, align 2, !tbaa !178
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gh, i8 0, i64 20, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge202.loopexit233.unr-lcssa, label %.loopexit, !llvm.loop !158

._crit_edge202.loopexit233.unr-lcssa:             ; preds = %.loopexit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge202, label %.loopexit.epil.preheader

.loopexit.epil.preheader:                         ; preds = %._crit_edge202.loopexit233.unr-lcssa, %.loopexit.preheader
  %indvars.iv206.epil.init = phi i64 [ 0, %.loopexit.preheader ], [ %indvars.iv.next207.1, %._crit_edge202.loopexit233.unr-lcssa ]
  %lcmp.mod234 = trunc i32 %.0133179 to i1
  call void @llvm.assume(i1 %lcmp.mod234)
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.ew, i64 %indvars.iv206.epil.init ; 5 uses
  %i.gk = load <2 x float>, ptr %i.gj, align 4
  %26 = fsub <2 x float> %i.gk, %5
  store <2 x float> %26, ptr %i.gj, align 4, !tbaa !83
  %27 = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %28 = load <2 x float>, ptr %27, align 4
  %29 = fsub <2 x float> %28, %9
  store <2 x float> %29, ptr %27, align 4, !tbaa !83
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 46
  store i8 0, ptr %i.gm, align 2, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gl, i8 0, i64 20, i1 false)
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.loopexit.epil.preheader, %._crit_edge202.loopexit233.unr-lcssa, %..loopexit_crit_edge.us
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.go = or i32 %i.es, 65536
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !128
  br label %bb.t

bb.t:                                             ; preds = %.thread193, %._crit_edge202
  %.0134.in174187195 = phi i1 [ false, %.thread193 ], [ true, %._crit_edge202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret i1 %.0134.in174187195
}

declare void @b2CollideCircles(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideCapsuleAndCircle(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideCapsules(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollidePolygonAndCircle(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollidePolygonAndCapsule(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollidePolygons(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideSegmentAndCircle(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideSegmentAndCapsule(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideSegmentAndPolygon(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideChainSegmentAndCircle(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #2

declare void @b2CollideChainSegmentAndCapsule(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>, ptr noundef) local_unnamed_addr #2

declare void @b2CollideChainSegmentAndPolygon(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!11 = !{!"b2DynamicArray_b2StackEntry", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"b2Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b2DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!17 = !{!"b2AtomicInt", !5, i64 0}
!18 = !{!"p1 _ZTS9b2SetItem", !8, i64 0}
!19 = !{!"b2HashSet", !18, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !14, i64 264, !15, i64 280, !16, i64 288, !5, i64 296, !17, i64 300, !19, i64 304}
!21 = !{!"b2ConstraintGraph", !4, i64 0}
!22 = !{!"b2IdPool", !14, i64 0, !5, i64 16}
!23 = !{!"p1 _ZTS6b2Body", !8, i64 0}
!24 = !{!"b2DynamicArray_b2Body", !23, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTS11b2SolverSet", !8, i64 0}
!26 = !{!"b2DynamicArray_b2SolverSet", !25, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTS7b2Joint", !8, i64 0}
!28 = !{!"b2DynamicArray_b2Joint", !27, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 _ZTS9b2Contact", !8, i64 0}
!30 = !{!"b2DynamicArray_b2Contact", !29, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!"p1 _ZTS8b2Island", !8, i64 0}
!32 = !{!"b2DynamicArray_b2Island", !31, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS7b2Shape", !8, i64 0}
!34 = !{!"b2DynamicArray_b2Shape", !33, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"p1 _ZTS12b2ChainShape", !8, i64 0}
!36 = !{!"b2DynamicArray_b2ChainShape", !35, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 _ZTS8b2Sensor", !8, i64 0}
!38 = !{!"b2DynamicArray_b2Sensor", !37, i64 0, !5, i64 8, !5, i64 12}
!39 = !{!"p1 _ZTS13b2TaskContext", !8, i64 0}
!40 = !{!"b2DynamicArray_b2TaskContext", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS19b2SensorTaskContext", !8, i64 0}
!42 = !{!"b2DynamicArray_b2SensorTaskContext", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS15b2BodyMoveEvent", !8, i64 0}
!44 = !{!"b2DynamicArray_b2BodyMoveEvent", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !8, i64 0}
!46 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !8, i64 0}
!48 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS17b2ContactHitEvent", !8, i64 0}
!50 = !{!"b2DynamicArray_b2ContactHitEvent", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS12b2JointEvent", !8, i64 0}
!52 = !{!"b2DynamicArray_b2JointEvent", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 long", !8, i64 0}
!54 = !{!"b2BitSet", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"long", !4, i64 0}
!56 = !{!"float", !4, i64 0}
!57 = !{!"b2Vec2", !56, i64 0, !56, i64 4}
!58 = !{!"short", !4, i64 0}
!59 = !{!"b2Profile", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!60 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!61 = !{!"p1 _ZTS11b2Scheduler", !8, i64 0}
!62 = !{!"p1 _ZTS11b2Recording", !8, i64 0}
!63 = !{!"_Bool", !4, i64 0}
!64 = !{!"b2World", !12, i64 0, !20, i64 40, !21, i64 360, !22, i64 1896, !24, i64 1920, !22, i64 1936, !26, i64 1960, !22, i64 1976, !28, i64 2000, !22, i64 2016, !30, i64 2040, !22, i64 2056, !32, i64 2080, !22, i64 2096, !22, i64 2120, !34, i64 2144, !36, i64 2160, !38, i64 2176, !40, i64 2192, !42, i64 2208, !44, i64 2224, !46, i64 2240, !48, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !50, i64 2344, !52, i64 2360, !54, i64 2376, !54, i64 2392, !54, i64 2408, !54, i64 2424, !55, i64 2440, !5, i64 2448, !57, i64 2452, !56, i64 2460, !56, i64 2464, !56, i64 2468, !56, i64 2472, !56, i64 2476, !56, i64 2480, !56, i64 2484, !8, i64 2488, !8, i64 2496, !58, i64 2504, !59, i64 2508, !60, i64 2596, !8, i64 2616, !8, i64 2624, !8, i64 2632, !8, i64 2640, !8, i64 2648, !5, i64 2656, !8, i64 2664, !8, i64 2672, !8, i64 2680, !8, i64 2688, !61, i64 2696, !8, i64 2704, !62, i64 2712, !56, i64 2720, !56, i64 2724, !5, i64 2728, !5, i64 2732, !58, i64 2736, !63, i64 2738, !63, i64 2739, !63, i64 2740, !63, i64 2741, !63, i64 2742}
!65 = !{!64, !29, i64 2040}
!66 = !{!"b2Contact", !4, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!67 = !{!66, !5, i64 32}
!68 = !{!66, !5, i64 36}
!69 = !{!64, !25, i64 1960}
!70 = !{!"p1 _ZTS12b2ContactSim", !8, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!66, !5, i64 40}
!73 = !{!64, !33, i64 2144}
!74 = !{!66, !5, i64 44}
!75 = !{!66, !5, i64 48}
!76 = !{!5, !5, i64 0}
!77 = !{!"b2SurfaceMaterial", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !55, i64 16, !5, i64 24}
!78 = !{!"b2AABB", !57, i64 0, !57, i64 8}
!79 = !{!"b2Filter", !55, i64 0, !55, i64 8, !5, i64 16}
!80 = !{!"b2Shape", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !77, i64 24, !56, i64 56, !56, i64 60, !78, i64 64, !78, i64 80, !57, i64 96, !5, i64 104, !79, i64 112, !8, i64 136, !4, i64 144, !58, i64 288, !63, i64 290, !63, i64 291, !63, i64 292, !63, i64 293, !63, i64 294, !63, i64 295}
!81 = !{!80, !5, i64 0}
!82 = !{!80, !58, i64 288}
!83 = !{!56, !56, i64 0}
!84 = !{!4, !4, i64 0}
!85 = !{i64 0, i64 4, !83, i64 4, i64 4, !83, i64 8, i64 4, !83, i64 12, i64 96, !84, i64 108, i64 4, !76}
!86 = !{!"b2ContactRegister", !8, i64 0, !63, i64 8}
!87 = !{!86, !8, i64 0}
!88 = !{!86, !63, i64 8}
!89 = !{!80, !5, i64 20}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!64, !23, i64 1920}
!93 = !{!"b2Body", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !58, i64 88, !4, i64 90}
!94 = !{!66, !5, i64 52}
!95 = !{!66, !5, i64 60}
!96 = !{!"p1 _ZTS9b2BodySim", !8, i64 0}
!97 = !{!"b2DynamicArray_b2BodySim", !96, i64 0, !5, i64 8, !5, i64 12}
!98 = !{!"p1 _ZTS11b2BodyState", !8, i64 0}
!99 = !{!"b2DynamicArray_b2BodyState", !98, i64 0, !5, i64 8, !5, i64 12}
!100 = !{!"p1 _ZTS10b2JointSim", !8, i64 0}
!101 = !{!"b2DynamicArray_b2JointSim", !100, i64 0, !5, i64 8, !5, i64 12}
!102 = !{!"b2DynamicArray_b2ContactSim", !70, i64 0, !5, i64 8, !5, i64 12}
!103 = !{!"p1 _ZTS11b2IslandSim", !8, i64 0}
!104 = !{!"b2DynamicArray_b2IslandSim", !103, i64 0, !5, i64 8, !5, i64 12}
!105 = !{!"b2SolverSet", !97, i64 0, !99, i64 16, !101, i64 32, !102, i64 48, !104, i64 64, !5, i64 80}
!106 = !{!66, !5, i64 24}
!107 = !{!66, !5, i64 56}
!108 = !{!"b2ContactEdge", !5, i64 0, !5, i64 4, !5, i64 8}
!109 = !{!108, !5, i64 0}
!110 = !{!108, !5, i64 4}
!111 = !{!93, !5, i64 16}
!112 = !{!108, !5, i64 8}
!113 = !{!93, !5, i64 20}
!114 = !{!"b2Rot", !56, i64 0, !56, i64 4}
!115 = !{!"b2Transform", !57, i64 0, !114, i64 8}
!116 = !{!"b2Manifold", !57, i64 0, !56, i64 8, !4, i64 12, !5, i64 108}
!117 = !{!"b2SimplexCache", !58, i64 0, !4, i64 2, !4, i64 5}
!118 = !{!"b2ContactSim", !5, i64 0, !114, i64 4, !114, i64 12, !115, i64 20, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !116, i64 68, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !5, i64 196, !117, i64 200}
!119 = !{!118, !5, i64 0}
!120 = !{!64, !8, i64 2488}
!121 = !{!80, !56, i64 24}
!122 = !{!80, !55, i64 40}
!123 = !{!118, !56, i64 180}
!124 = !{!64, !8, i64 2496}
!125 = !{!80, !56, i64 28}
!126 = !{!118, !56, i64 184}
!127 = !{!118, !56, i64 192}
!128 = !{!118, !5, i64 196}
!129 = !{!64, !58, i64 2736}
!130 = !{!"b2ShapeId", !5, i64 0, !58, i64 4, !58, i64 6}
!131 = !{!130, !5, i64 0}
!132 = !{!130, !58, i64 4}
!133 = !{!130, !58, i64 6}
!134 = !{!80, !5, i64 4}
!135 = !{!93, !5, i64 8}
!136 = !{!64, !5, i64 2048}
!137 = !{!64, !5, i64 2052}
!138 = !{!105, !5, i64 56}
end_hunk_0
