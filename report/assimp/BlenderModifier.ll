Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderModifier?download=true
inline.NumInlined: 481
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp6Logger5debugIJRA35_KcRmRA5_S2_S5_RA16_S2_RA1024_S2_RA39_S2_EEEvDpOT_:bb.a
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %9, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %8, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp7Blender22BlenderModifier_Mirror8IsActiveERKNS0_12ModifierDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 5
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1144) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(1384) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !noalias !26 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !26
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !26
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %.06.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !26 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !12

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !26
  br label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !26
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.m = load ptr, ptr %i.b, align 8, !noalias !26
  br label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.n, ptr %6, align 8, !alias.scope !26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 6 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = add nsw i64 %i.v, %i.y                   ; 4 uses
  %i.aa = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.t
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = icmp ult i64 %i.af, %i.z
  br i1 %i.ag, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ah = shl nuw nsw i64 %i.z, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #19
          to label %.noexc129 unwind label %bb.j  ; 4 uses

.noexc129:                                        ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.aj = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.ak = load ptr, ptr %i.p, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.h:                                             ; preds = %.noexc129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.h, %.noexc129
  %.not.i8.i = icmp eq ptr %i.aj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = load ptr, ptr %i.ab, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ar) #18
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ai, ptr %i.o, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.u
  store ptr %i.as, ptr %i.p, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.z
  store ptr %i.at, ptr %i.ab, align 8
  %.pre = load i32, ptr %i.w, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %bb.g, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.au = phi i32 [ %i.x, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.not177 = icmp eq i32 %i.au, 0
  br i1 %.not177, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 106 ; 2 uses
  %.not138 = icmp eq ptr %i.n, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 1116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 1124
  br label %bb.k

._crit_edge176.loopexit:                          ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.az = shl i32 %i.jo, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %.lcssa = phi i64 [ 0, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %i.bb, %._crit_edge176.loopexit ]
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.lcssa) #19
          to label %bb.v unwind label %bb.aj      ; 4 uses

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %.lr.ph175, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %indvars.iv223 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next224, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.be = load ptr, ptr %i.av, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv223
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.o, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef nonnull %i.a, ptr noundef %i.bk)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.bm = insertelement <2 x i16> poison, i16 %i.bl, i64 0
  %i.bn = shufflevector <2 x i16> %i.bm, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bo = and <2 x i16> %i.bn, <i16 8, i16 16>
  %i.bp = icmp eq <2 x i16> %i.bo, zeroinitializer
  %i.bq = select <2 x i1> %i.bp, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00) ; 7 uses
  %i.br = and i16 %i.bl, 32
  %.not121 = icmp eq i16 %i.br, 0
  %i.bs = select i1 %.not121, float 1.000000e+00, float -1.000000e+00 ; 6 uses
  br i1 %.not138, label %.preheader146, label %bb.m

.preheader146:                                    ; preds = %bb.l
  %i.bt = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %.not179 = icmp eq i32 %i.bv, 0
  br i1 %.not179, label %.loopexit147, label %.lr.ph155

bb.m:                                             ; preds = %bb.l
  %i.bw = load <2 x float>, ptr %i.ax, align 4    ; 2 uses
  %i.bx = load float, ptr %i.ay, align 4          ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %.not178 = icmp eq i32 %i.ca, 0
  br i1 %.not178, label %.loopexit147, label %.lr.ph

bb.n:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.m ] ; 2 uses
  %i.cc = phi ptr [ %i.cn, %.lr.ph ], [ %i.by, %bb.m ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %indvars.iv ; 3 uses
  %i.cg = load <2 x float>, ptr %i.cf, align 4
  %i.ch = fsub <2 x float> %i.bw, %i.cg
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.ch, <2 x float> %i.bw)
  store <2 x float> %i.ci, ptr %i.cf, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fsub float %i.bx, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bs, float %i.cl, float %i.bx)
  store float %i.cm, ptr %i.cj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %.lr.ph, label %.loopexit147, !llvm.loop !13

