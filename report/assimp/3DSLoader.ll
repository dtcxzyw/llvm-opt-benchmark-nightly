Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSLoader?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN17DeadlyImportErrorC2IJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6Assimp19Discreet3DSImporter12CheckIndicesERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare void @_ZN6Assimp19Discreet3DSImporter10MakeUniqueERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.44", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not258 = icmp eq ptr %i.w, %i.x
  br i1 %.not258, label %.preheader218, label %.lr.ph

.preheader218:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not259 = icmp eq ptr %i.y, %i.z
  br i1 %.not259, label %._crit_edge, label %.lr.ph230

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.cl, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.cj, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082222 = phi i32 [ %i.ci, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %i.ba = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.bb = fsub <2 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = insertelement <2 x float> %i.bc, float %i.au, i64 0
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x float> %i.be, float %i.aw, i64 0 ; 2 uses
  %i.bg = fsub <2 x float> %i.bd, %i.bf           ; 2 uses
  %i.bh = load <2 x float>, ptr %i.as, align 4    ; 2 uses
  %i.bi = fsub <2 x float> %i.bh, %i.ba           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.ay, i64 0
  %i.bl = fsub <2 x float> %i.bk, %i.bf           ; 2 uses
  %i.bm = extractelement <2 x float> %i.bi, i64 1
  %i.bn = fneg float %i.bm
  %i.bo = extractelement <2 x float> %i.bg, i64 0
  %i.bp = fmul float %i.bo, %i.bn
  %i.bq = extractelement <2 x float> %i.bb, i64 1
  %i.br = extractelement <2 x float> %i.bl, i64 0
  %i.bs = call float @llvm.fmuladd.f32(float %i.bq, float %i.br, float %i.bp)
  %i.bt = fneg <2 x float> %i.bl
  %i.bu = fmul <2 x float> %i.bb, %i.bt
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bu) ; 2 uses
  %.sroa.0.0.vec.insert.i99 = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = shufflevector <2 x float> %.sroa.0.0.vec.insert.i99, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %i.ai ; 2 uses
  store <2 x float> %i.bw, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.bz = extractelement <2 x float> %i.bv, i64 1 ; 3 uses
  store float %i.bz, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ca = load i32, ptr %i.al, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  store <2 x float> %i.bw, ptr %i.cd, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store float %i.bz, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.ce = load i32, ptr %i.ap, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.a, align 8
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  store <2 x float> %i.bw, ptr %i.ch, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %i.bz, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.ci = add i32 %.082222, 1                     ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = load ptr, ptr %i.v, align 8
  %i.cl = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4
  %i.cq = icmp ugt i64 %i.cp, %i.cj
  br i1 %i.cq, label %.lr.ph, label %.preheader218, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph230
  %foldExtExtBinop = fsub <2 x float> %i.du, %i.ds
  %i.cr = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop325 = fsub <2 x float> %i.du, %i.ds ; 2 uses
  %i.cs = fsub float %.sroa.speculated, %.sroa.speculated196 ; 2 uses
  %foldExtExtBinop327 = fmul <2 x float> %foldExtExtBinop325, %foldExtExtBinop325
  %i.ct = extractelement <2 x float> %foldExtExtBinop327, i64 1
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.ct)
  %i.cv = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cu)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader218
  %i.cw = phi float [ 1.200000e+21, %.preheader218 ], [ %i.cv, %._crit_edge.loopexit ]
  %i.cx = call noundef float @sqrtf(float noundef %i.cw) #28
  %i.cy = fmul float %i.cx, f0x3727C5AC           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not303 = icmp eq ptr %i.cz, %i.da
  br i1 %.not303, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.df = sdiv exact i64 %i.dd, 12
  %i.dg = icmp ugt i64 %i.df, 768614336404564650
  br i1 %i.dg, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #30
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #31 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.di, i8 0, i64 %i.dd, i1 false)
  store ptr %i.di, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dd ; 2 uses
  store ptr %i.dj, ptr %i.de, align 8
  store ptr %i.dj, ptr %i.dh, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph230:                                        ; preds = %.preheader218, %.lr.ph230
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph230 ], [ 0, %.preheader218 ] ; 2 uses
  %.sroa.13193.0226 = phi float [ %.sroa.speculated196, %.lr.ph230 ], [ 1.000000e+10, %.preheader218 ] ; 2 uses
  %.sroa.13.0223 = phi float [ %.sroa.speculated, %.lr.ph230 ], [ -1.000000e+10, %.preheader218 ] ; 2 uses
  %i.dk = phi <2 x float> [ %i.du, %.lr.ph230 ], [ splat (float -1.000000e+10), %.preheader218 ] ; 2 uses
  %i.dl = phi <2 x float> [ %i.ds, %.lr.ph230 ], [ splat (float 1.000000e+10), %.preheader218 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load float, ptr %i.dn, align 4          ; 4 uses
  %i.dp = fcmp olt float %i.do, %.sroa.13193.0226
  %.sroa.speculated196 = select i1 %i.dp, float %i.do, float %.sroa.13193.0226 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dm, align 4    ; 4 uses
  %i.dr = fcmp olt <2 x float> %i.dq, %i.dl
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.dq, <2 x float> %i.dl ; 3 uses
  %i.dt = fcmp olt <2 x float> %i.dk, %i.dq
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.dq, <2 x float> %i.dk ; 3 uses
  %i.dv = fcmp olt float %.sroa.13.0223, %i.do
  %.sroa.speculated = select i1 %i.dv, float %i.do, float %.sroa.13.0223 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dw = and i64 %indvars.iv.next, 4294967295
  %i.dx = icmp ugt i64 %i.ad, %i.dw
  br i1 %i.dx, label %.lr.ph230, label %._crit_edge.loopexit, !llvm.loop !52

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dy = phi ptr [ %i.di, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dz = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ea = load ptr, ptr %i.v, align 8
  %.not237 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not237, label %._crit_edge239, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0172.0238 = phi ptr [ %i.eu, %bb.j ], [ %i.dz, %bb.f ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238, i64 12 ; 3 uses
  %i.ec = load i32, ptr %.sroa.0172.0238, align 4 ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load i32, ptr %i.eb, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ef, i32 noundef %i.ec, i32 noundef %i.eg)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge239:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.h:                                             ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238, i64 4
  %i.ej = load i32, ptr %i.ei, align 4            ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ek
  %i.en = load i32, ptr %i.eb, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.em, i32 noundef %i.ej, i32 noundef %i.en)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238, i64 8
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = load ptr, ptr %0, align 8
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i32, ptr %i.eb, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.es, i32 noundef %i.ep, i32 noundef %i.et)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.eu, %i.ev
  br i1 %.not, label %._crit_edge239, label %.preheader, !llvm.loop !53

