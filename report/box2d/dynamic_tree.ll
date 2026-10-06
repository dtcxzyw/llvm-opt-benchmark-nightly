Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/dynamic_tree?download=true
inline.NumInlined: 146
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2DynamicTree_BoxCast:bb.a
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.062.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 8 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !27 ; 8 uses
  %i.e = fadd <2 x float> %.sroa.062.0.copyload, %.sroa.9.0.copyload
  %i.f = fmul <2 x float> %i.e, splat (float 5.000000e-01) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !27 ; 4 uses
  %i.h = shufflevector <2 x float> %.sroa.057.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.extract.i111 = extractelement <2 x float> %.sroa.057.0.copyload, i64 0 ; 3 uses
  %i.i = fsub <2 x float> %.sroa.9.0.copyload, %.sroa.062.0.copyload
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = extractelement <2 x float> %.sroa.057.0.copyload, i64 1 ; 3 uses
  %i.l = fneg float %i.k
  %i.m = fcmp ogt float %i.k, 0.000000e+00
  %i.n = select i1 %i.m, float %i.k, float %i.l
  %i.o = fcmp olt float %.sroa.0.4.vec.extract.i111, 0.000000e+00
  %i.p = fneg float %.sroa.0.4.vec.extract.i111
  %i.q = select i1 %i.o, float %i.p, float %.sroa.0.4.vec.extract.i111
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !62 ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %.sroa.057.0.copyload ; 2 uses
  %i.w = fadd <2 x float> %.sroa.062.0.copyload, %i.v ; 2 uses
  %i.x = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.w
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.w
  %i.z = fadd <2 x float> %.sroa.9.0.copyload, %i.v ; 2 uses
  %i.aa = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 24, i1 false), !tbaa.struct !63
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !15
  store i32 %i.ae, ptr %i.a, align 16, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.q, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %.sroa.085.0236 = phi i32 [ 0, %bb.b ], [ %.sroa.085.1, %select.unfold ] ; 2 uses
  %.sroa.4.0235 = phi i32 [ 0, %bb.b ], [ %.sroa.4.4, %select.unfold ] ; 7 uses
  %.089234 = phi i32 [ 1, %bb.b ], [ %.5, %select.unfold ] ; 4 uses
  %.sroa.045.0233 = phi <2 x float> [ %i.y, %bb.b ], [ %.sroa.045.6, %select.unfold ] ; 8 uses
  %.sroa.5.0232 = phi <2 x float> [ %i.ab, %bb.b ], [ %.sroa.5.6, %select.unfold ] ; 8 uses
  %.093231 = phi float [ %i.s, %bb.b ], [ %.6, %select.unfold ] ; 9 uses
  %i.ai = add nsw i32 %.089234, -1                ; 8 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36 ; 3 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %select.unfold, label %bb.d, !llvm.loop !60

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.an ; 7 uses
  %i.ap = add nsw i32 %.sroa.085.0236, 1          ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = and i64 %i.ar, %2
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %select.unfold, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  %i.au = load <2 x float>, ptr %i.ao, align 8    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load <2 x float>, ptr %i.av, align 8    ; 3 uses
  %i.ax = shufflevector <2 x float> %.sroa.045.0233, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %.sroa.5.0232, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = fcmp ule <4 x float> %i.ax, %i.ay
  %i.ba = freeze <4 x i1> %i.az
  %i.bb = bitcast <4 x i1> %i.ba to i4
  %i.bc = icmp eq i4 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %select.unfold, !llvm.loop !60

bb.f:                                             ; preds = %bb.e
  %i.bd = fadd <2 x float> %i.au, %i.aw
  %i.be = fsub <2 x float> %i.aw, %i.au
  %i.bf = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bg = fsub <2 x float> %i.f, %i.bf
  %i.bh = fmul <2 x float> %i.h, %i.bg            ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bh
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bl = fadd <2 x float> %i.j, %i.bk
  %i.bm = fmul <2 x float> %i.ah, %i.bl
  %i.bn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bm)
  %i.bo = fcmp olt float %i.bn, %i.bj
  br i1 %i.bo, label %select.unfold, label %bb.g, !llvm.loop !60

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.ao, i64 38
  %.val = load i16, ptr %i.bp, align 2, !tbaa !35
  %i.bq = and i16 %.val, 4
  %.not = icmp eq i16 %i.bq, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %.093231, ptr %i.af, align 4, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bt = call float %3(ptr noundef nonnull %5, i32 noundef %i.al, i64 noundef %i.bs, ptr noundef %4) #14 ; 5 uses
  %i.bu = add nsw i32 %.sroa.4.0235, 1            ; 3 uses
  %i.bv = fcmp une float %i.bt, 0.000000e+00
  br i1 %i.bv, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bw = fcmp ogt float %i.bt, 0.000000e+00
  %i.bx = fcmp olt float %i.bt, %.093231
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %bb.i
  %i.by = load <2 x float>, ptr %i.g, align 4
  %i.bz = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by           ; 2 uses
  %i.cc = fadd <2 x float> %.sroa.062.0.copyload, %i.cb ; 2 uses
  %i.cd = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.cc
  %i.ce = select <2 x i1> %i.cd, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.cc
  %i.cf = fadd <2 x float> %.sroa.9.0.copyload, %i.cb ; 2 uses
  %i.cg = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.cf
  %i.ch = select <2 x i1> %i.cg, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.cf
  br label %select.unfold

