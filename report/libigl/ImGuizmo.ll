Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.bct = fadd float %i.bby, %i.bcs
  %i.bcu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4, !tbaa !11
  %i.bcv = fmul float %i.bcj, %i.bcu
  %i.bcw = fsub float %i.bct, %i.bcv
  %i.bcx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !11 ; 2 uses
  %i.bcy = fsub float %i.bcw, %i.bcx
  %i.bcz = zext nneg i32 %i.bbl to i64            ; 2 uses
  %i.bda = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.bcz ; 2 uses
  %i.bdb = load float, ptr %i.bda, align 4, !tbaa !11 ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8, !tbaa !11
  %i.bde = fsub float %i.bdd, %i.bcx              ; 2 uses
  %i.bdf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !9 ; 3 uses
  %i.bdg = extractelement <2 x float> %i.bdf, i64 1
  %i.bdh = fsub float %i.bcm, %i.bdg
  %i.bdi = extractelement <2 x float> %i.bdf, i64 0
  %i.bdj = fsub float %i.bcr, %i.bdi
  %i.bdk = load <2 x float>, ptr %i.bdc, align 8, !tbaa !9 ; 5 uses
  %i.bdl = extractelement <2 x float> %i.bdk, i64 0
  %i.bdm = fmul float %i.bdl, %i.bdj
  %i.bdn = tail call float @llvm.fmuladd.f32(float %i.bdb, float %i.bcy, float %i.bdm)
  %i.bdo = extractelement <2 x float> %i.bdk, i64 1
  %i.bdp = tail call noundef float @llvm.fmuladd.f32(float %i.bdo, float %i.bdh, float %i.bdn) ; 2 uses
  %i.bdq = fmul float %i.bdb, %i.bdp
  %i.bdr = insertelement <2 x float> poison, float %i.bdp, i64 0
  %i.bds = shufflevector <2 x float> %i.bdr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdt = fmul <2 x float> %i.bdk, %i.bds
  %i.bdu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 708), align 4, !tbaa !9
  %i.bdv = fsub <2 x float> %i.bdu, %i.bdf        ; 3 uses
  %i.bdw = fadd float %i.bde, %i.bdq
  %i.bdx = fadd <2 x float> %i.bdv, %i.bdt        ; 2 uses
  %i.bdy = shufflevector <2 x float> %i.bdk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdz = shufflevector <2 x float> %i.bdx, <2 x float> %i.bdv, <2 x i32> <i32 0, i32 2>
  %i.bea = fmul <2 x float> %i.bdy, %i.bdz
  %i.beb = insertelement <2 x float> poison, float %i.bdb, i64 0
  %i.bec = shufflevector <2 x float> %i.beb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bed = insertelement <2 x float> poison, float %i.bdw, i64 0
  %i.bee = insertelement <2 x float> %i.bed, float %i.bde, i64 1
  %i.bef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bec, <2 x float> %i.bee, <2 x float> %i.bea)
  %i.beg = shufflevector <2 x float> %i.bdk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.beh = shufflevector <2 x float> %i.bdx, <2 x float> %i.bdv, <2 x i32> <i32 1, i32 3>
  %i.bei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beg, <2 x float> %i.beh, <2 x float> %i.bef) ; 2 uses
  %i.bej = extractelement <2 x float> %i.bei, i64 0
  %i.bek = extractelement <2 x float> %i.bei, i64 1
  %i.bel = fdiv float %i.bej, %i.bek              ; 2 uses
  %i.bem = fcmp ogt float %i.bel, 1.000000e-03
  %i.ben = select i1 %i.bem, float %i.bel, float 1.000000e-03
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 %i.bcz
  store float %i.ben, ptr %i.beo, align 4, !tbaa !9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.bep = getelementptr inbounds nuw i8, ptr %i.axb, i64 288
  %i.beq = load float, ptr %i.bep, align 8, !tbaa !37
  %i.ber = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 792), align 8, !tbaa !63
  %i.bes = fsub float %i.beq, %i.ber
  %i.bet = fmul float %i.bes, f0x3C23D70A
  %i.beu = fadd float %i.bet, 1.000000e+00        ; 2 uses
  %i.bev = fcmp ogt float %i.beu, 1.000000e-03
  %i.bew = select i1 %i.bev, float %i.beu, float 1.000000e-03
  %i.bex = insertelement <4 x float> poison, float %i.bew, i64 0
  %i.bey = shufflevector <4 x float> %i.bex, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bey, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.not43.i = icmp eq ptr %6, null
  br i1 %.not43.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  %i.bez = load float, ptr %6, align 4, !tbaa !9  ; 3 uses
  store float %i.bez, ptr %i.n, align 4, !tbaa !9
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store float %i.bez, ptr %i.bfa, align 4, !tbaa !9
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %i.bez, ptr %i.bfb, align 4, !tbaa !9
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.bfc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !9 ; 2 uses
  %i.bfd = fcmp ogt <2 x float> %i.bfc, splat (float 1.000000e-03)
  %i.bfe = select <2 x i1> %i.bfd, <2 x float> %i.bfc, <2 x float> splat (float 1.000000e-03) ; 3 uses
  store <2 x float> %i.bfe, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !9
  %i.bff = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !9 ; 2 uses
  %i.bfg = fcmp ogt float %i.bff, 1.000000e-03
  %i.bfh = select i1 %i.bfg, float %i.bff, float 1.000000e-03 ; 2 uses
  store float %i.bfh, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !9
  %i.bfi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 776), align 8, !tbaa !11
  %i.bfj = extractelement <2 x float> %i.bfe, i64 0
  %i.bfk = fmul float %i.bfj, %i.bfi
  %i.bfl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 780), align 4, !tbaa !9
  %i.bfm = shufflevector <2 x float> %i.bfe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bfn = insertelement <2 x float> %i.bfm, float %i.bfh, i64 1
  %i.bfo = fmul <2 x float> %i.bfn, %i.bfl        ; 2 uses
  %i.bfp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !9 ; 3 uses
  %i.bfq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !9 ; 2 uses
  %i.bfr = fmul <4 x float> %i.bfq, zeroinitializer ; 2 uses
  %i.bfs = insertelement <4 x float> poison, float %i.bfk, i64 0
  %i.bft = shufflevector <4 x float> %i.bfs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bfu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bft, <4 x float> %i.bfp, <4 x float> %i.bfr)
  %i.bfv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !9 ; 4 uses
  %i.bfw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfv, <4 x float> zeroinitializer, <4 x float> %i.bfu)
  %i.bfx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !9 ; 4 uses
  %i.bfy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfx, <4 x float> zeroinitializer, <4 x float> %i.bfw)
  store <4 x float> %i.bfy, ptr %4, align 4
  %.sroa.7.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bfz = shufflevector <2 x float> %i.bfo, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bga = fmul <4 x float> %i.bfz, %i.bfq
  %i.bgb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfp, <4 x float> zeroinitializer, <4 x float> %i.bga)
  %i.bgc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfv, <4 x float> zeroinitializer, <4 x float> %i.bgb)
  %i.bgd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfx, <4 x float> zeroinitializer, <4 x float> %i.bgc)
  store <4 x float> %i.bgd, ptr %.sroa.7.0..sroa_idx.i57, align 4
  %.sroa.11.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfp, <4 x float> zeroinitializer, <4 x float> %i.bfr) ; 2 uses
  %i.bgf = shufflevector <2 x float> %i.bfo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bgg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bgf, <4 x float> %i.bfv, <4 x float> %i.bge)
  %i.bgh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfx, <4 x float> zeroinitializer, <4 x float> %i.bgg)
  store <4 x float> %i.bgh, ptr %.sroa.11.0..sroa_idx.i61, align 4
  %.sroa.15.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bgi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bfv, <4 x float> zeroinitializer, <4 x float> %i.bge)
  %i.bgj = fadd <4 x float> %i.bfx, %i.bgi
  store <4 x float> %i.bgj, ptr %.sroa.15.0..sroa_idx.i65, align 4
  br i1 %.not25, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bgk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !11
  %i.bgl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 764), align 4, !tbaa !14
  %i.bgm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !13
  store float %i.bgk, ptr %5, align 4
  %.sroa.9136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9136.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bgl, ptr %.sroa.27.0..sroa_idx.i, align 4
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.33.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bgm, ptr %.sroa.51.0..sroa_idx.i, align 4
  %.sroa.57.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.57.0..sroa_idx.i69, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.75.0..sroa_idx.i, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.axb, i64 296
  %i.bgo = load i8, ptr %i.bgn, align 8, !tbaa !49, !range !35, !noundef !36
  %i.bgp = trunc nuw i8 %i.bgo to i1
  br i1 %i.bgp, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.bgq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !60
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit:    ; preds = %bb.bo, %_ZN8ImGuizmoL11CanActivateEv.exit.i52, %_ZN8ImGuizmoL11CanActivateEv.exit.i31, %bb.ar, %bb.ae, %_ZN8ImGuizmoL11CanActivateEv.exit.i, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.api, %_ZN8ImGuizmoL11CanActivateEv.exit.i31 ], [ %.1, %_ZN8ImGuizmoL11CanActivateEv.exit.i ], [ %i.agv, %bb.ae ], [ %i.aph, %bb.ar ], [ %i.bgq, %bb.bo ], [ %.4, %_ZN8ImGuizmoL11CanActivateEv.exit.i52 ] ; 18 uses
  %i.bgr = icmp eq ptr %7, null
  %i.bgs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !range !35
  %i.bgt = trunc nuw i8 %i.bgs to i1
  %or.cond = select i1 %i.bgr, i1 true, i1 %i.bgt
  br i1 %or.cond, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, label %bb.bp

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge: ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35
  br label %bb.do