bb.k:                                             ; preds = %._crit_edge239
  %i.ew = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ex = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %i.fc = add nsw i64 %i.fb, 63                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = and i64 %i.fd, 2305843009213693944
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #31
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.fg = lshr i64 %i.fc, 6                       ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg
  %.idx.i = shl nuw nsw i64 %i.fg, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ff, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.m, %bb.k
  %.sroa.16168.0 = phi ptr [ null, %bb.k ], [ %i.fh, %bb.m ] ; 4 uses
  %.sroa.0160.0 = phi ptr [ null, %bb.k ], [ %i.ff, %bb.m ] ; 10 uses
  %i.fi = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.v, align 8
  %.not213254 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not213254, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.n

._crit_edge257:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.aa unwind label %bb.ae     ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %bb.h, %bb.i, %bb.l, %._crit_edge239
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.lr.ph256, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0155.0255 = phi ptr [ %i.fi, %.lr.ph256 ], [ %i.ga, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0155.0255, i64 12 ; 3 uses
  %i.fo = load i32, ptr %.sroa.0155.0255, align 4 ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i32 %i.fo, 6
  %.zext = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0160.0, i64 %.zext
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %i.fr, align 8
  %i.fv = and i64 %i.ft, %i.fu
  %.not214.a = icmp eq i64 %i.fv, 0
  br i1 %.not214.a, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %.loopexit.2
  %i.fw = load ptr, ptr %i.fl, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.ll to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.fz) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.2, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0155.0255, i64 16 ; 2 uses
  %i.gb = load ptr, ptr %i.v, align 8
  %.not213 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not213, label %._crit_edge257, label %bb.n, !llvm.loop !54