bb.k:                                             ; preds = %bb.g
  %i.ci = icmp samesign ult i32 %.089234, 1024
  br i1 %i.ci, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !19 ; 3 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.cl ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load <2 x float>, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !19 ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.cs ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load <2 x float>, ptr %i.cv, align 8
  %i.cx = fadd <2 x float> %i.cn, %i.cp
  %i.cy = fmul <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = fsub <2 x float> %i.f, %i.cy            ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz
  %i.db = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da)
  %i.dc = fadd <2 x float> %i.cu, %i.cw
  %i.dd = fmul <2 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = fsub <2 x float> %i.f, %i.dd            ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.df)
  %i.dh = fcmp olt float %i.db, %i.dg             ; 2 uses
  %i.di = zext nneg i32 %.089234 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %. = select i1 %i.dh, i32 %i.cr, i32 %i.ck
  %.239 = select i1 %i.dh, i32 %i.ck, i32 %i.cr
  store i32 %., ptr %i.ak, align 4, !tbaa !36
  store i32 %.239, ptr %i.dj, align 4, !tbaa !36
  %.190 = add nuw nsw i32 %.089234, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.j, %bb.i, %bb.e, %bb.d, %bb.k, %bb.l, %bb.f, %bb.c
  %.6 = phi float [ %.093231, %bb.c ], [ %.093231, %bb.d ], [ %.093231, %bb.e ], [ %.093231, %bb.k ], [ %.093231, %bb.f ], [ %.093231, %bb.l ], [ %.093231, %bb.i ], [ %i.bt, %bb.j ]
  %.sroa.5.6 = phi <2 x float> [ %.sroa.5.0232, %bb.c ], [ %.sroa.5.0232, %bb.d ], [ %.sroa.5.0232, %bb.e ], [ %.sroa.5.0232, %bb.k ], [ %.sroa.5.0232, %bb.f ], [ %.sroa.5.0232, %bb.l ], [ %.sroa.5.0232, %bb.i ], [ %i.ch, %bb.j ]
  %.sroa.045.6 = phi <2 x float> [ %.sroa.045.0233, %bb.c ], [ %.sroa.045.0233, %bb.d ], [ %.sroa.045.0233, %bb.e ], [ %.sroa.045.0233, %bb.k ], [ %.sroa.045.0233, %bb.f ], [ %.sroa.045.0233, %bb.l ], [ %.sroa.045.0233, %bb.i ], [ %i.ce, %bb.j ]
  %.5 = phi i32 [ %i.ai, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ], [ %i.ai, %bb.k ], [ %i.ai, %bb.f ], [ %.190, %bb.l ], [ %i.ai, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.sroa.4.4 = phi i32 [ %.sroa.4.0235, %bb.c ], [ %.sroa.4.0235, %bb.d ], [ %.sroa.4.0235, %bb.e ], [ %.sroa.4.0235, %bb.k ], [ %.sroa.4.0235, %bb.f ], [ %.sroa.4.0235, %bb.l ], [ %i.bu, %bb.i ], [ %i.bu, %bb.j ] ; 2 uses
  %.sroa.085.1 = phi i32 [ %.sroa.085.0236, %bb.c ], [ %i.ap, %bb.d ], [ %i.ap, %bb.e ], [ %i.ap, %bb.k ], [ %i.ap, %bb.f ], [ %i.ap, %bb.l ], [ %i.ap, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %i.dk = icmp sgt i32 %.5, 0
  br i1 %i.dk, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.h, %select.unfold
  %.sroa.4.5 = phi i32 [ %.sroa.4.4, %select.unfold ], [ %i.bu, %bb.h ]
  %.sroa.085.2 = phi i32 [ %.sroa.085.1, %select.unfold ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.dl = zext i32 %.sroa.4.5 to i64
  %i.dm = shl nuw i64 %i.dl, 32
  %i.dn = zext i32 %.sroa.085.2 to i64
  %i.do = or disjoint i64 %i.dm, %i.dn
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.thread
  %.sroa.085.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.do, %.thread ]
  ret i64 %.sroa.085.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i32 @b2DynamicTree_Rebuild(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1024 x %struct.b2RebuildItem], align 16 ; 10 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = sext i32 %i.f to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @b2Free(ptr noundef %i.k, i64 noundef %i.m) #14
  %i.n = sext i32 %i.i to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call ptr @b2Alloc(i64 noundef %i.o) #14
  store ptr %i.p, ptr %i.j, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.e, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @b2Free(ptr noundef %i.r, i64 noundef %i.u) #14
  %i.v = shl nsw i64 %i.n, 3
  %i.w = tail call ptr @b2Alloc(i64 noundef %i.v) #14 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !25
  store i32 %i.i, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge80, %bb.c
  %i.x = phi ptr [ %.pre, %._crit_edge80 ], [ %i.w, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !15   ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  br i1 %1, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.d, %bb.g
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %.053.ph.us = phi i32 [ %i.br, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.052.ph.us = phi i32 [ %i.bu, %bb.g ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph.us = phi ptr [ %i.bw, %bb.g ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.051.ph.us, i64 36
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !34
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %._crit_edge62.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.outer.us, %bb.f
  %.05159.us.us = phi ptr [ %i.au, %bb.f ], [ %.051.ph.us, %.outer.us ] ; 2 uses
  %.05258.us.us = phi i32 [ %i.am, %bb.f ], [ %.052.ph.us, %.outer.us ] ; 2 uses
  %.05357.us.us = phi i32 [ %.1.us.us, %bb.f ], [ %.053.ph.us, %.outer.us ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05159.us.us, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19 ; 3 uses
  %i.an = icmp slt i32 %.05357.us.us, 1024
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.05159.us.us, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = add nsw i32 %.05357.us.us, 1
  %i.ar = sext i32 %.05357.us.us to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us
  %.1.us.us = phi i32 [ %i.aq, %bb.e ], [ %.05357.us.us, %.lr.ph.us ] ; 2 uses
  %i.at = sext i32 %i.am to i64
  %i.au = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.at ; 3 uses
  %i.av = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.aw = load ptr, ptr %0, align 8, !tbaa !18
  %i.ax = sext i32 %.05258.us.us to i64           ; 2 uses
  %i.ay = getelementptr inbounds [40 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %i.av, ptr %i.az, align 8, !tbaa !19
  %i.ba = load ptr, ptr %0, align 8, !tbaa !18
  %i.bb = getelementptr inbounds [40 x i8], ptr %i.ba, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 38
  store i16 0, ptr %i.bc, align 2, !tbaa !35
  store i32 %.05258.us.us, ptr %i.ag, align 4, !tbaa !20
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.ah, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !34
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %._crit_edge62.split.us.us, label %.lr.ph.us

._crit_edge62.split.us.us:                        ; preds = %bb.f, %.outer.us
  %.053.lcssa.us = phi i32 [ %.053.ph.us, %.outer.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.052.lcssa.us = phi i32 [ %.052.ph.us, %.outer.us ], [ %i.am, %bb.f ]
  %.051.lcssa.us = phi ptr [ %.051.ph.us, %.outer.us ], [ %i.au, %bb.f ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv77
  store i32 %.052.lcssa.us, ptr %i.bi, align 4, !tbaa !36
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.bk = load <2 x float>, ptr %.051.lcssa.us, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 8
  %i.bm = load <2 x float>, ptr %i.bl, align 8
  %i.bn = fadd <2 x float> %i.bk, %i.bm
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01)
  store <2 x float> %i.bo, ptr %i.bj, align 4, !tbaa !27
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 32
  store i32 -1, ptr %i.bp, align 8, !tbaa !19
  %i.bq = icmp eq i32 %.053.lcssa.us, 0
  br i1 %i.bq, label %.split69.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge62.split.us.us
  %i.br = add nsw i32 %.053.lcssa.us, -1          ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.bv
  br label %.outer.us

.outer:                                           ; preds = %bb.d, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.d ] ; 4 uses
  %.053.ph = phi i32 [ %i.dj, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.052.ph = phi i32 [ %i.dm, %bb.k ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph = phi ptr [ %i.do, %bb.k ], [ %i.ac, %bb.d ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.051.ph, i64 36
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !34
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.j
  %.05159 = phi ptr [ %i.cv, %bb.j ], [ %.051.ph, %.outer ] ; 4 uses
  %.05258 = phi i32 [ %i.cn, %bb.j ], [ %.052.ph, %.outer ] ; 3 uses
  %.05357 = phi i32 [ %.1, %bb.j ], [ %.053.ph, %.outer ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05159, i64 38
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35
  %i.cc = and i16 %i.cb, 2
  %.not = icmp eq i16 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %.outer
  %.053.lcssa = phi i32 [ %.053.ph, %.outer ], [ %.05357, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.052.lcssa = phi i32 [ %.052.ph, %.outer ], [ %.05258, %.lr.ph ], [ %i.cn, %bb.j ]
  %.051.lcssa = phi ptr [ %.051.ph, %.outer ], [ %.05159, %.lr.ph ], [ %i.cv, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 %.052.lcssa, ptr %i.cd, align 4, !tbaa !36
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.cf = load <2 x float>, ptr %.051.lcssa, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 8
  %i.ch = load <2 x float>, ptr %i.cg, align 8
  %i.ci = fadd <2 x float> %i.cf, %i.ch
  %i.cj = fmul <2 x float> %i.ci, splat (float 5.000000e-01)
  store <2 x float> %i.cj, ptr %i.ce, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 32
  store i32 -1, ptr %i.ck, align 8, !tbaa !19
  %i.cl = icmp eq i32 %.053.lcssa, 0
  br i1 %i.cl, label %.split69.us, label %bb.k

bb.h:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.05159, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !19 ; 3 uses
  %i.co = icmp slt i32 %.05357, 1024
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.05159, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19
  %i.cr = add nsw i32 %.05357, 1
  %i.cs = sext i32 %.05357 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.cr, %bb.i ], [ %.05357, %bb.h ] ; 2 uses
  %i.cu = sext i32 %i.cn to i64
  %i.cv = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.cx = load ptr, ptr %0, align 8, !tbaa !18
  %i.cy = sext i32 %.05258 to i64                 ; 2 uses
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store i32 %i.cw, ptr %i.da, align 8, !tbaa !19
  %i.db = load ptr, ptr %0, align 8, !tbaa !18
  %i.dc = getelementptr inbounds [40 x i8], ptr %i.db, i64 %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 38
  store i16 0, ptr %i.dd, align 2, !tbaa !35
  store i32 %.05258, ptr %i.ag, align 4, !tbaa !20
  %i.de = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.ah, align 4, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !34
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  %i.dj = add nsw i32 %.053.lcssa, -1             ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !36 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.dn
  br label %.outer

.split69.us:                                      ; preds = %._crit_edge, %._crit_edge62.split.us.us
  %.us-phi70.in = phi i64 [ %indvars.iv.next78, %._crit_edge62.split.us.us ], [ %indvars.iv.next, %._crit_edge ]
  %.us-phi71.in = phi i64 [ %indvars.iv77, %._crit_edge62.split.us.us ], [ %indvars.iv, %._crit_edge ]
  %.us-phi70 = trunc i64 %.us-phi70.in to i32     ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !18    ; 10 uses
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 5 uses
  %i.dr = and i64 %.us-phi71.in, 4294967295
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split69.us
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !36
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i32 -1, ptr %i.dw, align 8, !tbaa !19
  %i.dx = load i32, ptr %i.dq, align 4, !tbaa !36
  br label %b2BuildTree.exit

bb.m:                                             ; preds = %.split69.us
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.dz = tail call fastcc i32 @b2AllocateNode(ptr noundef nonnull %0)
  store i32 %i.dz, ptr %2, align 16, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ea, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi70, ptr %i.eb, align 16, !tbaa !67
  %i.ec = tail call fastcc i32 @b2PartitionMid(ptr noundef %i.dq, ptr noundef %i.dy, i32 noundef range(i32 -2147483647, -2147483648) %.us-phi70)
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !68
  br label %.outer88

.outer88:                                         ; preds = %.outer88.backedge, %bb.m
  %.ph = phi i32 [ -1, %bb.m ], [ %.ph.be, %.outer88.backedge ]
  %.098.i.ph = phi i32 [ 0, %bb.m ], [ %.098.i.ph.be, %.outer88.backedge ] ; 4 uses
  %i.ee = sext i32 %.098.i.ph to i64
  %i.ef = getelementptr inbounds [20 x i8], ptr %2, i64 %i.ee ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.outer88, %bb.y
  %i.eh = phi i32 [ %i.ei, %bb.y ], [ %.ph, %.outer88 ]
  %i.ei = add nsw i32 %i.eh, 1                    ; 4 uses
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !69
  switch i32 %i.ei, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = icmp eq i32 %.098.i.ph, 0
  br i1 %i.ej, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = add nsw i32 %.098.i.ph, -1              ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [20 x i8], ptr %2, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !65 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !69 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %i.et = load i32, ptr %i.ef, align 4, !tbaa !65 ; 3 uses
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.ew ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store i32 %i.en, ptr %i.ey, align 8, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !19
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.fb ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !19
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.ff ; 4 uses
  %i.fh = load <2 x float>, ptr %i.fc, align 8    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load <2 x float>, ptr %i.fi, align 8    ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fg, align 8    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fm = load <2 x float>, ptr %i.fl, align 8    ; 2 uses
  %i.fn = fcmp olt <2 x float> %i.fh, %i.fk
  %i.fo = select <2 x i1> %i.fn, <2 x float> %i.fh, <2 x float> %i.fk
  %i.fp = fcmp ogt <2 x float> %i.fj, %i.fm
  %i.fq = select <2 x i1> %i.fp, <2 x float> %i.fj, <2 x float> %i.fm
  store <2 x float> %i.fo, ptr %i.ex, align 8, !tbaa !27
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <2 x float> %i.fq, ptr %.sroa.433.0..sroa_idx.i, align 8, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 36
  %i.fs = load i16, ptr %i.fr, align 4, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !34
  %i.fv = tail call noundef i16 @llvm.umax.i16(i16 %i.fs, i16 %i.fu)
  %i.fw = add i16 %i.fv, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 36
  store i16 %i.fw, ptr %i.fx, align 4, !tbaa !34
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !33
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !33
  %i.gc = or i64 %i.gb, %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !33
  br label %.outer88.backedge

bb.t:                                             ; preds = %bb.n
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.sink125.i = phi i64 [ 12, %bb.t ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ 16, %bb.t ], [ 12, %bb.n ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink125.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink.i
  %.099.i = load i32, ptr %i.gf, align 4, !tbaa !36 ; 2 uses
  %.0100.i = load i32, ptr %i.ge, align 4, !tbaa !36 ; 5 uses
  %i.gg = sub nsw i32 %.099.i, %.0100.i           ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.gi = sext i32 %.0100.i to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !36 ; 3 uses
  %i.gl = load i32, ptr %i.ef, align 4, !tbaa !65 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.gm ; 2 uses
  %i.go = icmp eq i32 %i.ei, 0
  br i1 %i.go, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i32 %i.gk, ptr %i.gp, align 8, !tbaa !19
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  store i32 %i.gk, ptr %i.gq, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gr = sext i32 %i.gk to i64
  %i.gs = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store i32 %i.gl, ptr %i.gt, align 8, !tbaa !19
  br label %bb.n

bb.z:                                             ; preds = %bb.u
  %i.gu = add nsw i32 %.098.i.ph, 1               ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [20 x i8], ptr %2, i64 %i.gv ; 5 uses
  %i.gx = tail call fastcc i32 @b2AllocateNode(ptr noundef nonnull %0)
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !65
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 -1, ptr %i.gy, align 4, !tbaa !69
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.0100.i, ptr %i.gz, align 4, !tbaa !66
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i32 %.099.i, ptr %i.ha, align 4, !tbaa !67
  %i.hb = sext i32 %.0100.i to i64                ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hb
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.hb
  %i.he = tail call fastcc i32 @b2PartitionMid(ptr noundef %i.hc, ptr noundef %i.hd, i32 noundef %i.gg)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.hg = add nsw i32 %i.he, %.0100.i
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !68
  br label %.outer88.backedge

.outer88.backedge:                                ; preds = %bb.z, %bb.s
  %.ph.be = phi i32 [ %i.er, %bb.s ], [ -1, %bb.z ]
  %.098.i.ph.be = phi i32 [ %i.ek, %bb.s ], [ %i.gu, %bb.z ]
  br label %.outer88

bb.aa:                                            ; preds = %bb.o
  %i.hh = load i32, ptr %2, align 16, !tbaa !65   ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hi ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !19
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hm ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 28
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !19
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [40 x i8], ptr %i.dp, i64 %i.hq ; 4 uses
  %i.hs = load <2 x float>, ptr %i.hn, align 8    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hu = load <2 x float>, ptr %i.ht, align 8    ; 2 uses
  %i.hv = load <2 x float>, ptr %i.hr, align 8    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hx = load <2 x float>, ptr %i.hw, align 8    ; 2 uses
  %i.hy = fcmp olt <2 x float> %i.hs, %i.hv
  %i.hz = select <2 x i1> %i.hy, <2 x float> %i.hs, <2 x float> %i.hv
  %i.ia = fcmp ogt <2 x float> %i.hu, %i.hx
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hu, <2 x float> %i.hx
  store <2 x float> %i.hz, ptr %i.hj, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store <2 x float> %i.ib, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !34
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !34
  %i.ig = tail call noundef i16 @llvm.umax.i16(i16 %i.id, i16 %i.if)
  %i.ih = add i16 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  store i16 %i.ih, ptr %i.ii, align 4, !tbaa !34
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !33
  %i.in = or i64 %i.im, %i.ik
  %i.io = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i64 %i.in, ptr %i.io, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %b2BuildTree.exit

b2BuildTree.exit:                                 ; preds = %bb.l, %bb.aa
  %.0.i = phi i32 [ %i.dx, %bb.l ], [ %i.hh, %bb.aa ]
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %b2BuildTree.exit
  %.0 = phi i32 [ %.us-phi70, %b2BuildTree.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1073741824, 2147483647) i32 @b2PartitionMid(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 2
  br label %bb.k

.new:                                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.c = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 2 uses
  %unroll_iter = and i64 %i.c, -2
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod214 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.f = fcmp olt <2 x float> %i.ac, %i.e
  %i.g = select <2 x i1> %i.f, <2 x float> %i.ac, <2 x float> %i.e
  %i.h = fcmp ogt <2 x float> %i.ae, %i.e
  %i.i = select <2 x i1> %i.h, <2 x float> %i.ae, <2 x float> %i.e
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa211 = phi <2 x float> [ %i.ac, %.unr-lcssa ], [ %i.g, %.epil.preheader ] ; 2 uses
  %.lcssa210 = phi <2 x float> [ %i.ae, %.unr-lcssa ], [ %i.i, %.epil.preheader ] ; 2 uses
  %i.j = fsub <2 x float> %.lcssa210, %.lcssa211  ; 2 uses
  %i.k = fadd <2 x float> %.lcssa210, %.lcssa211  ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.p = extractelement <2 x float> %i.j, i64 0
  %i.q = extractelement <2 x float> %i.j, i64 1
  %i.r = fcmp ogt float %i.p, %i.q
  br i1 %i.r, label %.preheader, label %.preheader128

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.068.0140 = phi <2 x float> [ %.sroa.068.0.copyload, %.new ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.065.0139 = phi <2 x float> [ %.sroa.068.0.copyload, %.new ], [ %i.ae, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 4 uses
  %i.u = fcmp olt <2 x float> %.sroa.068.0140, %i.t
  %i.v = select <2 x i1> %i.u, <2 x float> %.sroa.068.0140, <2 x float> %i.t ; 2 uses
  %i.w = fcmp ogt <2 x float> %.sroa.065.0139, %i.t
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.065.0139, <2 x float> %i.t ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 4 uses
  %i.ab = fcmp olt <2 x float> %i.v, %i.aa
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.v, <2 x float> %i.aa ; 4 uses
  %i.ad = fcmp ogt <2 x float> %i.x, %i.aa
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.x, <2 x float> %i.aa ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !70

.preheader:                                       ; preds = %bb.c, %.critedge113
  %.0102147 = phi i32 [ %.2, %.critedge113 ], [ %2, %bb.c ] ; 3 uses
  %.0104146 = phi i32 [ %.2106, %.critedge113 ], [ 0, %bb.c ] ; 2 uses
  %i.af = sext i32 %.0104146 to i64
  %i.ag = sext i32 %.0102147 to i64               ; 3 uses
  %i.ah = add nsw i32 %.0104146, 1
  %smax169 = tail call i32 @llvm.smax.i32(i32 %.0102147, i32 %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.f
  %indvars.iv167 = phi i64 [ %i.af, %.preheader ], [ %indvars.iv.next168, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv167
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !77
  %i.ak = fcmp olt float %i.aj, %i.m
  br i1 %i.ak, label %bb.f, label %.critedge.split.loop.exit188

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.al = icmp slt i64 %indvars.iv.next168, %i.ag
  br i1 %i.al, label %bb.e, label %.critedge, !llvm.loop !71

.critedge.split.loop.exit188:                     ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv167 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.split.loop.exit188
  %.1105.lcssa = phi i32 [ %i.am, %.critedge.split.loop.exit188 ], [ %smax169, %bb.f ] ; 5 uses
  %i.an = sext i32 %.1105.lcssa to i64            ; 3 uses
  %i.ao = icmp sgt i32 %.0102147, %.1105.lcssa
  br i1 %i.ao, label %.lr.ph202, label %.critedge113

bb.g:                                             ; preds = %.lr.ph202
  %i.ap = icmp sgt i64 %indvars.iv.next172, %i.an
  br i1 %i.ap, label %.lr.ph202, label %.critedge113, !llvm.loop !72

.lr.ph202:                                        ; preds = %.critedge, %bb.g
  %indvars.iv171201 = phi i64 [ %indvars.iv.next172, %bb.g ], [ %i.ag, %.critedge ]
  %indvars.iv.next172 = add nsw i64 %indvars.iv171201, -1 ; 7 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next172
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !77
  %i.as = fcmp ult float %i.ar, %i.m
  br i1 %i.as, label %.critedge2, label %bb.g, !llvm.loop !72

.critedge2:                                       ; preds = %.lr.ph202
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next172 ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next172 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !36
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !36
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.az = load i64, ptr %i.ay, align 4, !tbaa !27
  %i.ba = load i64, ptr %i.at, align 4, !tbaa !27
  store i64 %i.ba, ptr %i.ay, align 4, !tbaa !27
  store i64 %i.az, ptr %i.at, align 4, !tbaa !27
  %i.bb = add nsw i32 %.1105.lcssa, 1
  br label %.critedge113

.critedge113:                                     ; preds = %bb.g, %.critedge, %.critedge2
  %.2106 = phi i32 [ %i.bb, %.critedge2 ], [ %.1105.lcssa, %.critedge ], [ %.1105.lcssa, %bb.g ] ; 3 uses
  %.2.in = phi i64 [ %indvars.iv.next172, %.critedge2 ], [ %i.ag, %.critedge ], [ %indvars.iv.next172, %bb.g ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %i.bc = icmp slt i32 %.2106, %.2
  br i1 %i.bc, label %.preheader, label %.loopexit, !llvm.loop !73

.preheader128:                                    ; preds = %bb.c, %.critedge114
  %.3143 = phi i32 [ %.5, %.critedge114 ], [ %2, %bb.c ] ; 3 uses
  %.3107142 = phi i32 [ %.5109, %.critedge114 ], [ 0, %bb.c ] ; 2 uses
  %i.bd = sext i32 %.3107142 to i64
  %i.be = sext i32 %.3143 to i64                  ; 3 uses
  %i.bf = add nsw i32 %.3107142, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.3143, i32 %i.bf)
  br label %bb.h

bb.h:                                             ; preds = %.preheader128, %bb.i
  %indvars.iv161 = phi i64 [ %i.bd, %.preheader128 ], [ %indvars.iv.next162, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv161
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !78
  %i.bj = fcmp olt float %i.bi, %i.o
  br i1 %i.bj, label %bb.i, label %.critedge4.split.loop.exit186

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.bk = icmp slt i64 %indvars.iv.next162, %i.be
  br i1 %i.bk, label %bb.h, label %.critedge4, !llvm.loop !74

.critedge4.split.loop.exit186:                    ; preds = %bb.h
  %i.bl = trunc nsw i64 %indvars.iv161 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.i, %.critedge4.split.loop.exit186
  %.4108.lcssa = phi i32 [ %i.bl, %.critedge4.split.loop.exit186 ], [ %smax, %bb.i ] ; 5 uses
  %i.bm = sext i32 %.4108.lcssa to i64            ; 3 uses
  %i.bn = icmp sgt i32 %.3143, %.4108.lcssa
  br i1 %i.bn, label %.lr.ph, label %.critedge114

bb.j:                                             ; preds = %.lr.ph
  %i.bo = icmp sgt i64 %indvars.iv.next165, %i.bm
  br i1 %i.bo, label %.lr.ph, label %.critedge114, !llvm.loop !75

.lr.ph:                                           ; preds = %.critedge4, %bb.j
  %indvars.iv164200 = phi i64 [ %indvars.iv.next165, %bb.j ], [ %i.be, %.critedge4 ]
  %indvars.iv.next165 = add nsw i64 %indvars.iv164200, -1 ; 6 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next165 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !78
  %i.bs = fcmp ult float %i.br, %i.o
  br i1 %i.bs, label %.critedge6, label %bb.j, !llvm.loop !75

.critedge6:                                       ; preds = %.lr.ph
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next165 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !36
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !36
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.by = load i64, ptr %i.bx, align 4, !tbaa !27
  %i.bz = load i64, ptr %i.bp, align 4, !tbaa !27
  store i64 %i.bz, ptr %i.bx, align 4, !tbaa !27
  store i64 %i.by, ptr %i.bp, align 4, !tbaa !27
  %i.ca = add nsw i32 %.4108.lcssa, 1
  br label %.critedge114

.critedge114:                                     ; preds = %bb.j, %.critedge4, %.critedge6
  %.5109 = phi i32 [ %i.ca, %.critedge6 ], [ %.4108.lcssa, %.critedge4 ], [ %.4108.lcssa, %bb.j ] ; 3 uses
  %.5.in = phi i64 [ %indvars.iv.next165, %.critedge6 ], [ %i.be, %.critedge4 ], [ %indvars.iv.next165, %bb.j ]
  %.5 = trunc i64 %.5.in to i32                   ; 2 uses
  %i.cb = icmp slt i32 %.5109, %.5
  br i1 %i.cb, label %.preheader128, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %.critedge114, %.critedge113
  %.6 = phi i32 [ %.2106, %.critedge113 ], [ %.5109, %.critedge114 ] ; 3 uses
  %i.cc = icmp sgt i32 %.6, 0
  %i.cd = icmp slt i32 %.6, %2
  %or.cond = and i1 %i.cc, %i.cd
  %i.ce = lshr i32 %2, 1
  %.0 = select i1 %or.cond, i32 %.6, i32 %i.ce
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %.0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !22}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10b2TreeNode", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"p1 _ZTS6b2AABB", !9, i64 0}
!13 = !{!"p1 _ZTS6b2Vec2", !9, i64 0}
!14 = !{!"b2DynamicTree", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 32, !12, i64 40, !13, i64 48, !11, i64 56, !6, i64 64}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !6, i64 16}
!17 = !{!14, !6, i64 12}
!18 = !{!14, !10, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!14, !6, i64 20}
!21 = !{!14, !6, i64 24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!14, !11, i64 32}
!24 = !{!14, !6, i64 64}
!25 = !{!14, !13, i64 48}
!26 = !{!"float", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"b2Vec2", !26, i64 0, !26, i64 4}
!29 = !{!"b2AABB", !28, i64 0, !28, i64 8}
!30 = !{!"long", !5, i64 0}
!31 = !{!"short", !5, i64 0}
!32 = !{!"b2TreeNode", !29, i64 0, !30, i64 16, !5, i64 24, !5, i64 32, !31, i64 36, !31, i64 38}
!33 = !{!32, !30, i64 16}
!34 = !{!32, !31, i64 36}
!35 = !{!32, !31, i64 38}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !39}
!38 = distinct !{!38, !22}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!14, !12, i64 40}
!41 = !{!14, !11, i64 56}
!42 = distinct !{!42, !22}
!43 = !{!30, !30, i64 0}
!44 = !{!31, !31, i64 0}
!45 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 8, !43, i64 24, i64 8, !19, i64 32, i64 4, !19, i64 36, i64 2, !44, i64 38, i64 2, !44}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = !{!29, !26, i64 0}
!49 = !{!29, !26, i64 4}
!50 = !{!29, !26, i64 8}
!51 = !{!29, !26, i64 12}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!"b2RayCastInput", !28, i64 0, !28, i64 8, !26, i64 16}
!58 = !{!57, !26, i64 16}
!59 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27}
!60 = distinct !{!60, !22}
!61 = !{!"b2BoxCastInput", !29, i64 0, !28, i64 16, !26, i64 24}
!62 = !{!61, !26, i64 24}
!63 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27, i64 20, i64 4, !27, i64 24, i64 4, !27}
!64 = !{!"b2RebuildItem", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!65 = !{!64, !6, i64 0}
!66 = !{!64, !6, i64 8}
!67 = !{!64, !6, i64 16}
!68 = !{!64, !6, i64 12}
!69 = !{!64, !6, i64 4}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = !{!28, !26, i64 0}
!78 = !{!28, !26, i64 4}
end_hunk_0
