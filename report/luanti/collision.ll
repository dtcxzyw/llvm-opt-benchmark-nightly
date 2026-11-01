Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/collision?download=true
inline.NumInlined: 591
inline.NumDeleted: 303
begin_hunk_0_@_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode:bb.a
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !37
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bm, %bb.bl, %bb.bt, %bb.bu, %bb.bo, %bb.bq
  %i.nb = phi i8 [ %i.gn, %bb.bt ], [ %i.gn, %bb.bu ], [ %i.gn, %bb.bl ], [ %i.gn, %bb.bm ], [ %i.gn, %bb.bo ], [ %i.mv, %bb.bq ] ; 5 uses
  %i.nc = phi i8 [ %i.gm, %bb.bt ], [ %i.gm, %bb.bu ], [ %i.gm, %bb.bl ], [ %i.gm, %bb.bm ], [ %i.gm, %bb.bo ], [ %i.mw, %bb.bq ] ; 5 uses
  %.sroa.0744.1 = phi nsz <2 x float> [ %.sroa.0744.0877, %bb.bt ], [ %.sroa.0744.0877, %bb.bu ], [ %.sroa.0744.0877, %bb.bl ], [ %.sroa.0744.0.vec.insert, %bb.bm ], [ %.sroa.0744.0877, %bb.bo ], [ %.sroa.0744.4.vec.insert, %bb.bq ] ; 3 uses
  %.sroa.15767.1 = phi nsz float [ %.sroa.15767.0878, %bb.bt ], [ 0.000000e+00, %bb.bu ], [ %.sroa.15767.0878, %bb.bl ], [ %.sroa.15767.0878, %bb.bm ], [ %.sroa.15767.0878, %bb.bo ], [ %.sroa.15767.0878, %bb.bq ] ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.iw, i64 39
  %i.ne = load i8, ptr %i.nd, align 1
  %i.nf = trunc i8 %i.ne to i1
  %or.cond = or i1 %.0376, %i.nf
  br i1 %or.cond, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val431 = load ptr, ptr %i.iw, align 8, !tbaa !67 ; 3 uses
  %i.ng = icmp ne ptr %.val431, null
  %i.nh = zext i1 %i.ng to i8                     ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %.sroa.9652.2.copyload = load i16, ptr %i.ni, align 8, !tbaa !68 ; 2 uses
  %.sroa.11.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 34
  %.sroa.11.2.copyload = load i16, ptr %.sroa.11.2..sroa_idx, align 2, !tbaa !68 ; 2 uses
  %.sroa.12.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %.sroa.12.2.copyload = load i16, ptr %.sroa.12.2..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.15661.sroa.0.0.copyload1243 = load <3 x float>, ptr %6, align 4, !tbaa !19 ; 2 uses
  %.sroa.17.sroa.0.0.copyload1240 = load <3 x float>, ptr %7, align 4, !tbaa !19 ; 2 uses
  %i.nj = load ptr, ptr %i.fd, align 8, !tbaa !125
  %.not.i570 = icmp eq ptr %i.gl, %i.nj
  br i1 %.not.i570, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i8 %i.nh, ptr %i.gl, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store i8 %.2368, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !129
  %.sroa.9652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i16 %.sroa.9652.2.copyload, ptr %.sroa.9652.0..sroa_idx, align 2, !tbaa !68
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i16 %.sroa.11.2.copyload, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !68
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  store i16 %.sroa.12.2.copyload, ptr %.sroa.12.0..sroa_idx, align 2, !tbaa !68
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %.val431, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !69
  %.sroa.15661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <3 x float> %.sroa.15661.sroa.0.0.copyload1243, ptr %.sroa.15661.0..sroa_idx, align 8, !tbaa !19
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  store <3 x float> %.sroa.0.1, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !19
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  store <3 x float> %.sroa.17.sroa.0.0.copyload1240, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !19
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gl, i64 56 ; 2 uses
  store ptr %i.nk, ptr %i.fc, align 8, !tbaa !130
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit

bb.by:                                            ; preds = %bb.bw
  %i.nl = ptrtoint ptr %i.gl to i64
  %i.nm = ptrtoint ptr %i.go to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 4 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775800
  br i1 %i.no, label %bb.bz, label %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bz:                                            ; preds = %bb.by
  store i8 %i.nc, ptr %i.s, align 1
  store i8 %i.nb, ptr %i.t, align 2
  store ptr %i.go, ptr %i.u, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc571 unwind label %.loopexit.split-lp