bb.bp:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %i.bgu = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 3 uses
  %i.bgv = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !33 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.bgw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !64 ; 2 uses
  store i32 %i.bgw, ptr %i.k, align 4, !tbaa !65
  %i.bgx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !57, !range !35, !noundef !36
  %i.bgy = trunc nuw i8 %i.bgx to i1
  br i1 %i.bgy, label %.thread.thread.i, label %.preheader680.i

.preheader680.i:                                  ; preds = %bb.bp
  %i.bgz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 3 uses
  %i.bha = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 3 uses
  %i.bhb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 3 uses
  %i.bhc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4, !tbaa !16 ; 3 uses
  %i.bhd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !16 ; 3 uses
  %i.bhe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !16 ; 3 uses
  %i.bhf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !11
  %i.bhg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !11
  %i.bhh = fsub float %i.bhf, %i.bhg              ; 2 uses
  %i.bhi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !14
  %i.bhj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 320), align 8, !tbaa !14
  %i.bhk = fsub float %i.bhi, %i.bhj              ; 2 uses
  %i.bhl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.bhm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 324), align 4, !tbaa !13
  %i.bhn = fsub float %i.bhl, %i.bhm              ; 2 uses
  %.sroa.0624.0.copyload634.i = load <2 x float>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16 ; 2 uses
  %65 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  %i.bho = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bhp = fmul <2 x float> %i.bhd, %i.bho
  %i.bhq = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhq, <2 x float> %i.bhc, <2 x float> %i.bhp)
  %i.bhs = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhs, <2 x float> %i.bhe, <2 x float> %i.bhr) ; 2 uses
  %i.bhu = fmul <2 x float> %i.bha, %i.bho
  %i.bhv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhq, <2 x float> %i.bgz, <2 x float> %i.bhu)
  %i.bhw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhs, <2 x float> %i.bhb, <2 x float> %i.bhv) ; 3 uses
  %i.bhx = insertelement <2 x float> %i.bhw, float %i.bhk, i64 0 ; 2 uses
  %i.bhy = fmul <2 x float> %i.bhx, %i.bhx
  %i.bhz = shufflevector <2 x float> %i.bhw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bia = insertelement <2 x float> %i.bhz, float %i.bhh, i64 0 ; 2 uses
  %i.bib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bia, <2 x float> %i.bia, <2 x float> %i.bhy)
  %i.bic = shufflevector <2 x float> %i.bht, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bid = insertelement <2 x float> %i.bic, float %i.bhn, i64 0 ; 2 uses
  %i.bie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bid, <2 x float> %i.bid, <2 x float> %i.bib)
  %i.bif = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bie)
  %i.big = fdiv <2 x float> splat (float 1.000000e+00), %i.bif ; 2 uses
  %i.bih = extractelement <2 x float> %i.big, i64 0 ; 3 uses
  %i.bii = fmul float %i.bhh, %i.bih              ; 3 uses
  %i.bij = fmul float %i.bhk, %i.bih              ; 3 uses
  %i.bik = fmul float %i.bhn, %i.bih              ; 3 uses
  %i.bil = shufflevector <2 x float> %i.big, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bim = fmul <2 x float> %i.bhw, %i.bil        ; 4 uses
  %i.bin = fmul <2 x float> %i.bht, %i.bil        ; 3 uses
  %i.bio = extractelement <2 x float> %i.bim, i64 1
  %i.bip = fmul float %i.bij, %i.bio
  %i.biq = extractelement <2 x float> %i.bim, i64 0
  %i.bir = call float @llvm.fmuladd.f32(float %i.bii, float %i.biq, float %i.bip)
  %i.bis = extractelement <2 x float> %i.bin, i64 0
  %i.bit = call noundef float @llvm.fmuladd.f32(float %i.bik, float %i.bis, float %i.bir) ; 2 uses
  %i.biu = call float @llvm.fabs.f32(float %i.bit) ; 2 uses
  %i.biv = fcmp uno float %i.bit, 0.000000e+00
  br i1 %i.biv, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader680.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.preheader680.i
  %.sroa.0658.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bim, %bb.bq ]
  %.sroa.10664.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bin, %bb.bq ]
  %.1161.i = phi float [ 0.000000e+00, %.preheader680.i ], [ %i.biu, %bb.bq ] ; 2 uses
  %.1158.i = phi i32 [ %i.bgw, %.preheader680.i ], [ 0, %bb.bq ]
  %i.biw = fcmp ult float %i.biu, 1.000000e-01
  br i1 %i.biw, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.k, align 4, !tbaa !65
  store <2 x float> %i.bim, ptr %42, align 16
  %.sroa.16642.0..sroa_idx643.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %i.bin, ptr %.sroa.16642.0..sroa_idx643.i, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1.i83 = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ]  ; 3 uses
  %.sroa.0624.0.copyload634.1.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16 ; 2 uses
  %66 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), align 8
  %i.bix = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.biy = fmul <2 x float> %i.bhd, %i.bix
  %i.biz = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.biz, <2 x float> %i.bhc, <2 x float> %i.biy)
  %i.bjb = shufflevector <4 x float> %66, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bjc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjb, <2 x float> %i.bhe, <2 x float> %i.bja) ; 2 uses
  %i.bjd = extractelement <2 x float> %i.bjc, i64 0 ; 2 uses
  %i.bje = fmul <2 x float> %i.bha, %i.bix
  %i.bjf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.biz, <2 x float> %i.bgz, <2 x float> %i.bje)
  %i.bjg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjb, <2 x float> %i.bhb, <2 x float> %i.bjf) ; 4 uses
  %foldExtExtBinop242 = fmul <2 x float> %i.bjg, %i.bjg
  %i.bjh = extractelement <2 x float> %foldExtExtBinop242, i64 1
  %i.bji = extractelement <2 x float> %i.bjg, i64 0 ; 2 uses
  %i.bjj = call float @llvm.fmuladd.f32(float %i.bji, float %i.bji, float %i.bjh)
  %i.bjk = call float @llvm.fmuladd.f32(float %i.bjd, float %i.bjd, float %i.bjj)
  %sqrt.i.i.1.i84 = call noundef float @llvm.sqrt.f32(float %i.bjk)
  %i.bjl = fdiv float 1.000000e+00, %sqrt.i.i.1.i84
  %i.bjm = insertelement <2 x float> poison, float %i.bjl, i64 0
  %i.bjn = shufflevector <2 x float> %i.bjm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bjo = fmul <2 x float> %i.bjg, %i.bjn        ; 4 uses
  %i.bjp = fmul <2 x float> %i.bjc, %i.bjn        ; 3 uses
  %i.bjq = extractelement <2 x float> %i.bjo, i64 1
  %i.bjr = fmul float %i.bij, %i.bjq
  %i.bjs = extractelement <2 x float> %i.bjo, i64 0
  %i.bjt = call float @llvm.fmuladd.f32(float %i.bii, float %i.bjs, float %i.bjr)
  %i.bju = extractelement <2 x float> %i.bjp, i64 0
  %i.bjv = call noundef float @llvm.fmuladd.f32(float %i.bik, float %i.bju, float %i.bjt)
  %i.bjw = call float @llvm.fabs.f32(float %i.bjv) ; 3 uses
  %i.bjx = fcmp ult float %i.bjw, %.1161.i
  br i1 %i.bjx, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.0658.1.1.i = phi <2 x float> [ %.sroa.0658.1.i, %bb.bt ], [ %i.bjo, %bb.bu ]
  %.sroa.10664.1.1.i = phi <2 x float> [ %.sroa.10664.1.i, %bb.bt ], [ %i.bjp, %bb.bu ]
  %.1161.1.i = phi float [ %.1161.i, %bb.bt ], [ %i.bjw, %bb.bu ]
  %.1158.1.i = phi i32 [ %.1158.i, %bb.bt ], [ 1, %bb.bu ]
  %i.bjy = fcmp ult float %i.bjw, 1.000000e-01
  br i1 %i.bjy, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bjz = zext nneg i32 %.1.i83 to i64           ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bjz
  store i32 1, ptr %i.bka, align 4, !tbaa !65
  %i.bkb = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bjz ; 2 uses
  store <2 x float> %i.bjo, ptr %i.bkb, align 16
  %.sroa.16642.0..sroa_idx643.1.i = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8
  store <2 x float> %i.bjp, ptr %.sroa.16642.0..sroa_idx643.1.i, align 8
  %i.bkc = add nuw nsw i32 %.1.i83, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1.1.i = phi i32 [ %i.bkc, %bb.bw ], [ %.1.i83, %bb.bv ] ; 4 uses
  %.sroa.0624.0.copyload634.2.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 32), align 16 ; 2 uses
  %.sroa.16642.8.vec.extract.2.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.bkd = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bke = fmul <2 x float> %i.bhd, %i.bkd
  %i.bkf = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bkg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkf, <2 x float> %i.bhc, <2 x float> %i.bke)
  %67 = insertelement <2 x float> poison, float %.sroa.16642.8.vec.extract.2.i, i64 0
  %i.bkh = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkh, <2 x float> %i.bhe, <2 x float> %i.bkg) ; 2 uses
  %i.bkj = extractelement <2 x float> %i.bki, i64 0 ; 2 uses
  %i.bkk = fmul <2 x float> %i.bha, %i.bkd
  %i.bkl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkf, <2 x float> %i.bgz, <2 x float> %i.bkk)
  %i.bkm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkh, <2 x float> %i.bhb, <2 x float> %i.bkl) ; 4 uses
  %foldExtExtBinop244 = fmul <2 x float> %i.bkm, %i.bkm
  %i.bkn = extractelement <2 x float> %foldExtExtBinop244, i64 1
  %i.bko = extractelement <2 x float> %i.bkm, i64 0 ; 2 uses
  %i.bkp = call float @llvm.fmuladd.f32(float %i.bko, float %i.bko, float %i.bkn)
  %i.bkq = call float @llvm.fmuladd.f32(float %i.bkj, float %i.bkj, float %i.bkp)
  %sqrt.i.i.2.i85 = call noundef float @llvm.sqrt.f32(float %i.bkq)
  %i.bkr = fdiv float 1.000000e+00, %sqrt.i.i.2.i85
  %i.bks = insertelement <2 x float> poison, float %i.bkr, i64 0
  %i.bkt = shufflevector <2 x float> %i.bks, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bku = fmul <2 x float> %i.bkm, %i.bkt        ; 4 uses
  %i.bkv = fmul <2 x float> %i.bki, %i.bkt        ; 3 uses
  %i.bkw = extractelement <2 x float> %i.bku, i64 1
  %i.bkx = fmul float %i.bij, %i.bkw
  %i.bky = extractelement <2 x float> %i.bku, i64 0
  %i.bkz = call float @llvm.fmuladd.f32(float %i.bii, float %i.bky, float %i.bkx)
  %i.bla = extractelement <2 x float> %i.bkv, i64 0
  %i.blb = call noundef float @llvm.fmuladd.f32(float %i.bik, float %i.bla, float %i.bkz)
  %i.blc = call float @llvm.fabs.f32(float %i.blb) ; 2 uses
  %i.bld = fcmp ult float %i.blc, %.1161.1.i      ; 3 uses
  %.sroa.0658.1.2.i = select i1 %i.bld, <2 x float> %.sroa.0658.1.1.i, <2 x float> %i.bku
  %.sroa.10664.1.2.i = select i1 %i.bld, <2 x float> %.sroa.10664.1.1.i, <2 x float> %i.bkv
  %.1158.2.i = select i1 %i.bld, i32 %.1158.1.i, i32 2 ; 4 uses
  %i.ble = fcmp ult float %i.blc, 1.000000e-01
  br i1 %i.ble, label %bb.by, label %.thread745.i

