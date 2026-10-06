Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/SkinnedMesh?download=true
inline.NumInlined: 2819
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxEv:bb.a
  store float %i.cn, ptr %i.bz, align 8, !tbaa !126
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ct = phi float [ %i.cn, %bb.z ], [ %i.ce, %bb.y ]
  %i.cu = fcmp olt float %i.cj, %i.ch
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.cj, ptr %i.bo, align 4, !tbaa !156
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = phi float [ %i.cj, %bb.ab ], [ %i.ch, %bb.aa ]
  %i.cw = fcmp olt float %i.cl, %i.cd
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %i.cl, ptr %i.ca, align 8, !tbaa !157
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = phi float [ %i.cl, %bb.ad ], [ %i.cd, %bb.ac ]
  %i.cy = fcmp olt float %i.cn, %i.cc
  br i1 %i.cy, label %bb.af, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i10

bb.af:                                            ; preds = %bb.ae
  store float %i.cn, ptr %i.cb, align 4, !tbaa !158
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i10

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i10: ; preds = %bb.af, %bb.ae
  %i.cz = phi float [ %i.cc, %bb.ae ], [ %i.cn, %bb.af ]
  %i.da = add nuw i64 %.09.i9, 1                  ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %i.da, %i.bw
  br i1 %exitcond.not.i11, label %_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxIN5video9S3DVertexEEEvPKNS_13CVertexBufferIT_EE.exit, label %bb.u, !llvm.loop !321

bb.ag:                                            ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !163 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !183
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !166 ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 274877906880
  %.not.i12 = icmp eq i64 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  br i1 %.not.i12, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store <2 x float> zeroinitializer, ptr %i.dm, align 8, !tbaa !113
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 256
  store float 0.000000e+00, ptr %i.dn, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(12) %i.dm, i64 12, i1 false), !tbaa.struct !179
  br label %_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxIN5video9S3DVertexEEEvPKNS_13CVertexBufferIT_EE.exit

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dm, ptr noundef nonnull align 4 dereferenceable(12) %i.dg, i64 12, i1 false), !tbaa.struct !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dl, ptr noundef nonnull align 4 dereferenceable(12) %i.dg, i64 12, i1 false), !tbaa.struct !179
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !183
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !166 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 6                 ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 1
  br i1 %i.du, label %.lr.ph.i13, label %_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxIN5video9S3DVertexEEEvPKNS_13CVertexBufferIT_EE.exit