.noexc571:                                        ; preds = %bb.bz
  unreachable

_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.by
  %i.np = sdiv exact i64 %i.nn, 56                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 164703072086692425)
  %i.nt = select i1 %i.nr, i64 164703072086692425, i64 %i.ns ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.nu = mul nuw nsw i64 %i.nt, 56
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #26
          to label %.noexc572 unwind label %.loopexit ; 5 uses

.noexc572:                                        ; preds = %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nn ; 9 uses
  store i8 %i.nh, ptr %i.nw, align 8, !tbaa !127
  %.sroa.7.0..sroa_idx650 = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store i8 %.2368, ptr %.sroa.7.0..sroa_idx650, align 1, !tbaa !129
  %.sroa.9652.0..sroa_idx653 = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  store i16 %.sroa.9652.2.copyload, ptr %.sroa.9652.0..sroa_idx653, align 2, !tbaa !68
  %.sroa.11.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i16 %.sroa.11.2.copyload, ptr %.sroa.11.0..sroa_idx655, align 4, !tbaa !68
  %.sroa.12.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.nw, i64 6
  store i16 %.sroa.12.2.copyload, ptr %.sroa.12.0..sroa_idx657, align 2, !tbaa !68
  %.sroa.13.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %.val431, ptr %.sroa.13.0..sroa_idx659, align 8, !tbaa !69
  %.sroa.15661.0..sroa_idx662 = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store <3 x float> %.sroa.15661.sroa.0.0.copyload1243, ptr %.sroa.15661.0..sroa_idx662, align 8, !tbaa !19
  %.sroa.16.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  store <3 x float> %.sroa.0.1, ptr %.sroa.16.0..sroa_idx663, align 4
  %.sroa.17.0..sroa_idx664 = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  store <3 x float> %.sroa.17.sroa.0.0.copyload1240, ptr %.sroa.17.0..sroa_idx664, align 8, !tbaa !19
  %.not10.i.i.i.i.i = icmp eq ptr %i.go, %i.gl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc572, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i ], [ %i.nv, %.noexc572 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i ], [ %i.go, %.noexc572 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !131, !alias.scope !132
  %i.nx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 56 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nx, %i.gl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc572
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.nv, %.noexc572 ], [ %i.ny, %.lr.ph.i.i.i.i.i ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.nn) #24
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ca, %_ZNSt6vectorI13CollisionInfoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.nz, ptr %i.fc, align 8, !tbaa !130
  %i.oa = getelementptr inbounds nuw [56 x i8], ptr %i.nv, i64 %i.nt
  store ptr %i.oa, ptr %i.fd, align 8, !tbaa !125
  br label %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI13CollisionInfoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i8 %i.nc, ptr %i.s, align 1
  store i8 %i.nb, ptr %i.t, align 2
  store ptr %i.go, ptr %i.u, align 8
  br label %bb.cb

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  br label %bb.cn

