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
  %4 = load <4 x float>, ptr %i.n, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !60
  %5 = load <4 x float>, ptr %i.x, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %7 = load <4 x float>, ptr %i.y, align 4
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %i.do = load float, ptr %i.dn, align 4, !tbaa !60
  %i.dp = insertelement <2 x float> %8, float %i.dj, i64 1
  %i.dq = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dk, i64 1
  %i.ds = fsub <2 x float> %i.dp, %i.dr
  %i.dt = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x float> %i.ds, %i.dt
  %i.dv = fadd <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dv)
  %i.dx = fptoui <2 x float> %i.dw to <2 x i16>   ; 2 uses
  %i.dy = icmp eq <2 x i16> %i.dx, zeroinitializer ; 8 uses
  %i.dz = load float, ptr %i.ag, align 4, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 76
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !60
  %i.ec = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.dz, i64 1
  %i.ee = insertelement <2 x float> %6, float %i.eb, i64 1
  %i.ef = fsub <2 x float> %i.ed, %i.ee
  %i.eg = fdiv <2 x float> %i.ef, %i.dt
  %i.eh = fadd <2 x float> %i.eg, splat (float 5.000000e-01) ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = tail call float @llvm.floor.f32(float %i.ei)
  %i.ek = fptoui float %i.ej to i16
  %.fr272 = freeze i16 %i.ek                      ; 2 uses
  %i.el = icmp eq i16 %.fr272, 0                  ; 2 uses
  %i.em = extractelement <2 x float> %i.eh, i64 1
  %i.en = tail call float @llvm.floor.f32(float %i.em)
  %i.eo = fptoui float %i.en to i16
  %i.ep = icmp eq i16 %i.eo, 0                    ; 10 uses
  %i.eq = extractelement <2 x i1> %i.dy, i64 1    ; 7 uses
  %or.cond3 = or i1 %i.eq, %i.el
  %i.er = extractelement <2 x i1> %i.dy, i64 0    ; 7 uses
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.er
  %i.es = select i1 %or.cond5, i1 true, i1 %i.ep
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !72 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph255, label %.preheader238

.lr.ph255:                                        ; preds = %bb.t
  %i.ew = load ptr, ptr %i.dh, align 8, !tbaa !68
  %i.ex = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.ey = extractelement <2 x i16> %i.dx, i64 1
  br label %bb.u

.preheader238:                                    ; preds = %_ZL9addVertextttPtPiS0_Ri.exit, %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 44 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !73
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph266, label %._crit_edge267

.lr.ph266:                                        ; preds = %.preheader238
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.pre307 = load i32, ptr %i.ca, align 4, !tbaa !73
  %.pre308 = load i32, ptr %i.l, align 4, !tbaa !74
  %broadcast.splat361 = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert362 = insertelement <8 x i1> poison, i1 %i.ep, i64 0
  %broadcast.splat363 = shufflevector <8 x i1> %broadcast.splatinsert362, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat365 = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat408 = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <8 x i1> poison, i1 %i.ep, i64 0
  %broadcast.splat410 = shufflevector <8 x i1> %broadcast.splatinsert409, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat412 = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <8 x i1> poison, i1 %i.ep, i64 0
  %broadcast.splat336 = shufflevector <8 x i1> %broadcast.splatinsert335, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat338 = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph255, %_ZL9addVertextttPtPiS0_Ri.exit
  %i.fg = phi i32 [ %i.eu, %.lr.ph255 ], [ %i.gv, %_ZL9addVertextttPtPiS0_Ri.exit ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next282, %_ZL9addVertextttPtPiS0_Ri.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv281, 6
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx ; 3 uses
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !77
  %i.fj = add i16 %i.fi, %i.ey                    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !77 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !77
  %i.fo = add i16 %i.fn, %.fr272                  ; 3 uses
  %i.fp = zext i16 %i.fj to i64
  %i.fq = zext i16 %i.fo to i64
  %i.fr = mul nuw nsw i64 %i.fp, 835
  %i.fs = mul nuw nsw i64 %i.fq, 799
  %i.ft = add nuw nsw i64 %i.fs, %i.fr
  %i.fu = and i64 %i.ft, 4095
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.fu ; 3 uses
  %.03642.i = load i32, ptr %i.fv, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.fw = zext i16 %i.fl to i32
  %invariant.op = sub i32 2, %i.fw
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.fx = mul nsw i32 %.03644.i, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.fy ; 3 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !77
  %i.gb = icmp eq i16 %i.ga, %i.fj
  br i1 %i.gb, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !77
  %i.ge = zext i16 %i.gd to i32
  %.reass.i.reass.reass = add i32 %i.ge, %invariant.op
  %i.gf = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !77
  %i.gi = icmp eq i16 %i.gh, %i.fo
  br i1 %i.gi, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gj = sext i32 %.03644.i to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gj
  %.036.i = load i32, ptr %i.gk, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.gl = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ai, align 8, !tbaa !76
  %i.gn = mul nsw i32 %i.gl, 3
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.go ; 3 uses
  store i16 %i.fj, ptr %i.gp, align 2, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  store i16 %i.fl, ptr %i.gq, align 2, !tbaa !77
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i16 %i.fo, ptr %i.gr, align 2, !tbaa !77
  %i.gs = load i32, ptr %i.fv, align 4, !tbaa !76
  %i.gt = sext i32 %i.gl to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gt
  store i32 %i.gs, ptr %i.gu, align 4, !tbaa !76
  store i32 %i.gl, ptr %i.fv, align 4, !tbaa !76
  %.pre = load i32, ptr %i.et, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.gv = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fg, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.gl, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.gw, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.gx = sext i32 %i.gv to i64
  %i.gy = icmp slt i64 %indvars.iv.next282, %i.gx
  br i1 %i.gy, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.gz = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.ig, %.loopexit ] ; 2 uses
  %i.ha = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.if, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.hb = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.hc = ptrtoaddr ptr %i.hb to i64              ; 2 uses
  %i.hd = shl i32 %i.ha, 1
  %i.he = mul i32 %i.hd, %i.gz
  %i.hf = sext i32 %i.he to i64                   ; 3 uses
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.hf ; 39 uses
  %i.hh = load ptr, ptr %i.fc, align 8, !tbaa !69 ; 2 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hj = shl nuw i32 %indvars.iv299.tr, 1
  %i.hk = mul i32 %i.hj, %i.gz
  %i.hl = sext i32 %i.hk to i64                   ; 3 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hl ; 10 uses
  %i.hn = load ptr, ptr %i.fd, align 8, !tbaa !70
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %indvars.iv299
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !77
  %i.hq = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hr = sext i32 %i.ha to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.hr
  store i16 %i.hp, ptr %i.hs, align 2, !tbaa !77
  %i.ht = load ptr, ptr %i.fe, align 8, !tbaa !71
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv299
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !78
  %i.hw = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.hr
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !78
  %i.hy = load ptr, ptr %i.ff, align 8, !tbaa !82
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %indvars.iv299
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !77
  %i.ib = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.ic = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.id
  store i16 %i.ia, ptr %i.ie, align 2, !tbaa !77
  %i.if = add nsw i32 %i.ic, 1                    ; 2 uses
  store i32 %i.if, ptr %i.ca, align 4, !tbaa !73
  %i.ig = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.ig to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv284
end_hunk_0
