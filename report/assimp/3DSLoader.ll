inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN17DeadlyImportErrorC2IJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_:bb.a

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
  %.not253 = icmp eq ptr %i.w, %i.x
  br i1 %.not253, label %.preheader212, label %.lr.ph

.preheader212:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not254 = icmp eq ptr %i.y, %i.z
  br i1 %.not254, label %._crit_edge, label %.lr.ph224

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.cj, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.ch, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082216 = phi i32 [ %i.cg, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
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
  %i.at = load float, ptr %i.ao, align 4
  %i.au = load float, ptr %i.ak, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ax = load float, ptr %i.as, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load <2 x float>, ptr %i.av, align 4    ; 2 uses
  %i.ba = load <2 x float>, ptr %i.aw, align 4    ; 3 uses
  %i.bb = fsub <2 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %i.at, i64 1
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x float> %i.be, float %i.au, i64 1 ; 2 uses
  %i.bg = fsub <2 x float> %i.bd, %i.bf           ; 2 uses
  %i.bh = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.ax, i64 1
  %i.bk = fsub <2 x float> %i.bj, %i.bf           ; 2 uses
  %i.bl = fsub <2 x float> %i.bh, %i.ba           ; 2 uses
  %i.bm = fneg <2 x float> %i.bl
  %i.bn = fmul <2 x float> %i.bg, %i.bm
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bk, <2 x float> %i.bn) ; 3 uses
  %i.bp = extractelement <2 x float> %i.bk, i64 1
  %i.bq = fneg float %i.bp
  %i.br = extractelement <2 x float> %i.bb, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = extractelement <2 x float> %i.bg, i64 1
  %i.bu = extractelement <2 x float> %i.bl, i64 0
  %i.bv = call float @llvm.fmuladd.f32(float %i.bt, float %i.bu, float %i.bs) ; 3 uses
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ai ; 2 uses
  store <2 x float> %i.bo, ptr %i.bx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx, align 4
  %i.by = load i32, ptr %i.al, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  store <2 x float> %i.bo, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.cc = load i32, ptr %i.ap, align 4
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  store <2 x float> %i.bo, ptr %i.cf, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %i.bv, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.cg = add i32 %.082216, 1                     ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8
  %i.cj = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4
  %i.co = icmp ugt i64 %i.cn, %i.ch
  br i1 %i.co, label %.lr.ph, label %.preheader212, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph224
  %foldExtExtBinop = fsub <2 x float> %i.dr, %i.dp
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop322 = fsub <2 x float> %i.dr, %i.dp ; 2 uses
  %i.cq = fsub float %.sroa.speculated, %.sroa.speculated191 ; 2 uses
  %foldExtExtBinop324 = fmul <2 x float> %foldExtExtBinop322, %foldExtExtBinop322
  %i.cr = extractelement <2 x float> %foldExtExtBinop324, i64 1
  %i.cs = call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cr)
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cs)
  %i.cu = call float @llvm.sqrt.f32(float %i.ct)
  %i.cv = fmul float %i.cu, f0x3727C5AC
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader212
  %sqrt.i = phi float [ f0x48A92544, %.preheader212 ], [ %i.cv, %._crit_edge.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not300 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not300, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.dc = sdiv exact i64 %i.da, 12
  %i.dd = icmp ugt i64 %i.dc, 768614336404564650
  br i1 %i.dd, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #30
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #31 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.df, i8 0, i64 %i.da, i1 false)
  store ptr %i.df, ptr %2, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.da ; 2 uses
  store ptr %i.dg, ptr %i.db, align 8
  store ptr %i.dg, ptr %i.de, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph224:                                        ; preds = %.preheader212, %.lr.ph224
  %indvars.iv = phi i64 [ %i.dt, %.lr.ph224 ], [ 0, %.preheader212 ] ; 2 uses
  %.sroa.13188.0220 = phi float [ %.sroa.speculated191, %.lr.ph224 ], [ 1.000000e+10, %.preheader212 ] ; 2 uses
  %.sroa.13176.0217 = phi float [ %.sroa.speculated, %.lr.ph224 ], [ -1.000000e+10, %.preheader212 ] ; 2 uses
  %i.dh = phi <2 x float> [ %i.dr, %.lr.ph224 ], [ splat (float -1.000000e+10), %.preheader212 ] ; 2 uses
  %i.di = phi <2 x float> [ %i.dp, %.lr.ph224 ], [ splat (float 1.000000e+10), %.preheader212 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load float, ptr %i.dk, align 4          ; 4 uses
  %i.dm = fcmp olt float %i.dl, %.sroa.13188.0220
  %.sroa.speculated191 = select i1 %i.dm, float %i.dl, float %.sroa.13188.0220 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dj, align 4    ; 4 uses
  %i.do = fcmp olt <2 x float> %i.dn, %i.di
  %i.dp = select <2 x i1> %i.do, <2 x float> %i.dn, <2 x float> %i.di ; 3 uses
  %i.dq = fcmp olt <2 x float> %i.dh, %i.dn
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.dn, <2 x float> %i.dh ; 3 uses
  %i.ds = fcmp olt float %.sroa.13176.0217, %i.dl
  %.sroa.speculated = select i1 %i.ds, float %i.dl, float %.sroa.13176.0217 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dt = and i64 %indvars.iv.next, 4294967295    ; 2 uses
  %i.du = icmp ugt i64 %i.ad, %i.dt
  br i1 %i.du, label %.lr.ph224, label %._crit_edge.loopexit, !llvm.loop !13

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dv = phi ptr [ %i.df, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dw = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dx = load ptr, ptr %i.v, align 8
  %.not231 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not231, label %._crit_edge233, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0166.0232 = phi ptr [ %i.er, %bb.j ], [ %i.dw, %bb.f ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 12 ; 3 uses
  %i.dz = load i32, ptr %.sroa.0166.0232, align 4 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i32 noundef %i.dz, i32 noundef %i.ed)
          to label %bb.h unwind label %bb.k

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 4
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i32 noundef %i.eg, i32 noundef %i.ek)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 8
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ep, i32 noundef %i.em, i32 noundef %i.eq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge233, label %.preheader, !llvm.loop !14

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.l:                                             ; preds = %._crit_edge233
  %i.eu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 12
  %i.fa = add nsw i64 %i.ez, 63                   ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 2305843009213693944
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #31
          to label %.noexc115 unwind label %bb.o  ; 3 uses

.noexc115:                                        ; preds = %bb.m
  %i.fe = lshr i64 %i.fa, 6                       ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.ff, %.noexc115 ] ; 4 uses
  %.sroa.0157.0 = phi ptr [ null, %bb.l ], [ %i.fd, %.noexc115 ] ; 10 uses
  %i.fg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not208249, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge252:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.n:                                             ; preds = %._crit_edge233
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.o:                                             ; preds = %bb.m
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.p:                                             ; preds = %.lr.ph251, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0152.0250 = phi ptr [ %i.fg, %.lr.ph251 ], [ %i.ga, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 12 ; 3 uses
  %i.fo = load i32, ptr %.sroa.0152.0250, align 4 ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i32 %i.fo, 6
  %.zext = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %i.fr, align 8
  %i.fv = and i64 %i.ft, %i.fu
  %.not209 = icmp eq i64 %i.fv, 0
  br i1 %.not209, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %.loopexit.2
  %i.fw = load ptr, ptr %i.fj, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.li to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.fz) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 16 ; 2 uses
  %i.gb = load ptr, ptr %i.v, align 8
  %.not208 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not208, label %._crit_edge252, label %bb.p, !llvm.loop !15

bb.r:                                             ; preds = %bb.p
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fp
  %i.ge = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i32 noundef %i.ge, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %i.gg = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234 = icmp eq ptr %i.gf, %i.gg          ; 2 uses
  br i1 %.not210234, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.s
  %i.gh = load ptr, ptr %i.a, align 8
  br label %bb.u

._crit_edge241:                                   ; preds = %bb.u, %bb.s
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hd, %bb.u ] ; 4 uses
  %i.gi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.ha, %bb.u ] ; 5 uses
  %foldExtExtBinop326 = fmul <2 x float> %i.gi, %i.gi
  %i.gj = extractelement <2 x float> %foldExtExtBinop326, i64 1
  %i.gk = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gj)
  %i.gm = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.gl) ; 2 uses
  %i.gn = fcmp ogt float %i.gm, 0.000000e+00
  br i1 %i.gn, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %._crit_edge241
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.gm)
  %i.go = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gi, %i.gq
  %i.gs = fmul float %.sroa.14.0.lcssa, %i.go
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.t:                                             ; preds = %bb.y, %bb.v, %bb.r
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i122, label %.thread, label %bb.ab

