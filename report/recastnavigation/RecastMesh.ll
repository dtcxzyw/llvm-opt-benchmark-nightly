Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.af = load float, ptr %i.ae, align 4, !tbaa !60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 3 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !60
  %i.ah = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %.0205.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bv, %bb.d ] ; 3 uses
  %.0204.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.by, %bb.d ] ; 5 uses
  %.0203.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bu, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !72
  %i.aj = sext i32 %.0205.lcssa to i64            ; 2 uses
  %i.ak = mul nsw i64 %i.aj, 6
  %i.al = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ak, i32 noundef 0) #8 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !68
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.am = phi float [ %i.af, %.lr.ph ], [ %i.br, %bb.d ] ; 2 uses
  %i.an = phi float [ %i.ac, %.lr.ph ], [ %i.bn, %bb.d ] ; 2 uses
  %i.ao = phi float [ %i.aa, %.lr.ph ], [ %i.bj, %bb.d ] ; 2 uses
  %i.ap = phi float [ %i.w, %.lr.ph ], [ %i.bf, %bb.d ] ; 2 uses
  %i.aq = phi float [ %i.t, %.lr.ph ], [ %i.bb, %bb.d ] ; 2 uses
  %i.ar = phi float [ %i.r, %.lr.ph ], [ %i.ax, %bb.d ] ; 2 uses
  %.0203243 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %bb.d ]
  %.0204242 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.d ]
  %.0205241 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.d ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !60 ; 2 uses
  %i.aw = fcmp olt float %i.ar, %i.av
  %i.ax = select i1 %i.aw, float %i.ar, float %i.av ; 2 uses
  store float %i.ax, ptr %i.p, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.az = load float, ptr %i.ay, align 4, !tbaa !60 ; 2 uses
  %i.ba = fcmp olt float %i.aq, %i.az
  %i.bb = select i1 %i.ba, float %i.aq, float %i.az ; 2 uses
  store float %i.bb, ptr %i.u, align 4, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !60 ; 2 uses
  %i.be = fcmp olt float %i.ap, %i.bd
  %i.bf = select i1 %i.be, float %i.ap, float %i.bd ; 2 uses
  store float %i.bf, ptr %i.x, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60 ; 2 uses
  %i.bi = fcmp ogt float %i.ao, %i.bh
  %i.bj = select i1 %i.bi, float %i.ao, float %i.bh ; 2 uses
  store float %i.bj, ptr %i.y, align 4, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.bm = fcmp ogt float %i.an, %i.bl
  %i.bn = select i1 %i.bm, float %i.an, float %i.bl ; 2 uses
  store float %i.bn, ptr %i.ad, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !60 ; 2 uses
  %i.bq = fcmp ogt float %i.am, %i.bp
  %i.br = select i1 %i.bq, float %i.am, float %i.bp ; 2 uses
  store float %i.br, ptr %i.ag, align 4, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !72 ; 2 uses
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %.0203243, i32 %i.bt) ; 2 uses
  %i.bv = add nsw i32 %i.bt, %.0205241            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !73
  %i.by = add nsw i32 %i.bx, %.0204242            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %._crit_edge
  %i.bz = mul nsw i32 %.0205.lcssa, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %i.bz) #8
  br label %bb.bj

bb.f:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 6 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !73
  %i.cb = sext i32 %.0204.lcssa to i64            ; 4 uses
  %i.cc = shl nsw i64 %i.cb, 1                    ; 4 uses
  %i.cd = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.ce = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cd, %i.cf
  %i.ch = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cg, i32 noundef 0) #8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !69
  %.not215 = icmp eq ptr %i.ch, null
  br i1 %.not215, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cj = shl nsw i32 %.0204.lcssa, 1
  %i.ck = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cl = mul nsw i32 %i.cj, %i.ck
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %i.cl) #8
  br label %bb.bj