.lr.ph.i13:                                       ; preds = %bb.ai
  %.promoted8.i14 = load float, ptr %i.dl, align 4
  %.promoted.i15 = load float, ptr %i.dm, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %.promoted10.i16 = load float, ptr %i.dv, align 4, !tbaa !155
  %.promoted11.i17 = load float, ptr %i.dw, align 8, !tbaa !126
  %.promoted12.i18 = load float, ptr %i.dx, align 8, !tbaa !157
  %.promoted13.i19 = load float, ptr %i.dy, align 4, !tbaa !158
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21, %.lr.ph.i13
  %i.dz = phi float [ %.promoted13.i19, %.lr.ph.i13 ], [ %i.ew, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.ea = phi float [ %.promoted12.i18, %.lr.ph.i13 ], [ %i.eu, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.eb = phi float [ %.promoted11.i17, %.lr.ph.i13 ], [ %i.eq, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.ec = phi float [ %.promoted10.i16, %.lr.ph.i13 ], [ %i.eo, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %.09.i20 = phi i64 [ 1, %.lr.ph.i13 ], [ %i.ex, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.ed = phi float [ %.promoted.i15, %.lr.ph.i13 ], [ %i.em, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.ee = phi float [ %.promoted8.i14, %.lr.ph.i13 ], [ %i.es, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %.09.i20 ; 3 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !180 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !181 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !178 ; 6 uses
  %i.el = fcmp ogt float %i.eg, %i.ed
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store float %i.eg, ptr %i.dm, align 8, !tbaa !154
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.em = phi float [ %i.eg, %bb.ak ], [ %i.ed, %bb.aj ]
  %i.en = fcmp ogt float %i.ei, %i.ec
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store float %i.ei, ptr %i.dv, align 4, !tbaa !155
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eo = phi float [ %i.ei, %bb.am ], [ %i.ec, %bb.al ]
  %i.ep = fcmp ogt float %i.ek, %i.eb
  br i1 %i.ep, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.ek, ptr %i.dw, align 8, !tbaa !126
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = phi float [ %i.ek, %bb.ao ], [ %i.eb, %bb.an ]
  %i.er = fcmp olt float %i.eg, %i.ee
  br i1 %i.er, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store float %i.eg, ptr %i.dl, align 4, !tbaa !156
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.es = phi float [ %i.eg, %bb.aq ], [ %i.ee, %bb.ap ]
  %i.et = fcmp olt float %i.ei, %i.ea
  br i1 %i.et, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store float %i.ei, ptr %i.dx, align 8, !tbaa !157
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.eu = phi float [ %i.ei, %bb.as ], [ %i.ea, %bb.ar ]
  %i.ev = fcmp olt float %i.ek, %i.dz
  br i1 %i.ev, label %bb.au, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21

bb.au:                                            ; preds = %bb.at
  store float %i.ek, ptr %i.dy, align 4, !tbaa !158
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21: ; preds = %bb.au, %bb.at
  %i.ew = phi float [ %i.dz, %bb.at ], [ %i.ek, %bb.au ]
  %i.ex = add nuw i64 %.09.i20, 1                 ; 2 uses
  %exitcond.not.i22 = icmp eq i64 %i.ex, %i.dt
  br i1 %exitcond.not.i22, label %_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxIN5video9S3DVertexEEEvPKNS_13CVertexBufferIT_EE.exit, label %bb.aj, !llvm.loop !322

_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxIN5video9S3DVertexEEEvPKNS_13CVertexBufferIT_EE.exit: ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i21, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i10, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i, %bb.ai, %bb.ah, %bb.t, %bb.s, %bb.e, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene11SkinnedMesh28recalculateBaseBoundingBoxesEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN5scene11SkinnedMesh26calculateStaticBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  tail call void @_ZN5scene11SkinnedMesh27calculateJointBoundingBoxesEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN5scene11SkinnedMesh28calculateBufferBoundingBoxesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.l, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.f = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.04.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  tail call void @_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(288) %i.h)
  %i.i = add i32 %.04.i, 1                        ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ugt i64 %i.p, %i.j
  br i1 %i.q, label %.lr.ph.i, label %_ZN5scene11SkinnedMesh28calculateBufferBoundingBoxesEv.exit, !llvm.loop !4

_ZN5scene11SkinnedMesh28calculateBufferBoundingBoxesEv.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene18SkinnedMeshBuilder14topoSortJointsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.112", align 8   ; 17 uses
  %2 = alloca %"class.std::vector.117", align 8   ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !186    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.k = mul nuw nsw i64 %i.i, 24                 ; 3 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #33
          to label %.lr.ph unwind label %bb.c     ; 7 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.l, ptr %2, align 8, !tbaa !189
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.m, ptr %i.o, align 8, !tbaa !190
  store ptr %scevgep.i.i.i.i.i, ptr %i.n, align 8, !tbaa !191
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.d

.lr.ph127:                                        ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.t = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZNSt6vectorItSaItEE9push_backERKt.exit ]
  %storemerge125 = phi i16 [ 0, %.lr.ph ], [ %i.bx, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 5 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 390
  %i.y = load i32, ptr %i.x, align 2              ; 2 uses
  %i.z = and i32 %i.y, 65536
  %.not123 = icmp eq i32 %i.z, 0
  br i1 %.not123, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = and i32 %i.y, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %storemerge125, ptr %i.ae, align 2, !tbaa !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !194
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !196 ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775806
  br i1 %i.am, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.g, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.an = ashr exact i64 %i.al, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add i64 %.sroa.speculated.i.i.i, %i.an  ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 4611686018427387903)
  %i.ar = select i1 %i.ap, i64 4611686018427387903, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #33
          to label %.noexc58 unwind label %.loopexit ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i16 %storemerge125, ptr %i.au, align 2, !tbaa !175
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.at, ptr align 2 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.az) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !196
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !194
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !195
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.j:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !194 ; 4 uses
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !195
  %.not.i59 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i16 %storemerge125, ptr %i.bb, align 2, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bd, ptr %i.p, align 8, !tbaa !194
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %1, align 8, !tbaa !196   ; 4 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775806
  br i1 %i.bi, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60: ; preds = %bb.l
  %i.bj = ashr exact i64 %i.bh, 1                 ; 3 uses
  %.sroa.speculated.i.i.i61 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add i64 %.sroa.speculated.i.i.i61, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 4611686018427387903)
  %i.bn = select i1 %i.bl, i64 4611686018427387903, i64 %i.bm ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i62)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #33
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i60
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
  store i16 %storemerge125, ptr %i.bq, align 2, !tbaa !175
  %i.br = icmp sgt i64 %i.bh, 0
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63

bb.m:                                             ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bp, ptr align 2 %i.be, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63: ; preds = %bb.m, %.noexc67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %.not.i17.i.i64 = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i64, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bv) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65: ; preds = %bb.n, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i63
  store ptr %i.bp, ptr %1, align 8, !tbaa !196
  store ptr %i.bs, ptr %i.p, align 8, !tbaa !194
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bw, ptr %i.q, align 8, !tbaa !195
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i65, %bb.k, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.f
  %i.bx = add i16 %storemerge125, 1               ; 2 uses
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %i.bz = icmp ugt i64 %i.i, %i.by
  br i1 %i.bz, label %bb.d, label %.lr.ph127, !llvm.loop !323

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.p
  %i.ca = ashr exact i64 %i.h, 2
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #33
          to label %.noexc71 unwind label %bb.r   ; 7 uses

.noexc71:                                         ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.i
  store i16 0, ptr %i.cb, align 2, !tbaa !175
  %i.cd = add nsw i64 %i.i, -1                    ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph129, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc71
  %i.cf = getelementptr i8, ptr %i.cb, i64 2
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cd, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.cf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !175
  br label %.lr.ph129

bb.o:                                             ; preds = %.lr.ph127, %bb.p
  %i.cg = phi i64 [ 0, %.lr.ph127 ], [ %i.cv, %bb.p ]
  %.046126 = phi i16 [ 0, %.lr.ph127 ], [ %i.cu, %bb.p ]
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !328
  %i.ci = load ptr, ptr %1, align 8, !tbaa !196   ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cg
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !175
  %i.cl = zext i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !328
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !328
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = ptrtoint ptr %i.ci to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.ci, i64 %i.cs
  invoke void @_ZNSt6vectorItSaItEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPtS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ct, ptr %i.cn, ptr %i.cp)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = add i16 %.046126, 1                     ; 2 uses
  %i.cv = zext i16 %i.cu to i64                   ; 2 uses
  %i.cw = icmp ugt i64 %i.i, %i.cv
  br i1 %i.cw, label %bb.o, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i, !llvm.loop !324

