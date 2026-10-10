Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo15SetOrthographicEb:bb.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo11SetDrawlistEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  store ptr %i.a, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  ret void
}

declare noundef ptr @_ZN5ImGui17GetWindowDrawListEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10BeginFrameEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %i.b, i32 noundef 0)
  tail call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 2, i32 noundef 0)
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str, ptr noundef null, i32 noundef 799499) ; 0 uses
  %i.d = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  store ptr %i.d, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  tail call void @_ZN5ImGui3EndEv()
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #11

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #11

declare void @_ZN5ImGui14PushStyleColorEij(i32 noundef, i32 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #11

declare void @_ZN5ImGui13PopStyleColorEi(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN8ImGuizmo7IsUsingEv() local_unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8ImGuizmo6IsOverEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef null)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.d ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 8) i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr nofree noundef writeonly captures(address_is_null) %0) unnamed_addr #13 {
bb.a:
  %1 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 6 uses
  %2 = alloca %"struct.ImGuizmo::vec_t", align 8  ; 5 uses
  %3 = alloca %"struct.ImGuizmo::vec_t", align 8  ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load float, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.f = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 648), align 8, !tbaa !43
  %i.g = fcmp ult float %i.e, %i.f
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 656), align 8
  %i.i = fcmp ugt float %i.e, %i.h
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.k = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.l = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 652), align 4, !tbaa !45
  %i.m = fcmp ult float %i.k, %i.l
  %i.n = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 660), align 4
  %i.o = fcmp ugt float %i.k, %i.n
  %or.cond35 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond35, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not = icmp eq ptr %0, null
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.1.lcssa = phi i32 [ 7, %bb.b ], [ %.3, %bb.g ]
  ret i32 %.1.lcssa

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.027183 = phi i32 [ 0, %.lr.ph ], [ %i.hz, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %.027183, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.s = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 148), align 4, !tbaa !16 ; 2 uses
  %i.t = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), align 4, !tbaa !16 ; 2 uses
  %i.u = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !16 ; 2 uses
  %i.v = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 152), align 8, !tbaa !16
  %i.w = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 168), align 8, !tbaa !16
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !16
  %i.y = load float, ptr %3, align 8, !tbaa !12   ; 3 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !14 ; 3 uses
  %i.aa = load float, ptr %i.q, align 8, !tbaa !13 ; 3 uses
  %i.ab = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !16 ; 3 uses
  %i.ac = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !16 ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac
  %i.ag = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ab, <2 x float> %i.af)
  %i.aj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !16 ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.aj, <2 x float> %i.ai) ; 3 uses
  %i.an = fmul float %i.z, %i.t
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.y, float %i.s, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.u, float %i.ao) ; 5 uses
  %i.aq = fmul float %i.z, %i.w
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.y, float %i.v, float %i.aq)
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.x, float %i.ar)
  store <2 x float> %i.am, ptr %3, align 8, !tbaa !10
  store float %i.ap, ptr %i.q, align 8, !tbaa !13
  %i.at = load <4 x float>, ptr %1, align 16
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.av = load float, ptr %i.r, align 8, !tbaa !13
  %i.aw = extractelement <2 x float> %i.am, i64 1 ; 4 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = extractelement <2 x float> %i.am, i64 0 ; 4 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.az)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.bc = fmul float %i.ay, %i.bb                 ; 3 uses
  %i.bd = fmul float %i.aw, %i.bb                 ; 3 uses
  %i.be = fmul float %i.ap, %i.bb                 ; 3 uses
  %i.bf = fmul float %i.as, %i.bb
  %i.bg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  %i.bh = load <2 x float>, ptr %1, align 16, !tbaa !10 ; 2 uses
  %i.bi = load <2 x float>, ptr %2, align 8, !tbaa !10 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bn = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bl)
  %i.bp = insertelement <2 x float> poison, float %i.t, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bk
  %i.bs = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bk
  %i.bx = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bx, <2 x float> %i.bw)
  %i.bz = insertelement <2 x float> %i.au, float %i.av, i64 1 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.by) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  store float %i.cc, ptr %1, align 16, !tbaa !12
  %i.cd = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cd, <2 x float> %i.bo)
  %i.cf = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cg, <2 x float> %i.bu)
  %i.ci = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 4 uses
  %i.cj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 4 uses
  %i.ck = fmul float %i.bd, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ci, float %i.ck)
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13 ; 4 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.be, float %4, float %i.cl)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.cm)
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.co = fmul float %i.bd, %6
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bc, float %5, float %i.co)
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %7, float %i.cp)
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %9 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.cr = fmul float %i.bd, %9
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bc, float %8, float %i.cr)
  %10 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %10, float %i.cs) ; 2 uses
  %i.cu = tail call float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp olt float %i.cu, f0x34000000
  %i.cw = fsub float %i.cq, %i.cn
  %i.cx = fneg float %i.cw
  %i.cy = fdiv float %i.cx, %i.ct
  %.0.i = select i1 %i.cv, float -1.000000e+00, float %i.cy ; 3 uses
  %i.cz = fmul float %8, %.0.i
  %11 = fmul float %9, %.0.i
  %12 = fmul float %10, %.0.i
  %13 = fadd float %5, %i.cz                      ; 4 uses
  %i.da = fadd float %6, %11                      ; 4 uses
  %14 = fadd float %7, %12                        ; 4 uses
  %i.db = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16 ; 3 uses
  %i.dc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 3 uses
  %i.dd = fmul float %i.dc, %i.da
  %i.de = tail call float @llvm.fmuladd.f32(float %13, float %i.db, float %i.dd)
  %i.df = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 3 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %14, float %i.df, float %i.de)
  %i.dh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 3 uses
  %i.di = fadd float %i.dh, %i.dg
  %i.dj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16 ; 3 uses
  %i.dk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 3 uses
  %i.dl = fmul float %i.dk, %i.da
  %i.dm = tail call float @llvm.fmuladd.f32(float %13, float %i.dj, float %i.dl)
  %i.dn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16 ; 3 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %14, float %i.dn, float %i.dm)
  %i.dp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 3 uses
  %i.dq = fadd float %i.dp, %i.do
  %i.dr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 3 uses
  %i.ds = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 3 uses
  %i.dt = fmul float %i.da, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %13, float %i.dr, float %i.dt)
  %i.dv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 3 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %14, float %i.dv, float %i.du)
  %i.dx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 3 uses
  %i.dy = fadd float %i.dx, %i.dw
  %i.dz = fdiv float 5.000000e-01, %i.dy          ; 2 uses
  %i.ea = fmul float %i.di, %i.dz
  %i.eb = fmul float %i.dq, %i.dz
  %i.ec = fadd float %i.ea, 5.000000e-01
  %i.ed = fadd float %i.eb, 5.000000e-01
  %i.ee = fsub float 1.000000e+00, %i.ed
  %i.ef = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 4 uses
  %i.eg = fmul float %i.ay, %i.ef                 ; 2 uses
  %i.eh = fmul float %i.aw, %i.ef                 ; 2 uses
  %i.ei = fmul float %i.ap, %i.ef                 ; 2 uses
  %i.ej = fmul float %i.eg, 1.000000e-01
  %i.ek = fmul float %i.eh, 1.000000e-01
  %i.el = fmul float %i.ei, 1.000000e-01
  %i.em = fadd float %i.ci, %i.ej                 ; 3 uses
  %i.en = fadd float %i.cj, %i.ek                 ; 3 uses
  %i.eo = fadd float %4, %i.el                    ; 3 uses
  %i.ep = fmul float %i.dc, %i.en
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.em, float %i.db, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.df, float %i.eq)
  %i.es = fadd float %i.dh, %i.er
  %i.et = fmul float %i.dk, %i.en
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.em, float %i.dj, float %i.et)
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dn, float %i.eu)
  %i.ew = fadd float %i.dp, %i.ev
  %i.ex = fmul float %i.ds, %i.en
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.em, float %i.dr, float %i.ex)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.dv, float %i.ey)
  %i.fa = fadd float %i.dx, %i.ez
  %i.fb = fdiv float 5.000000e-01, %i.fa          ; 2 uses
  %i.fc = fmul float %i.es, %i.fb
  %i.fd = fmul float %i.ew, %i.fb
  %i.fe = fadd float %i.fd, 5.000000e-01
  %i.ff = fadd float %i.ci, %i.eg                 ; 3 uses
  %i.fg = fadd float %i.cj, %i.eh                 ; 3 uses
  %i.fh = fadd float %4, %i.ei                    ; 3 uses
  %i.fi = fmul float %i.dc, %i.fg
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.db, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.df, float %i.fj)
  %i.fl = fadd float %i.dh, %i.fk
  %i.fm = fmul float %i.dk, %i.fg
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.dj, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.dn, float %i.fn)
  %i.fp = fadd float %i.dp, %i.fo
  %i.fq = fmul float %i.ds, %i.fg
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.dr, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.dv, float %i.fr)
  %i.ft = fadd float %i.dx, %i.fs
  %i.fu = fdiv float 5.000000e-01, %i.ft          ; 2 uses
  %i.fv = fmul float %i.fl, %i.fu
  %i.fw = fmul float %i.fp, %i.fu
  %i.fx = fadd float %i.fw, 5.000000e-01
  %i.fy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  %i.ga = fmul float %i.fz, %i.ec
  %i.gb = extractelement <2 x float> %i.fy, i64 1
  %i.gc = fmul float %i.gb, %i.ee
  %i.gd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0
  %i.gf = fadd float %i.ge, %i.ga                 ; 2 uses
  %i.gg = extractelement <2 x float> %i.gd, i64 1
  %i.gh = fadd float %i.gg, %i.gc                 ; 2 uses
  %i.gi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.fc, i64 0
  %i.gj = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.fe, i64 1
  %i.gk = fsub <2 x float> %i.gi, %i.gj
  %i.gl = fmul <2 x float> %i.fy, %i.gk
  %i.gm = fadd <2 x float> %i.gd, %i.gl           ; 5 uses
  %i.gn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.fv, i64 0
  %i.go = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.fx, i64 1
  %i.gp = fsub <2 x float> %i.gn, %i.go
  %i.gq = fmul <2 x float> %i.fy, %i.gp
  %i.gr = fadd <2 x float> %i.gd, %i.gq           ; 2 uses
  %i.gs = extractelement <2 x float> %i.gm, i64 0
  %i.gt = fsub float %i.gf, %i.gs
  %i.gu = extractelement <2 x float> %i.gm, i64 1
  %i.gv = fsub float %i.gh, %i.gu
  %i.gw = fsub <2 x float> %i.gr, %i.gm           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.gw, %i.gw
  %i.gx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gy = extractelement <2 x float> %i.gw, i64 0 ; 2 uses
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %i.gx)
  %i.ha = fadd float %i.gz, 0.000000e+00
  %sqrt.i.i.i.i98 = tail call noundef float @llvm.sqrt.f32(float %i.ha) ; 2 uses
  %i.hb = fdiv float 1.000000e+00, %sqrt.i.i.i.i98 ; 2 uses
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.gw, %i.hd           ; 3 uses
  %i.hf = fmul float %i.hb, 0.000000e+00          ; 2 uses
  %i.hg = extractelement <2 x float> %i.he, i64 1
  %i.hh = fmul float %i.gv, %i.hg
  %i.hi = extractelement <2 x float> %i.he, i64 0
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.gt, float %i.hh)
  %i.hk = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float 0.000000e+00, float %i.hj) ; 4 uses
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  br i1 %i.hl, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hm = fcmp ogt float %i.hk, %sqrt.i.i.i.i98
  br i1 %i.hm, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hn = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x float> %i.he, %i.ho
  %i.hq = fmul float %i.hf, %i.hk
  %i.hr = fadd <2 x float> %i.gm, %i.hp
  %i.hs = fadd float %i.hq, 0.000000e+00
  %.sroa.3.8.vec.insert.i.i37.i = insertelement <2 x float> poison, float %i.hs, i64 0
  %.sroa.3.12.vec.insert.i.i38.i = shufflevector <2 x float> %.sroa.3.8.vec.insert.i.i37.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit

