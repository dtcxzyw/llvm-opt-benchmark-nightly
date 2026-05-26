inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter16ConvertMaterialsEP7aiSceneRSt6vectorINS_5XFile8MaterialESaIS5_EE:bb.a
  br i1 %i.hx, label %.lr.ph170, label %.loopexit151, !llvm.loop !14

.loopexit151:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %.preheader150, %bb.j, %bb.k
  %i.hy = load ptr, ptr %i.cd, align 8
  %i.hz = load i32, ptr %i.ce, align 8
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ia
  store ptr %i.dc, ptr %i.ib, align 8
  %i.ic = load i32, ptr %i.ce, align 8
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  store i64 %i.id, ptr %i.ie, align 8
  %i.if = load i32, ptr %i.ce, align 8
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.ce, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.f, %.loopexit151
  %i.ih = add i32 %.0118173, 1                    ; 2 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = load ptr, ptr %i.c, align 8
  %i.ik = load ptr, ptr %2, align 8               ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = sdiv exact i64 %i.in, 112
  %i.ip = icmp ugt i64 %i.io, %i.ii
  br i1 %i.ip, label %bb.d, label %._crit_edge176, !llvm.loop !15

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.er, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp13XFileImporter11CreateNodesEP7aiSceneP6aiNodePKNS_5XFile4NodeE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 12 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = load ptr, ptr %3, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.g, i64 %i.c, i1 false)
  %i.h = and i64 %i.c, 4294967295
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  tail call void @_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 %i.v, ptr %i.w, align 8
  %i.x = and i64 %i.t, 34359738360
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8
  br label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #19
  resume { ptr, i32 } %i.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi ptr [ %i.al, %.lr.ph ], [ %i.n, %.lr.ph.preheader ]
  %i.ac = phi i64 [ %i.aj, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.036 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr @_ZN6Assimp13XFileImporter11CreateNodesEP7aiSceneP6aiNodePKNS_5XFile4NodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %i.ae)
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = add i32 %.036, 1                        ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ugt i64 %i.ap, %i.aj
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a
  %.033 = phi ptr [ null, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %.lr.ph ]
  ret ptr %.033
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiVector3t, align 4          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not322 = icmp eq ptr %i.c, %i.d
  br i1 %.not322, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

._crit_edge315:                                   ; preds = %.loopexit285
  %i.f = ptrtoint ptr %.sroa.12259.1 to i64
  %i.g = ptrtoint ptr %.sroa.0252.2 to i64        ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.not = icmp eq ptr %.sroa.12259.1, %.sroa.0252.2
  br i1 %.not, label %.loopexit, label %bb.ay

bb.b:                                             ; preds = %.lr.ph314, %.loopexit285
  %i.j = phi ptr [ %i.d, %.lr.ph314 ], [ %i.vb, %.loopexit285 ]
  %i.k = phi i64 [ 0, %.lr.ph314 ], [ %i.uz, %.loopexit285 ]
  %.0127312 = phi i32 [ 0, %.lr.ph314 ], [ %i.uy, %.loopexit285 ]
  %.sroa.0252.0311 = phi ptr [ null, %.lr.ph314 ], [ %.sroa.0252.2, %.loopexit285 ] ; 9 uses
  %.sroa.12259.0310 = phi ptr [ null, %.lr.ph314 ], [ %.sroa.12259.1, %.loopexit285 ] ; 7 uses
  %.sroa.19264.0309 = phi ptr [ null, %.lr.ph314 ], [ %.sroa.19264.2, %.loopexit285 ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.loopexit285, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = invoke noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #21
          to label %bb.d unwind label %.loopexit286 ; 13 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.s, i8 0, i64 1028, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1032 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1040
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1048 ; 2 uses
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1056 ; 3 uses
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1064
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1072
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 1080
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1088
  store ptr null, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %.sroa.12259.0310, %.sroa.19264.0309
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %.sroa.12259.0310, align 8
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %.sroa.12259.0310 to i64
  %i.ac = ptrtoint ptr %.sroa.0252.0311 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #21
          to label %.noexc156 unwind label %.loopexit286 ; 4 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ad ; 2 uses
  store ptr %i.s, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %i.ad, 0
  br i1 %i.al, label %bb.h, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %.noexc156
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %.sroa.0252.0311, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %.noexc156
  %.not.i17.i.i = icmp eq ptr %.sroa.0252.0311, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0311, i64 noundef %i.ad) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %.sroa.19264.5 = phi ptr [ %i.am, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19264.0309, %bb.e ] ; 4 uses
  %.pn = phi ptr [ %i.ak, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12259.0310, %bb.e ]
  %.sroa.0252.5 = phi ptr [ %i.aj, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0252.0311, %bb.e ] ; 4 uses
  %.sroa.12259.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 4 uses
  %i.ap = icmp ugt i64 %i.ao, 1023
  br i1 %i.ap, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  store i32 %i.aq, ptr %i.s, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.as = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 1 %i.as, i64 %i.ao, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  store i8 0, ptr %i.at, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit, %bb.j
  store double 0.000000e+00, ptr %i.t, align 8
  %i.au = load i32, ptr %i.e, align 8
  %i.av = uitofp i32 %i.au to double
  store double %i.av, ptr %i.u, align 8
  %i.aw = load ptr, ptr %i.p, align 8
  %i.ax = load ptr, ptr %i.n, align 8
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.v, align 8
  %i.bd = and i64 %i.ba, 34359738360
  %i.be = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #21
          to label %bb.k unwind label %.loopexit286

bb.k:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.be, ptr %i.w, align 8
  %i.bf = load ptr, ptr %i.p, align 8
  %i.bg = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not323 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not323, label %.loopexit285, label %.lr.ph308