bb.q:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.lr.ph129:                                        ; preds = %.noexc71, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cy = load ptr, ptr %1, align 8, !tbaa !196
  br label %bb.s

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.s
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #33
          to label %.noexc77 unwind label %bb.t   ; 6 uses

.noexc77:                                         ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.h
  store ptr null, ptr %i.cz, align 8, !tbaa !28
  %i.db = getelementptr i8, ptr %i.cz, i64 8      ; 3 uses
  %i.dc = add nsw i64 %i.i, -1                    ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph131, label %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc77
  %.idx.i.i.i.i.i.i.i74 = shl nuw nsw i64 %i.dc, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %.idx.i.i.i.i.i.i.i74, i1 false), !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx.i.i.i.i.i.i.i74
  br label %.lr.ph131

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph129, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !175
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.di
  %i.dk = trunc nuw i64 %indvars.iv to i16
  store i16 %i.dk, ptr %i.dj, align 2, !tbaa !175
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dl = and i64 %indvars.iv.next, 65535
  %i.dm = icmp samesign ugt i64 %i.i, %i.dl
  br i1 %i.dm, label %bb.s, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, !llvm.loop !325

.lr.ph131:                                        ; preds = %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc77
  %.0.i.i.i.i.i75.ph = phi ptr [ %i.db, %.noexc77 ], [ %i.de, %_ZSt6fill_nIPPN5scene11SkinnedMesh6SJointEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %3 = load ptr, ptr %1, align 8, !tbaa !196
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.idx = ashr exact i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %.idx) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.u:                                             ; preds = %.lr.ph131, %bb.w
  %4 = phi ptr [ %i.dn, %.lr.ph131 ], [ %5, %bb.w ] ; 2 uses
  %indvars.iv143 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next144, %bb.w ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv143
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !175
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 390 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 2            ; 2 uses
  %i.dw = and i32 %i.dv, 65536
  %.not = icmp eq i32 %i.dw, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = and i32 %i.dv, 65535
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !175
  %.sroa.091.0.insert.ext = zext i16 %i.ea to i32
  %.sroa.091.0.insert.insert = or disjoint i32 %.sroa.091.0.insert.ext, 65536
  store i32 %.sroa.091.0.insert.insert, ptr %i.du, align 2
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %5 = phi ptr [ %.pre, %bb.v ], [ %4, %bb.u ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv143
  store ptr %i.dt, ptr %i.eb, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 388
  %i.ed = trunc nuw i64 %indvars.iv143 to i16
  store i16 %i.ed, ptr %i.ec, align 4, !tbaa !224
  %indvars.iv.next144 = add i64 %indvars.iv143, 1 ; 2 uses
  %i.ee = and i64 %indvars.iv.next144, 65535
  %i.ef = icmp ugt i64 %i.i, %i.ee
  br i1 %i.ef, label %bb.u, label %.lr.ph133, !llvm.loop !326

bb.x:                                             ; preds = %.lr.ph133
  %i.eg = add i16 %.0132, 1                       ; 2 uses
  %i.eh = zext i16 %i.eg to i64                   ; 2 uses
  %i.ei = icmp ugt i64 %i.i, %i.eh
  br i1 %i.ei, label %.lr.ph133, label %._crit_edge.loopexit, !llvm.loop !327

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.ej = ptrtoint ptr %i.cc to i64
  %i.ek = ptrtoint ptr %i.m to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %._crit_edge.loopexit
  %i.el = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.em = phi i64 [ %i.ek, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.pr.i168170173179187195219 = phi ptr [ %i.l, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 5 uses
  %.sroa.0104.0180186197218 = phi ptr [ %i.cb, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.12.0181185199217 = phi i64 [ %i.ej, %._crit_edge.loopexit ], [ 0, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.sroa.098.0201216 = phi ptr [ %i.cz, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.sroa.13.0203215 = phi ptr [ %i.da, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.i.i.i.i.i75205214 = phi ptr [ %.0.i.i.i.i.i75.ph, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIS_ItSaItEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !186   ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !53 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 80 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !54
  store ptr %.sroa.098.0201216, ptr %i.eo, align 8, !tbaa !53
  store ptr %.0.i.i.i.i.i75205214, ptr %i.eq, align 8, !tbaa !81
  store ptr %.sroa.13.0203215, ptr %i.er, align 8, !tbaa !54
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.ep to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.ev) #29
  br label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit: ; preds = %._crit_edge, %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !226 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !226 ; 2 uses
  %.not121134 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not121134, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit, label %.lr.ph136

.lr.ph133:                                        ; preds = %bb.w, %bb.x
  %i.fa = phi i64 [ %i.eh, %bb.x ], [ 0, %bb.w ]
  %.0132 = phi i16 [ %i.eg, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 390
  %i.fe = load i32, ptr %i.fd, align 2            ; 2 uses
  %.sroa.090.0.extract.trunc = trunc i32 %i.fe to i16
  %i.ff = and i32 %i.fe, 65536
  %.not122 = icmp eq i32 %i.ff, 0
  %i.fg = icmp ugt i16 %.0132, %.sroa.090.0.extract.trunc
  %or.cond = or i1 %.not122, %i.fg
  br i1 %or.cond, label %bb.x, label %bb.z

bb.z:                                             ; preds = %.lr.ph133
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 380, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene18SkinnedMeshBuilder14topoSortJointsEv) #30
  unreachable

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit
  %.not.i.i.i80 = icmp eq ptr %.sroa.0104.0180186197218, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorItSaItEED2Ev.exit81, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread

_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread: ; preds = %.lr.ph136, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit
  %i.fh = ptrtoint ptr %.sroa.0104.0180186197218 to i64
  %i.fi = sub i64 %.sroa.12.0181185199217, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0180186197218, i64 noundef %i.fi) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit81

_ZNSt6vectorItSaItEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread
  %.not4.i.i.i = icmp eq ptr %.pr.i168170173179187195219, %i.el
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorItSaItEED2Ev.exit81, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fp, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %.pr.i168170173179187195219, %_ZNSt6vectorItSaItEED2Ev.exit81 ] ; 3 uses
  %i.fj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !196 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !195
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #29
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.aa, %.lr.ph.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.fp, %i.el
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, %_ZNSt6vectorItSaItEED2Ev.exit81
  %.not.i.i1.i = icmp eq ptr %.pr.i168170173179187195219, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fq = ptrtoint ptr %.pr.i168170173179187195219 to i64
  %i.fr = sub i64 %i.em, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i168170173179187195219, i64 noundef %i.fr) #29
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.fs = load ptr, ptr %1, align 8, !tbaa !196   ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorItSaItEED2Ev.exit84, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !195
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit84

_ZNSt6vectorItSaItEED2Ev.exit84:                  ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

.lr.ph136:                                        ; preds = %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit, %.lr.ph136
  %.sroa.087.0135 = phi ptr [ %i.gc, %.lr.ph136 ], [ %i.ex, %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %i.fy = load i16, ptr %.sroa.087.0135, align 4, !tbaa !228
  %i.fz = zext i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0104.0180186197218, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !175
  store i16 %i.gb, ptr %.sroa.087.0135, align 4, !tbaa !228
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.087.0135, i64 12 ; 2 uses
  %.not121 = icmp eq ptr %i.gc, %i.ez
  br i1 %.not121, label %_ZNSt6vectorIPN5scene11SkinnedMesh6SJointESaIS3_EED2Ev.exit.thread, label %.lr.ph136

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.t, %bb.q
  %.pn53 = phi { ptr, i32 } [ %i.do, %bb.t ], [ %i.cx, %bb.q ], [ %i.df, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #31
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.c
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt6vectorItSaItEED2Ev.exit ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.gd = load ptr, ptr %1, align 8, !tbaa !196   ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorItSaItEED2Ev.exit86, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !195
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit86

_ZNSt6vectorItSaItEED2Ev.exit86:                  ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !189    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !196 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
end_hunk_0