.lr.ph155:                                        ; preds = %.preheader146, %.lr.ph155
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph155 ], [ 0, %.preheader146 ] ; 2 uses
  %i.cs = phi ptr [ %i.db, %.lr.ph155 ], [ %i.bt, %.preheader146 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %indvars.iv193 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 4
  %i.cx = fmul <2 x float> %i.bq, %i.cw
  store <2 x float> %i.cx, ptr %i.cv, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = fmul float %i.bs, %i.cz
  store float %i.da, ptr %i.cy, align 4
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.db = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next194, %i.de
  br i1 %i.df, label %.lr.ph155, label %.loopexit147, !llvm.loop !14

.loopexit147:                                     ; preds = %.lr.ph, %.lr.ph155, %bb.m, %.preheader146
  %i.dg = phi i32 [ %i.dd, %.lr.ph155 ], [ 0, %.preheader146 ], [ 0, %bb.m ], [ %i.cp, %.lr.ph ]
  %i.dh = phi ptr [ %i.db, %.lr.ph155 ], [ %i.bt, %.preheader146 ], [ %i.by, %bb.m ], [ %i.cn, %.lr.ph ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %.not122 = icmp eq ptr %i.dj, null
  %.not180 = icmp eq i32 %i.dg, 0
  %or.cond = or i1 %.not122, %.not180
  br i1 %or.cond, label %.loopexit145, label %.lr.ph157

.lr.ph157:                                        ; preds = %.loopexit147, %.lr.ph157
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %.lr.ph157 ], [ 0, %.loopexit147 ] ; 2 uses
  %i.dk = phi ptr [ %i.dt, %.lr.ph157 ], [ %i.dh, %.loopexit147 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %indvars.iv196 ; 3 uses
  %i.do = load <2 x float>, ptr %i.dn, align 4
  %i.dp = fmul <2 x float> %i.bq, %i.do
  store <2 x float> %i.dp, ptr %i.dn, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fmul float %i.bs, %i.dr
  store float %i.ds, ptr %i.dq, align 4
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp samesign ult i64 %indvars.iv.next197, %i.dw
  br i1 %i.dx, label %.lr.ph157, label %.loopexit145, !llvm.loop !15

.loopexit145:                                     ; preds = %.lr.ph157, %.loopexit147
  %i.dy = phi ptr [ %i.dh, %.loopexit147 ], [ %i.dt, %.lr.ph157 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not123 = icmp eq ptr %i.ea, null
  br i1 %.not123, label %.loopexit143, label %.preheader142

.preheader142:                                    ; preds = %.loopexit145
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ec = load i32, ptr %i.eb, align 4
  %.not181 = icmp eq i32 %i.ec, 0
  br i1 %.not181, label %.loopexit143, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader142, %.lr.ph159
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph159 ], [ 0, %.preheader142 ] ; 2 uses
  %i.ed = phi ptr [ %i.em, %.lr.ph159 ], [ %i.dy, %.preheader142 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ef, i64 %indvars.iv199 ; 3 uses
  %i.eh = load <2 x float>, ptr %i.eg, align 4
  %i.ei = fmul <2 x float> %i.bq, %i.eh
  store <2 x float> %i.ei, ptr %i.eg, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = fmul float %i.bs, %i.ek
  store float %i.el, ptr %i.ej, align 4
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.em = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next200, %i.ep
  br i1 %i.eq, label %.lr.ph159, label %.loopexit143, !llvm.loop !16

.loopexit143:                                     ; preds = %.lr.ph159, %.preheader142, %.loopexit145
  %i.er = phi ptr [ %i.dy, %.loopexit145 ], [ %i.dy, %.preheader142 ], [ %i.em, %.lr.ph159 ] ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  %.not124 = icmp eq ptr %i.et, null
  br i1 %.not124, label %.loopexit141, label %.preheader140

.preheader140:                                    ; preds = %.loopexit143
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load i32, ptr %i.eu, align 4
  %.not182 = icmp eq i32 %i.ev, 0
  br i1 %.not182, label %.loopexit141, label %.lr.ph161

.lr.ph161:                                        ; preds = %.preheader140, %.lr.ph161
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %.lr.ph161 ], [ 0, %.preheader140 ] ; 2 uses
  %i.ew = phi ptr [ %i.ff, %.lr.ph161 ], [ %i.er, %.preheader140 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ey, i64 %indvars.iv202 ; 3 uses
  %i.fa = load <2 x float>, ptr %i.ez, align 4
  %i.fb = fmul <2 x float> %i.bq, %i.fa
  store <2 x float> %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4
  %i.fe = fmul float %i.bs, %i.fd
  store float %i.fe, ptr %i.fc, align 4
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.ff = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv.next203, %i.fi
  br i1 %i.fj, label %.lr.ph161, label %.loopexit141, !llvm.loop !17

.loopexit141:                                     ; preds = %.lr.ph161, %.preheader140, %.loopexit143
  %i.fk = phi ptr [ %i.er, %.loopexit143 ], [ %i.er, %.preheader140 ], [ %i.ff, %.lr.ph161 ] ; 2 uses
  %i.fl = load i16, ptr %i.aw, align 2
  %.fr183 = freeze i16 %i.fl                      ; 2 uses
  %i.fm = and i16 %.fr183, 2
end_hunk_0
begin_hunk_1_@_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE:bb.a
  %i.gk = phi ptr [ %i.gr, %.lr.ph163.split.split.us ], [ %i.fp, %.lr.ph163.split ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 112
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv214
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv208 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4
  %i.gq = fneg float %i.gp
  store float %i.gq, ptr %i.go, align 4
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.gr = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp samesign ult i64 %indvars.iv.next209, %i.gu
  br i1 %i.gv, label %.lr.ph163.split.split.us, label %._crit_edge, !llvm.loop !18

_ZNK6aiMesh16HasTextureCoordsEj.exit.thread:      ; preds = %._crit_edge, %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.gw = phi ptr [ %i.hc, %._crit_edge ], [ %i.fo, %_ZNK6aiMesh16HasTextureCoordsEj.exit ] ; 4 uses
  %shift = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x float> %i.bq, %shift
  %i.gx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gy = fmul nnan float %i.bs, %i.gx
  %i.gz = fcmp olt float %i.gy, 0.000000e+00
  br i1 %i.gz, label %.preheader139, label %.loopexit

.preheader139:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hb = load i32, ptr %i.ha, align 8
  %.not185 = icmp eq i32 %i.hb, 0
  br i1 %.not185, label %.loopexit, label %.lr.ph173

._crit_edge:                                      ; preds = %.lr.ph163.split.split, %.lr.ph163.split.split.us, %.lr.ph163.split.us.split, %.lr.ph163.split.us
  %i.hc = phi ptr [ %i.gr, %.lr.ph163.split.split.us ], [ %i.gf, %.lr.ph163.split.us.split ], [ %i.fo, %.lr.ph163.split.us ], [ %i.hl, %.lr.ph163.split.split ] ; 2 uses
  %i.hd = phi ptr [ %i.gr, %.lr.ph163.split.split.us ], [ %i.gf, %.lr.ph163.split.us.split ], [ %i.fp, %.lr.ph163.split.us ], [ %i.hl, %.lr.ph163.split.split ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next215, 8
  br i1 %exitcond, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit, !llvm.loop !19

.lr.ph163.split.split:                            ; preds = %.lr.ph163.split, %.lr.ph163.split.split
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.lr.ph163.split.split ], [ 0, %.lr.ph163.split ] ; 2 uses
  %i.he = phi ptr [ %i.hl, %.lr.ph163.split.split ], [ %i.fp, %.lr.ph163.split ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv214
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.hh, i64 %indvars.iv205 ; 2 uses
  %i.hj = load <2 x float>, ptr %i.hi, align 4
  %i.hk = fneg <2 x float> %i.hj
  store <2 x float> %i.hk, ptr %i.hi, align 4
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.hl = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = zext i32 %i.hn to i64
  %i.hp = icmp samesign ult i64 %indvars.iv.next206, %i.ho
  br i1 %i.hp, label %.lr.ph163.split.split, label %._crit_edge, !llvm.loop !18

.lr.ph173:                                        ; preds = %.preheader139, %._crit_edge171
  %i.hq = phi ptr [ %i.hw, %._crit_edge171 ], [ %i.gw, %.preheader139 ] ; 2 uses
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %._crit_edge171 ], [ 0, %.preheader139 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 208
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv220 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8            ; 2 uses
  %.not186 = icmp ult i32 %i.hu, 2
  br i1 %.not186, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph173
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  br label %bb.o

._crit_edge171.loopexit:                          ; preds = %bb.o
  %.pre226 = load ptr, ptr %i.a, align 8
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %.lr.ph173
  %i.hw = phi ptr [ %.pre226, %._crit_edge171.loopexit ], [ %i.hq, %.lr.ph173 ] ; 3 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 8
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp samesign ult i64 %indvars.iv.next221, %i.hz
  br i1 %i.ia, label %.lr.ph173, label %.loopexit, !llvm.loop !20

bb.o:                                             ; preds = %.lr.ph170, %bb.o
  %indvars.iv217 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next218, %bb.o ] ; 3 uses
  %i.ib = phi i32 [ %i.hu, %.lr.ph170 ], [ %i.il, %bb.o ]
  %i.ic = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv217 ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.if = xor i32 %i.ie, -1
  %i.ig = add i32 %i.ib, %i.if
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.id, align 4
  %i.ik = load i32, ptr %i.ii, align 4
  store i32 %i.ik, ptr %i.id, align 4
  store i32 %i.ij, ptr %i.ii, align 4
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.il = load i32, ptr %i.ht, align 8            ; 2 uses
  %i.im = lshr i32 %i.il, 1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = icmp samesign ult i64 %indvars.iv.next218, %i.in
  br i1 %i.io, label %bb.o, label %._crit_edge171.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge171, %.preheader139, %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread
  %i.ip = phi ptr [ %i.gw, %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread ], [ %i.gw, %.preheader139 ], [ %i.hw, %._crit_edge171 ]
  %i.iq = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ir = load ptr, ptr %i.ab, align 8
  %.not.i130 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i130, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  store ptr %i.ip, ptr %i.iq, align 8
  %i.is = load ptr, ptr %i.p, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr %i.it, ptr %i.p, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %.loopexit
  %i.iu = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.iv = ptrtoint ptr %i.iq to i64
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 5 uses
  %i.iy = icmp eq i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %bb.r, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #17
          to label %.noexc132 unwind label %.loopexit.split-lp

.noexc132:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.iz = ashr exact i64 %i.ix, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 1152921504606846975)
  %i.jd = select i1 %i.jb, i64 1152921504606846975, i64 %i.jc ; 3 uses
  %.not.i.i.i131 = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i.i131)
  %i.je = shl nuw nsw i64 %i.jd, 3
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #19
          to label %.noexc133 unwind label %.loopexit149 ; 4 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %i.ix ; 2 uses
  %i.jh = load ptr, ptr %i.a, align 8
  store ptr %i.jh, ptr %i.jg, align 8
  %i.ji = icmp sgt i64 %i.ix, 0
  br i1 %i.ji, label %bb.s, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.s:                                             ; preds = %.noexc133
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jf, ptr align 8 %i.iu, i64 %i.ix, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.s, %.noexc133
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.jk = load ptr, ptr %i.ab, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.jl, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.jm) #18
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.jf, ptr %i.o, align 8
  store ptr %i.jj, ptr %i.p, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jd
  store ptr %i.jn, ptr %i.ab, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.jo = load i32, ptr %i.w, align 8             ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = icmp samesign ult i64 %indvars.iv.next224, %i.jp
  br i1 %i.jq, label %bb.k, label %._crit_edge176.loopexit, !llvm.loop !22

.loopexit149:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit149, %.loopexit.split-lp, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %lpad.loopexit, %.loopexit149 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ak

bb.v:                                             ; preds = %._crit_edge176
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8            ; 8 uses
  %i.jt = load i32, ptr %i.w, align 8             ; 6 uses
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %.idx137 = shl nuw nsw i64 %i.ju, 2             ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %.idx137
  %i.jw = icmp ugt i32 %i.jt, 1
  br i1 %i.jw, label %bb.w, label %bb.x, !prof !4

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 4 %i.js, i64 %.idx137, i1 false)
  br label %.lr.ph.i.preheader