_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.013.0.copyload.pn.i = phi <2 x float> [ %i.hr, %bb.e ], [ %i.gm, %bb.c ], [ %i.gr, %bb.d ] ; 2 uses
  %.sroa.4.0.copyload.pn.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i38.i, %bb.e ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %bb.d ]
  %.sroa.0152.0.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 0
  %i.ht = fsub float %.sroa.0152.0.vec.extract, %i.gf ; 2 uses
  %.sroa.0152.4.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 1
  %i.hu = fsub float %.sroa.0152.4.vec.extract, %i.gh ; 2 uses
  %.sroa.5153.8.vec.extract = extractelement <2 x float> %.sroa.4.0.copyload.pn.i, i64 0 ; 2 uses
  %i.hv = fmul float %i.hu, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hv)
  %i.hx = tail call float @llvm.fmuladd.f32(float %.sroa.5153.8.vec.extract, float %.sroa.5153.8.vec.extract, float %i.hw)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fcmp olt float %sqrt.i, 1.200000e+01
  %i.hz = add nuw nsw i32 %.027183, 1             ; 2 uses
  %spec.select = select i1 %i.hy, i32 %i.hz, i32 0
  %15 = fsub float %13, %i.ci
  %i.ia = fsub float %i.da, %i.cj
  %16 = fsub float %14, %4
  %i.ib = fdiv float 1.000000e+00, %i.ef          ; 3 uses
  %i.ic = fmul float %15, %i.ib
  %i.id = fmul float %i.ia, %i.ib
  %i.ie = fmul float %16, %i.ib
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %i.ce, %i.ig
  %i.ii = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ij, <2 x float> %i.ih)
  %i.il = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.im, <2 x float> %i.ik) ; 3 uses
  %i.io = load i8, ptr %i.b, align 1, !tbaa !47, !range !33, !noundef !34
  %i.ip = trunc nuw i8 %i.io to i1
  %.not36 = xor i1 %i.ip, true
  %i.iq = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ir = fcmp ult float %i.iq, 5.000000e-01
  %or.cond37 = or i1 %i.ir, %.not36
  %i.is = fcmp ugt float %i.iq, 8.000000e-01
  %or.cond38 = or i1 %i.is, %or.cond37
  %i.it = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.iu = fcmp ult float %i.it, 5.000000e-01
  %or.cond39 = or i1 %i.iu, %or.cond38
  %i.iv = fcmp ugt float %i.it, 8.000000e-01
  %or.cond40 = or i1 %i.iv, %or.cond39
  %i.iw = or disjoint i32 %.027183, 4
  %.3 = select i1 %or.cond40, i32 %spec.select, i32 %i.iw ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit
  store <2 x float> %i.in, ptr %0, align 4, !tbaa !10
  store <2 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ix = icmp samesign ult i32 %.027183, 2
  %i.iy = icmp eq i32 %.3, 0
  %i.iz = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %i.iz, label %bb.c, label %._crit_edge, !llvm.loop !56
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 12) i32 @_ZN8ImGuizmoL13GetRotateTypeEv() unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = load float, ptr %i.b, align 8, !tbaa !42 ; 4 uses
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), align 8, !tbaa !57
  %i.e = fsub float %i.c, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.g = load float, ptr %i.f, align 4, !tbaa !44 ; 4 uses
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 644), align 4, !tbaa !58
  %i.i = fsub float %i.g, %i.h                    ; 2 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.j)
  %i.l = fadd float %i.k, 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.l) ; 2 uses
  %i.m = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49 ; 2 uses
  %i.n = fadd float %i.m, -1.000000e+00
  %i.o = fcmp ult float %sqrt.i, %i.n
  %i.p = fadd float %i.m, 1.000000e+00
  %i.q = fcmp uge float %sqrt.i, %i.p
  %or.cond.not = or i1 %i.o, %i.q
  %.sroa.0.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %.sroa.4.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !10 ; 3 uses
  %.sroa.5.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 148), align 4, !tbaa !10 ; 3 uses
  %.sroa.6.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 152), align 8, !tbaa !10
  %.sroa.7.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %.sroa.9.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !10 ; 3 uses
  %.sroa.10.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), align 4, !tbaa !10 ; 3 uses
  %.sroa.11.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 168), align 8, !tbaa !10
  %.sroa.12.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %.sroa.14.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !10 ; 3 uses
  %.sroa.15.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !10 ; 3 uses
  %.sroa.16.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !10
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 6 uses
  %i.s = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 6 uses
  %i.t = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13 ; 6 uses
  %i.u = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15 ; 3 uses
  %i.v = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 6 uses
  %i.w = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 6 uses
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 6 uses
  %i.y = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 9 uses
  %i.z = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 9 uses
  %i.aa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 9 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4 ; 3 uses
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8 ; 3 uses
  %i.ad = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4 ; 3 uses
  %i.ag = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8 ; 9 uses
  %i.ah = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4 ; 3 uses
  %i.ai = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4 ; 3 uses
  %i.aj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8
  %i.ak = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8 ; 3 uses
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 448), align 8 ; 3 uses
  %i.am = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4 ; 3 uses
  %i.an = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4 ; 3 uses
  %i.ao = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8 ; 3 uses
  %i.ap = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8 ; 3 uses
  %i.aq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8 ; 2 uses
  %i.as = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.at = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8 ; 3 uses
  %i.au = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8 ; 3 uses
  %i.av = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4 ; 3 uses
  %i.aw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8 ; 3 uses
  %i.ax = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4 ; 3 uses
  %i.ay = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 968), align 8 ; 3 uses
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.ba = shufflevector <4 x float> %i.ad, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.bb = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bc = insertelement <4 x float> %i.bb, float %i.ae, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.aj, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.as, i64 3 ; 3 uses
  %i.bf = fmul float %.sroa.4.0.copyload, %.sroa.4.0.copyload
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %.sroa.0.0.copyload, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %.sroa.5.0.copyload, float %i.bg)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bh)
  %i.bi = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.bj = fmul float %.sroa.0.0.copyload, %i.bi   ; 3 uses
  %i.bk = fmul float %.sroa.4.0.copyload, %i.bi   ; 3 uses
  %i.bl = fmul float %.sroa.5.0.copyload, %i.bi   ; 3 uses
  %i.bm = fmul float %.sroa.6.0.copyload, %i.bi
  %i.bn = fmul float %i.s, %i.bk
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.r, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.t, float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.u, float %i.bp)
  %i.br = fmul float %i.bk, %i.w
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.v, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.x, float %i.bs)
  %i.bu = fmul float %i.bk, %i.z
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.y, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.aa, float %i.bv) ; 2 uses
  %i.bx = tail call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp olt float %i.bx, f0x34000000
  %i.bz = fsub float %i.bt, %i.bq
  %i.ca = fneg float %i.bz
  %i.cb = fdiv float %i.ca, %i.bw
  %.0.i = select i1 %i.by, float -1.000000e+00, float %i.cb ; 3 uses
  %i.cc = fmul float %i.y, %.0.i
  %i.cd = fmul float %i.z, %.0.i
  %i.ce = fmul float %i.aa, %.0.i
  %i.cf = fadd float %i.v, %i.cc
  %i.cg = fadd float %i.w, %i.cd
  %i.ch = fadd float %i.x, %i.ce
  %i.ci = fsub float %i.cf, %i.r                  ; 3 uses
  %i.cj = fsub float %i.cg, %i.s                  ; 3 uses
  %i.ck = fsub float %i.ch, %i.t                  ; 3 uses
  %i.cl = fmul float %i.cj, %i.cj
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cm)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.co = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.cp = fmul float %i.ci, %i.co                 ; 4 uses
  %i.cq = fmul float %i.cj, %i.co                 ; 4 uses
  %i.cr = fmul float %i.ck, %i.co                 ; 4 uses
  %i.cs = fmul float %i.z, %i.cq
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.y, float %i.cs)
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.ct)
  %i.cv = fcmp ogt float %i.cu, f0x34000000
  br i1 %i.cv, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.h, %bb.c, %bb.f, %bb.a
  %.1.lcssa = phi i32 [ 11, %bb.a ], [ %.3, %bb.c ], [ %.3.1, %bb.f ], [ %spec.select.2, %bb.h ], [ 0, %bb.g ]
  ret i32 %.1.lcssa

