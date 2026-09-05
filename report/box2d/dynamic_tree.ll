Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/dynamic_tree?download=true
inline.NumInlined: 146
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2DynamicTree_BoxCast:bb.a
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
  %i.bm = fmul <2 x float> %i.ah, %i.bl           ; 2 uses
  %shift241 = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fadd <2 x float> %i.bm, %shift241
  %i.bn = extractelement <2 x float> %foldExtExtBinop242, i64 0
  %i.bo = fcmp olt float %i.bn, %i.bj
  br i1 %i.bo, label %select.unfold, label %bb.g, !llvm.loop !60

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %i.ao, i64 38
  %.val = load i16, ptr %i.bp, align 2, !tbaa !34
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
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %shift244 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop245 = fadd <2 x float> %i.da, %shift244
  %i.db = extractelement <2 x float> %foldExtExtBinop245, i64 0
  %i.dc = fadd <2 x float> %i.cu, %i.cw
  %i.dd = fmul <2 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = fsub <2 x float> %i.f, %i.dd            ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de           ; 2 uses
  %shift247 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x float> %i.df, %shift247
  %i.dg = extractelement <2 x float> %foldExtExtBinop248, i64 0
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
  %2 = alloca [1024 x %struct.b2RebuildItem], align 16 ; 11 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.aa, label %bb.b

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