.loopexit286:                                     ; preds = %bb.c, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.19264.1.ph = phi ptr [ %.sroa.19264.0309, %bb.c ], [ %.sroa.12259.0310, %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19264.5, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.sroa.0252.1.ph = phi ptr [ %.sroa.0252.0311, %bb.c ], [ %.sroa.0252.0311, %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0252.5, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph308:                                        ; preds = %bb.k, %bb.ax
  %i.bh = phi ptr [ %i.us, %bb.ax ], [ %i.bg, %bb.k ]
  %i.bi = phi i64 [ %i.uq, %bb.ax ], [ 0, %bb.k ] ; 2 uses
  %.0133306 = phi i32 [ %i.up, %bb.ax ], [ 0, %bb.k ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8            ; 10 uses
  %i.bl = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #21
          to label %bb.l unwind label %bb.w       ; 13 uses

bb.l:                                             ; preds = %.lr.ph308
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1048 ; 8 uses
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1056 ; 4 uses
  store i32 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1064 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bl, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load i64, ptr %i.bp, align 8            ; 4 uses
  %i.br = icmp ugt i64 %i.bq, 1023
  br i1 %i.br, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = trunc nuw nsw i64 %i.bq to i32
  store i32 %i.bs, ptr %i.bl, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bu = load ptr, ptr %i.bk, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 1 %i.bu, i64 %i.bq, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 0, ptr %i.bv, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157: ; preds = %bb.l, %bb.m
  %i.bw = load ptr, ptr %i.w, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bi
  store ptr %i.bl, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 72                ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 1028
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = and i64 %i.cg, 4294967295               ; 3 uses
  %i.ck = mul nuw nsw i64 %i.cj, 24
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #21
          to label %bb.o unwind label %bb.w       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %.loopexit284, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cj
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.co = phi ptr [ %i.cl, %bb.p ], [ %i.cq, %bb.q ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cn
  br i1 %i.cr, label %.loopexit284, label %bb.q

.loopexit284:                                     ; preds = %bb.q, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 1032 ; 3 uses
  store ptr %i.cl, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %i.ca, align 8
  %i.cu = load ptr, ptr %i.by, align 8
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 72                ; 3 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 1040
  store i32 %i.cz, ptr %i.da, align 8
  %i.db = and i64 %i.cy, 4294967295               ; 4 uses
  %i.dc = shl nuw nsw i64 %i.db, 5
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #21
          to label %bb.r unwind label %bb.w       ; 4 uses

bb.r:                                             ; preds = %.loopexit284
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %.loopexit283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %i.db
  %i.dg = add nuw nsw i64 %i.db, 576460752303423487
  %i.dh = and i64 %i.dg, 576460752303423487
  %xtraiter = and i64 %i.cy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.s, %.prol.preheader
  %i.di = phi ptr [ %i.dl, %.prol.preheader ], [ %i.dd, %bb.s ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.s ]
  store double 0.000000e+00, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 1, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !17

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.s
  %.unr = phi ptr [ %i.dd, %bb.s ], [ %i.dl, %.prol.preheader ]
  %i.dm = icmp samesign ult i64 %i.dh, 7
  br i1 %i.dm, label %.loopexit283, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dn = phi ptr [ %i.el, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 1, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store double 0.000000e+00, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  store i32 1, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  store double 0.000000e+00, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store i32 1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store double 0.000000e+00, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a

.loopexit:                                        ; preds = %.lr.ph321, %._crit_edge315
  %.not.i.i.i166 = icmp eq ptr %.sroa.0252.2, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit
  %i.vv = ptrtoint ptr %.sroa.19264.2 to i64
  %i.vw = sub i64 %i.vv, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.2, i64 noundef %i.vw) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit

_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit:     ; preds = %bb.a, %.loopexit, %bb.ba
  ret void

bb.bb:                                            ; preds = %.loopexit286, %.loopexit.split-lp, %bb.w, %bb.az
  %.sroa.19264.4 = phi ptr [ %.sroa.19264.2, %bb.az ], [ %.sroa.19264.5, %bb.w ], [ %.sroa.19264.1.ph, %.loopexit286 ], [ %.sroa.12259.0310, %.loopexit.split-lp ]
  %.sroa.0252.4 = phi ptr [ %.sroa.0252.2, %bb.az ], [ %.sroa.0252.5, %bb.w ], [ %.sroa.0252.1.ph, %.loopexit286 ], [ %.sroa.0252.0311, %.loopexit.split-lp ] ; 3 uses
  %.pn149.pn.pn = phi { ptr, i32 } [ %i.vm, %bb.az ], [ %i.fk, %bb.w ], [ %lpad.loopexit, %.loopexit286 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i167 = icmp eq ptr %.sroa.0252.4, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168, label %.thread

.thread:                                          ; preds = %bb.bb
  %i.vx = ptrtoint ptr %.sroa.19264.4 to i64
  %i.vy = ptrtoint ptr %.sroa.0252.4 to i64
  %i.vz = sub i64 %i.vx, %i.vy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.4, i64 noundef %i.vz) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168

_ZNSt6vectorIP11aiAnimationSaIS1_EED2Ev.exit168:  ; preds = %bb.bb, %.thread
  resume { ptr, i32 } %.pn149.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %.lr.ph802

._crit_edge803:                                   ; preds = %.loopexit446
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = ptrtoint ptr %.sroa.12386.3 to i64
  %i.k = ptrtoint ptr %.sroa.0379.6 to i64        ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, %i.i                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  %i.p = shl i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #21
          to label %bb.eh unwind label %bb.ej     ; 2 uses

.lr.ph802:                                        ; preds = %bb.a, %.loopexit446
  %i.s = phi ptr [ %i.acr, %.loopexit446 ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = phi ptr [ %i.acs, %.loopexit446 ], [ %i.c, %bb.a ]
  %i.u = phi i64 [ %i.acu, %.loopexit446 ], [ 0, %bb.a ]
  %.0146801 = phi i32 [ %i.act, %.loopexit446 ], [ 0, %bb.a ]
  %.sroa.0379.0800 = phi ptr [ %.sroa.0379.6, %.loopexit446 ], [ null, %bb.a ] ; 3 uses
  %.sroa.12386.0799 = phi ptr [ %.sroa.12386.3, %.loopexit446 ], [ null, %bb.a ] ; 2 uses
  %.sroa.19.0798 = phi ptr [ %.sroa.19.6, %.loopexit446 ], [ null, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 48 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit446, label %bb.b

bb.b:                                             ; preds = %.lr.ph802
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 552 ; 3 uses
  invoke void @_ZN6Assimp13XFileImporter16ConvertMaterialsEP7aiSceneRSt6vectorINS_5XFile8MaterialESaIS5_EE(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 112
  %i.ag = trunc i64 %i.af to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 528 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 536 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 336 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 576 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 584 ; 2 uses
  %wide.trip.count1037 = zext i32 %.sroa.speculated to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 160 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 184 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 280 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 304 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 360 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 384 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 408 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 432 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 456 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 480 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 504 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

bb.e:                                             ; preds = %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit247
  %indvars.iv1034 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next1035, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 3 uses
  %.sroa.0379.1795 = phi ptr [ %.sroa.0379.0800, %bb.c ], [ %.sroa.0379.31146, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 14 uses
  %.sroa.12386.1794 = phi ptr [ %.sroa.12386.0799, %bb.c ], [ %.sroa.12386.21145, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 8 uses
  %.sroa.19.1792 = phi ptr [ %.sroa.19.0798, %bb.c ], [ %.sroa.19.31144, %_ZNSt6vectorIjSaIjEED2Ev.exit247 ] ; 9 uses
  %i.ca = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.preheader432, label %.lr.ph

.preheader432:                                    ; preds = %bb.e
  %i.cd = load ptr, ptr %i.ak, align 8
  %i.ce = load ptr, ptr %i.aj, align 8
  %.not813 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not813, label %_ZNSt6vectorIjSaIjEED2Ev.exit247, label %.lr.ph756

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %i.cf = phi ptr [ %i.dj, %bb.l ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cg = phi ptr [ %i.dk, %bb.l ], [ %i.cb, %bb.e ]
  %i.ch = phi i64 [ %i.dm, %bb.l ], [ 0, %bb.e ]  ; 2 uses
  %.0161747 = phi i32 [ %.1162, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %storemerge746 = phi i32 [ %i.dl, %bb.l ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0357.0745 = phi ptr [ %.sroa.0357.1, %bb.l ], [ null, %bb.e ] ; 8 uses
  %.sroa.13364.0744 = phi ptr [ %.sroa.13364.1, %bb.l ], [ null, %bb.e ] ; 7 uses
  %.sroa.23370.0743 = phi ptr [ %.sroa.23370.1, %bb.l ], [ null, %bb.e ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp eq i64 %indvars.iv1034, %i.ck
  br i1 %i.cl, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.13364.0744, %.sroa.23370.0743
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %storemerge746, ptr %.sroa.13364.0744, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.cm = ptrtoint ptr %.sroa.13364.0744 to i64
  %i.cn = ptrtoint ptr %.sroa.0357.0745 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775804
  br i1 %i.cp, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc unwind label %.loopexit.split-lp442

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cq = ashr exact i64 %i.co, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #21
          to label %.noexc200 unwind label %.loopexit441 ; 4 uses

.noexc200:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.co ; 2 uses
  store i32 %storemerge746, ptr %i.cv, align 4
  %i.cw = icmp sgt i64 %i.co, 0
  br i1 %i.cw, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %.sroa.0357.0745, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc200
  %.not.i17.i.i = icmp eq ptr %.sroa.0357.0745, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0745, i64 noundef %i.co) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cs
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.g
  %.sroa.23370.5 = phi ptr [ %i.cx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.23370.0743, %bb.g ]
  %.pn411 = phi ptr [ %i.cv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.13364.0744, %bb.g ]
  %.sroa.0357.5 = phi ptr [ %i.cu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0357.0745, %bb.g ]
  %.sroa.13364.4 = getelementptr inbounds nuw i8, ptr %.pn411, i64 4
  %i.cy = load ptr, ptr %i.aj, align 8
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.ch ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.cz, align 8
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 2
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %.0161747, %i.dh
  %.pre = load ptr, ptr %i.ai, align 8
  %.pre1039 = load ptr, ptr %i.ah, align 8
  br label %bb.l

.loopexit441:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit443 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

.loopexit.split-lp442:                            ; preds = %bb.i
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.dj = phi ptr [ %.pre1039, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.dk = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.sroa.23370.1 = phi ptr [ %.sroa.23370.5, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.23370.0743, %.lr.ph ] ; 2 uses
  %.sroa.13364.1 = phi ptr [ %.sroa.13364.4, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.13364.0744, %.lr.ph ] ; 2 uses
  %.sroa.0357.1 = phi ptr [ %.sroa.0357.5, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0357.0745, %.lr.ph ] ; 2 uses
  %.1162 = phi i32 [ %i.di, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0161747, %.lr.ph ] ; 2 uses
  %i.dl = add i32 %storemerge746, 1               ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 2
  %i.dr = icmp ugt i64 %i.dq, %i.dm
  br i1 %i.dr, label %.lr.ph, label %.loopexit433, !llvm.loop !30

.lr.ph756:                                        ; preds = %.preheader432, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210
  %i.ds = phi i64 [ %i.er, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ 0, %.preheader432 ]
  %.2163755 = phi i32 [ %i.ep, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ 0, %.preheader432 ]
  %storemerge185754 = phi i32 [ %i.eq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ 0, %.preheader432 ] ; 3 uses
  %.sroa.0357.2753 = phi ptr [ %.sroa.0357.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ null, %.preheader432 ] ; 7 uses
  %.sroa.13364.2752 = phi ptr [ %.sroa.13364.5, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ null, %.preheader432 ] ; 6 uses
  %.sroa.23370.2751 = phi ptr [ %.sroa.23370.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ null, %.preheader432 ] ; 2 uses
  %.not.i201 = icmp eq ptr %.sroa.13364.2752, %.sroa.23370.2751
  br i1 %.not.i201, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph756
  store i32 %storemerge185754, ptr %.sroa.13364.2752, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210

bb.n:                                             ; preds = %.lr.ph756
  %i.dt = ptrtoint ptr %.sroa.13364.2752 to i64
  %i.du = ptrtoint ptr %.sroa.0357.2753 to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775804
  br i1 %i.dw, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i202

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc208 unwind label %.loopexit.split-lp435

.noexc208:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i202: ; preds = %bb.n
  %i.dx = ashr exact i64 %i.dv, 2                 ; 2 uses
  %.sroa.speculated.i.i.i203 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i203, %i.dx ; 2 uses
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i204 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i204)
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #21
          to label %.noexc209 unwind label %.loopexit434 ; 4 uses

.noexc209:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i202
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dv ; 2 uses
  store i32 %storemerge185754, ptr %i.ec, align 4
  %i.ed = icmp sgt i64 %i.dv, 0
  br i1 %i.ed, label %bb.p, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i205

bb.p:                                             ; preds = %.noexc209
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %.sroa.0357.2753, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i205

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i205: ; preds = %bb.p, %.noexc209
  %.not.i17.i.i206 = icmp eq ptr %.sroa.0357.2753, null
  br i1 %.not.i17.i.i206, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i205
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.2753, i64 noundef %i.dv) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207: ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i205
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dz
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210

_ZNSt6vectorIjSaIjEE9push_backERKj.exit210:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207, %bb.m
  %.sroa.23370.6 = phi ptr [ %i.ee, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207 ], [ %.sroa.23370.2751, %bb.m ] ; 2 uses
  %.pn416 = phi ptr [ %i.ec, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207 ], [ %.sroa.13364.2752, %bb.m ]
  %.sroa.0357.6 = phi ptr [ %i.eb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i207 ], [ %.sroa.0357.2753, %bb.m ] ; 2 uses
  %.sroa.13364.5 = getelementptr inbounds nuw i8, ptr %.pn416, i64 4 ; 2 uses
  %i.ef = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ds ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.eg, align 8
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = lshr exact i64 %i.em, 2
  %i.eo = trunc i64 %i.en to i32
  %i.ep = add i32 %.2163755, %i.eo                ; 2 uses
  %i.eq = add i32 %storemerge185754, 1            ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = load ptr, ptr %i.ak, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.ef to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 24
  %i.ex = icmp ugt i64 %i.ew, %i.er
  br i1 %i.ex, label %.lr.ph756, label %.loopexit433, !llvm.loop !31

.loopexit434:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i202
  %lpad.loopexit436 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

.loopexit.split-lp435:                            ; preds = %bb.o
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

.loopexit433:                                     ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210
  %.sroa.23370.3 = phi ptr [ %.sroa.23370.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ %.sroa.23370.1, %bb.l ] ; 7 uses
  %.sroa.13364.3 = phi ptr [ %.sroa.13364.5, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ %.sroa.13364.1, %bb.l ] ; 2 uses
  %.sroa.0357.3 = phi ptr [ %.sroa.0357.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ %.sroa.0357.1, %bb.l ] ; 12 uses
  %.3164 = phi i32 [ %i.ep, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit210 ], [ %.1162, %bb.l ] ; 3 uses
  %i.ey = icmp eq i32 %.3164, 0
  br i1 %i.ey, label %bb.ec, label %bb.r

bb.r:                                             ; preds = %.loopexit433
  %i.ez = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #21
          to label %bb.s unwind label %.loopexit447 ; 47 uses

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 19 uses
  store i32 0, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store i32 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 224 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 1272
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 1312
  store ptr null, ptr %i.ff, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.fc, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.fd, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fe, i8 0, i64 36, i1 false)
  %.not.i211 = icmp eq ptr %.sroa.12386.1794, %.sroa.19.1792
  br i1 %.not.i211, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.ez, ptr %.sroa.12386.1794, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.fg = ptrtoint ptr %.sroa.12386.1794 to i64
  %i.fh = ptrtoint ptr %.sroa.0379.1795 to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 6 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775800
  br i1 %i.fj, label %bb.v, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc215 unwind label %.loopexit.split-lp448

.noexc215:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.fk = ashr exact i64 %i.fi, 3                 ; 2 uses
  %.sroa.speculated.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i212, %i.fk ; 2 uses
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i213 = icmp ne i64 %i.fl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i213)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #21
          to label %.noexc216 unwind label %.loopexit447 ; 4 uses

.noexc216:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fi ; 2 uses
  store ptr %i.ez, ptr %i.fp, align 8
  %i.fq = icmp sgt i64 %i.fi, 0
  br i1 %i.fq, label %bb.w, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.w:                                             ; preds = %.noexc216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fo, ptr align 8 %.sroa.0379.1795, i64 %i.fi, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.w, %.noexc216
  %.not.i17.i.i214 = icmp eq ptr %.sroa.0379.1795, null
  br i1 %.not.i17.i.i214, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.1795, i64 noundef %i.fi) #19
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.t
  %.sroa.19.8 = phi ptr [ %i.fr, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.1792, %bb.t ] ; 8 uses
  %.pn412 = phi ptr [ %i.fp, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12386.1794, %bb.t ]
  %.sroa.0379.8 = phi ptr [ %i.fo, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0379.1795, %bb.t ] ; 8 uses
  %.sroa.12386.4 = getelementptr inbounds nuw i8, ptr %.pn412, i64 8
  %i.fs = load ptr, ptr %i.ah, align 8
  %i.ft = load ptr, ptr %i.ai, align 8
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.fv = load ptr, ptr %i.y, align 8
  %i.fw = getelementptr inbounds nuw [112 x i8], ptr %i.fv, i64 %indvars.iv1034
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 104
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = trunc i64 %i.fy to i32
  br label %bb.z

.loopexit447:                                     ; preds = %bb.r, %bb.z, %bb.aa, %bb.ae, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.19.2.ph = phi ptr [ %.sroa.19.1792, %bb.r ], [ %.sroa.12386.1794, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19.8, %bb.z ], [ %.sroa.19.8, %bb.aa ], [ %.sroa.19.8, %bb.ae ]
  %.sroa.0379.2.ph = phi ptr [ %.sroa.0379.1795, %bb.r ], [ %.sroa.0379.1795, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0379.8, %bb.z ], [ %.sroa.0379.8, %bb.aa ], [ %.sroa.0379.8, %bb.ae ]
  %lpad.loopexit449 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

.loopexit.split-lp448:                            ; preds = %bb.v
  %lpad.loopexit.split-lp450 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.z:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.y
  %.sink = phi i32 [ %i.fz, %bb.y ], [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  store i32 %.sink, ptr %i.ga, align 8
  store i32 %.3164, ptr %i.fa, align 4
  %i.gb = zext i32 %.3164 to i64                  ; 6 uses
  %i.gc = mul nuw nsw i64 %i.gb, 12               ; 11 uses
  %i.gd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #21
          to label %bb.aa unwind label %.loopexit447 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.ge = add nsw i64 %i.gc, -12                  ; 2 uses
  %i.gf = urem i64 %i.ge, 12
  %i.gg = sub nuw nsw i64 %i.ge, %i.gf
  %i.gh = add nuw nsw i64 %i.gg, 12               ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gd, i8 0, i64 %i.gh, i1 false)
  store ptr %i.gd, ptr %i.fc, align 8
  %i.gi = ptrtoint ptr %.sroa.13364.3 to i64
  %i.gj = ptrtoint ptr %.sroa.0357.3 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 2                 ; 4 uses
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %i.fb, align 8
  %i.gn = and i64 %i.gl, 4294967295               ; 5 uses
  %i.go = shl nuw nsw i64 %i.gn, 4
  %i.gp = or disjoint i64 %i.go, 8
  %i.gq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gp) #21
          to label %bb.ab unwind label %.loopexit447 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.gn, ptr %i.gq, align 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = icmp eq i64 %i.gn, 0
  br i1 %i.gs, label %.loopexit431, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gn
  %i.gu = add nuw nsw i64 %i.gn, 1152921504606846975
  %i.gv = and i64 %i.gu, 1152921504606846975
  %xtraiter = and i64 %i.gl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ac, %.prol.preheader
  %i.gw = phi ptr [ %i.gy, %.prol.preheader ], [ %i.gr, %bb.ac ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ac ]
  store i32 0, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr null, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !32

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ac
  %.unr = phi ptr [ %i.gr, %bb.ac ], [ %i.gy, %.prol.preheader ]
  %i.gz = icmp samesign ult i64 %i.gv, 7
  br i1 %i.gz, label %.loopexit431, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ha = phi ptr [ %i.hq, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr null, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i32 0, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr null, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store i32 0, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr null, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i32 0, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  store ptr null, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i32 0, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  store ptr null, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  store i32 0, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  store ptr null, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store i32 0, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  store ptr null, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 112
  store i32 0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 120
  store ptr null, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 128 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.gt
  br i1 %i.hr, label %.loopexit431, label %.new

.loopexit431:                                     ; preds = %.prol.loopexit, %.new, %bb.ab
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ez, i64 208 ; 2 uses
  store ptr %i.gr, ptr %i.hs, align 8
  %i.ht = load i64, ptr %i.al, align 8            ; 4 uses
  %i.hu = icmp ugt i64 %i.ht, 1023
  br i1 %i.hu, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit431
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ez, i64 236
  %i.hw = trunc nuw nsw i64 %i.ht to i32
  store i32 %i.hw, ptr %i.hv, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ez, i64 240 ; 2 uses
  %i.hy = load ptr, ptr %i.w, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hx, ptr align 1 %i.hy, i64 %i.ht, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ht
  store i8 0, ptr %i.hz, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.loopexit431, %bb.ad
  %i.ia = load ptr, ptr %i.an, align 8
  %i.ib = load ptr, ptr %i.am, align 8
  %.not186 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not186, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ic = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #21
          to label %bb.af unwind label %.loopexit447 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ic, i8 0, i64 %i.gh, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr %i.ic, ptr %i.id, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 112 ; 2 uses
  %i.if = load ptr, ptr %i.ao, align 8
  %i.ig = load ptr, ptr %i.av, align 8
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ii = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #21
          to label %bb.ai unwind label %bb.aj     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ii, i8 0, i64 %i.gh, i1 false)
  store ptr %i.ii, ptr %i.ie, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ah
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.ak:                                            ; preds = %bb.ag, %bb.ai
  %i.ik = load ptr, ptr %i.aw, align 8
  %i.il = load ptr, ptr %i.ax, align 8
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #21
          to label %bb.am unwind label %bb.aj     ; 2 uses

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.in, i8 0, i64 %i.gh, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store ptr %i.in, ptr %i.io, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
end_hunk_1
begin_hunk_2_@_ZN6Assimp13XFileImporter12CreateMeshesEP7aiSceneP6aiNodeRKSt6vectorIPNS_5XFile4MeshESaIS8_EE:bb.a
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.uu, i64 %i.no
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vd, ptr noundef nonnull align 4 dereferenceable(16) %i.vc, i64 16, i1 false)
  %.pre1054 = load i32, ptr %i.fa, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %bb.cx, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.ve = phi i32 [ %.pre1054, %bb.cx ], [ %i.ut, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ] ; 2 uses
  %i.vf = load ptr, ptr %i.kl, align 8            ; 2 uses
  %.not.i220.6 = icmp ne ptr %i.vf, null
  %i.vg = icmp ne i32 %i.ve, 0
  %i.vh = select i1 %.not.i220.6, i1 %i.vg, i1 false
  br i1 %i.vh, label %bb.cy, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.cy:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.vi = load ptr, ptr %i.mj, align 8
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv
  %i.vk = load i32, ptr %i.vj, align 4
  %i.vl = zext i32 %i.vk to i64
  %i.vm = load ptr, ptr %i.bv, align 8
  %i.vn = getelementptr inbounds nuw [16 x i8], ptr %i.vm, i64 %i.vl
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %i.vf, i64 %i.no
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vo, ptr noundef nonnull align 4 dereferenceable(16) %i.vn, i64 16, i1 false)
  %.pre1055 = load i32, ptr %i.fa, align 4
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %bb.cy, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.vp = phi i32 [ %.pre1055, %bb.cy ], [ %i.ve, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ]
  %i.vq = load ptr, ptr %i.km, align 8            ; 2 uses
  %.not.i220.7 = icmp ne ptr %i.vq, null
  %i.vr = icmp ne i32 %i.vp, 0
  %i.vs = select i1 %.not.i220.7, i1 %i.vr, i1 false
  br i1 %i.vs, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.vt = load ptr, ptr %i.mj, align 8
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv
  %i.vv = load i32, ptr %i.vu, align 4
  %i.vw = zext i32 %i.vv to i64
  %i.vx = load ptr, ptr %i.bx, align 8
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %i.vw
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.no
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vz, ptr noundef nonnull align 4 dereferenceable(16) %i.vy, i64 16, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.wa = add i32 %.1169766, 1
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph767, %bb.da
  %.2170 = phi i32 [ %i.wa, %bb.da ], [ %.1169766, %.lr.ph767 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.wb = load i32, ptr %i.ml, align 8
  %i.wc = zext i32 %i.wb to i64
  %i.wd = icmp samesign ult i64 %indvars.iv.next, %i.wc
  br i1 %i.wd, label %.lr.ph767, label %._crit_edge, !llvm.loop !34

._crit_edge788:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.we = ptrtoint ptr %.sroa.11.1 to i64
  %i.wf = ptrtoint ptr %.sroa.0296.2 to i64       ; 2 uses
  %i.wg = sub i64 %i.we, %i.wf                    ; 5 uses
  %i.wh = lshr exact i64 %i.wg, 3
  %i.wi = trunc i64 %i.wh to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ez, i64 216
  store i32 %i.wi, ptr %i.wj, align 8
  %i.wk = icmp eq ptr %.sroa.0296.2, %.sroa.11.1
  br i1 %i.wk, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.dw

bb.dc:                                            ; preds = %.lr.ph787, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.wl = phi ptr [ %i.mb, %.lr.ph787 ], [ %i.abn, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %i.wm = phi i64 [ 0, %.lr.ph787 ], [ %i.abl, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.0158785 = phi i32 [ 0, %.lr.ph787 ], [ %i.abk, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sroa.18.0784 = phi ptr [ null, %.lr.ph787 ], [ %.sroa.18.2, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 13 uses
  %.sroa.11.0783 = phi ptr [ null, %.lr.ph787 ], [ %.sroa.11.1, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 4 uses
  %.sroa.0296.0782 = phi ptr [ null, %.lr.ph787 ], [ %.sroa.0296.2, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 15 uses
  %i.wn = getelementptr inbounds nuw [120 x i8], ptr %i.wl, i64 %i.wm ; 5 uses
  %i.wo = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.wp = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = sub i64 %i.wq, %i.wr
  %i.wt = sdiv exact i64 %i.ws, 12                ; 3 uses
  %i.wu = icmp ugt i64 %i.wt, 2305843009213693951
  br i1 %i.wu, label %bb.dd, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #20
          to label %.noexc222 unwind label %.loopexit.split-lp420

.noexc222:                                        ; preds = %bb.dd
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.dc
  %.not.i.i.i.i = icmp eq ptr %i.wo, %i.wp
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.wv = shl nuw nsw i64 %i.wt, 2                ; 2 uses
  %i.ww = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wv) #21
          to label %.noexc223 unwind label %.loopexit419 ; 3 uses

.noexc223:                                        ; preds = %bb.de
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ww, i8 0, i64 %i.wv, i1 false)
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.wt
  %i.wy = ptrtoint ptr %i.wx to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc223, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0291.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ww, %.noexc223 ] ; 7 uses
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.wy, %.noexc223 ] ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wn, i64 32 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wn, i64 40 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = load ptr, ptr %i.wz, align 8            ; 2 uses
  %.not817 = icmp eq ptr %i.xb, %i.xc
  br i1 %.not817, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i, label %.lr.ph774

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i: ; preds = %.lr.ph774, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #21
          to label %bb.df unwind label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ; 3 uses

.loopexit419:                                     ; preds = %bb.de
  %lpad.loopexit421 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

.loopexit.split-lp420:                            ; preds = %bb.dd
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

.lr.ph774:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %.lr.ph774
  %i.xe = phi ptr [ %i.xp, %.lr.ph774 ], [ %i.xc, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.xf = phi i64 [ %i.xn, %.lr.ph774 ], [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %.0149773 = phi i32 [ %i.xm, %.lr.ph774 ], [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xf ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xi = load float, ptr %i.xh, align 4
  %i.xj = load i32, ptr %i.xg, align 4
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0291.0, i64 %i.xk
  store float %i.xi, ptr %i.xl, align 4
  %i.xm = add i32 %.0149773, 1                    ; 2 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = load ptr, ptr %i.xa, align 8
  %i.xp = load ptr, ptr %i.wz, align 8            ; 2 uses
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = ashr exact i64 %i.xs, 3
  %i.xu = icmp ugt i64 %i.xt, %i.xn
  br i1 %i.xu, label %.lr.ph774, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i, !llvm.loop !35

bb.df:                                            ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.gb
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit
  %i.xw = icmp eq ptr %.sroa.0.1, %.sroa.14.1
  br i1 %i.xw, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dm

bb.dh:                                            ; preds = %bb.df, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit
  %indvars.iv1031 = phi i64 [ 0, %bb.df ], [ %indvars.iv.next1032, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit ] ; 4 uses
  %.sroa.23.0777 = phi ptr [ %i.xv, %bb.df ], [ %.sroa.23.1, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit ] ; 8 uses
  %.sroa.14.0776 = phi ptr [ %i.xd, %bb.df ], [ %.sroa.14.1, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit ] ; 5 uses
  %.sroa.0.0775 = phi ptr [ %i.xd, %bb.df ], [ %.sroa.0.1, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit ] ; 10 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv1031
  %i.xy = load i32, ptr %i.xx, align 4
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0291.0, i64 %i.xz
  %i.yb = load float, ptr %i.ya, align 4          ; 3 uses
  %i.yc = fcmp ogt float %i.yb, 0.000000e+00
  br i1 %i.yc, label %bb.di, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit

bb.di:                                            ; preds = %bb.dh
  %.not.i226 = icmp eq ptr %.sroa.14.0776, %.sroa.23.0777
  br i1 %.not.i226, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yd = trunc nuw i64 %indvars.iv1031 to i32
  store i32 %i.yd, ptr %.sroa.14.0776, align 4
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.14.0776, i64 4
  store float %i.yb, ptr %i.ye, align 4
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.14.0776, i64 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit

bb.dk:                                            ; preds = %bb.di
  %i.yg = ptrtoint ptr %.sroa.23.0777 to i64      ; 2 uses
  %i.yh = ptrtoint ptr %.sroa.0.0775 to i64       ; 3 uses
  %i.yi = sub i64 %i.yg, %i.yh                    ; 4 uses
  %i.yj = icmp eq i64 %i.yi, 9223372036854775800
  br i1 %i.yj, label %bb.dl, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc229 unwind label %.loopexit.split-lp

.noexc229:                                        ; preds = %bb.dl
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dk
  %i.yk = ashr exact i64 %i.yi, 3                 ; 2 uses
  %.sroa.speculated.i.i.i227 = tail call i64 @llvm.umax.i64(i64 %i.yk, i64 1)
  %i.yl = add nsw i64 %.sroa.speculated.i.i.i227, %i.yk ; 2 uses
  %i.ym = tail call i64 @llvm.umin.i64(i64 %i.yl, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i228 = icmp ne i64 %i.yl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i228)
  %i.yn = shl nuw nsw i64 %i.ym, 3
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #21
          to label %.noexc230 unwind label %.loopexit418 ; 8 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yi ; 2 uses
  %i.yq = trunc nuw i64 %indvars.iv1031 to i32
  store i32 %i.yq, ptr %i.yp, align 4
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store float %i.yb, ptr %i.yr, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.0775, %.sroa.23.0777
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc230
  %i.ys = ptrtoaddr ptr %i.yo to i64
  %i.yt = add i64 %i.yg, -8
  %i.yu = sub i64 %i.yt, %i.yh                    ; 2 uses
  %i.yv = lshr i64 %i.yu, 3
  %i.yw = add nuw nsw i64 %i.yv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.yu, 24
  %i.yx = sub i64 %i.ys, %i.yh
  %diff.check = icmp ult i64 %i.yx, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1589, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.yw, 4611686018427387900     ; 3 uses
  %i.yy = shl i64 %n.vec, 3                       ; 2 uses
  %i.yz = getelementptr i8, ptr %i.yo, i64 %i.yy  ; 2 uses
  %i.za = getelementptr i8, ptr %.sroa.0.0775, i64 %i.yy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.yo, i64 %i.zb ; 2 uses
  %next.gep1586 = getelementptr i8, ptr %.sroa.0.0775, i64 %i.zb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.zc = getelementptr i8, ptr %next.gep1586, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1586, align 4, !alias.scope !39, !noalias !36
  %wide.load1587 = load <2 x i64>, ptr %i.zc, align 4, !alias.scope !39, !noalias !36
  %i.zd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load1587, ptr %i.zd, align 4, !alias.scope !36, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ze = icmp eq i64 %index.next, %n.vec
  br i1 %i.ze, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.preheader1589

.lr.ph.i.i.i.i.i.preheader1589:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i.preheader ], [ %i.yz, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0.0775, %.lr.ph.i.i.i.i.i.preheader ], [ %i.za, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1589, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.zh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1589 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1589 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.zf = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.zf, ptr %.012.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.zg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.zg, %.sroa.23.0777
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc230
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.yo, %.noexc230 ], [ %i.yz, %middle.block ], [ %i.zh, %.lr.ph.i.i.i.i.i ]
  %i.zi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0775, i64 noundef %i.yi) #19
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.ym
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit

.loopexit418:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.loopexit.split-lp:                               ; preds = %bb.dl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRjRfEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.dj, %bb.dh
  %.sroa.0.1 = phi ptr [ %.sroa.0.0775, %bb.dh ], [ %i.yo, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0.0775, %bb.dj ] ; 8 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0776, %bb.dh ], [ %i.zi, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.yf, %bb.dj ] ; 3 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.0777, %bb.dh ], [ %i.zj, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.23.0777, %bb.dj ] ; 4 uses
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1032, %i.gb
  br i1 %exitcond.not, label %bb.dg, label %bb.dh, !llvm.loop !43

bb.dm:                                            ; preds = %bb.dg
  %i.zk = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #21
          to label %bb.dn unwind label %.loopexit424 ; 14 uses

bb.dn:                                            ; preds = %bb.dm
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 1056 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.zk, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.zl, align 4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 1060
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.zm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zn, align 4
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 1080
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zk, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zp, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 1100
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.zq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.zr, align 4
  %.not.i231 = icmp eq ptr %.sroa.11.0783, %.sroa.18.0784
  br i1 %.not.i231, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store ptr %i.zk, ptr %.sroa.11.0783, align 8
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

bb.dp:                                            ; preds = %bb.dn
  %i.zs = ptrtoint ptr %.sroa.18.0784 to i64
  %i.zt = ptrtoint ptr %.sroa.0296.0782 to i64
  %i.zu = sub i64 %i.zs, %i.zt                    ; 6 uses
  %i.zv = icmp eq i64 %i.zu, 9223372036854775800
  br i1 %i.zv, label %bb.dq, label %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #20
          to label %.noexc235 unwind label %.loopexit.split-lp425

.noexc235:                                        ; preds = %bb.dq
  unreachable

_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dp
  %i.zw = ashr exact i64 %i.zu, 3                 ; 2 uses
  %.sroa.speculated.i.i.i232 = tail call i64 @llvm.umax.i64(i64 %i.zw, i64 1)
  %i.zx = add nsw i64 %.sroa.speculated.i.i.i232, %i.zw ; 2 uses
  %i.zy = tail call i64 @llvm.umin.i64(i64 %i.zx, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i233 = icmp ne i64 %i.zx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i233)
  %i.zz = shl nuw nsw i64 %i.zy, 3
  %i.aaa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zz) #21
          to label %.noexc236 unwind label %.loopexit424 ; 4 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aab = getelementptr inbounds i8, ptr %i.aaa, i64 %i.zu ; 2 uses
  store ptr %i.zk, ptr %i.aab, align 8
  %i.aac = icmp sgt i64 %i.zu, 0
  br i1 %i.aac, label %bb.dr, label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dr:                                            ; preds = %.noexc236
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aaa, ptr align 8 %.sroa.0296.0782, i64 %i.zu, i1 false)
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dr, %.noexc236
  %.not.i17.i.i234 = icmp eq ptr %.sroa.0296.0782, null
  br i1 %.not.i17.i.i234, label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0782, i64 noundef %i.zu) #19
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ds, %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.zy
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.do
  %.sroa.0296.6 = phi ptr [ %i.aaa, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0296.0782, %bb.do ] ; 2 uses
  %.pn414 = phi ptr [ %i.aab, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0783, %bb.do ]
  %.sroa.18.6 = phi ptr [ %i.aad, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0784, %bb.do ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn414, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8          ; 4 uses
  %i.aag = icmp ugt i64 %i.aaf, 1023
  br i1 %i.aag, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit
  %i.aah = trunc nuw nsw i64 %i.aaf to i32
  store i32 %i.aah, ptr %i.zk, align 4
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zk, i64 4 ; 2 uses
  %i.aaj = load ptr, ptr %i.wn, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aai, ptr align 1 %i.aaj, i64 %i.aaf, i1 false)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaf
  store i8 0, ptr %i.aak, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit, %bb.dt
  %i.aal = getelementptr inbounds nuw i8, ptr %i.wn, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.zl, ptr noundef nonnull align 8 dereferenceable(64) %i.aal, i64 64, i1 false)
  %i.aam = ptrtoint ptr %.sroa.14.1 to i64
  %i.aan = ptrtoint ptr %.sroa.0.1 to i64
  %i.aao = sub i64 %i.aam, %i.aan
  %i.aap = ashr exact i64 %i.aao, 3               ; 3 uses
  %i.aaq = trunc i64 %i.aap to i32
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zk, i64 1028
  store i32 %i.aaq, ptr %i.aar, align 4
  %i.aas = and i64 %i.aap, 4294967295             ; 2 uses
  %i.aat = shl nuw nsw i64 %i.aas, 3              ; 2 uses
  %i.aau = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aat) #21
          to label %bb.du unwind label %.loopexit424 ; 2 uses

bb.du:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237
  %i.aav = icmp eq i64 %i.aas, 0
  br i1 %i.aav, label %.lr.ph781.preheader, label %.loopexit417.loopexit

.loopexit417.loopexit:                            ; preds = %bb.du
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aau, i8 0, i64 %i.aat, i1 false)
  br label %.lr.ph781.preheader

.lr.ph781.preheader:                              ; preds = %bb.du, %.loopexit417.loopexit
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zk, i64 1048 ; 2 uses
  store ptr %i.aau, ptr %i.aaw, align 8
  br label %.lr.ph781

.loopexit424:                                     ; preds = %bb.dm, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0296.1.ph = phi ptr [ %.sroa.0296.0782, %bb.dm ], [ %.sroa.0296.0782, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0296.6, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237 ]
  %.sroa.18.1.ph = phi ptr [ %.sroa.18.0784, %bb.dm ], [ %.sroa.18.0784, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.6, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit237 ]
  %lpad.loopexit426 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.loopexit.split-lp425:                            ; preds = %bb.dq
  %lpad.loopexit.split-lp427 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread

.lr.ph781:                                        ; preds = %.lr.ph781.preheader, %.lr.ph781
  %i.aax = phi i64 [ %i.abd, %.lr.ph781 ], [ 0, %.lr.ph781.preheader ] ; 2 uses
  %.0148779 = phi i32 [ %i.abc, %.lr.ph781 ], [ 0, %.lr.ph781.preheader ]
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %i.aax
  %i.aaz = load ptr, ptr %i.aaw, align 8
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.aax
  %i.abb = load i64, ptr %i.aay, align 4
  store i64 %i.abb, ptr %i.aba, align 4
  %i.abc = add i32 %.0148779, 1                   ; 2 uses
  %i.abd = zext i32 %i.abc to i64                 ; 2 uses
  %i.abe = icmp ugt i64 %i.aap, %i.abd
  br i1 %i.abe, label %.lr.ph781, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !llvm.loop !44

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.lr.ph781, %bb.dg
  %.sroa.0296.2 = phi ptr [ %.sroa.0296.0782, %bb.dg ], [ %.sroa.0296.6, %.lr.ph781 ] ; 8 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0783, %bb.dg ], [ %.sroa.11.2, %.lr.ph781 ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0784, %bb.dg ], [ %.sroa.18.6, %.lr.ph781 ] ; 3 uses
  %i.abf = ptrtoint ptr %.sroa.23.1 to i64
  %i.abg = ptrtoint ptr %.sroa.0.1 to i64
  %i.abh = sub i64 %i.abf, %i.abg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.abh) #19
  %i.abi = ptrtoint ptr %.sroa.0291.0 to i64
  %i.abj = sub i64 %.sroa.13.0, %i.abi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0291.0, i64 noundef %i.abj) #19
  %i.abk = add i32 %.0158785, 1                   ; 2 uses
  %i.abl = zext i32 %i.abk to i64                 ; 2 uses
  %i.abm = load ptr, ptr %i.au, align 8
  %i.abn = load ptr, ptr %i.at, align 8           ; 2 uses
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = sdiv exact i64 %i.abq, 120
  %i.abs = icmp ugt i64 %i.abr, %i.abl
  br i1 %i.abs, label %bb.dc, label %._crit_edge788, !llvm.loop !45

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread: ; preds = %.loopexit424, %.loopexit.split-lp425, %.loopexit418, %.loopexit.split-lp
  %.sroa.0.0483 = phi ptr [ %.sroa.0.0775, %.loopexit.split-lp ], [ %.sroa.0.0775, %.loopexit418 ], [ %.sroa.0.1, %.loopexit424 ], [ %.sroa.0.1, %.loopexit.split-lp425 ] ; 2 uses
  %.sroa.23.0475 = phi ptr [ %.sroa.23.0777, %.loopexit.split-lp ], [ %.sroa.23.0777, %.loopexit418 ], [ %.sroa.23.1, %.loopexit424 ], [ %.sroa.23.1, %.loopexit.split-lp425 ]
  %.sroa.0296.3 = phi ptr [ %.sroa.0296.0782, %.loopexit.split-lp ], [ %.sroa.0296.0782, %.loopexit418 ], [ %.sroa.0296.1.ph, %.loopexit424 ], [ %.sroa.0296.0782, %.loopexit.split-lp425 ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.0784, %.loopexit.split-lp ], [ %.sroa.18.0784, %.loopexit418 ], [ %.sroa.18.1.ph, %.loopexit424 ], [ %.sroa.18.0784, %.loopexit.split-lp425 ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit418 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ]
  %i.abt = ptrtoint ptr %.sroa.23.0475 to i64
  %i.abu = ptrtoint ptr %.sroa.0.0483 to i64
  %i.abv = sub i64 %i.abt, %i.abu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0483, i64 noundef %i.abv) #19
  br label %bb.dv