bb.b:                                             ; preds = %.lr.ph
  %i.cw = fmul float %i.cq, %i.ab
  %i.cx = fmul float %i.cq, %i.ac
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.am, float %i.cw)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.an, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ao, float %i.cx)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ap, float %i.da)
  %i.dc = fmul float %i.cz, %i.ag
  %i.dd = fmul float %i.db, %i.ag
  %i.de = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.dd, i64 1
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dh = fmul <4 x float> %i.dg, %i.be
  %i.di = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.dc, i64 1
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.ba, <4 x float> %i.dh) ; 4 uses
  %i.dm = extractelement <4 x float> %i.dl, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.af, float %i.dm)
  %i.do = fmul float %i.ag, %i.dn                 ; 3 uses
  %i.dp = extractelement <4 x float> %i.dl, i64 1
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ah, float %i.dp)
  %i.dr = fadd float %i.ai, %i.dq
  %i.ds = extractelement <4 x float> %i.dl, i64 2
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ak, float %i.ds)
  %i.du = fadd float %i.al, %i.dt
  %i.dv = extractelement <4 x float> %i.dl, i64 3
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.do, float %i.at, float %i.dv)
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.bro = call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i
  %i.brp = call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %._crit_edge.i
  %.0166.i = phi i32 [ 0, %._crit_edge.i ], [ %i.brn, %bb.cf ], [ %i.bro, %bb.cg ], [ %i.brp, %bb.ch ]
  %.not184.i = icmp eq i32 %.0166.i, 0            ; 2 uses
  %i.brq = extractelement <2 x i1> %i.bra, i64 1
  %spec.select.i106 = and i1 %i.brq, %.not184.i   ; 2 uses
  %i.brr = extractelement <2 x i1> %i.bra, i64 0
  %spec.select185.i = and i1 %i.brr, %.not184.i   ; 2 uses
  %i.brs = select i1 %spec.select.i106, i32 -1978629889, i32 %i.bkz
  %i.brt = select i1 %spec.select185.i, i32 -1978629889, i32 %i.bkz
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdn, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 8.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdn, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 6.800000e+00, i32 noundef %i.brs, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdn, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 6.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdn, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 4.800000e+00, i32 noundef %i.brt, i32 noundef 0)
  %i.bru = trunc nuw nsw i64 %indvars.iv701.i to i32
  %i.brv = xor i32 %i.bru, 2                      ; 2 uses
  %i.brw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.brx = trunc nuw i8 %i.brw to i1
  %.not.i107 = xor i1 %i.brx, true
  %i.bry = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.brz = trunc nuw i8 %i.bry to i1
  %or.cond.i108 = select i1 %.not.i107, i1 %i.brz, i1 false
  %or.cond3.i = and i1 %spec.select.i106, %or.cond.i108
  br i1 %or.cond3.i, label %bb.cj, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.cj:                                            ; preds = %bb.ci
  %i.bsa = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.bsa, label %bb.ck, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.ck:                                            ; preds = %bb.cj
  %i.bsb = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bsb, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bsc = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bsc, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.bsd = zext nneg i32 %i.brv to i64
  %i.bse = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bsd ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), ptr noundef nonnull align 16 dereferenceable(16) %i.bse, i64 16, i1 false), !tbaa.struct !17
  %i.bsf = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10 ; 3 uses
  %i.bsg = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bsh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bsi = shufflevector <3 x float> %i.bsf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bsj = fmul <4 x float> %i.bsi, %i.bsh
  %i.bsk = shufflevector <3 x float> %i.bsf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bsl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsk, <4 x float> %i.bsg, <4 x float> %i.bsj)
  %i.bsm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bsn = shufflevector <3 x float> %i.bsf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bso = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsn, <4 x float> %i.bsm, <4 x float> %i.bsl)
  %i.bsp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.bsq = fadd <4 x float> %i.bso, %i.bsp
  store <4 x float> %i.bsq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), ptr noundef nonnull align 16 dereferenceable(16) %i.bmr, i64 16, i1 false), !tbaa.struct !17
  %i.bsr = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10 ; 3 uses
  %i.bss = shufflevector <3 x float> %i.bsr, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bst = fmul <4 x float> %i.bsh, %i.bss
  %i.bsu = shufflevector <3 x float> %i.bsr, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bsv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsu, <4 x float> %i.bsg, <4 x float> %i.bst)
  %i.bsw = shufflevector <3 x float> %i.bsr, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bsx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsw, <4 x float> %i.bsm, <4 x float> %i.bsv)
  %i.bsy = fadd <4 x float> %i.bsp, %i.bsx        ; 5 uses
  store <4 x float> %i.bsy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.bsz = extractelement <4 x float> %i.bsy, i64 1
  %i.bta = fmul float %i.bln, %i.bsz
  %i.btb = extractelement <4 x float> %i.bsy, i64 0
  %i.btc = call float @llvm.fmuladd.f32(float %i.blm, float %i.btb, float %i.bta)
  %i.btd = extractelement <4 x float> %i.bsy, i64 2
  %i.bte = call float @llvm.fmuladd.f32(float %i.blh, float %i.btd, float %i.btc)
  %i.btf = extractelement <4 x float> %i.bsy, i64 3
  %i.btg = call noundef float @llvm.fmuladd.f32(float %i.bli, float %i.btf, float %i.bte)
  %.sroa.3.8.vec.insert.i.i110 = insertelement <2 x float> %i.blj, float %i.btg, i64 1
  store <2 x float> %i.blg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !10
  store <2 x float> %.sroa.3.8.vec.insert.i.i110, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !10
  store i32 %i.bjs, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !75
  store i32 %i.bjz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 %i.bkb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.bse, i64 %i.bka
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bti = load float, ptr %i.bth, align 4, !tbaa !10
  store float %i.bti, ptr %i.blk, align 4, !tbaa !10
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %i.bse, i64 %i.bkc
  %i.btk = load float, ptr %i.btj, align 4, !tbaa !10
  store float %i.btk, ptr %i.bll, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !70
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