.outer.us:                                        ; preds = %bb.d, %12
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %12 ], [ 0, %bb.d ] ; 4 uses
  %.053.ph.us = phi i32 [ %13, %12 ], [ 0, %bb.d ] ; 2 uses
  %.052.ph.us = phi i32 [ %16, %12 ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph.us = phi ptr [ %18, %12 ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.051.ph.us, i64 36
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !33
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
  store i16 0, ptr %i.bc, align 2, !tbaa !34
  store i32 %.05258.us.us, ptr %i.ag, align 4, !tbaa !20
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.ah, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !33
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %._crit_edge62.split.us.us, label %.lr.ph.us

._crit_edge62.split.us.us:                        ; preds = %bb.f, %.outer.us
  %.053.lcssa.us = phi i32 [ %.053.ph.us, %.outer.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.052.lcssa.us = phi i32 [ %.052.ph.us, %.outer.us ], [ %i.am, %bb.f ]
  %.051.lcssa.us = phi ptr [ %.051.ph.us, %.outer.us ], [ %i.au, %bb.f ] ; 3 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv77
  store i32 %.052.lcssa.us, ptr %3, align 4, !tbaa !36
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %5 = load <2 x float>, ptr %.051.lcssa.us, align 8
  %6 = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 8
  %7 = load <2 x float>, ptr %6, align 8
  %8 = fadd <2 x float> %5, %7
  %9 = fmul <2 x float> %8, splat (float 5.000000e-01)
  store <2 x float> %9, ptr %4, align 4
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.051.lcssa.us, i64 32
  store i32 -1, ptr %10, align 8, !tbaa !19
  %11 = icmp eq i32 %.053.lcssa.us, 0
  br i1 %11, label %.split69.us, label %12

12:                                               ; preds = %._crit_edge62.split.us.us
  %13 = add nsw i32 %.053.lcssa.us, -1            ; 2 uses
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !36     ; 2 uses
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %17
  br label %.outer.us

.outer:                                           ; preds = %bb.d, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.d ] ; 4 uses
  %.053.ph = phi i32 [ %i.cu, %bb.j ], [ 0, %bb.d ] ; 2 uses
  %.052.ph = phi i32 [ %i.cx, %bb.j ], [ %i.z, %bb.d ] ; 2 uses
  %.051.ph = phi ptr [ %i.cz, %bb.j ], [ %i.ac, %bb.d ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.051.ph, i64 36
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !33
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.i
  %.05159 = phi ptr [ %i.cg, %bb.i ], [ %.051.ph, %.outer ] ; 4 uses
  %.05258 = phi i32 [ %i.by, %bb.i ], [ %.052.ph, %.outer ] ; 3 uses
  %.05357 = phi i32 [ %.1, %bb.i ], [ %.053.ph, %.outer ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05159, i64 38
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !34
  %i.bn = and i16 %i.bm, 2
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %.outer
  %.053.lcssa = phi i32 [ %.053.ph, %.outer ], [ %.05357, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.052.lcssa = phi i32 [ %.052.ph, %.outer ], [ %.05258, %.lr.ph ], [ %i.by, %bb.i ]
  %.051.lcssa = phi ptr [ %.051.ph, %.outer ], [ %.05159, %.lr.ph ], [ %i.cg, %bb.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 %.052.lcssa, ptr %i.bo, align 4, !tbaa !36
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bq = load <2 x float>, ptr %.051.lcssa, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 8
  %i.bs = load <2 x float>, ptr %i.br, align 8
  %i.bt = fadd <2 x float> %i.bq, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 5.000000e-01)
  store <2 x float> %i.bu, ptr %i.bp, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 32
  store i32 -1, ptr %i.bv, align 8, !tbaa !19
  %i.bw = icmp eq i32 %.053.lcssa, 0
  br i1 %i.bw, label %.split69.us, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.05159, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !19 ; 3 uses
  %i.bz = icmp slt i32 %.05357, 1024
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %.05159, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19
  %i.cc = add nsw i32 %.05357, 1
  %i.cd = sext i32 %.05357 to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %i.cc, %bb.h ], [ %.05357, %bb.g ] ; 2 uses
  %i.cf = sext i32 %i.by to i64
  %i.cg = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.cf ; 3 uses
  %i.ch = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ci = load ptr, ptr %0, align 8, !tbaa !18
  %i.cj = sext i32 %.05258 to i64                 ; 2 uses
  %i.ck = getelementptr inbounds [40 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.ch, ptr %i.cl, align 8, !tbaa !19
  %i.cm = load ptr, ptr %0, align 8, !tbaa !18
  %i.cn = getelementptr inbounds [40 x i8], ptr %i.cm, i64 %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 38
  store i16 0, ptr %i.co, align 2, !tbaa !34
  store i32 %.05258, ptr %i.ag, align 4, !tbaa !20
  %i.cp = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.ah, align 4, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !33
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  %i.cu = add nsw i32 %.053.lcssa, -1             ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.cy
  br label %.outer

.split69.us:                                      ; preds = %._crit_edge, %._crit_edge62.split.us.us
  %.us-phi70.in = phi i64 [ %indvars.iv.next78, %._crit_edge62.split.us.us ], [ %indvars.iv.next, %._crit_edge ]
  %.us-phi71.in = phi i64 [ %indvars.iv77, %._crit_edge62.split.us.us ], [ %indvars.iv, %._crit_edge ]
  %.us-phi70 = trunc i64 %.us-phi70.in to i32     ; 3 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !18    ; 10 uses
  %i.db = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 5 uses
  %i.dc = and i64 %.us-phi71.in, 4294967295
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split69.us
  %i.de = load i32, ptr %i.db, align 4, !tbaa !36
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [40 x i8], ptr %i.da, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i32 -1, ptr %i.dh, align 8, !tbaa !19
  %i.di = load i32, ptr %i.db, align 4, !tbaa !36
  br label %b2BuildTree.exit

bb.l:                                             ; preds = %.split69.us
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.dk = tail call fastcc i32 @b2AllocateNode(ptr noundef nonnull %0)
  store i32 %i.dk, ptr %2, align 16, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.dl, align 4, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.dm, align 8, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi70, ptr %i.dn, align 16, !tbaa !68
  %i.do = tail call fastcc i32 @b2PartitionMid(ptr noundef %i.db, ptr noundef %i.dj, i32 noundef range(i32 -2147483647, -2147483648) %.us-phi70)
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !69
  br label %.outer88

.outer88:                                         ; preds = %.outer88.backedge, %bb.l
  %.ph = phi i32 [ -1, %bb.l ], [ %.ph.be, %.outer88.backedge ]
  %.098.i.ph = phi i32 [ 0, %bb.l ], [ %.098.i.ph.be, %.outer88.backedge ] ; 4 uses
  %i.dq = sext i32 %.098.i.ph to i64
  %i.dr = getelementptr inbounds [20 x i8], ptr %2, i64 %i.dq ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.outer88, %bb.x
  %i.dt = phi i32 [ %i.du, %bb.x ], [ %.ph, %.outer88 ]
  %i.du = add nsw i32 %i.dt, 1                    ; 4 uses
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !66
  switch i32 %i.du, label %bb.s [
    i32 2, label %bb.n
    i32 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.dv = icmp eq i32 %.098.i.ph, 0
  br i1 %i.dv, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = add nsw i32 %.098.i.ph, -1              ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [20 x i8], ptr %2, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !65 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [40 x i8], ptr %i.da, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !66 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = load i32, ptr %i.dr, align 4, !tbaa !65 ; 3 uses
  br i1 %i.ee, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !19
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ei = sext i32 %i.ef to i64
  %i.ej = getelementptr inbounds [40 x i8], ptr %i.da, i64 %i.ei ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store i32 %i.dz, ptr %i.ek, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !19
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [40 x i8], ptr %i.da, i64 %i.en ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [40 x i8], ptr %i.da, i64 %i.er ; 4 uses
  %i.et = load <2 x float>, ptr %i.eo, align 8    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ev = load <2 x float>, ptr %i.eu, align 8    ; 2 uses
  %i.ew = load <2 x float>, ptr %i.es, align 8    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load <2 x float>, ptr %i.ex, align 8    ; 2 uses
  %i.ez = fcmp olt <2 x float> %i.et, %i.ew
  %i.fa = select <2 x i1> %i.ez, <2 x float> %i.et, <2 x float> %i.ew
  %i.fb = fcmp ogt <2 x float> %i.ev, %i.ey
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.ev, <2 x float> %i.ey
  store <2 x float> %i.fa, ptr %i.ej, align 8
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store <2 x float> %i.fc, ptr %.sroa.433.0..sroa_idx.i, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.fe = load i16, ptr %i.fd, align 4, !tbaa !33
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  %i.fg = load i16, ptr %i.ff, align 4, !tbaa !33
  %i.fh = tail call noundef i16 @llvm.umax.i16(i16 %i.fe, i16 %i.fg)
  %i.fi = add i16 %i.fh, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  store i16 %i.fi, ptr %i.fj, align 4, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
end_hunk_0