_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241: ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %.sroa.0291.0, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIfSaIfEED2Ev.exit243, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241
  %.sroa.0296.33991132 = phi ptr [ %.sroa.0296.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %.sroa.0296.0782, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %.sroa.18.34001131 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %.sroa.18.0784, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %.pn4011130 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241.thread ], [ %i.abw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ]
  %i.abx = ptrtoint ptr %.sroa.0291.0 to i64
  %i.aby = sub i64 %.sroa.13.0, %i.abx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0291.0, i64 noundef %i.aby) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

bb.dw:                                            ; preds = %._crit_edge788
  %i.abz = and i64 %i.wg, 34359738360
  %i.aca = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abz) #21
          to label %bb.dx unwind label %bb.ea     ; 3 uses

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.aca, ptr %i.fd, align 8
  %i.acb = icmp sgt i64 %i.wg, 8
  br i1 %i.acb, label %bb.dy, label %bb.dz, !prof !46

bb.dy:                                            ; preds = %bb.dx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aca, ptr align 8 %.sroa.0296.2, i64 %i.wg, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.acc = icmp eq i64 %i.wg, 8
  br i1 %i.acc, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread: ; preds = %bb.dz
  %i.acd = load ptr, ptr %.sroa.0296.2, align 8
  store ptr %i.acd, ptr %i.aca, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dw
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit243

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.dz, %bb.dy, %._crit_edge788
  %.not.i.i.i244 = icmp eq ptr %.sroa.0296.2, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.acf = ptrtoint ptr %.sroa.18.2 to i64
  %i.acg = sub i64 %i.acf, %i.wf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.2, i64 noundef %i.acg) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread1133, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiBoneSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.ly) #19
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit433, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.19.3 = phi ptr [ %.sroa.19.1792, %.loopexit433 ], [ %.sroa.19.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.sroa.12386.2 = phi ptr [ %.sroa.12386.1794, %.loopexit433 ], [ %.sroa.12386.4, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.sroa.0379.3 = phi ptr [ %.sroa.0379.1795, %.loopexit433 ], [ %.sroa.0379.8, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %.sroa.0357.3, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIjSaIjEED2Ev.exit247, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ach = ptrtoint ptr %.sroa.23370.3 to i64
  %i.aci = ptrtoint ptr %.sroa.0357.3 to i64
  %i.acj = sub i64 %i.ach, %i.aci
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.3, i64 noundef %i.acj) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit247

_ZNSt6vectorIjSaIjEED2Ev.exit247:                 ; preds = %.preheader432, %bb.ec, %bb.ed
  %.sroa.0379.31146 = phi ptr [ %.sroa.0379.3, %bb.ed ], [ %.sroa.0379.3, %bb.ec ], [ %.sroa.0379.1795, %.preheader432 ] ; 2 uses
  %.sroa.12386.21145 = phi ptr [ %.sroa.12386.2, %bb.ed ], [ %.sroa.12386.2, %bb.ec ], [ %.sroa.12386.1794, %.preheader432 ] ; 2 uses
  %.sroa.19.31144 = phi ptr [ %.sroa.19.3, %bb.ed ], [ %.sroa.19.3, %bb.ec ], [ %.sroa.19.1792, %.preheader432 ] ; 2 uses
  %indvars.iv.next1035 = add nuw nsw i64 %indvars.iv1034, 1 ; 2 uses
  %exitcond1038.not = icmp eq i64 %indvars.iv.next1035, %wide.trip.count1037
  br i1 %exitcond1038.not, label %.loopexit446.loopexit, label %bb.e, !llvm.loop !47

_ZNSt6vectorIfSaIfEED2Ev.exit243:                 ; preds = %.loopexit419, %.loopexit.split-lp420, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241, %bb.dv, %bb.ea
  %.sroa.0296.5 = phi ptr [ %.sroa.0296.2, %bb.ea ], [ %.sroa.0296.33991132, %bb.dv ], [ %.sroa.0296.0782, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %.sroa.0296.0782, %.loopexit419 ], [ %.sroa.0296.0782, %.loopexit.split-lp420 ] ; 3 uses
  %.sroa.18.5 = phi ptr [ %.sroa.18.2, %bb.ea ], [ %.sroa.18.34001131, %bb.dv ], [ %.sroa.18.0784, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %.sroa.18.0784, %.loopexit419 ], [ %.sroa.18.0784, %.loopexit.split-lp420 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ace, %bb.ea ], [ %.pn4011130, %bb.dv ], [ %i.abw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit241 ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ] ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.sroa.0296.5, null
  br i1 %.not.i.i.i248, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit243
  %i.ack = ptrtoint ptr %.sroa.18.5 to i64
  %i.acl = ptrtoint ptr %.sroa.0296.5 to i64
  %i.acm = sub i64 %i.ack, %i.acl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.5, i64 noundef %i.acm) #19
end_hunk_2