_ZN8ImGuizmoL11CanActivateEv.exit.i109:           ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.btl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.btm = trunc nuw i8 %i.btl to i1
  %.not4.i = xor i1 %i.btm, true
  %i.btn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.bto = trunc nuw i8 %i.btn to i1
  %or.cond6.i = select i1 %.not4.i, i1 %i.bto, i1 false
  %or.cond8.i = and i1 %spec.select185.i, %or.cond6.i
  br i1 %or.cond8.i, label %bb.cn, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.cn:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.btp = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.btp, label %bb.co, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.co:                                            ; preds = %bb.cn
  %i.btq = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.btq, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.btr = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.btr, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bts = zext nneg i32 %i.brv to i64
  %i.btt = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bts ; 2 uses
  %i.btu = add nuw nsw i64 %indvars.iv701.i, 3
  %i.btv = and i64 %i.btu, 3
  %i.btw = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.btv
  %i.btx = load <3 x float>, ptr %i.btt, align 16, !tbaa !10
  %i.bty = load <3 x float>, ptr %i.btw, align 16, !tbaa !10
  %i.btz = fadd <3 x float> %i.btx, %i.bty
  %i.bua = fmul <3 x float> %i.btz, splat (float 5.000000e-01) ; 3 uses
  %i.bub = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.buc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bud = shufflevector <3 x float> %i.bua, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bue = fmul <4 x float> %i.bud, %i.buc
  %i.buf = shufflevector <3 x float> %i.bua, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bug = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buf, <4 x float> %i.bub, <4 x float> %i.bue)
  %i.buh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bui = shufflevector <3 x float> %i.bua, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.buj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bui, <4 x float> %i.buh, <4 x float> %i.bug)
  %i.buk = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.bul = fadd <4 x float> %i.buk, %i.buj
  store <4 x float> %i.bul, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  %i.bum = shufflevector <3 x float> %i.bps, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bun = fmul <4 x float> %i.bum, %i.buc
  %i.buo = shufflevector <3 x float> %i.bps, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bup = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buo, <4 x float> %i.bub, <4 x float> %i.bun)
  %i.buq = shufflevector <3 x float> %i.bps, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bur = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buq, <4 x float> %i.buh, <4 x float> %i.bup)
  %i.bus = fadd <4 x float> %i.buk, %i.bur        ; 5 uses
  store <4 x float> %i.bus, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.but = extractelement <4 x float> %i.bus, i64 1
  %i.buu = fmul float %i.bln, %i.but
  %i.buv = extractelement <4 x float> %i.bus, i64 0
  %i.buw = call float @llvm.fmuladd.f32(float %i.blm, float %i.buv, float %i.buu)
  %i.bux = extractelement <4 x float> %i.bus, i64 2
  %i.buy = call float @llvm.fmuladd.f32(float %i.blh, float %i.bux, float %i.buw)
  %i.buz = extractelement <4 x float> %i.bus, i64 3
  %i.bva = call noundef float @llvm.fmuladd.f32(float %i.bli, float %i.buz, float %i.buy)
  %.sroa.3.8.vec.insert.i278.i = insertelement <2 x float> %i.blj, float %i.bva, i64 1
  store <2 x float> %i.blg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !10
  store <2 x float> %.sroa.3.8.vec.insert.i278.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !10
  store i32 %i.bjs, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  store i32 %i.bjz, ptr %i.l, align 4, !tbaa !52
  store i32 %i.bkb, ptr %i.biu, align 4, !tbaa !52
  %i.bvb = and i64 %indvars.iv701.i, 1
  %i.bvc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bvb
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !52 ; 2 uses
  store i32 %i.bvd, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.bve = sext i32 %i.bvd to i64                 ; 2 uses
  %i.bvf = getelementptr inbounds nuw [4 x i8], ptr %i.btt, i64 %i.bve
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bvg = load float, ptr %i.bvf, align 4, !tbaa !10
  %i.bvh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bve
  store float %i.bvg, ptr %i.bvh, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  %.pre715.i = load float, ptr %44, align 4, !tbaa !16
  br label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