_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.bx, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.thread789, %bb.bv
  %i.ob = phi ptr [ %i.gl, %.thread789 ], [ %i.gl, %bb.bv ], [ %i.nz, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.nk, %bb.bx ] ; 3 uses
  %i.oc = phi ptr [ %i.go, %.thread789 ], [ %i.go, %bb.bv ], [ %i.nv, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.go, %bb.bx ] ; 13 uses
  %i.od = phi i8 [ %i.gn, %.thread789 ], [ %i.nb, %bb.bv ], [ %i.nb, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.nb, %bb.bx ] ; 5 uses
  %i.oe = phi i8 [ %i.gm, %.thread789 ], [ %i.nc, %bb.bv ], [ %i.nc, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.nc, %bb.bx ] ; 5 uses
  %.sroa.15767.1800 = phi float [ %.sroa.15767.0878, %.thread789 ], [ %.sroa.15767.1, %bb.bv ], [ %.sroa.15767.1, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.15767.1, %bb.bx ] ; 2 uses
  %.sroa.0744.1799 = phi <2 x float> [ %.sroa.0744.0877, %.thread789 ], [ %.sroa.0744.1, %bb.bv ], [ %.sroa.0744.1, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0744.1, %bb.bx ] ; 2 uses
  %.2780796 = phi float [ %.2788, %.thread789 ], [ %.2781, %bb.bv ], [ %.2781, %_ZNSt6vectorI13CollisionInfoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.2781, %bb.bx ] ; 4 uses
  %i.of = fcmp nsz uge float %.2780796, f0x3089705F
  br i1 %i.of, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit
  store i8 %i.oe, ptr %i.s, align 1
  store i8 %i.od, ptr %i.t, align 2
  store ptr %i.oc, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNSt6vectorI13CollisionInfoSaIS0_EE9push_backERKS0_.exit
  %i.og = fmul nsz float %.sroa.15767.1800, 5.000000e-01
  %i.oh = fmul nsz float %i.og, %.2780796
  %i.oi = load float, ptr %i.bt, align 4, !tbaa !37
  %i.oj = fadd nsz float %i.oh, %i.oi             ; 3 uses
  %i.ok = fcmp nsz olt float %i.oj, -5.000000e+03
  %i.ol = fcmp nsz ogt float %i.oj, 5.000000e+03
  %..i6.i591 = select nsz i1 %i.ol, float 5.000000e+03, float %i.oj
  %i.om = fmul nsz <2 x float> %.sroa.0744.1799, splat (float 5.000000e-01)
  %i.on = insertelement <2 x float> poison, float %.2780796, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer
  %i.op = fmul nsz <2 x float> %i.oo, %i.om
  %i.oq = load <2 x float>, ptr %7, align 4, !tbaa !19
  %i.or = fadd nsz <2 x float> %i.op, %i.oq       ; 3 uses
  %i.os = fcmp nsz olt <2 x float> %i.or, splat (float -5.000000e+03)
  %i.ot = fcmp nsz ogt <2 x float> %i.or, splat (float 5.000000e+03)
  %i.ou = select <2 x i1> %i.ot, <2 x float> splat (float 5.000000e+03), <2 x float> %i.or
  %i.ov = fmul nsz <2 x float> %i.ou, splat (float 1.000000e+04)
  %i.ow = call nsz <2 x float> @llvm.trunc.v2f32(<2 x float> %i.ov)
  %i.ox = fdiv nsz <2 x float> %i.ow, splat (float 1.000000e+04)
  %i.oy = select <2 x i1> %i.os, <2 x float> splat (float -5.000000e+03), <2 x float> %i.ox
  %i.oz = fmul nsz float %..i6.i591, 1.000000e+04
  %i.pa = call nsz float @llvm.trunc.f32(float %i.oz)
  %i.pb = fdiv nsz float %i.pa, 1.000000e+04
  %i.pc = select i1 %i.ok, float -5.000000e+03, float %i.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.pd = add nuw nsw i32 %.0365879, 1            ; 2 uses
  %exitcond = icmp eq i32 %i.pd, 100
  br i1 %exitcond, label %bb.aa, label %bb.ak, !llvm.loop !95

bb.ce:                                            ; preds = %bb.cc, %.thread801, %_ZN11StreamProxylsEPFRSoS0_E.exit505
  %i.pe = phi ptr [ %i.ob, %bb.cc ], [ %i.gl, %.thread801 ], [ %i.ob, %_ZN11StreamProxylsEPFRSoS0_E.exit505 ]
  %i.pf = phi ptr [ %i.oc, %bb.cc ], [ %i.go, %.thread801 ], [ %i.oc, %_ZN11StreamProxylsEPFRSoS0_E.exit505 ]
  %.promoted883 = phi i8 [ %i.od, %bb.cc ], [ %i.gn, %.thread801 ], [ %i.od, %_ZN11StreamProxylsEPFRSoS0_E.exit505 ] ; 2 uses
  %.promoted881 = phi i8 [ %i.oe, %bb.cc ], [ %i.gm, %.thread801 ], [ %i.oe, %_ZN11StreamProxylsEPFRSoS0_E.exit505 ] ; 2 uses
  %i.pg = load float, ptr %i.dd, align 4, !tbaa !37 ; 3 uses
  %.val423 = load ptr, ptr %i.cx, align 8, !tbaa !70 ; 2 uses
  %.val = load ptr, ptr %i.cz, align 8, !tbaa !70 ; 2 uses
  %.not816885 = icmp eq ptr %.val423, %.val
  br i1 %.not816885, label %.critedge417.critedge, label %.lr.ph893.preheader

