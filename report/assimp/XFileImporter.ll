inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter11CreateNodesEP7aiSceneP6aiNodePKNS_5XFile4NodeE:bb.a

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
  %i.j = phi ptr [ %i.d, %.lr.ph314 ], [ %i.vd, %.loopexit285 ]
  %i.k = phi i64 [ 0, %.lr.ph314 ], [ %i.vb, %.loopexit285 ]
  %.0127312 = phi i32 [ 0, %.lr.ph314 ], [ %i.va, %.loopexit285 ]
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
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc156 unwind label %.loopexit286 ; 4 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIP11aiAnimationSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.s, ptr %i.am, align 8
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %.noexc156
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %.sroa.0252.0311, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %.noexc156
  %.not.i17.i.i = icmp eq ptr %.sroa.0252.0311, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0311, i64 noundef %i.ad) #19
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP11aiAnimationSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  br label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %.sroa.19264.5 = phi ptr [ %i.ao, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19264.0309, %bb.e ] ; 4 uses
  %.pn = phi ptr [ %i.am, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12259.0310, %bb.e ]
  %.sroa.0252.5 = phi ptr [ %i.al, %_ZNSt6vectorIP11aiAnimationSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0252.0311, %bb.e ] ; 4 uses
  %.sroa.12259.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, 1023
  br i1 %i.ar, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit
  %i.as = trunc nuw nsw i64 %i.aq to i32
  store i32 %i.as, ptr %i.s, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.au = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 1 %i.au, i64 %i.aq, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  store i8 0, ptr %i.av, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit, %bb.j
  store double 0.000000e+00, ptr %i.t, align 8
  %i.aw = load i32, ptr %i.e, align 8
  %i.ax = uitofp i32 %i.aw to double
  store double %i.ax, ptr %i.u, align 8
  %i.ay = load ptr, ptr %i.p, align 8
  %i.az = load ptr, ptr %i.n, align 8
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.v, align 8
  %i.bf = and i64 %i.bc, 34359738360
  %i.bg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #21
          to label %bb.k unwind label %.loopexit286

bb.k:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.bg, ptr %i.w, align 8
  %i.bh = load ptr, ptr %i.p, align 8
  %i.bi = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not323 = icmp eq ptr %i.bh, %i.bi
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
  %i.bj = phi ptr [ %i.uu, %bb.ax ], [ %i.bi, %bb.k ]
  %i.bk = phi i64 [ %i.us, %bb.ax ], [ 0, %bb.k ] ; 2 uses
  %.0133306 = phi i32 [ %i.ur, %bb.ax ], [ 0, %bb.k ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8            ; 10 uses
  %i.bn = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #21
          to label %bb.l unwind label %bb.w       ; 13 uses

bb.l:                                             ; preds = %.lr.ph308
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1048 ; 8 uses
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1056 ; 4 uses
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1064 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bn, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8            ; 4 uses
  %i.bt = icmp ugt i64 %i.bs, 1023
  br i1 %i.bt, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = trunc nuw nsw i64 %i.bs to i32
  store i32 %i.bu, ptr %i.bn, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bw = load ptr, ptr %i.bm, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 1 %i.bw, i64 %i.bs, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs
  store i8 0, ptr %i.bx, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157: ; preds = %bb.l, %bb.m
  %i.by = load ptr, ptr %i.w, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bk
  store ptr %i.bn, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 104 ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 112 ; 5 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit157
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 72                ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 1028
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = and i64 %i.ci, 4294967295               ; 3 uses
  %i.cm = mul nuw nsw i64 %i.cl, 24
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #21
          to label %bb.o unwind label %bb.w       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %.loopexit284, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cl
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.cq = phi ptr [ %i.cn, %bb.p ], [ %i.cs, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.loopexit284, label %bb.q

.loopexit284:                                     ; preds = %bb.q, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1032 ; 3 uses
  store ptr %i.cn, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.cc, align 8
  %i.cw = load ptr, ptr %i.ca, align 8
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 72                ; 3 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 1040
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = and i64 %i.da, 4294967295               ; 4 uses
  %i.de = shl nuw nsw i64 %i.dd, 5
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #21
          to label %bb.r unwind label %bb.w       ; 4 uses

bb.r:                                             ; preds = %.loopexit284
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %.loopexit283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.dd
  %i.di = add nuw nsw i64 %i.dd, 576460752303423487
  %i.dj = and i64 %i.di, 576460752303423487
  %xtraiter = and i64 %i.da, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.s, %.prol.preheader
  %i.dk = phi ptr [ %i.dn, %.prol.preheader ], [ %i.df, %bb.s ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.s ]
  store double 0.000000e+00, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i32 1, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !17

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.s
  %.unr = phi ptr [ %i.df, %bb.s ], [ %i.dn, %.prol.preheader ]
  %i.do = icmp samesign ult i64 %i.dj, 7
  br i1 %i.do, label %.loopexit283, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dp = phi ptr [ %i.en, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store double 0.000000e+00, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  store i32 1, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  store double 0.000000e+00, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  store double 0.000000e+00, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 120
  store i32 1, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  store double 0.000000e+00, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  store i32 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  store double 0.000000e+00, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 184
  store i32 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  store double 0.000000e+00, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 216
  store i32 1, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  store double 0.000000e+00, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 248
  store i32 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 256 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dh
  br i1 %i.eo, label %.loopexit283, label %.new

.loopexit283:                                     ; preds = %.prol.loopexit, %.new, %bb.r
  store ptr %i.df, ptr %i.bo, align 8
  %i.ep = load ptr, ptr %i.cc, align 8
  %i.eq = load ptr, ptr %i.ca, align 8
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = sdiv exact i64 %i.et, 72                ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  store i32 %i.ev, ptr %i.bp, align 8
  %i.ew = and i64 %i.eu, 4294967295               ; 3 uses
  %i.ex = mul nuw nsw i64 %i.ew, 24
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #21
          to label %bb.t unwind label %bb.w       ; 3 uses

bb.t:                                             ; preds = %.loopexit283
  %i.ez = icmp eq i64 %i.ew, 0
  br i1 %i.ez, label %.loopexit282, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ew
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %i.fb = phi ptr [ %i.ey, %bb.u ], [ %i.fd, %bb.v ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.fa
  br i1 %i.fe, label %.loopexit282, label %bb.v

.loopexit282:                                     ; preds = %bb.v, %bb.t
  store ptr %i.ey, ptr %i.bq, align 8
  %i.ff = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.fg = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not324 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not324, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.loopexit282
  %.lcssa = phi ptr [ %i.ff, %.loopexit282 ], [ %i.kp, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %i.fh = getelementptr inbounds i8, ptr %.lcssa, i64 -72
  %i.fi = load double, ptr %i.t, align 8          ; 2 uses
  %i.fj = load double, ptr %i.fh, align 8         ; 2 uses
  %i.fk = fcmp olt double %i.fi, %i.fj
  %i.fl = select i1 %i.fk, double %i.fj, double %i.fi
  br label %.sink.split

bb.w:                                             ; preds = %bb.ap, %bb.ah, %bb.ae, %.loopexit283, %.loopexit284, %bb.n, %.lr.ph308
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb
end_hunk_0