bb.p:                                             ; preds = %bb.n
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fp
  %i.ge = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i32 noundef %i.ge, float noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %i.gg = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not215240 = icmp eq ptr %i.gf, %i.gg          ; 2 uses
  br i1 %.not215240, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.q
  %i.gh = load ptr, ptr %i.a, align 8
  br label %bb.s

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %bb.s, %bb.q
  %.sroa.16.0.lcssa = phi float [ 0.000000e+00, %bb.q ], [ %i.hf, %bb.s ] ; 4 uses
  %i.gi = phi <2 x float> [ zeroinitializer, %bb.q ], [ %i.hc, %bb.s ] ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1 ; 4 uses
  %i.gk = fmul float %i.gj, %i.gj
  %i.gl = extractelement <2 x float> %i.gi, i64 0 ; 4 uses
  %i.gm = call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gk)
  %i.gn = call noundef float @llvm.fmuladd.f32(float %.sroa.16.0.lcssa, float %.sroa.16.0.lcssa, float %i.gm)
  %i.go = call noundef float @sqrtf(float noundef %i.gn) #28 ; 2 uses
  %i.gp = fcmp ogt float %i.go, 0.000000e+00      ; 3 uses
  %i.gq = fdiv float 1.000000e+00, %i.go          ; 3 uses
  %i.gr = fmul float %i.gl, %i.gq
  %i.gs = fmul float %i.gj, %i.gq
  %i.gt = fmul float %.sroa.16.0.lcssa, %i.gq
  %.sroa.16.1 = select i1 %i.gp, float %i.gt, float %.sroa.16.0.lcssa
  %.sroa.10.1 = select i1 %i.gp, float %i.gs, float %i.gj
  %.sroa.0145.1 = select i1 %i.gp, float %i.gr, float %i.gl
  br i1 %.not215240, label %.loopexit, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %i.gu = load ptr, ptr %i.fk, align 8
  br label %.lr.ph252

bb.r:                                             ; preds = %bb.w, %bb.t, %bb.p
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i122, label %.thread, label %bb.z

bb.s:                                             ; preds = %.lr.ph246, %bb.s
  %.sroa.0142.0244 = phi ptr [ %i.gf, %.lr.ph246 ], [ %i.hg, %bb.s ] ; 2 uses
  %.sroa.16.0241 = phi float [ 0.000000e+00, %.lr.ph246 ], [ %i.hf, %bb.s ]
  %i.gx = phi <2 x float> [ zeroinitializer, %.lr.ph246 ], [ %i.hc, %bb.s ]
  %i.gy = load i32, ptr %.sroa.0142.0244, align 4
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %i.gz ; 2 uses
  %i.hb = load <2 x float>, ptr %i.ha, align 4
  %i.hc = fadd <2 x float> %i.gx, %i.hb           ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = fadd float %.sroa.16.0241, %i.he        ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0142.0244, i64 4 ; 2 uses
  %.not215 = icmp eq ptr %i.hg, %i.gg
  br i1 %.not215, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %bb.s, !llvm.loop !55

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %.sroa.0137.0251 = phi ptr [ %i.hq, %.lr.ph252 ], [ %i.gf, %.lr.ph252.preheader ] ; 2 uses
end_hunk_0