bb.h:                                             ; preds = %bb.f
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cd, %i.cn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ch, i8 -1, i64 %i.co, i1 false)
  %i.cp = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cc, i32 noundef 0) #8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !70
  %.not216 = icmp eq ptr %i.cp, null
  br i1 %.not216, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cp, i8 0, i64 %i.cc, i1 false)
  %i.cr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cb, i32 noundef 0) #8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !71
  %.not217 = icmp eq ptr %i.cr, null
  br i1 %.not217, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cr, i8 0, i64 %i.cb, i1 false)
  %i.ct = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cc, i32 noundef 0) #8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !82
  %.not218 = icmp eq ptr %i.ct, null
  br i1 %.not218, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ct, i8 0, i64 %i.cc, i1 false)
  %i.cv = shl nsw i64 %i.aj, 2                    ; 2 uses
  %i.cw = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cv, i32 noundef 1) #8 ; 5 uses
  %.not219 = icmp eq ptr %i.cw, null
  br i1 %.not219, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %.0205.lcssa) #8
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.cv, i1 false)
  %i.cx = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16384, i32 noundef 1) #8 ; 4 uses
  %.not220 = icmp eq ptr %i.cx, null
  br i1 %.not220, label %bb.q, label %.preheader239.preheader

.preheader239.preheader:                          ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.cx, i8 -1, i64 16384, i1 false), !tbaa !76
  %i.cy = zext nneg i32 %.0203.lcssa to i64
  %i.cz = shl nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cz, i32 noundef 0) #8 ; 5 uses
  %.not221 = icmp eq ptr %i.da, null
  br i1 %.not221, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef 4096) #8
  br label %bb.bh

bb.r:                                             ; preds = %.preheader239.preheader
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %.0203.lcssa) #8
  br label %bb.bg

bb.s:                                             ; preds = %.preheader239.preheader
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.da, i8 0, i64 %i.cz, i1 false)
  br i1 %i.ah, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %bb.s
  %wide.trip.count305 = zext nneg i32 %2 to i64
  br label %bb.t

._crit_edge271:                                   ; preds = %._crit_edge267, %bb.s
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !69
  %i.dc = load i32, ptr %i.ca, align 4, !tbaa !73
  %i.dd = load i32, ptr %i.ai, align 8, !tbaa !72
  %i.de = load i32, ptr %i.l, align 4, !tbaa !74
  %i.df = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.db, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de)
  br i1 %i.df, label %bb.bc, label %bb.bb

bb.t:                                             ; preds = %.lr.ph270, %._crit_edge267
  %indvars.iv302 = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next303, %._crit_edge267 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv302
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !126 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load float, ptr %i.di, align 8, !tbaa !60
  %i.dk = load float, ptr %i.p, align 8, !tbaa !60
  %4 = load float, ptr %i.n, align 8, !tbaa !127
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !60
  %5 = load float, ptr %i.x, align 8, !tbaa !60
  %6 = load float, ptr %i.y, align 4, !tbaa !60
  %7 = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %8 = load float, ptr %7, align 4, !tbaa !60
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = insertelement <2 x float> %9, float %i.dj, i64 1
  %i.dn = insertelement <2 x float> poison, float %8, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %11 = fsub <2 x float> %10, %i.do
  %12 = insertelement <2 x float> poison, float %4, i64 0
  %i.dp = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fdiv <2 x float> %11, %i.dp
  %i.dr = fadd <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.ds = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dr)
  %i.dt = fptoui <2 x float> %i.ds to <2 x i16>   ; 2 uses
  %i.du = icmp eq <2 x i16> %i.dt, zeroinitializer ; 8 uses
  %i.dv = load float, ptr %i.ag, align 4, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 76
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !60
  %13 = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dy = insertelement <2 x float> %13, float %i.dv, i64 1
  %i.dz = insertelement <2 x float> poison, float %5, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dx, i64 1
  %i.eb = fsub <2 x float> %i.dy, %i.ea
  %i.ec = fdiv <2 x float> %i.eb, %i.dp
  %i.ed = fadd <2 x float> %i.ec, splat (float 5.000000e-01) ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = tail call float @llvm.floor.f32(float %i.ee)
  %i.eg = fptoui float %i.ef to i16
  %.fr272 = freeze i16 %i.eg                      ; 2 uses
  %i.eh = icmp eq i16 %.fr272, 0                  ; 2 uses
  %i.ei = extractelement <2 x float> %i.ed, i64 1
  %i.ej = tail call float @llvm.floor.f32(float %i.ei)
  %i.ek = fptoui float %i.ej to i16
  %i.el = icmp eq i16 %i.ek, 0                    ; 10 uses
  %i.em = extractelement <2 x i1> %i.du, i64 1    ; 7 uses
  %or.cond3 = or i1 %i.em, %i.eh
  %i.en = extractelement <2 x i1> %i.du, i64 0    ; 7 uses
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.en
  %i.eo = select i1 %or.cond5, i1 true, i1 %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !72 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph255, label %.preheader238

