Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@CVodeSensInit:bb.a
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.z) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph68, label %bb.q, !llvm.loop !135

.lr.ph68:                                         ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i64 0, ptr %i.ab, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i64 0, ptr %i.ac, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i64 0, ptr %i.ad, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store i64 0, ptr %i.ae, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %wide.trip.count75 = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store <2 x i32> %vec.ind, ptr %i.aj, align 4, !tbaa !37
  store <2 x i32> %step.add, ptr %i.ak, align 4, !tbaa !37
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !49
  store <2 x double> splat (double 1.000000e+00), ptr %i.am, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge69, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph68, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %scalar.ph ], [ %indvars.iv71.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv71
  %i.ap = trunc nuw nsw i64 %indvars.iv71 to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !37
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv71
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !49
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge69, label %scalar.ph, !llvm.loop !143

._crit_edge69:                                    ; preds = %scalar.ph, %middle.block
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.ar, align 8, !tbaa !144
  store i32 1, ptr %i.b, align 8, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge69, %bb.p, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.058 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.l ], [ 0, %._crit_edge69 ], [ -20, %bb.p ]
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cvSensAllocVectors(ptr nofree noundef nonnull initializes((712, 720)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 33 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !130
  %i.c = tail call ptr @N_VCloneVectorArray(i32 noundef %i.b, ptr noundef %1) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !145
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !130
  %i.g = tail call ptr @N_VCloneVectorArray(i32 noundef %i.f, ptr noundef %1) #12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !146
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.k = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.j, i32 noundef %i.k) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 4, !tbaa !130
  %i.m = tail call ptr @N_VCloneVectorArray(i32 noundef %i.l, ptr noundef %1) #12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 6 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !147
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.q = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.p, i32 noundef %i.q) #12
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.s = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.r, i32 noundef %i.s) #12
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.a, align 4, !tbaa !130
  %i.u = tail call ptr @N_VCloneVectorArray(i32 noundef %i.t, ptr noundef %1) #12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !148
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.y = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.x, i32 noundef %i.y) #12
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.z, i32 noundef %i.aa) #12
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ab, i32 noundef %i.ac) #12
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !130
  %i.ae = tail call ptr @N_VCloneVectorArray(i32 noundef %i.ad, ptr noundef %1) #12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !149
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not129 = icmp slt i32 %i.ai, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.al = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ak, i32 noundef %i.al) #12
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.an = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.am, i32 noundef %i.an) #12
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ao, i32 noundef %i.ap) #12
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.aq, i32 noundef %i.ar) #12
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv150 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next151, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !130
  %i.at = tail call ptr @N_VCloneVectorArray(i32 noundef %i.as, ptr noundef %1) #12 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8, !tbaa !134
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.aw, i32 noundef %i.ax) #12
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.az = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ay, i32 noundef %i.az) #12
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ba, i32 noundef %i.bb) #12
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bc, i32 noundef %i.bd) #12
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.be, i32 noundef %i.bf) #12
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %indvars.iv150 to i64
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %indvars.iv147 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next148, %.lr.ph133 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv147
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !134
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bh, i32 noundef %i.bi) #12
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph133, !llvm.loop !150

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bj = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bk
  %indvars.iv.next151 = add nuw nsw i32 %indvars.iv150, 1
  br i1 %.not.not, label %bb.j, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %.lcssa = phi i32 [ %i.ai, %.preheader ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !130 ; 4 uses
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %i.bo = shl nsw i64 %i.bn, 3
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #14 ; 2 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !48
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !145
  tail call void @N_VDestroyVectorArray(ptr noundef %i.br, i32 noundef %i.bm) #12
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bs, i32 noundef %i.bt) #12
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bu, i32 noundef %i.bv) #12
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bw, i32 noundef %i.bx) #12
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.by, i32 noundef %i.bz) #12
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !27
  %.not122139 = icmp slt i32 %i.ca, 0
  br i1 %.not122139, label %.loopexit, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph142, %bb.n
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next157, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv156
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !134
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cd, i32 noundef %i.ce) #12
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %i.cf = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.cg = sext i32 %i.cf to i64
  %.not122.not = icmp slt i64 %indvars.iv156, %i.cg
  br i1 %.not122.not, label %bb.n, label %.loopexit, !llvm.loop !152

bb.o:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ci = shl nsw i64 %i.bn, 2
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #14 ; 2 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !50
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !145
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cl, i32 noundef %i.bm) #12
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cm, i32 noundef %i.cn) #12
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.co, i32 noundef %i.cp) #12
  %i.cq = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cq, i32 noundef %i.cr) #12
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !149
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cs, i32 noundef %i.ct) #12
  %i.cu = load i32, ptr %i.ah, align 8, !tbaa !27
  %.not121134 = icmp slt i32 %i.cu, 0
  br i1 %.not121134, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph137, %bb.q
  %indvars.iv153 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next154, %bb.q ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv153
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !134
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !130
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cx, i32 noundef %i.cy) #12
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %i.cz = load i32, ptr %i.ah, align 8, !tbaa !27
  %i.da = sext i32 %i.cz to i64
  %.not121.not = icmp slt i64 %indvars.iv153, %i.da
  br i1 %.not121.not, label %bb.q, label %._crit_edge138, !llvm.loop !153