.thread745.i:                                     ; preds = %bb.bx
  %i.blf = zext nneg i32 %.1.1.i to i64           ; 2 uses
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.blf
  store i32 2, ptr %i.blg, align 4, !tbaa !65
  %i.blh = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.blf ; 2 uses
  store <2 x float> %i.bku, ptr %i.blh, align 16
  %.sroa.16642.0..sroa_idx643.2.i = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  store <2 x float> %i.bkv, ptr %.sroa.16642.0..sroa_idx643.2.i, align 8
  %i.bli = add nuw nsw i32 %.1.1.i, 1
  br label %.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.blj = icmp eq i32 %.1.1.i, 0
  br i1 %i.blj, label %bb.bz, label %.thread.i

bb.bz:                                            ; preds = %bb.by
  store i32 %.1158.2.i, ptr %i.k, align 4, !tbaa !65
  store <2 x float> %.sroa.0658.1.2.i, ptr %42, align 16
  %.sroa.10664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %.sroa.10664.1.2.i, ptr %.sroa.10664.0..sroa_idx.i, align 8
  br label %.thread.thread.i

.thread.i:                                        ; preds = %bb.by, %.thread745.i
  %.1.2747.i = phi i32 [ %i.bli, %.thread745.i ], [ %.1.1.i, %bb.by ] ; 3 uses
  %.pre.i86 = load i32, ptr %i.k, align 4, !tbaa !65 ; 3 uses
  %.not182.i = icmp eq i32 %.1158.2.i, %.pre.i86
  br i1 %.not182.i, label %.thread.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread.i
  %wide.trip.count.i = zext nneg i32 %.1.2747.i to i64
  br label %.preheader.i

