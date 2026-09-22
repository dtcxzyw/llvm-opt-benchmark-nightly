Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshBuilder?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv726
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !29
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store i32 %i.vn, ptr %i.vo, align 4, !tbaa !91
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.vp = add nsw i32 %.4634, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.az
  %.5 = phi i32 [ %i.vp, %bb.az ], [ %.4634, %bb.aw ]
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %exitcond730.not = icmp eq i64 %indvars.iv.next727, %wide.trip.count729
  br i1 %exitcond730.not, label %._crit_edge638, label %bb.aw

bb.bb:                                            ; preds = %bb.g, %._crit_edge638, %bb.ae, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.ae ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ true, %._crit_edge638 ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @_Z6dtFreePv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL12createBVTreeP21dtNavMeshCreateParamsP8dtBVNodei(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !39
  %i.d = fdiv float 1.000000e+00, %i.c            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 4
  %i.i = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.h, i32 noundef 1) #11 ; 4 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !21   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.lr.ph143.split.us, label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = load i32, ptr %i.n, align 4, !tbaa !19   ; 3 uses
  %factor.op.mul = shl i32 %i.q, 1
  %i.r = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.s = icmp sgt i32 %i.q, 1
  %i.t = load <2 x float>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %wide.trip.count166 = zext nneg i32 %i.j to i64
  %wide.trip.count161 = zext nneg i32 %i.q to i64
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge139.us, %.lr.ph143.split.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge139.us ], [ 0, %.lr.ph143.split.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv163 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = trunc nuw nsw i64 %indvars.iv163 to i32  ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !43
  %.reass = mul i32 %factor.op.mul, %i.y
  %i.z = sext i32 %.reass to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.z ; 4 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !26
  %i.ac = zext i16 %i.ab to i64
  %.idx.us = mul nuw nsw i64 %i.ac, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.us
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !26 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 2 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !26
  store i16 %i.ae, ptr %i.w, align 4, !tbaa !26
  %i.ag = load i16, ptr %i.aa, align 2, !tbaa !26
  %i.ah = zext i16 %i.ag to i64
  %.idx112.us = mul nuw nsw i64 %i.ah, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx112.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !26 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store i16 %i.ak, ptr %i.al, align 4, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 3 uses
  store i16 %i.ak, ptr %i.am, align 2, !tbaa !26
  %i.an = load i16, ptr %i.aa, align 2, !tbaa !26
  %i.ao = zext i16 %i.an to i64
  %.idx113.us = mul nuw nsw i64 %i.ao, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx113.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !26 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 10 ; 2 uses
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i16 %i.ar, ptr %i.at, align 4, !tbaa !26
  br i1 %i.s, label %.lr.ph138.us, label %._crit_edge139.us

.lr.ph138.us:                                     ; preds = %bb.b, %bb.o
  %i.au = phi i16 [ %i.bv, %bb.o ], [ %i.ar, %bb.b ] ; 2 uses
  %i.av = phi i16 [ %i.bt, %bb.o ], [ %i.ak, %bb.b ] ; 3 uses
  %i.aw = phi i16 [ %i.br, %bb.o ], [ %i.ae, %bb.b ] ; 2 uses
  %i.ax = phi i16 [ %i.bp, %bb.o ], [ %i.ar, %bb.b ] ; 2 uses
  %i.ay = phi i16 [ %i.bn, %bb.o ], [ %i.ak, %bb.b ] ; 3 uses
  %i.az = phi i16 [ %i.bl, %bb.o ], [ %i.ae, %bb.b ] ; 2 uses
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.o ], [ 1, %bb.b ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv158
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !26 ; 2 uses
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %._crit_edge139.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph138.us
  %i.bd = zext i16 %i.bb to i64
  %.idx123.us = mul nuw nsw i64 %i.bd, 6
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx123.us ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !26 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !26 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !26 ; 6 uses
  %i.bk = icmp ult i16 %i.bf, %i.az
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 %i.bf, ptr %i.w, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bl = phi i16 [ %i.bf, %bb.d ], [ %i.az, %bb.c ]
  %i.bm = icmp ult i16 %i.bh, %i.ay
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 %i.bh, ptr %i.am, align 2, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bn = phi i16 [ %i.bh, %bb.f ], [ %i.ay, %bb.e ] ; 2 uses
  %i.bo = icmp ult i16 %i.bj, %i.ax
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 %i.bj, ptr %i.at, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bp = phi i16 [ %i.bj, %bb.h ], [ %i.ax, %bb.g ]
  %i.bq = icmp ugt i16 %i.bf, %i.aw
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.bf, ptr %i.af, align 2, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = phi i16 [ %i.bf, %bb.j ], [ %i.aw, %bb.i ]
  %i.bs = icmp ugt i16 %i.bh, %i.av
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.bh, ptr %i.al, align 4, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bt = phi i16 [ %i.bh, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %i.bu = icmp ugt i16 %i.bj, %i.au
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.bj, ptr %i.as, align 2, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = phi i16 [ %i.bj, %bb.n ], [ %i.au, %bb.m ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge139.us, label %.lr.ph138.us

._crit_edge139.us:                                ; preds = %bb.o, %.lr.ph138.us, %bb.b
  %i.bw = phi i16 [ %i.ak, %bb.b ], [ %i.bt, %bb.o ], [ %i.av, %.lr.ph138.us ]
  %i.bx = phi i16 [ %i.ak, %bb.b ], [ %i.bn, %bb.o ], [ %i.ay, %.lr.ph138.us ]
  %i.by = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %i.bz = insertelement <2 x i16> %i.by, i16 %i.bx, i64 1
  %i.ca = uitofp <2 x i16> %i.bz to <2 x float>
  %i.cb = fmul <2 x float> %i.u, %i.ca
  %i.cc = fdiv <2 x float> %i.cb, %i.v            ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 1
  %i.ce = tail call noundef float @llvm.floor.f32(float %i.cd)
  %i.cf = fptoui float %i.ce to i16
  store i16 %i.cf, ptr %i.am, align 2, !tbaa !26
  %i.cg = extractelement <2 x float> %i.cc, i64 0
  %i.ch = tail call noundef float @llvm.ceil.f32(float %i.cg)
  %i.ci = fptoui float %i.ch to i16
  store i16 %i.ci, ptr %i.al, align 4, !tbaa !26
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge144, label %bb.b

.lr.ph143.split:                                  ; preds = %.lr.ph143
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !23
  %i.cm = load <3 x float>, ptr %i.cj, align 4, !tbaa !24 ; 2 uses
  %i.cn = shufflevector <3 x float> %i.cm, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %wide.trip.count156 = zext nneg i32 %i.j to i64
  %i.co = insertelement <4 x float> poison, float %i.d, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <3 x float> %i.cm, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  br label %bb.p

._crit_edge144:                                   ; preds = %._crit_edge, %._crit_edge139.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call fastcc void @_ZL9subdivideP6BVItemiiiRiP8dtBVNode(ptr noundef %i.i, i32 noundef 0, i32 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %1)
  call void @_Z6dtFreePv(ptr noundef %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.p:                                             ; preds = %.lr.ph143.split, %._crit_edge
  %indvars.iv153 = phi i64 [ 0, %.lr.ph143.split ], [ %indvars.iv.next154, %._crit_edge ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv153 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = trunc nuw nsw i64 %indvars.iv153 to i32
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !43
  %.idx = shl nuw nsw i64 %indvars.iv153, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !29 ; 2 uses
  %i.da = mul nsw i32 %i.cx, 3
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.db ; 2 uses
  %i.dd = load <3 x float>, ptr %i.dc, align 4, !tbaa !24 ; 2 uses
  %i.de = shufflevector <3 x float> %i.dd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.df = icmp sgt i32 %i.cz, 1
  %i.dg = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.cz to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.p
  %i.dh = phi <4 x float> [ %i.de, %bb.p ], [ %i.ee, %.lr.ph ]
  %i.di = phi <2 x float> [ %i.dg, %bb.p ], [ %i.eh, %.lr.ph ]
  %i.dj = fsub <4 x float> %i.dh, %i.cn
  %i.dk = fmul <4 x float> %i.cp, %i.dj
  %i.dl = fptosi <4 x float> %i.dk to <4 x i32>
  %i.dm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dl, <4 x i32> zeroinitializer)
  %i.dn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dm, <4 x i32> splat (i32 65535))
  %i.do = trunc nuw <4 x i32> %i.dn to <4 x i16>
  store <4 x i16> %i.do, ptr %i.ct, align 4, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dq = fsub <2 x float> %i.di, %i.cs
  %i.dr = fmul <2 x float> %i.cr, %i.dq
  %i.ds = fptosi <2 x float> %i.dr to <2 x i32>
  %i.dt = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ds, <2 x i32> zeroinitializer)
  %i.du = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.dt, <2 x i32> splat (i32 65535))
  %i.dv = trunc nuw <2 x i32> %i.du to <2 x i16>
  store <2 x i16> %i.dv, ptr %i.dp, align 4, !tbaa !26
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge144, label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.dw = phi <4 x float> [ %i.de, %.lr.ph.preheader ], [ %i.ee, %.lr.ph ] ; 3 uses
  %i.dx = phi <2 x float> [ %i.dg, %.lr.ph.preheader ], [ %i.eh, %.lr.ph ] ; 2 uses
  %.idx183 = mul nuw nsw i64 %indvars.iv, 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx183
  %i.dz = load <3 x float>, ptr %i.dy, align 4, !tbaa !24 ; 2 uses
  %i.ea = shufflevector <3 x float> %i.dz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.eb = fcmp olt <4 x float> %i.dw, %i.ea
  %i.ec = fcmp ogt <4 x float> %i.dw, %i.ea
  %i.ed = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ee = select <4 x i1> %i.ed, <4 x float> %i.dw, <4 x float> %i.ea ; 2 uses
  %i.ef = shufflevector <3 x float> %i.dz, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eg = fcmp ogt <2 x float> %i.dx, %i.ef
  %i.eh = select <2 x i1> %i.eg, <2 x float> %i.dx, <2 x float> %i.ef ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z25dtNavMeshHeaderSwapEndianPhi(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 5 uses
  %i.b = trunc i32 %i.a to i8
  %i.c = lshr i32 %i.a, 24
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = lshr i32 %i.a, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = lshr i32 %i.a, 16
  %i.h = trunc i32 %i.g to i8
  switch i32 %i.a, label %.thread [
    i32 1145979222, label %bb.b
    i32 1447120452, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %.not31 = icmp eq i32 %i.j, 7
  br i1 %.not31, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %.not33 = icmp eq i32 %i.l, 117440512
  br i1 %.not33, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.in = phi i32 [ 117440512, %bb.c ], [ 7, %bb.b ] ; 2 uses
  %i.m = trunc i32 %.in.in to i8
  %.in = lshr i32 %.in.in, 24
  %i.n = trunc nuw nsw i32 %.in to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.d, ptr %0, align 4, !tbaa !27
  store i8 %i.b, ptr %i.o, align 1, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.h, ptr %i.p, align 1, !tbaa !27
  store i8 %i.f, ptr %i.q, align 2, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.n, ptr %i.r, align 4, !tbaa !27
  store i8 %i.m, ptr %i.s, align 1, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %i.t, align 1, !tbaa !27
  store i8 0, ptr %i.u, align 2, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load <16 x i8>, ptr %i.v, align 4, !tbaa !27
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.x, ptr %i.v, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load <16 x i8>, ptr %i.y, align 4, !tbaa !27
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.aa, ptr %i.y, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 4, !tbaa !27
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ad, ptr %i.ab, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = load <16 x i8>, ptr %i.ae, align 4, !tbaa !27
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ag, ptr %i.ae, align 4, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 4, !tbaa !27
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.aj, ptr %i.ah, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.al = load <8 x i8>, ptr %i.ak, align 4, !tbaa !27
  %i.am = shufflevector <8 x i8> %i.al, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.am, ptr %i.ak, align 4, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load <4 x i8>, ptr %i.an, align 4, !tbaa !27
  %i.ap = shufflevector <4 x i8> %i.ao, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ap, ptr %i.an, align 4, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z23dtNavMeshDataSwapEndianPhi(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !31
  %.not = icmp eq i32 %i.a, 1145979222
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %.not82 = icmp eq i32 %i.c, 7
  br i1 %.not82, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 3 uses
  %i.f = mul i32 %i.e, 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33   ; 3 uses
  %i.i = shl i32 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
end_hunk_0