._crit_edge138:                                   ; preds = %bb.q, %bb.p
  %i.db = load ptr, ptr %i.bl, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.db) #12
  store ptr null, ptr %i.bl, align 8, !tbaa !48
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.dc = add nsw i32 %.lcssa, 6
  %i.dd = mul nsw i32 %i.bm, %i.dc
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !76
  %i.dh = mul nsw i64 %i.dg, %i.de
  %i.di = add nsw i64 %i.dh, %i.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !42
  %i.dl = add nsw i64 %i.di, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !77
  %i.do = mul nsw i64 %i.dn, %i.de
  %i.dp = add nsw i64 %i.do, %i.bn
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !43
  %i.ds = add nsw i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 %.lcssa, ptr %i.dt, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133, %bb.n, %bb.k, %bb.m, %bb.a, %bb.r, %._crit_edge138, %bb.i, %bb.g, %bb.e, %bb.c
  %.0120 = phi i32 [ 1, %bb.r ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %._crit_edge138 ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %.lr.ph133 ]
  ret i32 %.0120
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @CVodeSensInit1(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !129
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27)
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %1, 1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28)
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %1, ptr %i.e, align 4, !tbaa !130
  %i.f = add i32 %2, -4
  %or.cond3 = icmp ult i32 %i.f, -3
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30)
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %i.g, align 8, !tbaa !131
  %i.h = icmp eq ptr %4, null
  br i1 %i.h, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31)
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 1, ptr %i.i, align 4, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.j, align 8, !tbaa !32
  %i.k = icmp eq ptr %3, null
  br i1 %i.k, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink118 = phi i32 [ 0, %bb.l ], [ 1, %bb.k ]
  %.sink117 = phi ptr [ %3, %bb.l ], [ @cvSensRhs1InternalDQ, %bb.k ]
  %.sink = phi ptr [ %i.m, %bb.l ], [ %0, %bb.k ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.sink118, ptr %i.n, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink117, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sink, ptr %i.p, align 8, !tbaa !132
  %i.q = icmp eq i32 %2, 3                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
end_hunk_0
begin_hunk_1_@cvAdjustOrder:bb.a
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !144
  %.not99.i = icmp eq i32 %i.ab, 0
  br i1 %.not99.i, label %cvAdjustAdams.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !130
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph133.i, label %cvAdjustAdams.exit

.lr.ph133.i:                                      ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph133.i
  %indvars.iv160.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next161.i, %bb.g ] ; 2 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !85
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv160.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.al) #12
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !130
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next161.i, %i.an
  br i1 %i.ao, label %bb.g, label %cvAdjustAdams.exit, !llvm.loop !416

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader108.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !49
  %.not94114.i = icmp slt i32 %i.b, 3
  br i1 %.not94114.i, label %.loopexit104.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.at = load double, ptr %i.as, align 8, !tbaa !232
  %i.au = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  br label %bb.h

.loopexit107.i:                                   ; preds = %scalar.ph111, %scalar.ph111.1, %scalar.ph111.2, %middle.block130
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader106.i, label %bb.h, !llvm.loop !417

.preheader106.i:                                  ; preds = %.loopexit107.i
  %i.av = uitofp nneg i32 %i.b to double          ; 5 uses
  %.pre.i = load double, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.ax = add nsw i32 %i.b, -3
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %.epil.preheader, label %.preheader106.i.new

.preheader106.i.new:                              ; preds = %.preheader106.i
  %unroll_iter = and i64 %i.aw, -4
  br label %bb.j

bb.h:                                             ; preds = %.loopexit107.i, %.lr.ph118.i
  %indvars.iv140.i = phi i64 [ 1, %.lr.ph118.i ], [ %indvars.iv.next141.i, %.loopexit107.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph118.i ], [ %indvars.iv.next.i, %.loopexit107.i ] ; 7 uses
  %.0116.i = phi double [ 0.000000e+00, %.lr.ph118.i ], [ %i.bb, %.loopexit107.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv140.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !49
  %i.bb = fadd double %.0116.i, %i.ba             ; 2 uses
  %i.bc = fdiv double %i.bb, %i.at                ; 4 uses
  %min.iters.check112 = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %min.iters.check112, label %scalar.ph111, label %vector.ph113

vector.ph113:                                     ; preds = %bb.h
  %n.vec114 = and i64 %indvars.iv.i, 9223372036854775804 ; 2 uses
  %i.bd = and i64 %indvars.iv.i, 3
  %broadcast.splatinsert115 = insertelement <2 x double> poison, double %i.bc, i64 0 ; 2 uses
  %i.be = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next129, %vector.body117 ] ; 2 uses
  %i.bg = sub i64 %indvars.iv.i, %index118
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -24 ; 2 uses
  %wide.load119 = load <2 x double>, ptr %i.bi, align 8, !tbaa !49
  %wide.load120 = load <2 x double>, ptr %i.bj, align 8, !tbaa !49
  %i.bk = getelementptr i8, ptr %i.bh, i64 -16
  %i.bl = getelementptr i8, ptr %i.bh, i64 -32
  %wide.load123 = load <2 x double>, ptr %i.bk, align 8, !tbaa !49
  %wide.load124 = load <2 x double>, ptr %i.bl, align 8, !tbaa !49
  %reverse127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load119, <2 x double> %i.be, <2 x double> %wide.load123)
  %reverse128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load120, <2 x double> %i.bf, <2 x double> %wide.load124)
  store <2 x double> %reverse127, ptr %i.bi, align 8, !tbaa !49
  store <2 x double> %reverse128, ptr %i.bj, align 8, !tbaa !49
  %index.next129 = add nuw i64 %index118, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next129, %n.vec114
  br i1 %i.bm, label %middle.block130, label %vector.body117, !llvm.loop !418

middle.block130:                                  ; preds = %vector.body117
  %cmp.n131 = icmp eq i64 %indvars.iv.i, %n.vec114
  br i1 %cmp.n131, label %.loopexit107.i, label %scalar.ph111

scalar.ph111:                                     ; preds = %middle.block130, %bb.h
  %indvars.iv137.i.ph = phi i64 [ %indvars.iv.i, %bb.h ], [ %i.bd, %middle.block130 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv137.i.ph ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !49
  %i.bp = getelementptr i8, ptr %i.bn, i64 -8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !49
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bc, double %i.bq)
  store double %i.br, ptr %i.bn, align 8, !tbaa !49
  %i.bs = icmp samesign ugt i64 %indvars.iv137.i.ph, 1
  br i1 %i.bs, label %scalar.ph111.1, label %.loopexit107.i

scalar.ph111.1:                                   ; preds = %scalar.ph111
  %i.bt = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv137.i.ph ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8     ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !49
  %i.bw = getelementptr i8, ptr %i.bt, i64 -16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !49
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bc, double %i.bx)
  store double %i.by, ptr %i.bu, align 8, !tbaa !49
  %i.bz = icmp eq i64 %indvars.iv137.i.ph, 3
  br i1 %i.bz, label %scalar.ph111.2, label %.loopexit107.i