.lr.ph255:                                        ; preds = %bb.t
  %i.es = load ptr, ptr %i.dh, align 8, !tbaa !68
  %i.et = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.eu = extractelement <2 x i16> %i.dt, i64 1
  br label %bb.u

.preheader238:                                    ; preds = %_ZL9addVertextttPtPiS0_Ri.exit, %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 44 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !73
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph266, label %._crit_edge267

.lr.ph266:                                        ; preds = %.preheader238
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.pre307 = load i32, ptr %i.ca, align 4, !tbaa !73
  %.pre308 = load i32, ptr %i.l, align 4, !tbaa !74
  %broadcast.splat361 = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert362 = insertelement <8 x i1> poison, i1 %i.el, i64 0
  %broadcast.splat363 = shufflevector <8 x i1> %broadcast.splatinsert362, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat365 = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat408 = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <8 x i1> poison, i1 %i.el, i64 0
  %broadcast.splat410 = shufflevector <8 x i1> %broadcast.splatinsert409, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat412 = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <8 x i1> poison, i1 %i.el, i64 0
  %broadcast.splat336 = shufflevector <8 x i1> %broadcast.splatinsert335, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat338 = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph255, %_ZL9addVertextttPtPiS0_Ri.exit
  %i.fc = phi i32 [ %i.eq, %.lr.ph255 ], [ %i.gr, %_ZL9addVertextttPtPiS0_Ri.exit ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next282, %_ZL9addVertextttPtPiS0_Ri.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv281, 6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx ; 3 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !77
  %i.ff = add i16 %i.fe, %i.eu                    ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !77 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !77
  %i.fk = add i16 %i.fj, %.fr272                  ; 3 uses
  %i.fl = zext i16 %i.ff to i64
  %i.fm = zext i16 %i.fk to i64
  %i.fn = mul nuw nsw i64 %i.fl, 835
  %i.fo = mul nuw nsw i64 %i.fm, 799
  %i.fp = add nuw nsw i64 %i.fo, %i.fn
  %i.fq = and i64 %i.fp, 4095
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.fq ; 3 uses
  %.03642.i = load i32, ptr %i.fr, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.fs = zext i16 %i.fh to i32
  %invariant.op = sub i32 2, %i.fs
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.ft = mul nsw i32 %.03644.i, 3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.fu ; 3 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !77
  %i.fx = icmp eq i16 %i.fw, %i.ff
  br i1 %i.fx, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !77
  %i.ga = zext i16 %i.fz to i32
  %.reass.i.reass.reass = add i32 %i.ga, %invariant.op
  %i.gb = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !77
  %i.ge = icmp eq i16 %i.gd, %i.fk
  br i1 %i.ge, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gf = sext i32 %.03644.i to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gf
  %.036.i = load i32, ptr %i.gg, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.gh = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gi = add nsw i32 %i.gh, 1
  store i32 %i.gi, ptr %i.ai, align 8, !tbaa !76
  %i.gj = mul nsw i32 %i.gh, 3
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.gk ; 3 uses
  store i16 %i.ff, ptr %i.gl, align 2, !tbaa !77
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i16 %i.fh, ptr %i.gm, align 2, !tbaa !77
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i16 %i.fk, ptr %i.gn, align 2, !tbaa !77
  %i.go = load i32, ptr %i.fr, align 4, !tbaa !76
  %i.gp = sext i32 %i.gh to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gp
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !76
  store i32 %i.gh, ptr %i.fr, align 4, !tbaa !76
  %.pre = load i32, ptr %i.ep, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.gr = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fc, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.gh, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.gs, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.gt = sext i32 %i.gr to i64
  %i.gu = icmp slt i64 %indvars.iv.next282, %i.gt
  br i1 %i.gu, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.gv = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.ic, %.loopexit ] ; 2 uses
  %i.gw = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.ib, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.gx = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.gy = ptrtoaddr ptr %i.gx to i64              ; 2 uses
  %i.gz = shl i32 %i.gw, 1
  %i.ha = mul i32 %i.gz, %i.gv
  %i.hb = sext i32 %i.ha to i64                   ; 3 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.hb ; 39 uses
  %i.hd = load ptr, ptr %i.ey, align 8, !tbaa !69 ; 2 uses
  %i.he = ptrtoaddr ptr %i.hd to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hf = shl nuw i32 %indvars.iv299.tr, 1
  %i.hg = mul i32 %i.hf, %i.gv
  %i.hh = sext i32 %i.hg to i64                   ; 3 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hh ; 10 uses
  %i.hj = load ptr, ptr %i.ez, align 8, !tbaa !70
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv299
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !77
  %i.hm = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hn = sext i32 %i.gw to i64                   ; 2 uses
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.hn
  store i16 %i.hl, ptr %i.ho, align 2, !tbaa !77
  %i.hp = load ptr, ptr %i.fa, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv299
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !78
  %i.hs = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hn
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !78
  %i.hu = load ptr, ptr %i.fb, align 8, !tbaa !82
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %indvars.iv299
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !77
  %i.hx = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.hy = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.hz
  store i16 %i.hw, ptr %i.ia, align 2, !tbaa !77
  %i.ib = add nsw i32 %i.hy, 1                    ; 2 uses
  store i32 %i.ib, ptr %i.ca, align 4, !tbaa !73
  %i.ic = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.ic to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %indvars.iv284
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !77 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL8diagonaliiiPKiPi:bb.a