_ZN8ImGuizmoL11CanActivateEv.exit262.i:           ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.bvi = phi float [ %i.bmq, %bb.cp ], [ %i.bmq, %bb.co ], [ %i.bmq, %bb.cn ], [ %.pre715.i, %bb.cq ], [ %i.bmq, %_ZN8ImGuizmoL11CanActivateEv.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i: ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit262.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, %bb.cc
  %i.bvj = phi float [ %i.bvi, %_ZN8ImGuizmoL11CanActivateEv.exit262.i ], [ %i.bmq, %bb.cc ], [ %i.bmq, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i ], [ %i.bmq, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %exitcond704.not.i = icmp eq i64 %indvars.iv.next702.i, 4
  br i1 %exitcond704.not.i, label %bb.cb, label %bb.cc, !llvm.loop !62

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  store float 1.000000e+00, ptr %50, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.biv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.biw, align 4, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bix, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.biy, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.biz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bja, align 4, !tbaa !15
  %i.bvk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !12 ; 2 uses
  %i.bvl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.bvm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 852), align 4, !tbaa !14 ; 2 uses
  %i.bvn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %65 = fmul float %i.bvm, %i.bvn
  %66 = call float @llvm.fmuladd.f32(float %i.bvk, float %i.bvl, float %65)
  %67 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !13 ; 2 uses
  %68 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.bvo = call noundef float @llvm.fmuladd.f32(float %67, float %68, float %66)
  %69 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 860), align 4, !tbaa !15
  %70 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %71 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.bvp = fmul float %i.bvm, %71
  %i.bvq = call float @llvm.fmuladd.f32(float %i.bvk, float %70, float %i.bvp)
  %72 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.bvr = call noundef float @llvm.fmuladd.f32(float %67, float %72, float %i.bvq) ; 2 uses
  %i.bvs = call float @llvm.fabs.f32(float %i.bvr)
  %i.bvt = fcmp olt float %i.bvs, f0x34000000
  %i.bvu = fsub float %i.bvo, %69
  %i.bvv = fneg float %i.bvu
  %i.bvw = fdiv float %i.bvv, %i.bvr
  %.0.i281.i = select i1 %i.bvt, float -1.000000e+00, float %i.bvw ; 3 uses
  %i.bvx = fmul float %70, %.0.i281.i
  %73 = fmul float %71, %.0.i281.i
  %74 = fmul float %72, %.0.i281.i
  %75 = fadd float %i.bvl, %i.bvx
  %i.bvy = fadd float %i.bvn, %73
  %76 = fadd float %68, %74
  %i.bvz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !12 ; 2 uses
  %i.bwa = fsub float %75, %i.bvz
  %i.bwb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4, !tbaa !14 ; 2 uses
  %i.bwc = fsub float %i.bvy, %i.bwb              ; 2 uses
  %i.bwd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8, !tbaa !13 ; 2 uses
  %i.bwe = fsub float %76, %i.bwd
  %i.bwf = call float @llvm.fabs.f32(float %i.bwa) ; 2 uses
  %i.bwg = call float @llvm.fabs.f32(float %i.bwe) ; 2 uses
  %i.bwh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !12
  %i.bwi = fsub float %i.bwh, %i.bvz
  %i.bwj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4, !tbaa !14
  %i.bwk = fsub float %i.bwj, %i.bwb              ; 2 uses
  %i.bwl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8, !tbaa !13
  %i.bwm = fsub float %i.bwl, %i.bwd
  %i.bwn = call float @llvm.fabs.f32(float %i.bwi) ; 2 uses
  %i.bwo = call float @llvm.fabs.f32(float %i.bwm) ; 2 uses
  %i.bwp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52 ; 2 uses
  %i.bwq = icmp eq i32 %i.bwp, -1
  br i1 %i.bwq, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bwr = sext i32 %i.bwp to i64                 ; 4 uses
  %i.bws = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bwr ; 3 uses
  %i.bwt = load float, ptr %i.bws, align 8, !tbaa !12
  %i.bwu = call float @llvm.fabs.f32(float %i.bwt) ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bws, i64 4
  %i.bww = load float, ptr %i.bwv, align 4, !tbaa !14 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bws, i64 8
  %i.bwy = load float, ptr %i.bwx, align 8, !tbaa !13
  %i.bwz = call float @llvm.fabs.f32(float %i.bwy) ; 2 uses
  %i.bxa = fmul float %i.bwk, %i.bww
  %i.bxb = call float @llvm.fabs.f32(float %i.bxa)
  %i.bxc = call float @llvm.fmuladd.f32(float %i.bwu, float %i.bwn, float %i.bxb)
  %i.bxd = call float @llvm.fmuladd.f32(float %i.bwz, float %i.bwo, float %i.bxc) ; 2 uses
  %i.bxe = getelementptr [4 x i8], ptr %7, i64 %i.bwr ; 2 uses
  %i.bxf = getelementptr i8, ptr %i.bxe, i64 12
  %i.bxg = load float, ptr %i.bxf, align 4, !tbaa !10
  %i.bxh = load float, ptr %i.bxe, align 4, !tbaa !10
  %i.bxi = fsub float %i.bxg, %i.bxh              ; 3 uses
  %i.bxj = fcmp ogt float %i.bxd, f0x34000000
  br i1 %i.bxj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.bxk = fmul float %i.bwc, %i.bww
  %i.bxl = call float @llvm.fabs.f32(float %i.bxk)
  %i.bxm = call float @llvm.fmuladd.f32(float %i.bwu, float %i.bwf, float %i.bxl)
  %i.bxn = call float @llvm.fmuladd.f32(float %i.bwz, float %i.bwg, float %i.bxm)
  %i.bxo = fadd float %i.bxn, 0.000000e+00
  %i.bxp = fdiv float %i.bxo, %i.bxd
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.bxp, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bxq = fmul float %i.bxi, %.0.i               ; 6 uses
  %i.bxr = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bwr
  %i.bxs = load float, ptr %i.bxr, align 4, !tbaa !10 ; 4 uses
  %i.bxt = fcmp ugt float %i.bxs, f0x34000000
  br i1 %i.bxt, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.bxu = call float @fmodf(float noundef %i.bxq, float noundef %i.bxs) #19 ; 3 uses
  %i.bxv = call float @llvm.fabs.f32(float %i.bxu)
  %i.bxw = fdiv float %i.bxv, %i.bxs              ; 2 uses
  %i.bxx = fcmp olt float %i.bxw, 5.000000e-01
  br i1 %i.bxx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.bxy = fsub float %i.bxq, %i.bxu
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.bxz = fcmp ogt float %i.bxw, 5.000000e-01
  br i1 %i.bxz, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.bya = fsub float %i.bxq, %i.bxu
  %i.byb = fcmp olt float %i.bxq, 0.000000e+00
  %i.byc = select i1 %i.byb, float -1.000000e+00, float 1.000000e+00
  %i.byd = call float @llvm.fmuladd.f32(float %i.bxs, float %i.byc, float %i.bya)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.bxq, %bb.cv ], [ %i.bxq, %bb.cy ], [ %i.bxy, %bb.cx ], [ %i.byd, %bb.cz ]
  %i.bye = fcmp ogt float %i.bxi, f0x34000000
  %i.byf = fdiv float %.0671.i, %i.bxi
  %.1.i104 = select i1 %i.bye, float %i.byf, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.byg = getelementptr inbounds [16 x i8], ptr %50, i64 %i.bwr ; 2 uses
  %i.byh = load <4 x float>, ptr %i.byg, align 8, !tbaa !10
  %i.byi = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.byj = shufflevector <4 x float> %i.byi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byk = fmul <4 x float> %i.byj, %i.byh
  store <4 x float> %i.byk, ptr %i.byg, align 8, !tbaa !10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.byl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52 ; 2 uses
  %i.bym = icmp eq i32 %i.byl, -1
  br i1 %i.bym, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.byn = sext i32 %i.byl to i64                 ; 4 uses
  %i.byo = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.byn ; 3 uses
  %i.byp = load float, ptr %i.byo, align 8, !tbaa !12
  %i.byq = call float @llvm.fabs.f32(float %i.byp) ; 2 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byo, i64 4
  %i.bys = load float, ptr %i.byr, align 4, !tbaa !14 ; 2 uses
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byo, i64 8
  %i.byu = load float, ptr %i.byt, align 8, !tbaa !13
  %i.byv = call float @llvm.fabs.f32(float %i.byu) ; 2 uses
  %i.byw = fmul float %i.bwk, %i.bys
  %i.byx = call float @llvm.fabs.f32(float %i.byw)
  %i.byy = call float @llvm.fmuladd.f32(float %i.byq, float %i.bwn, float %i.byx)
  %i.byz = call float @llvm.fmuladd.f32(float %i.byv, float %i.bwo, float %i.byy) ; 2 uses
  %i.bza = getelementptr [4 x i8], ptr %7, i64 %i.byn ; 2 uses
  %i.bzb = getelementptr i8, ptr %i.bza, i64 12
  %i.bzc = load float, ptr %i.bzb, align 4, !tbaa !10
  %i.bzd = load float, ptr %i.bza, align 4, !tbaa !10
  %i.bze = fsub float %i.bzc, %i.bzd              ; 3 uses
  %i.bzf = fcmp ogt float %i.byz, f0x34000000
  br i1 %i.bzf, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bzg = fmul float %i.bwc, %i.bys
  %i.bzh = call float @llvm.fabs.f32(float %i.bzg)
  %i.bzi = call float @llvm.fmuladd.f32(float %i.byq, float %i.bwf, float %i.bzh)
  %i.bzj = call float @llvm.fmuladd.f32(float %i.byv, float %i.bwg, float %i.bzi)
  %i.bzk = fadd float %i.bzj, 0.000000e+00
  %i.bzl = fdiv float %i.bzk, %i.byz
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.1.i = phi float [ %i.bzl, %bb.dd ], [ 1.000000e+00, %bb.dc ] ; 3 uses
  br i1 %.not183.i, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bzm = fmul float %i.bze, %.0.1.i             ; 6 uses
  %i.bzn = getelementptr inbounds [4 x i8], ptr %8, i64 %i.byn
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !10 ; 4 uses
  %i.bzp = fcmp ugt float %i.bzo, f0x34000000
  br i1 %i.bzp, label %bb.dg, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dg:                                            ; preds = %bb.df
  %i.bzq = call float @fmodf(float noundef %i.bzm, float noundef %i.bzo) #19 ; 3 uses
  %i.bzr = call float @llvm.fabs.f32(float %i.bzq)
  %i.bzs = fdiv float %i.bzr, %i.bzo              ; 2 uses
  %i.bzt = fcmp olt float %i.bzs, 5.000000e-01
  br i1 %i.bzt, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bzu = fcmp ogt float %i.bzs, 5.000000e-01
  br i1 %i.bzu, label %bb.di, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.di:                                            ; preds = %bb.dh
  %i.bzv = fsub float %i.bzm, %i.bzq
  %i.bzw = fcmp olt float %i.bzm, 0.000000e+00
  %i.bzx = select i1 %i.bzw, float -1.000000e+00, float 1.000000e+00
  %i.bzy = call float @llvm.fmuladd.f32(float %i.bzo, float %i.bzx, float %i.bzv)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dj:                                            ; preds = %bb.dg
  %i.bzz = fsub float %i.bzm, %i.bzq
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i:          ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %.0671.1.i = phi float [ %i.bzm, %bb.df ], [ %i.bzm, %bb.dh ], [ %i.bzz, %bb.dj ], [ %i.bzy, %bb.di ]
  %i.caa = fcmp ogt float %i.bze, f0x34000000
  %i.cab = fdiv float %.0671.1.i, %i.bze
  %.1.1.i = select i1 %i.caa, float %i.cab, float %.0.1.i
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i, %bb.de
  %.2.1.i = phi float [ %.1.1.i, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i ], [ %.0.1.i, %bb.de ]
  %i.cac = getelementptr inbounds [16 x i8], ptr %50, i64 %i.byn ; 2 uses
  %i.cad = load <4 x float>, ptr %i.cac, align 8, !tbaa !10
  %i.cae = insertelement <4 x float> poison, float %.2.1.i, i64 0
  %i.caf = shufflevector <4 x float> %i.cae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cag = fmul <4 x float> %i.caf, %i.cad
  store <4 x float> %i.cag, ptr %i.cac, align 8, !tbaa !10
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.db
  %i.cah = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 4 uses
  %i.cai = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8, !tbaa !10 ; 4 uses
  %i.caj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8, !tbaa !10 ; 4 uses
  %i.cak = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 944), align 8, !tbaa !10 ; 4 uses
  %i.cal = load <2 x float>, ptr %i.bje, align 8, !tbaa !10 ; 4 uses
  %i.cam = shufflevector <2 x float> %i.cal, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.can = load <2 x float>, ptr %i.bix, align 8, !tbaa !10 ; 4 uses
  %i.cao = shufflevector <2 x float> %i.can, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cap = fmul <4 x float> %i.cao, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %shift254 = shufflevector <4 x float> %i.cap, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop255 = fadd <4 x float> %i.cam, %shift254
  %i.caq = extractelement <2 x float> %i.cal, i64 0
  %shift257 = shufflevector <4 x float> %i.cap, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop258 = fadd <4 x float> %i.cam, %shift257
  %i.car = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cam, <4 x float> zeroinitializer, <4 x float> %i.cap) ; 4 uses
  %i.cas = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 868), align 4, !tbaa !14 ; 4 uses
  %i.cat = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), align 8, !tbaa !10 ; 6 uses
  %i.cau = extractelement <3 x float> %i.cat, i64 0
end_hunk_1