scalar.ph111.2:                                   ; preds = %scalar.ph111.1
  %i.ca = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv137.i.ph ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -16    ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !49
  %i.cd = getelementptr i8, ptr %i.ca, i64 -24
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !49
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.bc, double %i.ce)
  store double %i.cf, ptr %i.cb, align 8, !tbaa !49
  br label %.loopexit107.i

.lr.ph124.i.unr-lcssa:                            ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph124.i.unr-lcssa, %.preheader106.i
  %.epil.init = phi double [ %.pre.i, %.preheader106.i ], [ %i.dg, %.lr.ph124.i.unr-lcssa ]
  %indvars.iv143.i.epil.init = phi i64 [ 1, %.preheader106.i ], [ %indvars.iv.next144.i.3, %.lr.ph124.i.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %i.cg = phi double [ %.epil.init, %.epil.preheader ], [ %i.ck, %bb.i ]
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv143.i.epil.init, %.epil.preheader ], [ %indvars.iv.next144.i.epil, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1 ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next144.i.epil to i32
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fdiv double %i.cg, %i.ci
  %i.ck = fmul double %i.cj, %i.av                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.epil
  store double %i.ck, ptr %i.cl, align 8, !tbaa !49
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph124.i, label %bb.i, !llvm.loop !419

.lr.ph124.i:                                      ; preds = %bb.i, %.lr.ph124.i.unr-lcssa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.preheader106.i.new
  %i.cn = phi double [ %.pre.i, %.preheader106.i.new ], [ %i.dg, %bb.j ]
  %indvars.iv143.i = phi i64 [ 1, %.preheader106.i.new ], [ %indvars.iv.next144.i.3, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader106.i.new ], [ %niter.next.3, %bb.j ]
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fdiv double %i.cn, %i.cp
  %i.cr = fmul double %i.cq, %i.av                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !49
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv.next144.i.1 to i32
  %i.cu = uitofp nneg i32 %i.ct to double
  %i.cv = fdiv double %i.cr, %i.cu
  %i.cw = fmul double %i.cv, %i.av                ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.1
  store double %i.cw, ptr %i.cx, align 8, !tbaa !49
  %indvars.iv.next144.i.2 = add nuw nsw i64 %indvars.iv143.i, 3 ; 2 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv.next144.i.2 to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fdiv double %i.cw, %i.cz
  %i.db = fmul double %i.da, %i.av                ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.2
  store double %i.db, ptr %i.dc, align 8, !tbaa !49
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next144.i.3 to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fdiv double %i.db, %i.de
  %i.dg = fmul double %i.df, %i.av                ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next144.i.3
  store double %i.dg, ptr %i.dh, align 8, !tbaa !49
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph124.i.unr-lcssa, label %bb.j, !llvm.loop !420

bb.k:                                             ; preds = %bb.k, %.lr.ph124.i
  %indvars.iv148.i = phi i64 [ 2, %.lr.ph124.i ], [ %indvars.iv.next149.i, %bb.k ] ; 3 uses
  %i.di = phi i32 [ %i.b, %.lr.ph124.i ], [ %i.dr, %bb.k ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv148.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !49
  %i.dl = fneg double %i.dk
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv148.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.dl, ptr noundef %i.do, double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.dq) #12
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !84  ; 5 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next149.i, %i.ds
  br i1 %i.dt, label %bb.k, label %._crit_edge125.i, !llvm.loop !421

._crit_edge125.i:                                 ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !122
  %.not96.i = icmp ne i32 %i.dv, 0
  %i.dw = icmp sgt i32 %i.dr, 2
  %or.cond.i = and i1 %i.dw, %.not96.i
  br i1 %or.cond.i, label %.lr.ph127.i, label %.loopexit104.i

.lr.ph127.i:                                      ; preds = %._crit_edge125.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph127.i
  %indvars.iv151.i = phi i64 [ 2, %.lr.ph127.i ], [ %indvars.iv.next152.i, %bb.l ] ; 3 uses
  %i.dy = phi i32 [ %i.dr, %.lr.ph127.i ], [ %i.eh, %bb.l ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv151.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !49
  %i.eb = fneg double %i.ea
  %i.ec = sext i32 %i.dy to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv151.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.eb, ptr noundef %i.ee, double noundef 1.000000e+00, ptr noundef %i.eg, ptr noundef %i.eg) #12
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.eh = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next152.i, %i.ei
  br i1 %i.ej, label %bb.l, label %.loopexit104.i, !llvm.loop !422

.loopexit104.i:                                   ; preds = %bb.l, %._crit_edge.i, %._crit_edge125.i
  %i.ek = phi i32 [ %i.dr, %._crit_edge125.i ], [ %i.b, %._crit_edge.i ], [ %i.eh, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.em = load i32, ptr %i.el, align 8, !tbaa !144
  %.not97.i = icmp eq i32 %i.em, 0
  br i1 %.not97.i, label %cvAdjustAdams.exit, label %.preheader101.i

.preheader101.i:                                  ; preds = %.loopexit104.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !130 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.preheader100.lr.ph.i, label %cvAdjustAdams.exit

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.er = icmp sgt i32 %i.ek, 2
  br i1 %i.er, label %.preheader100.i, label %cvAdjustAdams.exit

.preheader100.i:                                  ; preds = %.preheader100.lr.ph.i, %._crit_edge130.i
  %i.es = phi i32 [ %i.fl, %._crit_edge130.i ], [ %i.eo, %.preheader100.lr.ph.i ]
  %i.et = phi i32 [ %i.fm, %._crit_edge130.i ], [ %i.ek, %.preheader100.lr.ph.i ] ; 3 uses
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %._crit_edge130.i ], [ 0, %.preheader100.lr.ph.i ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 2
  br i1 %i.eu, label %.lr.ph129.i, label %._crit_edge130.i

.lr.ph129.i:                                      ; preds = %.preheader100.i, %.lr.ph129.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.lr.ph129.i ], [ 2, %.preheader100.i ] ; 3 uses
  %i.ev = phi i32 [ %i.fi, %.lr.ph129.i ], [ %i.et, %.preheader100.i ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv154.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !49
  %i.ey = fneg double %i.ex
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !134
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv157.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv154.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !134
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv157.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ey, ptr noundef %i.fd, double noundef 1.000000e+00, ptr noundef %i.fh, ptr noundef %i.fh) #12
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %i.fi = load i32, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next155.i, %i.fj
  br i1 %i.fk, label %.lr.ph129.i, label %._crit_edge130.loopexit.i, !llvm.loop !423

._crit_edge130.loopexit.i:                        ; preds = %.lr.ph129.i
  %.pre163.i = load i32, ptr %i.en, align 4, !tbaa !130
  br label %._crit_edge130.i

._crit_edge130.i:                                 ; preds = %._crit_edge130.loopexit.i, %.preheader100.i
  %i.fl = phi i32 [ %.pre163.i, %._crit_edge130.loopexit.i ], [ %i.es, %.preheader100.i ] ; 2 uses
  %i.fm = phi i32 [ %i.fi, %._crit_edge130.loopexit.i ], [ %i.et, %.preheader100.i ]
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %i.fn = sext i32 %i.fl to i64
  %i.fo = icmp slt i64 %indvars.iv.next158.i, %i.fn
  br i1 %i.fo, label %.preheader100.i, label %cvAdjustAdams.exit, !llvm.loop !424

bb.m:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.n
    i32 -1, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !27 ; 2 uses
  %.not142.i.i = icmp slt i32 %i.fq, 0
  br i1 %.not142.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.fs = add nuw i32 %i.fq, 1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, i8 0, i64 %i.fu, i1 false), !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.n
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 1.000000e+00, ptr %i.fw, align 8, !tbaa !49
  %i.fx = icmp sgt i32 %i.b, 1
  br i1 %i.fx, label %bb.o, label %.loopexit141.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !232 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.lr.ph146.preheader.i.i

