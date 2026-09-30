Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_huesaturation?download=true
inline.NumInlined: 38
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@config_input:bb.a
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !36
  %i.bb = select i1 %i.ay, ptr @do_slice_8_1, ptr @do_slice_16_1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @matrix_multiply(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %2) unnamed_addr #5 {
.preheader34:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load float, ptr %0, align 4, !tbaa !31
  %i.h = load float, ptr %i.a, align 4, !tbaa !31
  %i.i = load float, ptr %i.b, align 4, !tbaa !31
  %i.j = load float, ptr %i.c, align 4, !tbaa !31
  %i.k = load <4 x float>, ptr %1, align 4, !tbaa !31 ; 4 uses
  %i.l = load <4 x float>, ptr %0, align 4, !tbaa !31 ; 4 uses
  %i.m = load <4 x float>, ptr %i.a, align 4, !tbaa !31 ; 4 uses
  %i.n = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.o = fmul nsz <4 x float> %i.n, %i.m
  %i.p = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.l, <4 x float> %i.o)
  %i.r = load <4 x float>, ptr %i.b, align 4, !tbaa !31 ; 4 uses
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.t = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.r, <4 x float> %i.q)
  %i.u = load <4 x float>, ptr %i.c, align 4, !tbaa !31 ; 4 uses
  %i.v = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.u, <4 x float> %i.t)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load <4 x float>, ptr %i.d, align 4, !tbaa !31 ; 4 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.z = fmul nsz <4 x float> %i.y, %i.m
  %i.aa = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.l, <4 x float> %i.z)
  %i.ac = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ad = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.r, <4 x float> %i.ab)
  %i.ae = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.u, <4 x float> %i.ad)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load <4 x float>, ptr %i.e, align 4, !tbaa !31 ; 4 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ai = fmul nsz <4 x float> %i.ah, %i.m
  %i.aj = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.l, <4 x float> %i.ai)
  %i.al = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.r, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ao = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.u, <4 x float> %i.am)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ap = load <4 x float>, ptr %i.f, align 4, !tbaa !31 ; 4 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ar = insertelement <4 x float> %i.m, float %i.h, i64 0
  %i.as = fmul nsz <4 x float> %i.aq, %i.ar
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = insertelement <4 x float> %i.l, float %i.g, i64 0
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.au, <4 x float> %i.as)
  %i.aw = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ax = insertelement <4 x float> %i.r, float %i.i, i64 0
  %i.ay = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ax, <4 x float> %i.av)
  %i.az = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = insertelement <4 x float> %i.u, float %i.j, i64 0
  %i.bb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ba, <4 x float> %i.ay)
  store <4 x float> %i.w, ptr %2, align 4, !tbaa !31
  store <4 x float> %i.af, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !31
  store <4 x float> %i.ao, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !31
  store <4 x float> %i.bb, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !31
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