bb.x:                                             ; preds = %bb.v
  %i.jx = icmp eq i32 %i.jt, 1
  br i1 %i.jx, label %bb.y, label %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit"

bb.y:                                             ; preds = %bb.x
  %i.jy = load i32, ptr %i.js, align 4
  store i32 %i.jy, ptr %i.bc, align 4
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.y, %bb.w
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ju ; 3 uses
  %i.ka = add nsw i64 %.idx137, -4                ; 2 uses
  %i.kb = lshr exact i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ka, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader275, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.kc, 9223372036854775800     ; 3 uses
  %i.kd = shl i64 %n.vec, 2                       ; 2 uses
  %i.ke = getelementptr i8, ptr %i.jz, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.js, i64 %i.kd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jz, i64 %i.kg ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.js, i64 %i.kg ; 2 uses
  %i.kh = getelementptr i8, ptr %next.gep271, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep271, align 4
  %wide.load272 = load <4 x i32>, ptr %i.kh, align 4
  %i.ki = add <4 x i32> %wide.load, %broadcast.splat
  %i.kj = add <4 x i32> %wide.load272, %broadcast.splat
  %i.kk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ki, ptr %next.gep, align 4
  store <4 x i32> %i.kj, ptr %i.kk, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit", label %.lr.ph.i.preheader275