.loopexit140.i.i:                                 ; preds = %.lr.ph146.i.i, %middle.block108
  %i.gb = fadd double %.0122151.i.i, %i.go        ; 2 uses
  %i.gc = fdiv double %i.gb, %i.fz                ; 3 uses
  %i.gd = fmul double %.0124149.i.i, %i.gc        ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv.next183.i.i to i32
  %i.gf = uitofp nneg i32 %i.ge to double
  %i.gg = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gf, i64 1
  %i.gi = fdiv <2 x double> splat (double 1.000000e+00), %i.gh ; 2 uses
  %i.gj = fadd <2 x double> %i.gm, %i.gi
  %i.gk = fsub <2 x double> %i.gm, %i.gi
  %i.gl = shufflevector <2 x double> %i.gj, <2 x double> %i.gk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit141.i.i, label %.lr.ph146.preheader.i.i, !llvm.loop !425

.lr.ph146.preheader.i.i:                          ; preds = %.loopexit140.i.i, %bb.o
  %indvars.iv182.i.i = phi i64 [ 1, %bb.o ], [ %indvars.iv.next183.i.i, %.loopexit140.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 3, %bb.o ], [ %indvars.iv.next.i.i, %.loopexit140.i.i ] ; 4 uses
  %.0122151.i.i = phi double [ %i.fz, %bb.o ], [ %i.gb, %.loopexit140.i.i ]
  %.0123150.i.i = phi double [ 1.000000e+00, %bb.o ], [ %i.gc, %.loopexit140.i.i ] ; 2 uses
  %.0124149.i.i = phi double [ 1.000000e+00, %bb.o ], [ %i.gd, %.loopexit140.i.i ]
  %i.gm = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %bb.o ], [ %i.gl, %.loopexit140.i.i ] ; 2 uses
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 6 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next183.i.i
  %i.go = load double, ptr %i.gn, align 8, !tbaa !49
  %min.iters.check90 = icmp samesign ult i64 %indvars.iv182.i.i, 3
  br i1 %min.iters.check90, label %.lr.ph146.i.i.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph146.preheader.i.i
  %n.vec92 = and i64 %indvars.iv.next183.i.i, 9223372036854775804 ; 3 uses
  %i.gp = sub nsw i64 %indvars.iv.i.i, %n.vec92
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %.0123150.i.i, i64 0 ; 2 uses
  %i.gq = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next107, %vector.body95 ] ; 2 uses
  %i.gs = sub i64 %indvars.iv.i.i, %index96
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gs ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -24 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.gu, align 8, !tbaa !49
  %wide.load98 = load <2 x double>, ptr %i.gv, align 8, !tbaa !49
  %i.gw = getelementptr i8, ptr %i.gt, i64 -16
  %i.gx = getelementptr i8, ptr %i.gt, i64 -32
  %wide.load101 = load <2 x double>, ptr %i.gw, align 8, !tbaa !49
  %wide.load102 = load <2 x double>, ptr %i.gx, align 8, !tbaa !49
  %reverse105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load97, <2 x double> %i.gq, <2 x double> %wide.load101)
  %reverse106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load98, <2 x double> %i.gr, <2 x double> %wide.load102)
  store <2 x double> %reverse105, ptr %i.gu, align 8, !tbaa !49
  store <2 x double> %reverse106, ptr %i.gv, align 8, !tbaa !49
  %index.next107 = add nuw i64 %index96, 4        ; 2 uses
  %i.gy = icmp eq i64 %index.next107, %n.vec92
  br i1 %i.gy, label %middle.block108, label %vector.body95, !llvm.loop !426

middle.block108:                                  ; preds = %vector.body95
  %cmp.n109 = icmp eq i64 %indvars.iv.next183.i.i, %n.vec92
  br i1 %cmp.n109, label %.loopexit140.i.i, label %.lr.ph146.i.i.preheader

.lr.ph146.i.i.preheader:                          ; preds = %.lr.ph146.preheader.i.i, %middle.block108
  %indvars.iv179.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph146.preheader.i.i ], [ %i.gp, %middle.block108 ]
  br label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %.lr.ph146.i.i.preheader, %.lr.ph146.i.i
  %indvars.iv179.i.i = phi i64 [ %indvars.iv.next180.i.i, %.lr.ph146.i.i ], [ %indvars.iv179.i.i.ph, %.lr.ph146.i.i.preheader ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv179.i.i ; 3 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !49
  %i.hb = getelementptr i8, ptr %i.gz, i64 -8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !49
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.ha, double %.0123150.i.i, double %i.hc)
  store double %i.hd, ptr %i.gz, align 8, !tbaa !49
  %indvars.iv.next180.i.i = add nsw i64 %indvars.iv179.i.i, -1
  %i.he = icmp sgt i64 %indvars.iv179.i.i, 2
  br i1 %i.he, label %.lr.ph146.i.i, label %.loopexit140.i.i, !llvm.loop !427