declare i32 @av_get_padded_bits_per_pixel(ptr noundef) local_unnamed_addr #0

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_slice_8_0(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = sext i32 %2 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = sdiv i64 %i.m, %i.n                      ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.k, %i.r
  %i.t = sdiv i64 %i.s, %i.n
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = icmp slt i32 %i.p, %i.u
  br i1 %i.y, label %.preheader.lr.ph, label %._crit_edge157.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %i.ab = mul nsw i32 %i.aa, %i.h                 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = and i32 %i.f, 1
  %.not104 = icmp eq i32 %i.ad, 0
  %i.ae = and i32 %i.f, 2
  %.not105 = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.f, 4
  %.not106 = icmp eq i32 %i.af, 0
  %i.ag = and i32 %i.f, 8
  %.not107 = icmp eq i32 %i.ag, 0
  %i.ah = and i32 %i.f, 16
  %.not108 = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.f, 32
  %.not109 = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  br i1 %i.ac, label %.preheader.preheader, label %._crit_edge157.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.as = load ptr, ptr %1, align 8, !tbaa !45
  %sext = shl i64 %i.o, 32
  %i.at = ashr exact i64 %sext, 32
  %i.au = mul nsw i64 %i.at, %i.x
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !46
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 281
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 282
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !46
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bg
  %i.bi = sext i32 %i.h to i64
  %i.bj = zext nneg i32 %i.ab to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.090156 = phi i32 [ %i.bn, %._crit_edge ], [ %i.p, %.preheader.preheader ]
  %.091155 = phi ptr [ %i.bm, %._crit_edge ], [ %i.bh, %.preheader.preheader ] ; 2 uses
  %.092154 = phi ptr [ %i.bl, %._crit_edge ], [ %i.bd, %.preheader.preheader ] ; 2 uses
  %.093153 = phi ptr [ %i.bk, %._crit_edge ], [ %i.az, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge157.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %bb.l
  %i.bk = getelementptr inbounds i8, ptr %.093153, i64 %i.x
  %i.bl = getelementptr inbounds i8, ptr %.092154, i64 %i.x
  %i.bm = getelementptr inbounds i8, ptr %.091155, i64 %i.x
  %i.bn = add nsw i32 %.090156, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.u
  br i1 %exitcond.not, label %._crit_edge157.split, label %.preheader, !llvm.loop !68

bb.b:                                             ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.093153, i64 %indvars.iv ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !46  ; 2 uses
  %i.bq = zext i8 %i.bp to i32                    ; 11 uses
  %i.br = getelementptr inbounds i8, ptr %.092154, i64 %indvars.iv ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !46  ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 11 uses
  %i.bu = getelementptr inbounds i8, ptr %.091155, i64 %indvars.iv ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !46  ; 2 uses
  %i.bw = zext i8 %i.bv to i32                    ; 13 uses
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.bt) ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.bw) ; 2 uses
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bt) ; 3 uses
  %i.bz = tail call i32 @llvm.umax.i32(i32 %i.by, i32 %i.bw) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, %i.bq
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %., %i.bq
  %i.cd = select i1 %i.cc, i32 8, i32 0
  %i.ce = icmp eq i32 %i.bz, %i.bt
  %i.cf = select i1 %i.ce, i32 4, i32 0
  %i.cg = icmp eq i32 %., %i.bt
  %i.ch = select i1 %i.cg, i32 32, i32 0
  %.not150 = icmp samesign ugt i32 %i.by, %i.bw
  %i.ci = select i1 %.not150, i32 0, i32 16
  %.not151 = icmp samesign ult i32 %i.bx, %i.bw
  %i.cj = select i1 %.not151, i32 0, i32 2
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or disjoint i32 %i.ck, %i.cb
  %i.cm = or disjoint i32 %i.cl, %i.cd
  %i.cn = or disjoint i32 %i.cm, %i.cf
  %i.co = or disjoint i32 %i.cn, %i.ch
  %i.cp = and i32 %i.co, %i.f
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not104, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.bw)
  %i.cr = sub nsw i32 %i.bq, %i.cq
  %.110 = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %.110, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.cs = sub nsw i32 %i.bx, %i.bw
  %.0. = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.cs)
  %.1 = select i1 %.not105, i32 %.0, i32 %.0.     ; 2 uses
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bw)
  %i.cu = sub nsw i32 %i.bt, %i.ct
  %.1. = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.cu)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %.1., %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  br i1 %.not107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bw)
  %i.cw = sub nsw i32 %i.cv, %i.bq
  %.2. = tail call i32 @llvm.smax.i32(i32 %.2, i32 %i.cw)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %.2., %bb.h ], [ %.2, %bb.g ]   ; 2 uses
  %i.cx = sub nsw i32 %i.bw, %i.by
  %.3. = tail call i32 @llvm.smax.i32(i32 %.3, i32 %i.cx)
  %.4 = select i1 %.not108, i32 %.3, i32 %.3.     ; 2 uses
  br i1 %.not109, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.bw)
  %i.cz = sub nsw i32 %i.cy, %i.bt
  %.4. = tail call i32 @llvm.smax.i32(i32 %.4, i32 %i.cz)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5 = phi i32 [ %.4., %bb.j ], [ %.4, %bb.i ]
  %i.da = uitofp nneg i32 %.5 to float
  %i.db = fmul nsz float %i.d, %i.da              ; 2 uses
  %i.dc = fcmp nsz ogt float %i.db, 2.550000e+02
  %i.dd = select nsz i1 %i.dc, float 2.550000e+02, float %i.db
  %i.de = fptosi float %i.dd to i32
  %i.df = zext i8 %i.bp to i64                    ; 3 uses
  %i.dg = load i64, ptr %i.aj, align 8, !tbaa !33
  %i.dh = mul nsw i64 %i.dg, %i.df
  %i.di = zext i8 %i.bs to i64                    ; 3 uses
  %i.dj = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.dk = mul nsw i64 %i.dj, %i.di
  %i.dl = add nsw i64 %i.dk, %i.dh
  %i.dm = zext i8 %i.bv to i64                    ; 3 uses
  %i.dn = load i64, ptr %i.al, align 8, !tbaa !33
  %i.do = mul nsw i64 %i.dn, %i.dm
  %i.dp = add nsw i64 %i.dl, %i.do
  %i.dq = lshr i64 %i.dp, 16
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load i64, ptr %i.am, align 8, !tbaa !33
  %i.dt = mul nsw i64 %i.ds, %i.df
  %i.du = load i64, ptr %i.an, align 8, !tbaa !33
  %i.dv = mul nsw i64 %i.du, %i.di
  %i.dw = add nsw i64 %i.dv, %i.dt
  %i.dx = load i64, ptr %i.ao, align 8, !tbaa !33
  %i.dy = mul nsw i64 %i.dx, %i.dm
  %i.dz = add nsw i64 %i.dw, %i.dy
  %i.ea = lshr i64 %i.dz, 16
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = load i64, ptr %i.ap, align 8, !tbaa !33
  %i.ed = mul nsw i64 %i.ec, %i.df
  %i.ee = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.ef = mul nsw i64 %i.ee, %i.di
  %i.eg = add nsw i64 %i.ef, %i.ed
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.ei = mul nsw i64 %i.eh, %i.dm
  %i.ej = add nsw i64 %i.eg, %i.ei
  %i.ek = lshr i64 %i.ej, 16
  %i.el = trunc i64 %i.ek to i32
  %i.em = sub nsw i32 %i.dr, %i.bq
  %i.en = mul i32 %i.de, 257                      ; 3 uses
  %i.eo = mul i32 %i.em, %i.en
  %i.ep = add i32 %i.eo, 32896
  %i.eq = ashr i32 %i.ep, 16
  %i.er = add nsw i32 %i.eq, %i.bq
  %i.es = sub nsw i32 %i.eb, %i.bt
  %i.et = mul i32 %i.es, %i.en
  %i.eu = add i32 %i.et, 32896
  %i.ev = ashr i32 %i.eu, 16
  %i.ew = add nsw i32 %i.ev, %i.bt
  %i.ex = sub nsw i32 %i.el, %i.bw
  %i.ey = mul i32 %i.ex, %i.en
  %i.ez = add i32 %i.ey, 32896
  %i.fa = ashr i32 %i.ez, 16
  %i.fb = add nsw i32 %i.fa, %i.bw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.0149 = phi i32 [ %i.bq, %bb.b ], [ %i.er, %bb.k ] ; 3 uses
  %.0148 = phi i32 [ %i.bt, %bb.b ], [ %i.ew, %bb.k ] ; 3 uses
  %.0147 = phi i32 [ %i.bw, %bb.b ], [ %i.fb, %bb.k ] ; 3 uses
  %.not.i114 = icmp ult i32 %.0149, 256
  %isnotneg.i115 = icmp sgt i32 %.0149, -1
  %4 = sext i1 %isnotneg.i115 to i8
  %5 = trunc nuw i32 %.0149 to i8
  %.0.i116 = select i1 %.not.i114, i8 %5, i8 %4
  store i8 %.0.i116, ptr %i.bo, align 1, !tbaa !46
  %.not.i111 = icmp ult i32 %.0148, 256
  %isnotneg.i112 = icmp sgt i32 %.0148, -1
  %6 = sext i1 %isnotneg.i112 to i8
  %7 = trunc nuw i32 %.0148 to i8
  %.0.i113 = select i1 %.not.i111, i8 %7, i8 %6
  store i8 %.0.i113, ptr %i.br, align 1, !tbaa !46
  %.not.i = icmp ult i32 %.0147, 256
  %isnotneg.i = icmp sgt i32 %.0147, -1
  %8 = sext i1 %isnotneg.i to i8
  %9 = trunc nuw i32 %.0147 to i8
  %.0.i = select i1 %.not.i, i8 %9, i8 %8
  store i8 %.0.i, ptr %i.bu, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bi ; 2 uses
  %i.fc = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.fc, label %bb.b, label %._crit_edge, !llvm.loop !69
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_slice_16_0(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = sext i32 %2 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = sdiv i64 %i.m, %i.n                      ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.k, %i.r
  %i.t = sdiv i64 %i.s, %i.n
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37
  %i.x = sext i32 %i.w to i64
  %i.y = lshr i64 %i.x, 1                         ; 4 uses
  %i.z = icmp slt i32 %i.p, %i.u
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge157.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !44
  %i.ac = mul nsw i32 %i.ab, %i.h                 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = and i32 %i.f, 1
  %.not104 = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.f, 2
  %.not105 = icmp eq i32 %i.af, 0
  %i.ag = and i32 %i.f, 4
  %.not106 = icmp eq i32 %i.ag, 0
  %i.ah = and i32 %i.f, 8
  %.not107 = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.f, 16
  %.not108 = icmp eq i32 %i.ai, 0
  %i.aj = and i32 %i.f, 32
  %.not109 = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  br i1 %i.ad, label %.preheader.preheader, label %._crit_edge157.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.at = load ptr, ptr %1, align 8, !tbaa !45
  %sext = shl i64 %i.o, 32
  %i.au = ashr exact i64 %sext, 32
  %i.av = mul nsw i64 %i.y, %i.au
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !46
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 281
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !46
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 282
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !46
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bh
  %i.bj = sext i32 %i.h to i64
  %i.bk = zext nneg i32 %i.ac to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.090156 = phi i32 [ %i.bo, %._crit_edge ], [ %i.p, %.preheader.preheader ]
  %.091155 = phi ptr [ %i.bn, %._crit_edge ], [ %i.bi, %.preheader.preheader ] ; 2 uses
  %.092154 = phi ptr [ %i.bm, %._crit_edge ], [ %i.be, %.preheader.preheader ] ; 2 uses
  %.093153 = phi ptr [ %i.bl, %._crit_edge ], [ %i.ba, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge157.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.093153, i64 %i.y
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.092154, i64 %i.y
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.091155, i64 %i.y
  %i.bo = add nsw i32 %.090156, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %i.u
  br i1 %exitcond.not, label %._crit_edge157.split, label %.preheader, !llvm.loop !70

bb.b:                                             ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %.093153, i64 %indvars.iv ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !49 ; 2 uses
  %i.br = zext i16 %i.bq to i32                   ; 11 uses
  %i.bs = getelementptr inbounds [2 x i8], ptr %.092154, i64 %indvars.iv ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !49 ; 2 uses
  %i.bu = zext i16 %i.bt to i32                   ; 11 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %.091155, i64 %indvars.iv ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !49 ; 2 uses
  %i.bx = zext i16 %i.bw to i32                   ; 13 uses
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bu) ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bx) ; 2 uses
  %i.bz = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.bu) ; 3 uses
  %i.ca = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 %i.bx) ; 2 uses
  %i.cb = icmp eq i32 %i.ca, %i.br
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %., %i.br
  %i.ce = select i1 %i.cd, i32 8, i32 0
  %i.cf = icmp eq i32 %i.ca, %i.bu
  %i.cg = select i1 %i.cf, i32 4, i32 0
  %i.ch = icmp eq i32 %., %i.bu
  %i.ci = select i1 %i.ch, i32 32, i32 0
  %.not150 = icmp samesign ugt i32 %i.bz, %i.bx
  %i.cj = select i1 %.not150, i32 0, i32 16
  %.not151 = icmp samesign ult i32 %i.by, %i.bx
  %i.ck = select i1 %.not151, i32 0, i32 2
  %i.cl = or disjoint i32 %i.ck, %i.cj
  %i.cm = or disjoint i32 %i.cl, %i.cc
  %i.cn = or disjoint i32 %i.cm, %i.ce
  %i.co = or disjoint i32 %i.cn, %i.cg
  %i.cp = or disjoint i32 %i.co, %i.ci
  %i.cq = and i32 %i.cp, %i.f
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not104, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bx)
  %i.cs = sub nsw i32 %i.br, %i.cr
  %.110 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %.110, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.ct = sub nsw i32 %i.by, %i.bx
  %.0. = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.ct)
  %.1 = select i1 %.not105, i32 %.0, i32 %.0.     ; 2 uses
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.bx)
  %i.cv = sub nsw i32 %i.bu, %i.cu
  %.1. = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.cv)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %.1., %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  br i1 %.not107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.bx)
  %i.cx = sub nsw i32 %i.cw, %i.br
  %.2. = tail call i32 @llvm.smax.i32(i32 %.2, i32 %i.cx)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %.2., %bb.h ], [ %.2, %bb.g ]   ; 2 uses
  %i.cy = sub nsw i32 %i.bx, %i.bz
  %.3. = tail call i32 @llvm.smax.i32(i32 %.3, i32 %i.cy)
  %.4 = select i1 %.not108, i32 %.3, i32 %.3.     ; 2 uses
  br i1 %.not109, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bx)
  %i.da = sub nsw i32 %i.cz, %i.bu
  %.4. = tail call i32 @llvm.smax.i32(i32 %.4, i32 %i.da)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5 = phi i32 [ %.4., %bb.j ], [ %.4, %bb.i ]
  %i.db = uitofp nneg i32 %.5 to float
  %i.dc = fmul nsz float %i.d, %i.db              ; 2 uses
  %i.dd = fcmp nsz ogt float %i.dc, 6.553500e+04
  %i.de = select nsz i1 %i.dd, float 6.553500e+04, float %i.dc
  %i.df = fptosi float %i.de to i32
  %i.dg = zext i16 %i.bq to i64                   ; 3 uses
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.di = mul nsw i64 %i.dh, %i.dg
  %i.dj = zext i16 %i.bt to i64                   ; 3 uses
  %i.dk = load i64, ptr %i.al, align 8, !tbaa !33
  %i.dl = mul nsw i64 %i.dk, %i.dj
  %i.dm = add nsw i64 %i.dl, %i.di
  %i.dn = zext i16 %i.bw to i64                   ; 3 uses
  %i.do = load i64, ptr %i.am, align 8, !tbaa !33
  %i.dp = mul nsw i64 %i.do, %i.dn
  %i.dq = add nsw i64 %i.dm, %i.dp
  %i.dr = lshr i64 %i.dq, 16
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = load i64, ptr %i.an, align 8, !tbaa !33
  %i.du = mul nsw i64 %i.dt, %i.dg
  %i.dv = load i64, ptr %i.ao, align 8, !tbaa !33
  %i.dw = mul nsw i64 %i.dv, %i.dj
  %i.dx = add nsw i64 %i.dw, %i.du
  %i.dy = load i64, ptr %i.ap, align 8, !tbaa !33
  %i.dz = mul nsw i64 %i.dy, %i.dn
  %i.ea = add nsw i64 %i.dx, %i.dz
  %i.eb = lshr i64 %i.ea, 16
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.ee = mul nsw i64 %i.ed, %i.dg
  %i.ef = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.eg = mul nsw i64 %i.ef, %i.dj
  %i.eh = add nsw i64 %i.eg, %i.ee
  %i.ei = load i64, ptr %i.as, align 8, !tbaa !33
  %i.ej = mul nsw i64 %i.ei, %i.dn
  %i.ek = add nsw i64 %i.eh, %i.ej
  %i.el = lshr i64 %i.ek, 16
  %i.em = trunc i64 %i.el to i32
  %i.en = sub nsw i32 %i.ds, %i.br
  %i.eo = sext i32 %i.en to i64
  %i.ep = sext i32 %i.df to i64                   ; 3 uses
  %i.eq = mul nsw i64 %i.eo, %i.ep
  %i.er = sdiv i64 %i.eq, 65535
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, %i.br
  %i.eu = sub nsw i32 %i.ec, %i.bu
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, %i.ep
  %i.ex = sdiv i64 %i.ew, 65535
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = add i32 %i.ey, %i.bu
  %i.fa = sub nsw i32 %i.em, %i.bx
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.ep
  %i.fd = sdiv i64 %i.fc, 65535
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = add i32 %i.fe, %i.bx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.0149 = phi i32 [ %i.br, %bb.b ], [ %i.et, %bb.k ] ; 3 uses
  %.0148 = phi i32 [ %i.bu, %bb.b ], [ %i.ez, %bb.k ] ; 3 uses
  %.0147 = phi i32 [ %i.bx, %bb.b ], [ %i.ff, %bb.k ] ; 3 uses
  %.not.i114 = icmp ult i32 %.0149, 65536
  %isnotneg.i115 = icmp sgt i32 %.0149, -1
  %4 = sext i1 %isnotneg.i115 to i16
  %5 = trunc nuw i32 %.0149 to i16
  %.0.i116 = select i1 %.not.i114, i16 %5, i16 %4
  store i16 %.0.i116, ptr %i.bp, align 2, !tbaa !49
  %.not.i111 = icmp ult i32 %.0148, 65536
  %isnotneg.i112 = icmp sgt i32 %.0148, -1
  %6 = sext i1 %isnotneg.i112 to i16
  %7 = trunc nuw i32 %.0148 to i16
  %.0.i113 = select i1 %.not.i111, i16 %7, i16 %6
  store i16 %.0.i113, ptr %i.bs, align 2, !tbaa !49
  %.not.i = icmp ult i32 %.0147, 65536
  %isnotneg.i = icmp sgt i32 %.0147, -1
  %8 = sext i1 %isnotneg.i to i16
  %9 = trunc nuw i32 %.0147 to i16
  %.0.i = select i1 %.not.i, i16 %9, i16 %8
  store i16 %.0.i, ptr %i.bv, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bj ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.fg, label %bb.b, label %._crit_edge, !llvm.loop !71
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_slice_8_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j                      ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = icmp slt i32 %i.l, %i.q
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge73.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = mul nsw i32 %i.w, %i.d                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  br i1 %i.y, label %.preheader.preheader, label %._crit_edge73.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ai = load ptr, ptr %1, align 8, !tbaa !45
  %sext = shl i64 %i.k, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = mul nsw i64 %i.aj, %i.t
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.an = load i8, ptr %i.am, align 8, !tbaa !46
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 281
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !46
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 282
  %i.av = load i8, ptr %i.au, align 2, !tbaa !46
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aw
  %i.ay = sext i32 %i.d to i64
  %i.az = zext nneg i32 %i.x to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05372 = phi i32 [ %i.bd, %._crit_edge ], [ %i.l, %.preheader.preheader ]
  %.05471 = phi ptr [ %i.bc, %._crit_edge ], [ %i.ax, %.preheader.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.bb, %._crit_edge ], [ %i.at, %.preheader.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.ba, %._crit_edge ], [ %i.ap, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge73.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %bb.b
  %i.ba = getelementptr inbounds i8, ptr %.05669, i64 %i.t
  %i.bb = getelementptr inbounds i8, ptr %.05570, i64 %i.t
  %i.bc = getelementptr inbounds i8, ptr %.05471, i64 %i.t
  %i.bd = add nsw i32 %.05372, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.q
  br i1 %exitcond.not, label %._crit_edge73.split, label %.preheader, !llvm.loop !72

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.05669, i64 %indvars.iv ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !46
  %i.bg = getelementptr inbounds i8, ptr %.05570, i64 %indvars.iv ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !46
  %i.bi = getelementptr inbounds i8, ptr %.05471, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = zext i8 %i.bf to i64                    ; 3 uses
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !33
  %i.bm = mul nsw i64 %i.bl, %i.bk
  %i.bn = zext i8 %i.bh to i64                    ; 3 uses
  %i.bo = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.bp = mul nsw i64 %i.bo, %i.bn
  %i.bq = add nsw i64 %i.bp, %i.bm
  %i.br = zext i8 %i.bj to i64                    ; 3 uses
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.bt = mul nsw i64 %i.bs, %i.br
  %i.bu = add nsw i64 %i.bq, %i.bt
  %i.bv = lshr i64 %i.bu, 16                      ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.by = mul nsw i64 %i.bx, %i.bk
  %i.bz = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ca = mul nsw i64 %i.bz, %i.bn
  %i.cb = add nsw i64 %i.ca, %i.by
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.cd = mul nsw i64 %i.cc, %i.br
  %i.ce = add nsw i64 %i.cb, %i.cd
  %i.cf = lshr i64 %i.ce, 16                      ; 2 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ch = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ci = mul nsw i64 %i.ch, %i.bk
  %i.cj = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ck = mul nsw i64 %i.cj, %i.bn
  %i.cl = add nsw i64 %i.ck, %i.ci
  %i.cm = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.cn = mul nsw i64 %i.cm, %i.br
  %i.co = add nsw i64 %i.cl, %i.cn
  %i.cp = lshr i64 %i.co, 16                      ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %.not.i60 = icmp ult i32 %i.bw, 256
  %isnotneg.i61 = icmp sgt i32 %i.bw, -1
  %i.cr = sext i1 %isnotneg.i61 to i8
  %i.cs = trunc i64 %i.bv to i8
  %.0.i62 = select i1 %.not.i60, i8 %i.cs, i8 %i.cr
  store i8 %.0.i62, ptr %i.be, align 1, !tbaa !46
  %.not.i57 = icmp ult i32 %i.cg, 256
  %isnotneg.i58 = icmp sgt i32 %i.cg, -1
  %i.ct = sext i1 %isnotneg.i58 to i8
  %i.cu = trunc i64 %i.cf to i8
  %.0.i59 = select i1 %.not.i57, i8 %i.cu, i8 %i.ct
  store i8 %.0.i59, ptr %i.bg, align 1, !tbaa !46
  %.not.i = icmp ult i32 %i.cq, 256
  %isnotneg.i = icmp sgt i32 %i.cq, -1
  %i.cv = sext i1 %isnotneg.i to i8
  %i.cw = trunc i64 %i.cp to i8
  %.0.i = select i1 %.not.i, i8 %i.cw, i8 %i.cv
  store i8 %.0.i, ptr %i.bi, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ay ; 2 uses
  %i.cx = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.cx, label %bb.b, label %._crit_edge, !llvm.loop !73
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_slice_16_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j                      ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = sext i32 %i.s to i64
  %i.u = lshr i64 %i.t, 1                         ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !45
  %sext = shl i64 %i.k, 32
  %i.w = ashr exact i64 %sext, 32
  %i.x = mul nsw i64 %i.u, %i.w
  %i.y = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 281
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 282
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !46
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.af
  %i.ah = zext i8 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ah
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aj
  %i.al = icmp slt i32 %i.l, %i.q
  br i1 %i.al, label %.preheader.lr.ph, label %._crit_edge73.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i32, ptr %i.am, align 8, !tbaa !44
  %i.ao = mul nsw i32 %i.an, %i.d                 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
end_hunk_0
