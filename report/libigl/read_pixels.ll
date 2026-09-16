Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/read_pixels?download=true
inline.NumInlined: 117
inline.NumDeleted: 75
begin_hunk_0_@_ZN3igl6opengl11read_pixelsIhEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_:bb.a
  %i.ch = load ptr, ptr %3, align 8, !tbaa !33
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !31
  %i.cj = mul nsw i64 %i.ci, %indvars.iv100
  %i.ck = getelementptr i8, ptr %i.ch, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cj
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !34
  %i.cm = getelementptr i8, ptr %i.by, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = load ptr, ptr %4, align 8, !tbaa !33
  %i.cp = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.cq = mul nsw i64 %i.cp, %indvars.iv100
  %i.cr = getelementptr i8, ptr %i.co, i64 %indvars.iv
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !34
  %i.ct = getelementptr i8, ptr %i.by, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !34
  %i.cv = load ptr, ptr %5, align 8, !tbaa !33
  %i.cw = load i64, ptr %i.as, align 8, !tbaa !31
  %i.cx = mul nsw i64 %i.cw, %indvars.iv100
  %i.cy = getelementptr i8, ptr %i.cv, i64 %indvars.iv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cu, ptr %i.cz, align 1, !tbaa !34
  %i.da = getelementptr inbounds i8, ptr %i.bs, i64 %indvars.iv95
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = load ptr, ptr %6, align 8, !tbaa !33
  %i.dd = load i64, ptr %i.be, align 8, !tbaa !31
  %i.de = mul nsw i64 %i.dd, %indvars.iv100
  %i.df = getelementptr i8, ptr %i.dc, i64 %indvars.iv
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  store i8 %i.db, ptr %i.dg, align 1, !tbaa !34
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !28
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIdEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 15 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  %i.i = mul i32 %1, %0                           ; 2 uses
  %i.j = shl i32 %i.i, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #9 ; 5 uses
  %i.m = zext i32 %i.i to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #9 ; 4 uses
  %i.o = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.o(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.l)
  %i.p = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.p(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.n)
  %brmerge = or i1 %i.d, %i.c
  br i1 %brmerge, label %._crit_edge82.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %2, align 8, !tbaa !17     ; 3 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !17     ; 5 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !17     ; 6 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !18  ; 4 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !18  ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !17    ; 6 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !18  ; 4 uses
  %i.af = add nsw i64 %i.b, -1                    ; 5 uses
  %i.ag = mul i64 %i.w, %i.af
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = shl i64 %i.ah, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.aj = mul i64 %i.y, %i.af
  %i.ak = add i64 %i.aj, %i.a
  %i.al = shl i64 %i.ak, 3
  %scevgep97 = getelementptr i8, ptr %i.x, i64 %i.al ; 3 uses
  %i.am = mul i64 %i.aa, %i.af
  %i.an = add i64 %i.am, %i.a
  %i.ao = shl i64 %i.an, 3
  %scevgep98 = getelementptr i8, ptr %i.z, i64 %i.ao ; 4 uses
  %i.ap = mul i64 %i.ac, %i.af
  %i.aq = add i64 %i.ap, %i.a
  %i.ar = shl i64 %i.aq, 3
  %scevgep99 = getelementptr i8, ptr %i.ab, i64 %i.ar ; 4 uses
  %i.as = mul i64 %i.ae, %i.af
  %i.at = add i64 %i.as, %i.a
  %i.au = shl i64 %i.at, 3
  %scevgep100 = getelementptr i8, ptr %i.ad, i64 %i.au ; 4 uses
  %i.av = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.aw = shufflevector <4 x ptr> %i.av, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ax = insertelement <4 x ptr> poison, ptr %scevgep97, i64 0
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %scevgep98, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep99, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep100, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %i.z, i64 1
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %i.ab, i64 2
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.ad, i64 3
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bg = shufflevector <4 x ptr> %i.bf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.z, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep97, i64 0 ; 2 uses
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %scevgep99, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %i.x, i64 0 ; 2 uses
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %i.ab, i64 1
  %i.bn = insertelement <2 x ptr> poison, ptr %scevgep99, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %scevgep98, i64 1
  %i.bp = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.z, i64 1
  %i.br = insertelement <2 x ptr> %i.bj, ptr %scevgep100, i64 1
  %i.bs = insertelement <2 x ptr> %i.bl, ptr %i.ad, i64 1
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep100, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep98, i64 1
  %min.iters.check = icmp ult i32 %0, 22
  %i.bv = icmp ult <4 x ptr> %i.aw, %i.ba
  %i.bw = icmp ult <4 x ptr> %i.be, %i.bg
  %i.bx = and <4 x i1> %i.bv, %i.bw
  %bound0119 = icmp ult ptr %i.x, %scevgep98
  %bound1120 = icmp ult ptr %i.z, %scevgep97
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.by = icmp ult <2 x ptr> %i.bm, %i.bo
  %i.bz = icmp ult <2 x ptr> %i.bi, %i.bk
  %i.ca = icmp ult <2 x ptr> %i.bs, %i.bu
  %i.cb = icmp ult <2 x ptr> %i.bq, %i.br
  %i.cc = or i64 %i.ae, %i.y
  %i.cd = or i64 %i.ae, %i.aa
  %bound0149 = icmp ult ptr %i.ab, %scevgep100
  %bound1150 = icmp ult ptr %i.ad, %scevgep99
  %found.conflict151 = and i1 %bound0149, %bound1150
  %i.ce = bitcast <4 x i1> %i.bx to i4
  %i.cf = icmp ne i4 %i.ce, 0
  %i.cg = or i64 %i.ac, %i.cc
  %i.ch = or i64 %i.ac, %i.cd
  %i.ci = and <2 x i1> %i.bz, %i.by
  %i.cj = and <2 x i1> %i.cb, %i.ca
  %i.ck = or <2 x i1> %i.ci, %i.cj
  %i.cl = or i64 %i.aa, %i.cg
  %.mask = and i64 %i.ch, 1152921504606846976
  %i.cm = icmp ne i64 %.mask, 0
  %op.rdx165 = or i1 %i.cm, %found.conflict121
  %i.cn = bitcast <2 x i1> %i.ck to i2
  %op.rdx166 = icmp ne i2 %i.cn, 0
  %i.co = or i64 %i.cl, %i.w
  %.mask172 = and i64 %i.co, 1152921504606846976
  %i.cp = icmp ne i64 %.mask172, 0
  %op.rdx167 = or i1 %i.cf, %i.cp
  %op.rdx168 = or i1 %op.rdx165, %op.rdx166
  %op.rdx169 = or i1 %op.rdx167, %op.rdx168
  %op.rdx170 = or i1 %op.rdx169, %found.conflict151
  %n.vec = and i64 %i.a, 4294967294               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next90, %._crit_edge ] ; 6 uses
  %.06180 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next85.lcssa, %._crit_edge ] ; 3 uses
  %i.cq = mul nsw i64 %i.w, %indvars.iv89
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.cq ; 2 uses
  %i.cr = mul nsw i64 %i.y, %indvars.iv89
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.x, i64 %i.cr ; 2 uses
  %i.cs = mul nsw i64 %i.aa, %indvars.iv89
  %invariant.gep74 = getelementptr [8 x i8], ptr %i.z, i64 %i.cs ; 2 uses
  %i.ct = mul nsw i64 %i.ac, %indvars.iv89
  %invariant.gep76 = getelementptr [8 x i8], ptr %i.ab, i64 %i.ct ; 2 uses
  %i.cu = mul nsw i64 %i.ae, %indvars.iv89
  %invariant.gep78 = getelementptr [8 x i8], ptr %i.ad, i64 %i.cu ; 2 uses
  %brmerge175 = select i1 %min.iters.check, i1 true, i1 %op.rdx170
  br i1 %brmerge175, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %7 = add i64 %.06180, %n.vec                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cv = add i64 %.06180, %index                 ; 3 uses
  %i.cw = shl nsw i64 %i.cv, 4
  %i.cx = shl i64 %i.cv, 4
  %i.cy = getelementptr inbounds i8, ptr %i.l, i64 %i.cw ; 4 uses
  %i.cz = getelementptr i8, ptr %i.l, i64 %i.cx   ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load float, ptr %i.cy, align 4, !tbaa !20
  %i.dc = load float, ptr %i.da, align 4, !tbaa !20
  %i.dd = insertelement <2 x float> poison, float %i.db, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.dc, i64 1
  %i.df = fpext <2 x float> %i.de to <2 x double>
  %i.dg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.df, ptr %i.dg, align 8, !tbaa !45, !alias.scope !46, !noalias !47
  %i.dh = getelementptr i8, ptr %i.cy, i64 4
  %i.di = getelementptr i8, ptr %i.cz, i64 20
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !20
  %i.dk = load float, ptr %i.di, align 4, !tbaa !20
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dk, i64 1
  %i.dn = fpext <2 x float> %i.dm to <2 x double>
  %i.do = getelementptr [8 x i8], ptr %invariant.gep72, i64 %index
  store <2 x double> %i.dn, ptr %i.do, align 8, !tbaa !45, !alias.scope !48, !noalias !49
  %i.dp = getelementptr i8, ptr %i.cy, i64 8
  %i.dq = getelementptr i8, ptr %i.cz, i64 24
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !20
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !20
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.ds, i64 1
  %i.dv = fpext <2 x float> %i.du to <2 x double>
  %i.dw = getelementptr [8 x i8], ptr %invariant.gep74, i64 %index
  store <2 x double> %i.dv, ptr %i.dw, align 8, !tbaa !45, !alias.scope !50, !noalias !51
  %i.dx = getelementptr i8, ptr %i.cy, i64 12
  %i.dy = getelementptr i8, ptr %i.cz, i64 28
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !20
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !20
  %i.eb = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  %i.ed = fpext <2 x float> %i.ec to <2 x double>
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep76, i64 %index
  store <2 x double> %i.ed, ptr %i.ee, align 8, !tbaa !45, !alias.scope !52, !noalias !53
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cv
  %wide.load = load <2 x float>, ptr %i.ef, align 4, !tbaa !20
  %i.eg = fpext <2 x float> %wide.load to <2 x double>
  %i.eh = getelementptr [8 x i8], ptr %invariant.gep78, i64 %index
  store <2 x double> %i.eg, ptr %i.eh, align 8, !tbaa !45, !alias.scope !53
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv84.ph = phi i64 [ %7, %middle.block ], [ %.06180, %.preheader ]
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  tail call void @free(ptr noundef %i.l) #6
  tail call void @free(ptr noundef %i.n) #6
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next85.lcssa = phi i64 [ %7, %middle.block ], [ %indvars.iv.next85, %scalar.ph ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %i.b
  br i1 %exitcond93.not, label %._crit_edge82.split, label %.preheader, !llvm.loop !42

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv84, 4
  %i.ej = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv
  %gep75 = getelementptr [8 x i8], ptr %invariant.gep74, i64 %indvars.iv
  %i.ek = load <4 x float>, ptr %i.ej, align 4, !tbaa !20
  %i.el = fpext <4 x float> %i.ek to <4 x double> ; 4 uses
  %i.em = extractelement <4 x double> %i.el, i64 0
  store double %i.em, ptr %gep, align 8, !tbaa !45
  %i.en = extractelement <4 x double> %i.el, i64 1
  store double %i.en, ptr %gep73, align 8, !tbaa !45
  %i.eo = extractelement <4 x double> %i.el, i64 2
  store double %i.eo, ptr %gep75, align 8, !tbaa !45
  %gep77 = getelementptr [8 x i8], ptr %invariant.gep76, i64 %indvars.iv
  %i.ep = extractelement <4 x double> %i.el, i64 3
  store double %i.ep, ptr %gep77, align 8, !tbaa !45
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv84
  %i.er = load float, ptr %i.eq, align 4, !tbaa !20
  %i.es = fpext float %i.er to double
  %gep79 = getelementptr [8 x i8], ptr %invariant.gep78, i64 %indvars.iv
  store double %i.es, ptr %gep79, align 8, !tbaa !45
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl11read_pixelsIfEEvjjRN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 18 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  %or.cond.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %i.b
  %i.f = icmp samesign ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69: ; preds = %bb.b, %bb.a
  %i.h = mul nuw nsw i64 %i.b, %i.a               ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.h, i64 noundef %i.a, i64 noundef %i.b)
  %i.i = mul i32 %1, %0                           ; 2 uses
  %i.j = shl i32 %i.i, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #9 ; 12 uses
  %i.m = zext i32 %i.i to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #9 ; 6 uses
  %i.o = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.o(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.l)
  %i.p = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !13
  tail call void %i.p(i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.n)
  %brmerge = or i1 %i.d, %i.c
  br i1 %brmerge, label %._crit_edge82.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %2, align 8, !tbaa !25     ; 5 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26   ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !25     ; 8 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !25     ; 5 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !26  ; 4 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !25    ; 8 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !26  ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !25    ; 8 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !26  ; 3 uses
  %i.af = add nsw i64 %i.a, -1                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 4
  %scevgep98 = getelementptr i8, ptr %i.l, i64 8
  %scevgep100 = getelementptr i8, ptr %i.l, i64 12
  %i.ag = add nsw i64 %i.b, -1                    ; 5 uses
  %i.ah = mul i64 %i.w, %i.ag
  %i.ai = shl nuw nsw i64 %i.a, 2
  %i.aj = add i64 %i.ah, %i.a
  %i.ak = shl i64 %i.aj, 2
  %scevgep102 = getelementptr i8, ptr %i.v, i64 %i.ak ; 3 uses
  %i.al = mul i64 %i.y, %i.ag
  %i.am = add i64 %i.al, %i.a
  %i.an = shl i64 %i.am, 2
  %scevgep103 = getelementptr i8, ptr %i.x, i64 %i.an ; 6 uses
  %i.ao = mul i64 %i.aa, %i.ag
  %i.ap = add i64 %i.ao, %i.a
  %i.aq = shl i64 %i.ap, 2
  %scevgep104 = getelementptr i8, ptr %i.z, i64 %i.aq ; 3 uses
  %i.ar = mul i64 %i.ac, %i.ag
  %i.as = add i64 %i.ar, %i.a
  %i.at = shl i64 %i.as, 2
  %scevgep105 = getelementptr i8, ptr %i.ab, i64 %i.at ; 6 uses
  %i.au = mul i64 %i.ae, %i.ag
  %i.av = add i64 %i.au, %i.a
  %i.aw = shl i64 %i.av, 2
  %scevgep106 = getelementptr i8, ptr %i.ad, i64 %i.aw ; 6 uses
  %i.ax = shl nuw nsw i64 %i.a, 4
  %scevgep108 = getelementptr i8, ptr %i.l, i64 %i.ax
  %scevgep111 = getelementptr i8, ptr %i.n, i64 %i.ai
  %i.ay = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.az = shufflevector <4 x ptr> %i.ay, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ba = insertelement <4 x ptr> poison, ptr %scevgep103, i64 0
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %scevgep104, i64 1
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep105, i64 2
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %scevgep106, i64 3
  %i.be = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.z, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %i.ab, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %i.ad, i64 3
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep105, i64 0
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %scevgep106, i64 1
  %i.bo = insertelement <4 x ptr> poison, ptr %i.ab, i64 0
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %i.ad, i64 1
  %i.bq = insertelement <4 x ptr> poison, ptr %scevgep104, i64 0
  %i.br = shufflevector <4 x ptr> %i.bq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %0, 64
  %mul.result = shl nsw i64 %i.af, 4              ; 3 uses
  %mul.overflow = icmp ugt i64 %i.af, 1152921504606846975
  %i.bs = icmp ult <4 x ptr> %i.az, %i.bd
  %i.bt = icmp ult <4 x ptr> %i.bh, %i.bj
  %i.bu = and <4 x i1> %i.bs, %i.bt
  %bound0141 = icmp ult ptr %i.x, %scevgep104
  %bound1142 = icmp ult ptr %i.z, %scevgep103
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0147 = icmp ult ptr %i.x, %scevgep105
  %bound1148 = icmp ult ptr %i.ab, %scevgep103
  %found.conflict149 = and i1 %bound0147, %bound1148
  %bound0153 = icmp ult ptr %i.x, %scevgep106
  %bound1154 = icmp ult ptr %i.ad, %scevgep103
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0191 = icmp ult ptr %i.ab, %scevgep106
  %bound1192 = icmp ult ptr %i.ad, %scevgep105
  %found.conflict193 = and i1 %bound0191, %bound1192
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %i.bw = icmp ne i4 %i.bv, 0
  %op.rdx250 = or i1 %found.conflict149, %found.conflict155
  %i.bx = or i64 %i.w, %i.y
  %i.by = or i64 %i.bx, %i.ac
  %i.bz = or i64 %i.by, %i.aa
  %.mask = and i64 %i.bz, 2305843009213693952
  %i.ca = icmp ne i64 %.mask, 0
  %i.cb = or i64 %i.y, %i.ae
  %i.cc = or i64 %i.cb, %i.ac
  %i.cd = or i64 %i.cc, %i.aa
  %i.ce = or i64 %i.cd, %i.w
  %.mask276 = and i64 %i.ce, 2305843009213693952
  %i.cf = icmp ne i64 %.mask276, 0
  %op.rdx274 = or i1 %i.cf, %i.bw
  %n.vec = and i64 %i.a, 4294967292               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next90, %._crit_edge ] ; 6 uses
  %.06180 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next85.lcssa, %._crit_edge ] ; 8 uses
  %i.cg = mul nsw i64 %i.w, %indvars.iv89
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.cg ; 2 uses
  %i.ch = mul nsw i64 %i.y, %indvars.iv89
  %invariant.gep72 = getelementptr [4 x i8], ptr %i.x, i64 %i.ch ; 2 uses
  %i.ci = mul nsw i64 %i.aa, %indvars.iv89
  %invariant.gep74 = getelementptr [4 x i8], ptr %i.z, i64 %i.ci ; 2 uses
  %i.cj = mul nsw i64 %i.ac, %indvars.iv89
  %invariant.gep76 = getelementptr [4 x i8], ptr %i.ab, i64 %i.cj ; 2 uses
  %i.ck = mul nsw i64 %i.ae, %indvars.iv89
  %invariant.gep78 = getelementptr [4 x i8], ptr %i.ad, i64 %i.ck ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.cl = shl i64 %.06180, 4                      ; 3 uses
  %scevgep97 = getelementptr i8, ptr %scevgep, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %scevgep97, i64 %mul.result
  %i.cn = icmp ult ptr %i.cm, %scevgep97
  %scevgep99 = getelementptr i8, ptr %scevgep98, i64 %i.cl ; 2 uses
  %i.co = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.cp = icmp ult ptr %i.co, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.cl ; 2 uses
  %i.cq = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.cr = icmp ult ptr %i.cq, %scevgep101
  %i.cs = or i1 %i.cr, %mul.overflow
  %i.ct = or i1 %i.cp, %i.cn
  %i.cu = or i1 %i.ct, %i.cs
  br i1 %i.cu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cv = shl i64 %.06180, 4                      ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.l, i64 %i.cv ; 5 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.cv ; 5 uses
  %i.cw = shl i64 %.06180, 2                      ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.n, i64 %i.cw ; 5 uses
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.cw ; 5 uses
  %bound0131 = icmp ult ptr %i.v, %scevgep109
  %bound1132 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0136 = icmp ult ptr %i.v, %scevgep112
  %bound1137 = icmp ult ptr %scevgep110, %scevgep102
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0159 = icmp ult ptr %i.x, %scevgep109
  %bound1160 = icmp ult ptr %scevgep107, %scevgep103
  %found.conflict161 = and i1 %bound0159, %bound1160
  %bound0164 = icmp ult ptr %i.x, %scevgep112
  %bound1165 = icmp ult ptr %scevgep110, %scevgep103
  %found.conflict166 = and i1 %bound0164, %bound1165
  %i.cx = insertelement <4 x ptr> %i.bn, ptr %scevgep109, i64 2
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %scevgep112, i64 3
  %i.cz = icmp ult <4 x ptr> %i.bl, %i.cy
  %i.da = insertelement <4 x ptr> %i.bp, ptr %scevgep107, i64 2
  %i.db = insertelement <4 x ptr> %i.da, ptr %scevgep110, i64 3
  %i.dc = icmp ult <4 x ptr> %i.db, %i.br
  %i.dd = and <4 x i1> %i.cz, %i.dc
  %bound0197 = icmp ult ptr %i.ab, %scevgep109
  %bound1198 = icmp ult ptr %scevgep107, %scevgep105
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0202 = icmp ult ptr %i.ab, %scevgep112
  %bound1203 = icmp ult ptr %scevgep110, %scevgep105
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0207 = icmp ult ptr %i.ad, %scevgep109
  %bound1208 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0212 = icmp ult ptr %i.ad, %scevgep112
  %bound1213 = icmp ult ptr %scevgep110, %scevgep106
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.de = bitcast <4 x i1> %i.dd to i4
  %i.df = icmp ne i4 %i.de, 0
  %op.rdx248 = or i1 %i.df, %found.conflict133
  %op.rdx249 = or i1 %found.conflict138, %found.conflict143
  %op.rdx251 = or i1 %found.conflict161, %found.conflict166
  %op.rdx252 = or i1 %found.conflict193, %found.conflict199
  %op.rdx253 = or i1 %found.conflict204, %found.conflict209
  %op.rdx262 = or i1 %op.rdx248, %op.rdx249
  %op.rdx263 = or i1 %op.rdx250, %op.rdx251
  %op.rdx264 = or i1 %op.rdx252, %op.rdx253
  %op.rdx265 = or i1 %found.conflict214, %i.ca
  %op.rdx269 = or i1 %op.rdx262, %op.rdx263
  %op.rdx270 = or i1 %op.rdx264, %op.rdx265
  %op.rdx273 = or i1 %op.rdx269, %op.rdx270
  %op.rdx275 = or i1 %op.rdx273, %op.rdx274
  br i1 %op.rdx275, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %7 = add i64 %.06180, %n.vec                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.dg = add i64 %.06180, %index                 ; 5 uses
  %i.dh = shl nsw i64 %i.dg, 4
  %i.di = shl i64 %i.dg, 4
  %i.dj = shl i64 %i.dg, 4
  %i.dk = shl i64 %i.dg, 4
  %i.dl = getelementptr inbounds i8, ptr %i.l, i64 %i.dh ; 4 uses
  %i.dm = getelementptr i8, ptr %i.l, i64 %i.di   ; 4 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = getelementptr i8, ptr %i.l, i64 %i.dj   ; 4 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %i.dq = getelementptr i8, ptr %i.l, i64 %i.dk   ; 4 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 48
  %i.ds = load float, ptr %i.dl, align 4, !tbaa !20, !alias.scope !65
  %i.dt = load float, ptr %i.dn, align 4, !tbaa !20, !alias.scope !65
  %i.du = load float, ptr %i.dp, align 4, !tbaa !20, !alias.scope !65
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !20, !alias.scope !65
  %i.dw = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.dz, ptr %i.ea, align 4, !tbaa !20, !alias.scope !66, !noalias !67
  %i.eb = getelementptr i8, ptr %i.dl, i64 4
  %i.ec = getelementptr i8, ptr %i.dm, i64 20
  %i.ed = getelementptr i8, ptr %i.do, i64 36
  %i.ee = getelementptr i8, ptr %i.dq, i64 52
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !20, !alias.scope !65
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !20, !alias.scope !65
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !20, !alias.scope !65
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !20, !alias.scope !65
  %i.ej = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.ei, i64 3
  %i.en = getelementptr [4 x i8], ptr %invariant.gep72, i64 %index
  store <4 x float> %i.em, ptr %i.en, align 4, !tbaa !20, !alias.scope !68, !noalias !69
  %i.eo = getelementptr i8, ptr %i.dl, i64 8
  %i.ep = getelementptr i8, ptr %i.dm, i64 24
  %i.eq = getelementptr i8, ptr %i.do, i64 40
  %i.er = getelementptr i8, ptr %i.dq, i64 56
  %i.es = load float, ptr %i.eo, align 4, !tbaa !20, !alias.scope !65
  %i.et = load float, ptr %i.ep, align 4, !tbaa !20, !alias.scope !65
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !20, !alias.scope !65
  %i.ev = load float, ptr %i.er, align 4, !tbaa !20, !alias.scope !65
  %i.ew = insertelement <4 x float> poison, float %i.es, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 3
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep74, i64 %index
  store <4 x float> %i.ez, ptr %i.fa, align 4, !tbaa !20, !alias.scope !70, !noalias !71
  %i.fb = getelementptr i8, ptr %i.dl, i64 12
  %i.fc = getelementptr i8, ptr %i.dm, i64 28
  %i.fd = getelementptr i8, ptr %i.do, i64 44
  %i.fe = getelementptr i8, ptr %i.dq, i64 60
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !20, !alias.scope !65
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !20, !alias.scope !65
  %i.fh = load float, ptr %i.fd, align 4, !tbaa !20, !alias.scope !65
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !20, !alias.scope !65
  %i.fj = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.fg, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 3
  %i.fn = getelementptr [4 x i8], ptr %invariant.gep76, i64 %index
  store <4 x float> %i.fm, ptr %i.fn, align 4, !tbaa !20, !alias.scope !72, !noalias !73
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.dg
  %wide.load = load <4 x float>, ptr %i.fo, align 4, !tbaa !20, !alias.scope !74
  %i.fp = getelementptr [4 x i8], ptr %invariant.gep78, i64 %index
  store <4 x float> %wide.load, ptr %i.fp, align 4, !tbaa !20, !alias.scope !75, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv84.ph = phi i64 [ %.06180, %vector.memcheck ], [ %.06180, %vector.scevcheck ], [ %.06180, %.preheader ], [ %7, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge82.split:                              ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit69
  tail call void @free(ptr noundef %i.l) #6
  tail call void @free(ptr noundef %i.n) #6
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next85.lcssa = phi i64 [ %7, %middle.block ], [ %indvars.iv.next85, %scalar.ph ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %i.b
  br i1 %exitcond93.not, label %._crit_edge82.split, label %.preheader, !llvm.loop !63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv84, 4
  %i.fr = getelementptr inbounds i8, ptr %i.l, i64 %.idx ; 4 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !20
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.fs, ptr %gep, align 4, !tbaa !20
  %i.ft = getelementptr i8, ptr %i.fr, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !20
  %gep73 = getelementptr [4 x i8], ptr %invariant.gep72, i64 %indvars.iv
  store float %i.fu, ptr %gep73, align 4, !tbaa !20
  %i.fv = getelementptr i8, ptr %i.fr, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !20
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %indvars.iv
  store float %i.fw, ptr %gep75, align 4, !tbaa !20
  %i.fx = getelementptr i8, ptr %i.fr, i64 12
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !20
  %gep77 = getelementptr [4 x i8], ptr %invariant.gep76, i64 %indvars.iv
  store float %i.fy, ptr %gep77, align 4, !tbaa !20
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv84
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !20
  %gep79 = getelementptr [4 x i8], ptr %invariant.gep78, i64 %indvars.iv
  store float %i.ga, ptr %gep79, align 4, !tbaa !20
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !64
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #6
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !18
  store i64 %3, ptr %i.c, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.f) #6
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !26
  store i64 %3, ptr %i.c, align 8, !tbaa !78
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 double", !11, i64 0}
!16 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !15, i64 0, !12, i64 8, !12, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !12, i64 8}
!19 = !{!"float", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"p1 float", !11, i64 0}
end_hunk_0