.loopexit141.i.i:                                 ; preds = %.loopexit140.i.i, %._crit_edge.i.i
  %.1125.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gd, %.loopexit140.i.i ]
  %i.hf = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gl, %.loopexit140.i.i ] ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 1
  %i.hh = fneg double %i.hg
  %i.hi = extractelement <2 x double> %i.hf, i64 0
  %i.hj = fsub double %i.hh, %i.hi
  %i.hk = fdiv double %i.hj, %.1125.i.i           ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !46
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 8 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.hq, ptr noundef %i.hv) #12
  %i.hw = load i32, ptr %i.a, align 8, !tbaa !84
  %.not130153.i.i = icmp slt i32 %i.hw, 2
  br i1 %.not130153.i.i, label %._crit_edge157.i.i, label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %.loopexit141.i.i, %.lr.ph156.i.i
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %.lr.ph156.i.i ], [ 2, %.loopexit141.i.i ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv185.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !49
  %i.hz = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !46
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv185.i.i
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.hy, ptr noundef %i.ic, double noundef 1.000000e+00, ptr noundef %i.ie, ptr noundef %i.ie) #12
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1
  %i.if = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ig = sext i32 %i.if to i64
  %.not130.not.i.i = icmp slt i64 %indvars.iv185.i.i, %i.ig
  br i1 %.not130.not.i.i, label %.lr.ph156.i.i, label %._crit_edge157.i.i, !llvm.loop !428

._crit_edge157.i.i:                               ; preds = %.lr.ph156.i.i, %.loopexit141.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !122
  %.not131.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not131.i.i, label %.loopexit139.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.ik = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.io = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.in, ptr noundef %i.ir) #12
  %i.is = load i32, ptr %i.a, align 8, !tbaa !84
  %.not132158.i.i = icmp slt i32 %i.is, 2
  br i1 %.not132158.i.i, label %.loopexit139.i.i, label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %bb.p, %.lr.ph161.i.i
  %indvars.iv188.i.i = phi i64 [ %indvars.iv.next189.i.i, %.lr.ph161.i.i ], [ 2, %bb.p ] ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv188.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !49
  %i.iv = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !46
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv188.i.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.iu, ptr noundef %i.iy, double noundef 1.000000e+00, ptr noundef %i.ja, ptr noundef %i.ja) #12
  %indvars.iv.next189.i.i = add nuw nsw i64 %indvars.iv188.i.i, 1
  %i.jb = load i32, ptr %i.a, align 8, !tbaa !84
  %i.jc = sext i32 %i.jb to i64
  %.not132.not.i.i = icmp slt i64 %indvars.iv188.i.i, %i.jc
  br i1 %.not132.not.i.i, label %.lr.ph161.i.i, label %.loopexit139.i.i, !llvm.loop !429

.loopexit139.i.i:                                 ; preds = %.lr.ph161.i.i, %bb.p, %._crit_edge157.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !144
  %.not133.i.i = icmp eq i32 %i.je, 0
  br i1 %.not133.i.i, label %.loopexit138.i.i, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %.loopexit139.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !130
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph168.i.i, label %.loopexit138.i.i

.lr.ph168.i.i:                                    ; preds = %.preheader137.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge166.i.i, %.lr.ph168.i.i
  %indvars.iv194.i.i = phi i64 [ 0, %.lr.ph168.i.i ], [ %indvars.iv.next195.i.i, %._crit_edge166.i.i ] ; 5 uses
  %i.jj = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !134
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv194.i.i
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !134
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv194.i.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.jo, ptr noundef %i.ju) #12
  %i.jv = load i32, ptr %i.a, align 8, !tbaa !84
  %.not136162.i.i = icmp slt i32 %i.jv, 2
  br i1 %.not136162.i.i, label %._crit_edge166.i.i, label %.lr.ph165.i.i

.lr.ph165.i.i:                                    ; preds = %bb.q, %.lr.ph165.i.i
  %indvars.iv191.i.i = phi i64 [ %indvars.iv.next192.i.i, %.lr.ph165.i.i ], [ 2, %bb.q ] ; 4 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv191.i.i
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !49
  %i.jy = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !134
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv194.i.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv191.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !134
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv194.i.i
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.jx, ptr noundef %i.kd, double noundef 1.000000e+00, ptr noundef %i.kh, ptr noundef %i.kh) #12
  %indvars.iv.next192.i.i = add nuw nsw i64 %indvars.iv191.i.i, 1
  %i.ki = load i32, ptr %i.a, align 8, !tbaa !84
  %i.kj = sext i32 %i.ki to i64
  %.not136.not.i.i = icmp slt i64 %indvars.iv191.i.i, %i.kj
  br i1 %.not136.not.i.i, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !430

._crit_edge166.i.i:                               ; preds = %.lr.ph165.i.i, %bb.q
  %indvars.iv.next195.i.i = add nuw nsw i64 %indvars.iv194.i.i, 1 ; 2 uses
  %i.kk = load i32, ptr %i.jf, align 4, !tbaa !130
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i64 %indvars.iv.next195.i.i, %i.kl
  br i1 %i.km, label %bb.q, label %.loopexit138.i.i, !llvm.loop !431

.loopexit138.i.i:                                 ; preds = %._crit_edge166.i.i, %.preheader137.i.i, %.loopexit139.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !186
  %.not134.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not134.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit138.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !130
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph175.i.i, label %cvAdjustAdams.exit