.lr.ph.i.preheader275:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.jz, %.lr.ph.i.preheader ], [ %i.ke, %middle.block ]
  %.079.i.ph = phi ptr [ %i.js, %.lr.ph.i.preheader ], [ %i.kf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader275, %.lr.ph.i
  %.010.i = phi ptr [ %i.kp, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader275 ] ; 2 uses
  %.079.i = phi ptr [ %i.ko, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader275 ] ; 2 uses
  %i.km = load i32, ptr %.079.i, align 4
  %i.kn = add i32 %i.km, %i.jt
  store i32 %i.kn, ptr %.010.i, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i134 = icmp eq ptr %i.ko, %i.jv
  br i1 %.not.i134, label %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit", label %.lr.ph.i, !llvm.loop !24

"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit": ; preds = %.lr.ph.i, %middle.block, %bb.x
  %i.kq = icmp eq ptr %i.js, null
  br i1 %i.kq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit"
  call void @_ZdaPv(ptr noundef nonnull %i.js) #18
  %.pre227 = load i32, ptr %i.w, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit"
  %i.kr = phi i32 [ %.pre227, %bb.z ], [ %i.jt, %"_ZSt9transformIPjS0_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS2_14ConversionDataERKNS2_8ElemBaseERKNS2_5SceneERKNS2_6ObjectEE3$_0ET0_T_SJ_SI_T1_.exit" ]
  store ptr %i.bc, ptr %i.jr, align 8
  %i.ks = shl i32 %i.kr, 1
  store i32 %i.ks, ptr %i.w, align 8
  %i.kt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 32
  invoke void @_ZN6Assimp6Logger4infoIJRA50_KcRA1024_S2_RA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.kt, ptr noundef nonnull align 1 dereferenceable(50) @.str.10, ptr noundef nonnull align 1 dereferenceable(1024) %i.ku, ptr noundef nonnull align 1 dereferenceable(2) @.str.11)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.kv = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 4 uses
  %i.kx = load atomic i64, ptr %i.kw acquire, align 8 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 4294967297
  %i.kz = trunc i64 %i.kx to i32                  ; 2 uses
  br i1 %i.ky, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.kw, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 0, ptr %i.la, align 4
  %i.lb = load ptr, ptr %i.kv, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #16, !inline_history !25
  %i.le = load ptr, ptr %i.kv, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #16, !inline_history !25
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.lh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i135 = icmp eq i8 %i.lh, 0
  br i1 %.not.i.i.i135, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.li = add nsw i32 %i.kz, -1
  store i32 %i.li, ptr %i.kw, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.lj = atomicrmw volatile add ptr %i.kw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi i32 [ %i.kz, %bb.ag ], [ %i.lj, %bb.ah ]
  %i.lk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lk, label %bb.ai, label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kv) #16
  br label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.aj:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge176
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.u, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.ll, %bb.aj ], [ %i.bd, %bb.j ]
  call void @_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA50_KcRA1024_S2_RA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(50) %1, ptr noundef nonnull align 1 dereferenceable(1024) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(50) %1) #16
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(50) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA50_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #16
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA50_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA2_KcERA1024_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(1024) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA50_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA50_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger13formatMessageIJERA2_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #16
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #16
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERKsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load i16, ptr %3, align 2
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(376) %2, i16 noundef signext %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !106
  store i8 0, ptr %i.c, align 8, !alias.scope !106
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !106 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !106 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !106 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !106 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !106
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #16
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #16
  resume { ptr, i32 } %i.p
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = !{}
!9 = !{i64 8}
!10 = distinct !{!10, i1 false, !"_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv"}
!11 = distinct !{!11, !10, !"_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv: argument 0"}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3, !27, !28}
!24 = distinct !{!24, !3, !28, !27}
!25 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = !{!11}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{null, null}
!30 = distinct !{null, null}
!31 = distinct !{!31, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!32 = distinct !{!32, !31, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!33 = distinct !{!33, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!34 = distinct !{!34, !33, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!38 = distinct !{!38, !37, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!39 = !{!32}
!40 = !{!34}
!41 = !{!36}
!42 = !{!38}
!43 = !{!38, !36, !34, !32}
!44 = distinct !{!44, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!45 = distinct !{!45, !44, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!47 = distinct !{!47, !46, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!49 = distinct !{!49, !48, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!50 = !{!45}
!51 = !{!47}
!52 = !{!49}
!53 = !{!49, !47, !45}
!54 = distinct !{null}
!55 = distinct !{!55, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!56 = distinct !{!56, !55, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!57 = distinct !{!57, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!58 = distinct !{!58, !57, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!60 = distinct !{!60, !59, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!62 = distinct !{!62, !61, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!63 = !{!56}
!64 = !{!58}
!65 = !{!60}
!66 = !{!62}
!67 = !{!62, !60, !58, !56}
!68 = distinct !{!68, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!69 = distinct !{!69, !68, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!71 = distinct !{!71, !70, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!72 = distinct !{!72, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = distinct !{!73, !72, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!75 = distinct !{!75, !74, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!76 = !{!69}
!77 = !{!71}
!78 = !{!73}
!79 = !{!75}
!80 = !{!75, !73, !71, !69}
!81 = distinct !{!81, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!82 = distinct !{!82, !81, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!83 = distinct !{!83, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!84 = distinct !{!84, !83, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!85 = distinct !{!85, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!86 = distinct !{!86, !85, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!87 = distinct !{!87, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!88 = distinct !{!88, !87, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!89 = !{!82}
!90 = !{!84}
!91 = !{!86}
!92 = !{!88}
!93 = !{!88, !86, !84, !82}
!94 = distinct !{!94, i1 false, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!95 = distinct !{!95, !94, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!96 = distinct !{!96, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!97 = distinct !{!97, !96, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!98 = distinct !{!98, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!99 = distinct !{!99, !98, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!101 = distinct !{!101, !100, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!102 = !{!95}
!103 = !{!97}
!104 = !{!99}
!105 = !{!101}
!106 = !{!101, !99, !97, !95}
end_hunk_2