bb.u:                                             ; preds = %.lr.ph240, %bb.u
  %.sroa.0142.0238 = phi ptr [ %i.gf, %.lr.ph240 ], [ %i.he, %bb.u ] ; 2 uses
  %.sroa.14.0235 = phi float [ 0.000000e+00, %.lr.ph240 ], [ %i.hd, %bb.u ]
  %i.gv = phi <2 x float> [ zeroinitializer, %.lr.ph240 ], [ %i.ha, %bb.u ]
  %i.gw = load i32, ptr %.sroa.0142.0238, align 4
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %i.gx ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_:bb.a
  tail call void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %.0911.i.i) #28
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 216 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 216 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !169

_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.at, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit, label %.lr.ph.i.i, !llvm.loop !170

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = add nsw i64 %i.i, -48                    ; 2 uses
  %i.p = udiv i64 %i.o, 24
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i.prol, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 24 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !171

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 72
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 72
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 96 ; 2 uses
  %.013.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.013.i.i.i.3, %i.n
  br i1 %.not.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !172

_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.w, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i.i.i, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.x = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.x, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.y, ptr %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.aa) #28
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.ab = icmp eq ptr %.sroa.12.0, null
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ac = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.ac) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 24
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 168
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.016.i)
  %i.g = shl nuw nsw i64 %.016.i, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.016.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, !llvm.loop !173

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 168
  br i1 %i.n, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11