.lr.ph175.i.i:                                    ; preds = %.preheader.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge173.i.i, %.lr.ph175.i.i
  %indvars.iv200.i.i = phi i64 [ 0, %.lr.ph175.i.i ], [ %indvars.iv.next201.i.i, %._crit_edge173.i.i ] ; 5 uses
  %i.kt = load i32, ptr %i.hm, align 8, !tbaa !384
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !134
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv200.i.i
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !46
  %i.kz = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !134
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv200.i.i
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.hk, ptr noundef %i.ky, ptr noundef %i.le) #12
  %i.lf = load i32, ptr %i.a, align 8, !tbaa !84
  %.not135169.i.i = icmp slt i32 %i.lf, 2
  br i1 %.not135169.i.i, label %._crit_edge173.i.i, label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %bb.r, %.lr.ph172.i.i
  %indvars.iv197.i.i = phi i64 [ %indvars.iv.next198.i.i, %.lr.ph172.i.i ], [ 2, %bb.r ] ; 4 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv197.i.i
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !49
  %i.li = load i32, ptr %i.hr, align 8, !tbaa !85
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !134
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv200.i.i
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !46
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv197.i.i
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !134
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv200.i.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.lh, ptr noundef %i.ln, double noundef 1.000000e+00, ptr noundef %i.lr, ptr noundef %i.lr) #12
  %indvars.iv.next198.i.i = add nuw nsw i64 %indvars.iv197.i.i, 1
  %i.ls = load i32, ptr %i.a, align 8, !tbaa !84
  %i.lt = sext i32 %i.ls to i64
  %.not135.not.i.i = icmp slt i64 %indvars.iv197.i.i, %i.lt
  br i1 %.not135.not.i.i, label %.lr.ph172.i.i, label %._crit_edge173.i.i, !llvm.loop !432

end_hunk_1
begin_hunk_2_@cvRestore:bb.a
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %i.k = load i32, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.l = sext i32 %i.k to i64
  %.not.not = icmp slt i64 %indvars.iv117, %i.l
  br i1 %.not.not, label %.preheader97, label %._crit_edge, !llvm.loop !447

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i32, ptr %i.n, align 8, !tbaa !122
  %.not78 = icmp eq i32 %i.o, 0
  %.not79102 = icmp slt i32 %i.m, 1
  %or.cond = or i1 %.not78, %.not79102
  br i1 %or.cond, label %.loopexit96, label %.preheader94.lr.ph

.preheader94.lr.ph:                               ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.lr.ph, %bb.e
  %indvars.iv123 = phi i64 [ 1, %.preheader94.lr.ph ], [ %indvars.iv.next124, %bb.e ] ; 3 uses
  %i.q = phi i32 [ %i.m, %.preheader94.lr.ph ], [ %i.w, %bb.e ]
  %i.r = sext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader94, %bb.d
  %indvars.iv120 = phi i64 [ %i.r, %.preheader94 ], [ %indvars.iv.next121, %bb.d ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv120 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.u, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.u) #12
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  %.not86.not = icmp sgt i64 %indvars.iv120, %indvars.iv123
  br i1 %.not86.not, label %bb.d, label %bb.e, !llvm.loop !448

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.x = sext i32 %i.w to i64
  %.not79.not = icmp slt i64 %indvars.iv123, %i.x
  br i1 %.not79.not, label %.preheader94, label %.loopexit96, !llvm.loop !449

.loopexit96:                                      ; preds = %bb.e, %._crit_edge
  %i.y = phi i32 [ %i.m, %._crit_edge ], [ %i.w, %bb.e ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !144
  %.not80 = icmp eq i32 %i.aa, 0
  br i1 %.not80, label %.loopexit93, label %.preheader92

.preheader92:                                     ; preds = %.loopexit96
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !130 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader91.lr.ph, label %.loopexit93

.preheader91.lr.ph:                               ; preds = %.preheader92
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.af = icmp slt i32 %i.y, 1
  br i1 %i.af, label %.loopexit93, label %.preheader91

.preheader91:                                     ; preds = %.preheader91.lr.ph, %._crit_edge107
  %i.ag = phi i32 [ %i.au, %._crit_edge107 ], [ %i.ac, %.preheader91.lr.ph ]
  %i.ah = phi i32 [ %i.av, %._crit_edge107 ], [ %i.y, %.preheader91.lr.ph ] ; 3 uses
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %._crit_edge107 ], [ 0, %.preheader91.lr.ph ] ; 3 uses
  %.not84105 = icmp slt i32 %i.ah, 1
  br i1 %.not84105, label %._crit_edge107, label %.preheader90

.preheader90:                                     ; preds = %.preheader91, %bb.g
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.g ], [ 1, %.preheader91 ] ; 3 uses
  %i.ai = phi i32 [ %i.as, %bb.g ], [ %i.ah, %.preheader91 ]
  %i.aj = sext i32 %i.ai to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader90, %bb.f
  %indvars.iv126 = phi i64 [ %i.aj, %.preheader90 ], [ %indvars.iv.next127, %bb.f ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv132
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv132
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ao, double noundef -1.000000e+00, ptr noundef %i.ar, ptr noundef %i.ao) #12
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  %.not85.not = icmp sgt i64 %indvars.iv126, %indvars.iv129
  br i1 %.not85.not, label %bb.f, label %bb.g, !llvm.loop !450

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %i.as = load i32, ptr %i.b, align 8, !tbaa !84  ; 3 uses
  %i.at = sext i32 %i.as to i64
  %.not84.not = icmp slt i64 %indvars.iv129, %i.at
  br i1 %.not84.not, label %.preheader90, label %._crit_edge107.loopexit, !llvm.loop !451

._crit_edge107.loopexit:                          ; preds = %bb.g
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !130
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %._crit_edge107.loopexit, %.preheader91
  %i.au = phi i32 [ %.pre, %._crit_edge107.loopexit ], [ %i.ag, %.preheader91 ] ; 2 uses
  %i.av = phi i32 [ %i.as, %._crit_edge107.loopexit ], [ %i.ah, %.preheader91 ] ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = icmp slt i64 %indvars.iv.next133, %i.aw
  br i1 %i.ax, label %.preheader91, label %.loopexit93, !llvm.loop !452