.lr.ph893.preheader:                              ; preds = %bb.ce
  %16 = load float, ptr %6, align 4, !tbaa !35
  %.sroa.29.0.copyload = load float, ptr %i.dk, align 4, !tbaa !19
  %i.ph = fadd nsz float %.sroa.29.0.copyload, %i.pg
  %17 = load float, ptr %i.dc, align 4, !tbaa !36 ; 2 uses
  %i.pi = load <4 x float>, ptr %3, align 4, !tbaa !19
  %18 = insertelement <4 x float> poison, float %16, i64 0
  %19 = insertelement <4 x float> %18, float %17, i64 1
  %20 = insertelement <4 x float> %19, float %i.pg, i64 2
  %i.pj = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.pk = fadd nsz <4 x float> %i.pi, %i.pj
  br label %.lr.ph893

.critedge417.critedge:                            ; preds = %bb.cm, %bb.ce
  %.lcssa884 = phi i8 [ %.promoted883, %bb.ce ], [ %i.rd, %bb.cm ]
  %.lcssa882 = phi i8 [ %.promoted881, %bb.ce ], [ %i.re, %bb.cm ]
  store i8 %.lcssa882, ptr %i.s, align 1
  store i8 %.lcssa884, ptr %i.t, align 2
  %i.pl = icmp ne ptr %i.pf, %i.pe
  %i.pm = zext i1 %i.pl to i8
  store i8 %i.pm, ptr %0, align 8, !tbaa !102
  br label %.critedge417

.lr.ph893:                                        ; preds = %.lr.ph893.preheader, %bb.cm
  %i.pn = phi float [ %i.rc, %bb.cm ], [ %17, %.lr.ph893.preheader ] ; 6 uses
  %.sroa.0620.0891 = phi ptr [ %i.rg, %bb.cm ], [ %.val423, %.lr.ph893.preheader ] ; 9 uses
  %.sroa.29.0886 = phi float [ %.sroa.29.2, %bb.cm ], [ %i.ph, %.lr.ph893.preheader ] ; 6 uses
  %i.po = phi i8 [ %i.re, %bb.cm ], [ %.promoted881, %.lr.ph893.preheader ] ; 5 uses
  %i.pp = phi i8 [ %i.rd, %bb.cm ], [ %.promoted883, %.lr.ph893.preheader ] ; 5 uses
  %i.pq = phi <4 x float> [ %i.rf, %bb.cm ], [ %i.pk, %.lr.ph893.preheader ] ; 9 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 20
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !13
  %i.pt = extractelement <4 x float> %i.pq, i64 0
  %i.pu = fcmp nsz ogt float %i.ps, %i.pt
  br i1 %i.pu, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %.lr.ph893
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !14
  %i.px = extractelement <4 x float> %i.pq, i64 3
  %i.py = fcmp nsz olt float %i.pw, %i.px
  br i1 %i.py, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 28
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !17
  %i.qb = extractelement <4 x float> %i.pq, i64 2
  %i.qc = fcmp nsz ogt float %i.qa, %i.qb
  br i1 %i.qc, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 16
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !18
  %i.qf = fcmp nsz olt float %i.qe, %.sroa.29.0886
  br i1 %i.qf, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 39
  %i.qh = load i8, ptr %i.qg, align 1
  %i.qi = and i8 %i.qh, 2
  %.not413 = icmp eq i8 %i.qi, 0
  br i1 %.not413, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 24
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !15
  %i.ql = extractelement <4 x float> %i.pq, i64 1
  %i.qm = fsub nsz float %i.qk, %i.ql
  %i.qn = fadd nsz float %i.pn, %i.qm             ; 3 uses
  store float %i.qn, ptr %i.dc, align 4, !tbaa !36
  %i.qo = load <4 x float>, ptr %3, align 4, !tbaa !19
  %.sroa.29.0.copyload642 = load float, ptr %i.dk, align 4, !tbaa !19
  %i.qp = insertelement <4 x float> %i.pj, float %i.qn, i64 1
  %i.qq = fadd nsz <4 x float> %i.qp, %i.qo
  %i.qr = fadd nsz float %i.pg, %.sroa.29.0.copyload642
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.qs = phi float [ %i.pn, %bb.ci ], [ %i.qn, %bb.cj ] ; 2 uses
  %.sroa.29.1 = phi nsz float [ %.sroa.29.0886, %bb.ci ], [ %i.qr, %bb.cj ] ; 2 uses
  %i.qt = phi <4 x float> [ %i.pq, %bb.ci ], [ %i.qq, %bb.cj ] ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 24
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !15
  %i.qw = extractelement <4 x float> %i.qt, i64 1
  %i.qx = fsub nsz float %i.qv, %i.qw
  %i.qy = call nsz noundef float @llvm.fabs.f32(float %i.qx)
  %i.qz = fcmp nsz olt float %i.qy, 5.000000e-02
  br i1 %i.qz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %.val430 = load ptr, ptr %.sroa.0620.0891, align 8, !tbaa !67
  %i.ra = icmp ne ptr %.val430, null
  %i.rb = zext i1 %i.ra to i8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.ch, %bb.cg, %bb.cf, %.lr.ph893
  %i.rc = phi float [ %i.qs, %bb.cl ], [ %i.qs, %bb.ck ], [ %i.pn, %bb.ch ], [ %i.pn, %bb.cg ], [ %i.pn, %bb.cf ], [ %i.pn, %.lr.ph893 ]
  %i.rd = phi i8 [ %i.rb, %bb.cl ], [ %i.pp, %bb.ck ], [ %i.pp, %bb.ch ], [ %i.pp, %bb.cg ], [ %i.pp, %bb.cf ], [ %i.pp, %.lr.ph893 ] ; 2 uses
  %i.re = phi i8 [ 1, %bb.cl ], [ %i.po, %bb.ck ], [ %i.po, %bb.ch ], [ %i.po, %bb.cg ], [ %i.po, %bb.cf ], [ %i.po, %.lr.ph893 ] ; 2 uses
  %.sroa.29.2 = phi nsz float [ %.sroa.29.1, %bb.cl ], [ %.sroa.29.1, %bb.ck ], [ %.sroa.29.0886, %bb.ch ], [ %.sroa.29.0886, %bb.cg ], [ %.sroa.29.0886, %bb.cf ], [ %.sroa.29.0886, %.lr.ph893 ]
  %i.rf = phi <4 x float> [ %i.qt, %bb.cl ], [ %i.qt, %bb.ck ], [ %i.pq, %bb.ch ], [ %i.pq, %bb.cg ], [ %i.pq, %bb.cf ], [ %i.pq, %.lr.ph893 ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 40 ; 2 uses
  %.not816 = icmp eq ptr %i.rg, %.val
  br i1 %.not816, label %.critedge417.critedge, label %.lr.ph893

.critedge417:                                     ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit, %bb.x, %.critedge417.critedge
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %13) #6
  %i.rh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !31 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge417
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !32
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #24
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %.critedge417, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  ret void