.lr.ph.i9:                                        ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, %.lr.ph.i9
  %.016.i10 = phi i64 [ %i.p, %.lr.ph.i9 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.016.i10)
  %i.o = shl nuw nsw i64 %.016.i10, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.016.i10, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11, !llvm.loop !173

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11: ; preds = %.lr.ph.i9, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit
  %i.r = sdiv exact i64 %i.c, 24
  %i.s = sdiv exact i64 %i.k, 24
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.5.i.i = alloca { %class.aiVector3t, i32 }, align 8 ; 4 uses
  %2 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  %.sroa.0.015.i = getelementptr i8, ptr %0, i64 24 ; 3 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %1
  %or.cond = or i1 %i.e, %.not16.i
  br i1 %or.cond, label %common.ret21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.015.i, %bb.b ] ; 7 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %bb.h ], [ %0, %bb.b ] ; 4 uses
  %i.f = load double, ptr %.sroa.0.018.i, align 8 ; 4 uses
  %i.g = load double, ptr %0, align 8
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i, i64 24, i1 false)
  %i.i = ptrtoint ptr %.sroa.0.018.i to i64
  %i.j = sub i64 %i.i, %i.b                       ; 3 uses
  %i.k = icmp sgt i64 %i.j, 24
  br i1 %i.k, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.015.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.j, 24
  br i1 %i.l, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false)
  %i.n = load double, ptr %.pn17.i, align 8
  %i.o = fcmp olt double %i.f, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.g ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -24 ; 2 uses
  %i.p = load double, ptr %.sroa.0.0.i.i, align 8
  %i.q = fcmp olt double %i.f, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !174

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.g ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret21, label %.lr.ph.i, !llvm.loop !175

common.ret21:                                     ; preds = %bb.b, %bb.h, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.r = udiv exact i64 %i.c, 24
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %i.t)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.t, ptr %1)
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.a, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_(ptr %0, ptr %i.t, ptr %1, i64 noundef %i.s, i64 noundef %i.w)
  br label %common.ret21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_SB_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret25

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret25
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !137

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %bb.i
  %.025.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 7 uses
  %.sroa.0.024.i = phi ptr [ %i.l, %bb.i ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.i ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.g = load double, ptr %.sroa.016.023.i, align 8
  %i.h = load double, ptr %.025.i, align 8
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.023.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.025.i, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i = phi ptr [ %i.j, %bb.g ], [ %.sroa.016.023.i, %bb.h ]
  %.1.i = phi ptr [ %.025.i, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.f
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !176

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.025.i to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp sgt i64 %i.o, 24
  br i1 %i.p, label %bb.j, label %bb.k, !prof !137

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.024.i, ptr align 8 %.025.i, i64 %i.o, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.q = icmp eq i64 %i.o, 24
  br i1 %i.q, label %bb.l, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.025.i, i64 24, i1 false)
  br label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp sgt i64 %i.t, 24
  br i1 %i.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread, label %bb.n, !prof !137

bb.n:                                             ; preds = %bb.m
  %i.v = icmp eq i64 %i.t, 24
  br i1 %i.v, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19: ; preds = %bb.n, %bb.o
  %i.w = icmp eq ptr %0, %1
  br i1 %i.w, label %bb.p, label %bb.r

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread: ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.t, i1 false)
  %i.x = icmp eq ptr %0, %1
  br i1 %i.x, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit19.thread
  %.neg2942.i = udiv exact i64 %i.t, 24
end_hunk_1