bb.ca:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge712.i, label %.preheader.i, !llvm.loop !66

._crit_edge712.i:                                 ; preds = %bb.ca
  br label %split.i, !llvm.loop !66

.preheader.i:                                     ; preds = %bb.ca, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ca ] ; 3 uses
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !65
  %i.blm = icmp eq i32 %i.bll, %.1158.2.i
  br i1 %i.blm, label %split.i, label %bb.ca

split.i:                                          ; preds = %.preheader.i, %._crit_edge712.i
  %i.bln = phi i32 [ %.pre.i86, %._crit_edge712.i ], [ %.1158.2.i, %.preheader.i ]
  %.0167.i = phi i64 [ 0, %._crit_edge712.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0167.i
  store i32 %i.bln, ptr %i.k, align 4, !tbaa !65
  store i32 %.pre.i86, ptr %i.blo, align 4, !tbaa !65
  %.sroa.0.0.copyload = load <4 x float>, ptr %42, align 16
  %i.blp = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %.0167.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %42, ptr noundef nonnull align 16 dereferenceable(16) %i.blp, i64 16, i1 false), !tbaa.struct !17
  store <4 x float> %.sroa.0.0.copyload, ptr %i.blp, align 16
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %split.i, %.thread.i, %bb.bz, %bb.bp
  %.3.i = phi i32 [ 1, %bb.bz ], [ %.1.2747.i, %split.i ], [ %.1.2747.i, %.thread.i ], [ 1, %bb.bp ]
  %i.blq = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.blr = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.bls = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.blt = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.blu = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.blv = getelementptr inbounds nuw i8, ptr %44, i64 28
  %i.blw = getelementptr inbounds nuw i8, ptr %44, i64 44
  %i.blx = getelementptr inbounds nuw i8, ptr %44, i64 60
  %i.bly = getelementptr inbounds nuw i8, ptr %i.bgu, i64 288
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bgu, i64 292
  %i.bma = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bmb = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.bmc = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.bmd = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %50, i64 44 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %50, i64 60 ; 2 uses
  %.not183.i = icmp eq ptr %8, null               ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.bmi = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.bmj = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.bmk = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bml = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.bmm = getelementptr inbounds nuw i8, ptr %50, i64 12
  %i.bmn = getelementptr inbounds nuw i8, ptr %50, i64 28
  %.sroa.7450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.11.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.15.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bmo = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bmp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bmq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bgu, i64 296
  %wide.trip.count710.i = zext nneg i32 %.3.i to i64 ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.bmt = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %43, i64 28
  %i.bmv = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %43, i64 44
  %i.bmx = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %43, i64 60
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread.thread.i
  %indvars.iv707.i = phi i64 [ 0, %.thread.thread.i ], [ %indvars.iv707.i.be, %.backedge.backedge ] ; 4 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv707.i
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !65 ; 5 uses
  %i.bnb = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %indvars.iv707.i ; 2 uses
  %.sroa.0658.0.copyload661.i = load <2 x float>, ptr %i.bnb, align 16 ; 4 uses
  %.sroa.10664.0..sroa_idx665.i = getelementptr inbounds nuw i8, ptr %i.bnb, i64 8
  %.sroa.10664.0.copyload666.i = load <2 x float>, ptr %.sroa.10664.0..sroa_idx665.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.bnc = add nsw i32 %i.bna, 1
  %i.bnd = srem i32 %i.bnc, 3                     ; 3 uses
  %i.bne = add nsw i32 %i.bna, 2
  %i.bnf = srem i32 %i.bne, 3                     ; 3 uses
  %i.bng = sext i32 %i.bna to i64                 ; 4 uses
  %i.bnh = sext i32 %i.bnd to i64                 ; 7 uses
  %i.bni = sext i32 %i.bnf to i64                 ; 7 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bng
  store float 0.000000e+00, ptr %i.bnj, align 4, !tbaa !9
  store float 0.000000e+00, ptr %i.bms, align 4, !tbaa !9
  %i.bnk = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bnh ; 2 uses
  %i.bnl = load float, ptr %i.bnk, align 4, !tbaa !9 ; 2 uses
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bnh
  store float %i.bnl, ptr %i.bnm, align 4, !tbaa !9
  %i.bnn = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bni ; 2 uses
  %i.bno = load float, ptr %i.bnn, align 4, !tbaa !9 ; 2 uses
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bni
  store float %i.bno, ptr %i.bnp, align 4, !tbaa !9
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bmt, i64 %i.bng
  store float 0.000000e+00, ptr %i.bnq, align 4, !tbaa !9
  store float 0.000000e+00, ptr %i.bmu, align 4, !tbaa !9
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bmt, i64 %i.bnh
  store float %i.bnl, ptr %i.bnr, align 4, !tbaa !9
  %i.bns = getelementptr i8, ptr %i.bnn, i64 12
  %i.bnt = load float, ptr %i.bns, align 4, !tbaa !9 ; 2 uses
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bmt, i64 %i.bni
  store float %i.bnt, ptr %i.bnu, align 4, !tbaa !9
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.bmv, i64 %i.bng
  store float 0.000000e+00, ptr %i.bnv, align 4, !tbaa !9
  store float 0.000000e+00, ptr %i.bmw, align 4, !tbaa !9
  %i.bnw = getelementptr i8, ptr %i.bnk, i64 12
  %i.bnx = load float, ptr %i.bnw, align 4, !tbaa !9 ; 2 uses
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.bmv, i64 %i.bnh
  store float %i.bnx, ptr %i.bny, align 4, !tbaa !9
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %i.bmv, i64 %i.bni
  store float %i.bnt, ptr %i.bnz, align 4, !tbaa !9
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.bmx, i64 %i.bng
  store float 0.000000e+00, ptr %i.boa, align 4, !tbaa !9
  store float 0.000000e+00, ptr %i.bmy, align 4, !tbaa !9
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.bmx, i64 %i.bnh
  store float %i.bnx, ptr %i.bob, align 4, !tbaa !9
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %i.bmx, i64 %i.bni
  store float %i.bno, ptr %i.boc, align 4, !tbaa !9
  %i.bod = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !56, !range !35, !noundef !36
  %i.boe = trunc nuw i8 %i.bod to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %44)
  %i.bof = select i1 %i.boe, i32 -5592406, i32 -2136298838 ; 3 uses
  %.sroa.0658.0.vec.extract.i = extractelement <2 x float> %.sroa.0658.0.copyload661.i, i64 0 ; 2 uses
  %.sroa.10664.8.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 0 ; 3 uses
  %.sroa.10664.12.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 1
  %foldExtExtBinop246 = fmul <2 x float> %.sroa.0658.0.copyload661.i, %.sroa.0658.0.copyload661.i
  %i.bog = extractelement <2 x float> %foldExtExtBinop246, i64 1
  %i.boh = call float @llvm.fmuladd.f32(float %.sroa.0658.0.vec.extract.i, float %.sroa.0658.0.vec.extract.i, float %i.bog)
  %i.boi = call float @llvm.fmuladd.f32(float %.sroa.10664.8.vec.extract.i, float %.sroa.10664.8.vec.extract.i, float %i.boh)
  %sqrt.i.i.i.i.i99 = call float @llvm.sqrt.f32(float %i.boi)
  %i.boj = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i99 ; 3 uses
  %i.bok = insertelement <2 x float> poison, float %i.boj, i64 0
end_hunk_0