bb.cn:                                            ; preds = %bb.cb, %bb.aj
  %i.rn = phi ptr [ %i.gj, %bb.aj ], [ %i.go, %bb.cb ] ; 3 uses
  %.pn408.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.aj ], [ %lpad.phi, %bb.cb ]
  %.not.i.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not.i.i.i.i, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !125
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = ptrtoint ptr %i.rn to i64
  %i.rs = sub i64 %i.rq, %i.rr
  call void @_ZdlPvm(ptr noundef nonnull %i.rn, i64 noundef %i.rs) #24
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.cn, %bb.co
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %13) #6
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN19collisionMoveResultD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %.pn408.pn.pn.pn = phi { ptr, i32 } [ %.pn408.pn.pn, %_ZN19collisionMoveResultD2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  resume { ptr, i32 } %.pn408.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i8 noundef signext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.d) #24
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %0, i48 %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.MapNode, align 4            ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.sroa.041.0.extract.trunc = trunc i48 %0 to i16 ; 2 uses
  %.sroa.242.0.extract.shift = lshr i48 %0, 16
  %.sroa.242.0.extract.trunc = trunc i48 %.sroa.242.0.extract.shift to i16 ; 2 uses
  %.sroa.343.0.extract.shift = lshr i48 %0, 32
  %.sroa.343.0.extract.trunc = trunc nuw i48 %.sroa.343.0.extract.shift to i16 ; 2 uses
  %.sroa.039.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.240.0.extract.shift = lshr i48 %1, 16
  %.sroa.240.0.extract.trunc = trunc i48 %.sroa.240.0.extract.shift to i16 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  %.b = load i1, ptr @_ZGVZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, align 1
  br i1 %.b, label %bb.c, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, i8 0, i64 24, i1 false)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev, ptr nonnull @_ZZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, ptr nonnull @__dso_handle) #6 ; 0 uses
  store i1 true, ptr @_ZGVZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(88) %3) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !150  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 2072
  %i.q = icmp ugt i64 %i.p, 126
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 261088
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZNK14NodeDefManager3getEt.exit

end_hunk_0