.loopexit93:                                      ; preds = %._crit_edge107, %.preheader91.lr.ph, %.preheader92, %.loopexit96
  %i.ay = phi i32 [ %i.y, %.preheader91.lr.ph ], [ %i.y, %.loopexit96 ], [ %i.y, %.preheader92 ], [ %i.av, %._crit_edge107 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !186
  %.not81 = icmp eq i32 %i.ba, 0
  br i1 %.not81, label %.loopexit, label %.preheader89

.preheader89:                                     ; preds = %.loopexit93
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !130 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader88.lr.ph, label %.loopexit

.preheader88.lr.ph:                               ; preds = %.preheader89
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bf = icmp slt i32 %i.ay, 1
  br i1 %i.bf, label %.loopexit, label %.preheader88

.preheader88:                                     ; preds = %.preheader88.lr.ph, %._crit_edge112
  %i.bg = phi i32 [ %i.bu, %._crit_edge112 ], [ %i.bc, %.preheader88.lr.ph ]
  %i.bh = phi i32 [ %i.bv, %._crit_edge112 ], [ %i.ay, %.preheader88.lr.ph ] ; 3 uses
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %._crit_edge112 ], [ 0, %.preheader88.lr.ph ] ; 3 uses
  %.not82110 = icmp slt i32 %i.bh, 1
  br i1 %.not82110, label %._crit_edge112, label %.preheader

.preheader:                                       ; preds = %.preheader88, %bb.i
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.i ], [ 1, %.preheader88 ] ; 3 uses
  %i.bi = phi i32 [ %i.bs, %bb.i ], [ %i.bh, %.preheader88 ]
  %i.bj = sext i32 %i.bi to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv135 = phi i64 [ %i.bj, %.preheader ], [ %indvars.iv.next136, %bb.h ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv135 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !134
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv141
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv141
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bo, double noundef -1.000000e+00, ptr noundef %i.br, ptr noundef %i.bo) #12
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1
  %.not83.not = icmp sgt i64 %indvars.iv135, %indvars.iv138
  br i1 %.not83.not, label %bb.h, label %bb.i, !llvm.loop !453

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %i.bs = load i32, ptr %i.b, align 8, !tbaa !84  ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %.not82.not = icmp slt i64 %indvars.iv138, %i.bt
  br i1 %.not82.not, label %.preheader, label %._crit_edge112.loopexit, !llvm.loop !454

._crit_edge112.loopexit:                          ; preds = %bb.i
  %.pre144 = load i32, ptr %i.bb, align 4, !tbaa !130
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %.preheader88
  %i.bu = phi i32 [ %.pre144, %._crit_edge112.loopexit ], [ %i.bg, %.preheader88 ] ; 2 uses
  %i.bv = phi i32 [ %i.bs, %._crit_edge112.loopexit ], [ %i.bh, %.preheader88 ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.bw = sext i32 %i.bu to i64
  %i.bx = icmp slt i64 %indvars.iv.next142, %i.bw
  br i1 %i.bx, label %.preheader88, label %.loopexit, !llvm.loop !455

.loopexit:                                        ; preds = %._crit_edge112, %.preheader88.lr.ph, %.preheader89, %.loopexit93
  ret void
}

