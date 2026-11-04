Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mapperMatch?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@Map_MappingSetPiArrivalTimes:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !51
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ad ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 108 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !70
  %i.ak = fadd float %i.af, %i.ah                 ; 2 uses
  store float %i.ak, ptr %i.ag, align 4, !tbaa !71
  %i.al = load float, ptr %i.ae, align 4, !tbaa !9
  %i.am = fadd float %i.al, %i.aj                 ; 2 uses
  store float %i.am, ptr %i.ai, align 8, !tbaa !70
  %i.an = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.am, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.thread45, %bb.f
  %i.aq = phi float [ %i.an, %bb.f ], [ 0.000000e+00, %.thread45 ]
  %i.ar = phi <2 x float> [ %i.ap, %bb.f ], [ %i.aa, %.thread45 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 116 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !48
  %i.av = fadd float %i.aq, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !48
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = load <2 x float>, ptr %i.ax, align 8, !tbaa !9
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fadd <2 x float> %i.ar, %i.az           ; 3 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bb, ptr %i.as, align 8, !tbaa !9
  %i.bc = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bd = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.be = fcmp ogt float %i.bd, %i.bc
  %. = select i1 %i.be, float %i.bd, float %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store float %., ptr %i.bf, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !66
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @Map_TimeMatchWithInverter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load <2 x float>, ptr %i.a, align 8, !tbaa !9
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = load <2 x float>, ptr %i.d, align 8, !tbaa !9
  %i.h = fadd <2 x float> %i.f, %i.g              ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.k = fcmp ogt float %i.i, %i.j
  %i.l = select i1 %i.k, float %i.i, float %i.j
  ret float %i.l
}

; Function Attrs: nounwind uwtable
define void @Map_NodeTryDroppingOnePhase(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40   ; 7 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.o = load float, ptr %i.n, align 4, !tbaa !79
  %i.p = load float, ptr %i.m, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = load <2 x float>, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.s = load <2 x float>, ptr %i.q, align 8, !tbaa !9 ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.w = fadd <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.p, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %i.aa = fadd <2 x float> %i.y, %i.z             ; 2 uses
  %i.ab = fcmp ogt <2 x float> %i.aa, %i.w
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.aa, <2 x float> %i.w ; 4 uses
  %i.ad = icmp eq i32 %i.h, 0
  br i1 %i.ad, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load float, ptr %i.ae, align 8, !tbaa !81
  %i.ag = fcmp olt float %i.af, 1.000000e+09
  br i1 %i.ag, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !25 ; 2 uses
  %i.al = extractelement <2 x float> %i.ac, i64 0
  %i.am = fadd float %i.al, %i.ak
  %i.an = fcmp ogt float %i.ai, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !42
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !29
  %i.aq = extractelement <2 x float> %i.ac, i64 1
  %i.ar = fadd float %i.aq, %i.ak
  %i.as = fcmp ogt float %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.d, align 8, !tbaa !42
  br label %bb.ab

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %i.h, label %bb.o [
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ba = load float, ptr %i.az, align 4, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.be = load float, ptr %i.bd, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !48
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> splat (float 3.000000e+00), <2 x float> %i.ac)
  %i.bk = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fadd <2 x float> %i.bj, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.ba, i64 1
  %i.bp = fcmp ogt <2 x float> %i.bo, %i.bm
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.br = load float, ptr %i.bq, align 4, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !48
  %i.bw = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fadd <2 x float> %i.ac, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.br, i64 1
  %i.cb = fcmp ogt <2 x float> %i.ca, %i.by
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.cc = phi <2 x i1> [ %i.bp, %bb.m ], [ %i.cb, %bb.n ], [ zeroinitializer, %bb.l ]
  %2 = freeze <2 x i1> %i.cc                      ; 3 uses
  %i.cd = extractelement <2 x i1> %2, i64 1
  %3 = bitcast <2 x i1> %2 to i2
  %or.cond.not = icmp eq i2 %3, 0
  br i1 %or.cond.not, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %4 = bitcast <2 x i1> %2 to i2
  %or.cond3 = icmp eq i2 %4, -1
  br i1 %or.cond3, label %.split, label %bb.q

.split:                                           ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !30
  %i.ci = fcmp uge float %i.cf, %i.ch
  br i1 %i.ci, label %bb.w, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.cd, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.split, %bb.q
  %i.cj = icmp sgt i32 %i.h, 1
  %i.ck = icmp sgt i32 %i.ax, 0
  %or.cond69 = and i1 %i.cj, %i.ck
  br i1 %or.cond69, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.cn = tail call float @Map_CutDeref(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef %i.cm) #10 ; 0 uses
  %.pre = load i32, ptr %i.g, align 4, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.co = phi i32 [ %.pre, %bb.s ], [ %i.h, %bb.r ]
  store ptr null, ptr %i.d, align 8, !tbaa !42
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.cq = load i32, ptr %i.at, align 8, !tbaa !37
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !32
  %i.cv = tail call float @Map_CutRef(ptr noundef %i.cs, i32 noundef 0, i32 noundef %i.cu) #10 ; 0 uses
  br label %bb.ab

bb.w:                                             ; preds = %.split, %bb.q
  %i.cw = icmp sgt i32 %i.h, 1
  %i.cx = icmp sgt i32 %i.au, 0
  %or.cond70 = and i1 %i.cw, %i.cx
  br i1 %or.cond70, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !32
  %i.da = tail call float @Map_CutDeref(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %i.cz) #10 ; 0 uses
  %.pre71 = load i32, ptr %i.g, align 4, !tbaa !40
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.db = phi i32 [ %.pre71, %bb.x ], [ %i.h, %bb.w ]
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dd = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !32
  %i.di = tail call float @Map_CutRef(ptr noundef %i.df, i32 noundef 1, i32 noundef %i.dh) #10 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.aa, %bb.z, %bb.y, %bb.o, %bb.j, %bb.k, %bb.g, %bb.i, %bb.h, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Map_NodeTransferArrivalTimes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %.not42 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  br i1 %.not42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !50
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !9
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = load <2 x float>, ptr %i.k, align 8, !tbaa !9
  %i.p = fadd <2 x float> %i.n, %i.o              ; 3 uses
  store <2 x float> %i.p, ptr %i.l, align 4, !tbaa !9
  %i.q = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.r = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.s = fcmp ogt float %i.q, %i.r
  %. = select i1 %i.s, float %i.q, float %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %., ptr %i.t, align 4, !tbaa !48
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load <2 x float>, ptr %i.v, align 4, !tbaa !9
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = load <2 x float>, ptr %i.z, align 8, !tbaa !9
  %i.ad = fadd <2 x float> %i.ab, %i.ac           ; 3 uses
  store <2 x float> %i.ad, ptr %i.u, align 8, !tbaa !9
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt float %i.ae, %i.af
  %.43 = select i1 %i.ag, float %i.ae, float %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %.43, ptr %i.ah, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Map_MappingMatches(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @Map_MappingSetPiArrivalTimes(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ]
  switch i32 %i.d, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @Map_MappingEstimateRefsInit(ptr noundef nonnull %0) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @Map_MappingEstimateRefs(ptr noundef nonnull %0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !88
  %i.j = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.e, i32 noundef %i.i) #10 ; 6 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !86   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !88
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.not.i47 = icmp eq ptr %i.j, null
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %Extra_ProgressBarUpdate.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Extra_ProgressBarUpdate.exit ] ; 4 uses
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ %i.ch, %Extra_ProgressBarUpdate.exit ]
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 21 uses
  %i.t = tail call i32 @Map_NodeIsBuf(ptr noundef %i.s) #10
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
end_hunk_0