bb.r:                                             ; preds = %bb.q
  %.not31.i91.i.i = icmp sgt i32 %i.cu, %i.aw
  %.not32.i92.i.i = icmp sgt i32 %i.aw, %i.dd
  %or.cond.i93.i.i = or i1 %.not31.i91.i.i, %.not32.i92.i.i
  br i1 %or.cond.i93.i.i, label %.split.i, label %_ZL10diagonalieiiiPKiPi.exit

.split.i:                                         ; preds = %bb.r
  %.not33.i94.i.i = icmp sge i32 %i.cu, %i.aw
  %i.fm = icmp sge i32 %i.aw, %i.dd
  %spec.select.i95.i.i = and i1 %.not33.i94.i.i, %i.fm
  %cond.fr6068.i = freeze i1 %spec.select.i95.i.i
  br i1 %cond.fr6068.i, label %_ZL10diagonalieiiiPKiPi.exit, label %.thread82.i

bb.s:                                             ; preds = %bb.q
  %.not28.i96.i.i = icmp sgt i32 %.val56.i, %.val54.pre.i
  %.not29.i97.i.i = icmp sgt i32 %.val54.pre.i, %.val39.i.i24
  %or.cond9.i98.i.i = or i1 %.not28.i96.i.i, %.not29.i97.i.i
  br i1 %or.cond9.i98.i.i, label %_ZL9intersectPKiS0_S0_S0_.exit.i, label %_ZL10diagonalieiiiPKiPi.exit

_ZL9intersectPKiS0_S0_S0_.exit.i:                 ; preds = %bb.s
  %.not30.i99.i.i = icmp sge i32 %.val56.i, %.val54.pre.i
  %i.fn = icmp sge i32 %.val54.pre.i, %.val39.i.i24
  %spec.select10.i100.i.i = and i1 %.not30.i99.i.i, %i.fn
  %cond.fr60.i = freeze i1 %spec.select10.i100.i.i
  br i1 %cond.fr60.i, label %_ZL10diagonalieiiiPKiPi.exit, label %.thread82.i

.thread82.i:                                      ; preds = %_ZL9intersectPKiS0_S0_S0_.exit.i, %.split.i, %_ZL7betweenPKiS0_S0_.exit84.thread20.i.i, %_ZL6vequalPKiS0_.exit59.i, %_ZL6vequalPKiS0_.exit58.i, %_ZL6vequalPKiS0_.exit57.i, %_ZL6vequalPKiS0_.exit.i, %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %exitcond.not.i, label %_ZL10diagonalieiiiPKiPi.exit, label %bb.d

_ZL10diagonalieiiiPKiPi.exit:                     ; preds = %.thread82.i, %_ZL9intersectPKiS0_S0_S0_.exit.i, %bb.s, %.split.i, %bb.r, %_ZL7betweenPKiS0_S0_.exit84.i.i, %bb.p, %.split22.i.i, %bb.o, %_ZL7betweenPKiS0_S0_.exit67.i.i, %.thread32, %.split18.i.i, %.thread, %_ZL7betweenPKiS0_S0_.exit.i.i, %bb.l, %.split.i.i, %bb.k, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i, %bb.b, %_ZL6inConeiiiPKiPi.exit.thread, %.split, %_ZL6inConeiiiPKiPi.exit
  %i.fo = phi i1 [ false, %_ZL6inConeiiiPKiPi.exit ], [ false, %.split ], [ false, %bb.b ], [ true, %_ZL6inConeiiiPKiPi.exit.thread ], [ false, %_ZL7betweenPKiS0_S0_.exit.i.i ], [ false, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i ], [ false, %.split22.i.i ], [ false, %_ZL7betweenPKiS0_S0_.exit84.i.i ], [ false, %_ZL7betweenPKiS0_S0_.exit67.i.i ], [ false, %bb.s ], [ false, %.split.i.i ], [ false, %bb.l ], [ false, %.split18.i.i ], [ false, %.thread32 ], [ false, %bb.r ], [ false, %bb.k ], [ false, %.thread ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.split.i ], [ false, %_ZL9intersectPKiS0_S0_S0_.exit.i ], [ true, %.thread82.i ]
  ret i1 %i.fo
}