declare double @SUNRpowerR(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"CVodeMemRec", !10, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !5, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !10, i64 112, !10, i64 120, !12, i64 128, !5, i64 136, !5, i64 140, !5, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !5, i64 176, !5, i64 180, !13, i64 184, !13, i64 192, !14, i64 200, !5, i64 208, !10, i64 216, !5, i64 224, !5, i64 228, !10, i64 232, !13, i64 240, !15, i64 248, !5, i64 256, !11, i64 264, !11, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !10, i64 296, !13, i64 304, !15, i64 312, !6, i64 320, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !6, i64 464, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !6, i64 600, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !15, i64 736, !5, i64 744, !6, i64 752, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !12, i64 888, !5, i64 896, !10, i64 904, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !6, i64 1000, !6, i64 1112, !6, i64 1160, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !5, i64 1352, !14, i64 1360, !5, i64 1368, !17, i64 1376, !5, i64 1384, !5, i64 1388, !5, i64 1392, !5, i64 1396, !5, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !17, i64 1432, !17, i64 1440, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !17, i64 1480, !17, i64 1488, !17, i64 1496, !18, i64 1504, !17, i64 1512, !17, i64 1520, !18, i64 1528, !17, i64 1536, !17, i64 1544, !17, i64 1552, !17, i64 1560, !17, i64 1568, !17, i64 1576, !5, i64 1584, !17, i64 1592, !17, i64 1600, !17, i64 1608, !17, i64 1616, !17, i64 1624, !17, i64 1632, !10, i64 1640, !10, i64 1648, !10, i64 1656, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !5, i64 1704, !5, i64 1708, !17, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !5, i64 1744, !10, i64 1752, !5, i64 1760, !5, i64 1764, !5, i64 1768, !5, i64 1772, !5, i64 1776, !5, i64 1780, !5, i64 1784, !5, i64 1788, !5, i64 1792, !5, i64 1796, !5, i64 1800, !5, i64 1804, !5, i64 1808, !5, i64 1812, !5, i64 1816, !5, i64 1820, !11, i64 1824, !11, i64 1832, !19, i64 1840, !5, i64 1848, !6, i64 1856, !5, i64 2048, !17, i64 2056, !11, i64 2064, !5, i64 2072, !14, i64 2080, !14, i64 2088, !10, i64 2096, !10, i64 2104, !10, i64 2112, !13, i64 2120, !13, i64 2128, !13, i64 2136, !10, i64 2144, !10, i64 2152, !5, i64 2160, !5, i64 2164, !17, i64 2168, !14, i64 2176, !5, i64 2184, !5, i64 2188, !20, i64 2192, !5, i64 2200}
!10 = !{!"double", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"p1 long", !11, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!20 = !{!"p1 _ZTS11CVadjMemRec", !11, i64 0}
!21 = !{!9, !5, i64 28}
!22 = !{!9, !10, i64 0}
!23 = !{!9, !11, i64 1824}
!24 = !{!9, !11, i64 1832}
!25 = !{!19, !19, i64 0}
!26 = !{!9, !19, i64 1840}
!27 = !{!9, !5, i64 1368}
!28 = !{!9, !17, i64 1376}
!29 = !{!9, !5, i64 1400}
!30 = !{!9, !10, i64 1344}
!31 = !{!9, !5, i64 2184}
!32 = !{!9, !11, i64 152}
!33 = !{!9, !11, i64 160}
!34 = !{!9, !5, i64 176}
!35 = !{!9, !5, i64 180}
!36 = !{!9, !5, i64 208}
!37 = !{!5, !5, i64 0}
!38 = !{!9, !5, i64 280}
!39 = !{!9, !5, i64 1760}
!40 = !{!9, !5, i64 1764}
!41 = !{!9, !5, i64 1768}
!42 = !{!9, !17, i64 1624}
!43 = !{!9, !17, i64 1632}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!12, !12, i64 0}
!47 = !{!9, !10, i64 40}
!48 = !{!9, !13, i64 192}
!49 = !{!10, !10, i64 0}
!50 = !{!9, !14, i64 200}
!51 = !{!9, !13, i64 184}
!52 = !{!9, !12, i64 424}
!53 = !{!9, !10, i64 216}
!54 = !{!9, !11, i64 8}
!55 = !{!9, !11, i64 16}
!56 = !{!9, !17, i64 1464}
!57 = !{!58, !59, i64 8}
!58 = !{!"_generic_N_Vector", !11, i64 0, !59, i64 8}
!59 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!60 = !{!61, !11, i64 0}
!61 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192}
!62 = !{!61, !11, i64 16}
!63 = !{!61, !11, i64 48}
!64 = !{!61, !11, i64 56}
!65 = !{!61, !11, i64 64}
!66 = !{!61, !11, i64 72}
!67 = !{!61, !11, i64 80}
!68 = !{!61, !11, i64 88}
!69 = !{!61, !11, i64 96}
!70 = !{!61, !11, i64 104}
!71 = !{!61, !11, i64 120}
!72 = !{!61, !11, i64 128}
!73 = !{!61, !11, i64 144}
!74 = !{!61, !11, i64 24}
!75 = !{!17, !17, i64 0}
!76 = !{!9, !17, i64 1592}
!77 = !{!9, !17, i64 1600}
!78 = !{!9, !12, i64 440}
!79 = !{!9, !12, i64 448}
!80 = !{!9, !12, i64 456}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = !{!9, !10, i64 984}
!84 = !{!9, !5, i64 912}
!85 = !{!9, !5, i64 928}
!86 = !{!9, !5, i64 924}
!87 = !{!9, !10, i64 1424}
!88 = !{!9, !5, i64 1708}
!89 = !{!9, !10, i64 1728}
!90 = !{!9, !10, i64 1752}
!91 = !{!9, !17, i64 1488}
!92 = !{!9, !17, i64 1536}
!93 = !{!9, !17, i64 1512}
!94 = !{!9, !17, i64 1568}
!95 = !{!9, !5, i64 1584}
!96 = !{!9, !5, i64 2048}
!97 = !{!9, !17, i64 2168}
!98 = !{!9, !5, i64 2164}
!99 = !{!9, !10, i64 960}
!100 = !{!9, !5, i64 920}
!101 = !{!9, !17, i64 2056}
!102 = !{!9, !5, i64 1788}
!103 = !{!9, !5, i64 1704}
!104 = !{!9, !10, i64 48}
!105 = !{!9, !5, i64 32}
!106 = !{!9, !5, i64 64}
!107 = !{!9, !11, i64 72}
!108 = !{!9, !11, i64 80}
!109 = !{!9, !12, i64 56}
!110 = !{!9, !5, i64 1784}
!111 = !{!9, !17, i64 1608}
!112 = !{!9, !17, i64 1616}
!113 = !{!9, !12, i64 568}
!114 = !{!9, !12, i64 584}
!115 = !{!9, !12, i64 576}
!116 = !{!9, !12, i64 592}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !45}
!119 = !{!9, !11, i64 96}
!120 = !{!9, !17, i64 1448}
!121 = !{!9, !17, i64 1544}
!122 = !{!9, !5, i64 88}
!123 = !{!9, !5, i64 1796}
!124 = !{!9, !5, i64 108}
!125 = !{!9, !10, i64 112}
!126 = !{!9, !10, i64 120}
!127 = !{!9, !5, i64 1792}
!128 = !{!9, !12, i64 128}
!129 = !{!9, !5, i64 1808}
!130 = !{!9, !5, i64 140}
!131 = !{!9, !5, i64 144}
!132 = !{!9, !11, i64 168}
!133 = !{!9, !5, i64 744}
!134 = !{!15, !15, i64 0}
!135 = distinct !{!135, !45}
!136 = !{!9, !17, i64 1496}
!137 = !{!9, !17, i64 1552}
!138 = !{!9, !17, i64 1520}
!139 = !{!9, !17, i64 1576}
!140 = distinct !{!140, !45, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = distinct !{!143, !45, !142, !141}
!144 = !{!9, !5, i64 136}
!145 = !{!9, !15, i64 712}
!146 = !{!9, !15, i64 704}
!147 = !{!9, !15, i64 720}
!148 = !{!9, !15, i64 728}
!149 = !{!9, !15, i64 736}
!150 = distinct !{!150, !45}
!151 = distinct !{!151, !45}
!152 = distinct !{!152, !45}
!153 = distinct !{!153, !45}
!154 = !{!9, !14, i64 1360}
!155 = !{!9, !18, i64 1504}
!156 = !{!9, !18, i64 1528}
!157 = distinct !{!157, !45}
!158 = distinct !{!158, !45, !141, !142}
!159 = distinct !{!159, !45, !142, !141}
!160 = distinct !{!160, !45}
!161 = distinct !{!161, !45}
!162 = !{!9, !5, i64 228}
!163 = !{!9, !10, i64 232}
!164 = !{!9, !5, i64 1804}
!165 = !{!9, !13, i64 240}
!166 = distinct !{!166, !45, !141, !142}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = distinct !{!169, !45, !141}
!170 = distinct !{!170, !45}
!171 = !{!9, !5, i64 1800}
!172 = !{!9, !15, i64 248}
!173 = distinct !{!173, !45}
!174 = !{!9, !12, i64 888}
!175 = !{!9, !15, i64 864}
!176 = !{!9, !15, i64 856}
!177 = !{!9, !15, i64 872}
!178 = !{!9, !15, i64 880}
!179 = distinct !{!179, !45}
end_hunk_2