declare void @_Z6rcFreePv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !22, line: 39, baseType: !28, size: 32, elements: !58, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !22, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTS9rcContext", !15, i64 8, !15, i64 9}
!17 = !{!16, !15, i64 9}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!25 = !{null, !23, !24}
!26 = !DISubroutineType(types: !25)
!27 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !22, line: 176, type: !26, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!37 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!38 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!39 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!58 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!59 = !{!"float", !11, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"any pointer", !11, i64 0}
!62 = !{!"p1 short", !61, i64 0}
!63 = !{!"p1 omnipotent char", !61, i64 0}
!64 = !{!"_ZTS10rcPolyMesh", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !63, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !11, i64 56, !11, i64 68, !59, i64 80, !59, i64 84, !12, i64 88, !59, i64 92}
!65 = !{!64, !12, i64 88}
!66 = !{!64, !59, i64 92}
!67 = !{!"short", !11, i64 0}
!68 = !{!64, !62, i64 0}
!69 = !{!64, !62, i64 8}
!70 = !{!64, !62, i64 16}
!71 = !{!64, !63, i64 32}
!72 = !{!64, !12, i64 40}
!73 = !{!64, !12, i64 44}
!74 = !{!64, !12, i64 52}
!75 = !{!64, !12, i64 48}
!76 = !{!12, !12, i64 0}
!77 = !{!67, !67, i64 0}
!78 = !{!11, !11, i64 0}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 8, i32 8}
!82 = !{!64, !62, i64 24}
!83 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !22, line: 180, type: !26, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!84 = distinct !{!84, !79, !80}
!85 = distinct !{!85, !79, !80}
!86 = distinct !{!86, !115}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79, !80}
!89 = distinct !{!89, !80, !79}
!90 = distinct !{!90, !79, !80}
!91 = distinct !{!91, !80, !79}
!92 = distinct !{!92, !79, !80}
!93 = distinct !{!93, !80, !79}
!94 = distinct !{!94, !79, !80}
!95 = distinct !{!95, !79, !80}
!96 = distinct !{!96, !80, !79}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = distinct !{!99, !80, !79}
!100 = distinct !{!100, !79, !80}
!101 = distinct !{!101, !79, !80}
!102 = distinct !{!102, !115}
!103 = distinct !{!103, !79}
!104 = !{!"p1 _ZTS9rcContour", !61, i64 0}
!105 = !{!"_ZTS12rcContourSet", !104, i64 0, !12, i64 8, !11, i64 12, !11, i64 24, !59, i64 36, !59, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !59, i64 56}
!106 = !{!105, !12, i64 52}
!107 = !{!105, !59, i64 56}
!108 = !{!105, !12, i64 8}
!109 = !{!105, !104, i64 0}
!110 = !{!"p1 int", !61, i64 0}
!111 = !{!"_ZTS9rcContour", !110, i64 0, !12, i64 8, !110, i64 16, !12, i64 24, !67, i64 28, !11, i64 30}
!112 = !{!111, !12, i64 8}
!113 = !{!111, !110, i64 0}
!114 = !{!"branch_weights", i32 4, i32 12}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!111, !67, i64 28}
!117 = !{!111, !11, i64 30}
!118 = !{!105, !12, i64 44}
!119 = !{!105, !12, i64 48}
!120 = distinct !{!120, !79, !80}
!121 = distinct !{!121, !79, !80}
!122 = distinct !{!122, !79, !80}
!123 = distinct !{!123, !79}
!124 = distinct !{!124, !79}
!125 = !{!"p1 _ZTS10rcPolyMesh", !61, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!64, !59, i64 80}
end_hunk_1
