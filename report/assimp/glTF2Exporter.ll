Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.gh = fdiv <4 x float> %i.gg, %i.fy
  %i.gi = fmul <4 x float> %i.gg, %i.fy
  %i.gj = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gk = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gl = fadd float %.sroa.22.0, 1.000000e+00
  %i.gm = fsub float %i.gl, %.sroa.055.0
  %i.gn = fsub float %i.gm, %.sroa.42.0
  %i.go = tail call noundef float @sqrtf(float noundef %i.gn) #31
  %i.gp = fmul float %i.go, 2.000000e+00
  %i.gq = extractelement <2 x float> %i.ew, i64 1
  %i.gr = fadd float %i.gq, %.sroa.17.0
  %i.gs = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gt = extractelement <2 x float> %i.ew, i64 0
  %i.gu = fsub float %i.gt, %.sroa.1260.0
  %i.gv = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gu, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gr, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gs, i64 3 ; 2 uses
  %i.gy = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = fdiv <4 x float> %i.gx, %i.gz
  %i.hb = fmul <4 x float> %i.gx, %i.gz
  %i.hc = shufflevector <4 x float> %i.ha, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hd = fadd float %.sroa.42.0, 1.000000e+00
  %i.he = fsub float %i.hd, %.sroa.055.0
  %i.hf = fsub float %i.he, %.sroa.22.0
  %i.hg = tail call noundef float @sqrtf(float noundef %i.hf) #31
  %i.hh = fmul float %i.hg, 2.000000e+00
  %i.hi = extractelement <2 x float> %i.ew, i64 0
  %i.hj = fadd float %.sroa.1260.0, %i.hi
  %i.hk = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hl = extractelement <2 x float> %i.ew, i64 1
  %i.hm = fsub float %i.hl, %.sroa.17.0
  %i.hn = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hm, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hk, i64 2 ; 2 uses
  %i.hq = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hs = fdiv <4 x float> %i.hp, %i.hr
  %i.ht = fmul <4 x float> %i.hp, %i.hr
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hv = phi <4 x float> [ %i.fp, %bb.d ], [ %i.gj, %bb.f ], [ %i.hc, %bb.h ], [ %i.hu, %bb.i ]
  store <4 x float> %i.hv, ptr %2, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare i32 @aiGetVersionMajor() local_unnamed_addr #5

declare i32 @aiGetVersionMinor() local_unnamed_addr #5

declare i32 @aiGetVersionRevision() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.v, align 8
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8
  %i.ar = load i64, ptr %i.al, align 8
  store i64 %i.ar, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.al, ptr %i.ai, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z25ExtractTranslationSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1028
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 9 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 12 uses
  store float 0.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.a, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.a

bb.a:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i.ph = phi ptr [ %i.f, %.noexc ], [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.j = mul i32 %i.b, 3
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
          to label %.noexc48 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ; 9 uses

.noexc48:                                         ; preds = %bb.a
  store float 0.000000e+00, ptr %i.m, align 4
  %i.n = add nsw i64 %i.k, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i.i.i45 = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i45, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44, %.noexc48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = fpext float %4 to double                 ; 2 uses
  %i.t = add i32 %i.b, -1431655766
  %or.cond = icmp ult i32 %i.t, -1431655757
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = shl nuw nsw i64 %i.c, 2
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %i.w = mul nuw nsw i64 %i.c, 24
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %bound0 = icmp ult ptr %i.e, %i.y
  %bound1 = icmp ult ptr %i.r, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %6 = add nsw i64 %i.c, -1
  %n.vec = and i64 %6, -2                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load double, ptr %i.z, align 8, !alias.scope !232
  %i.ad = load double, ptr %i.ab, align 8, !alias.scope !232
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fdiv <2 x double> %i.af, %broadcast.splat
  %i.ah = fptrunc <2 x double> %i.ag to <2 x float>
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ah, ptr %i.ai, align 4, !alias.scope !233, !noalias !232
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.al = load float, ptr %i.aj, align 8, !alias.scope !232
  %i.am = load float, ptr %i.ak, align 8, !alias.scope !232
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 1
  %i.ap = mul i64 %index, 3
  %i.aq = and i64 %i.ap, 4294967294
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.au = load float, ptr %i.as, align 4, !alias.scope !232
  %i.av = load float, ptr %i.at, align 4, !alias.scope !232
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ba = load float, ptr %i.ay, align 8, !alias.scope !232
  %i.bb = load float, ptr %i.az, align 8, !alias.scope !232
  %i.bc = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.bb, i64 1
  %i.be = shufflevector <2 x float> %i.ao, <2 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.ar, align 4, !alias.scope !234
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !230

._crit_edge:                                      ; preds = %scalar.ph
  %i.bg = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bh = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bk, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bn = load double, ptr %i.bm, align 8
  %i.bo = fdiv double %i.bn, %i.s
  %i.bp = fptrunc double %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bp, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load float, ptr %i.br, align 8
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = mul i32 %i.bt, 3                        ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bv
  store float %i.bs, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = add i32 %i.bu, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ca
  store float %i.by, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cd = load float, ptr %i.cc, align 8
  %i.ce = add i32 %i.bu, 2
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !231

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ch = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ch, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.ci, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cj, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.ck, %.thread ], [ %i.cl, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bh, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cm, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cp) #32
  resume { ptr, i32 } %.pn.pn77
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10AddSamplerRN10glTFCommon3RefIN5glTF29AnimationEEERNS0_INS1_4NodeEEERNS2_7SamplerENS1_13AnimationPathE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 40
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.sroa.618.8.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.8.copyload = load i32, ptr %.sroa.8.8..sroa_idx, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 288 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 296 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.p, ptr %i.s, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.618.8.copyload, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %.sroa.8.8.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %3, ptr %.sroa.925.0..sroa_idx, align 8
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.r, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775776
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ac = ashr exact i64 %i.aa, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 288230376151711743)
  %i.ag = select i1 %i.ae, i64 288230376151711743, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 4 uses
  store i32 %i.p, ptr %i.aj, align 8
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.618.8.copyload, ptr %.sroa.618.0..sroa_idx19, align 8
  %.sroa.8.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %.sroa.8.8.copyload, ptr %.sroa.8.0..sroa_idx21, align 8
  %.sroa.925.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %3, ptr %.sroa.925.0..sroa_idx26, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !243
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !238

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.an = load ptr, ptr %i.t, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ap) #32
  br label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ai, ptr %i.q, align 8
  store ptr %i.am, ptr %i.r, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.aq, ptr %i.t, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ar = load ptr, ptr %0, align 8
  %i.as = load i32, ptr %i.b, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 264 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 272 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 280 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not.i5 = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.bc = load ptr, ptr %i.ay, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr %i.bd, ptr %i.ay, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit
  %i.be = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.h, label %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bj = sdiv exact i64 %i.bh, 40                ; 3 uses
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i6, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 230584300921369395)
  %i.bn = select i1 %i.bl, i64 230584300921369395, i64 %i.bm ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.bo = mul nuw nsw i64 %i.bn, 40
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #33 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %.not10.i.i.i.i.i8 = icmp eq ptr %i.be, %i.az
  br i1 %.not10.i.i.i.i.i8, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i9
  %.012.i.i.i.i.i10 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i9 ], [ %i.bp, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i11 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i9 ], [ %i.be, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i10, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i11, i64 40, i1 false), !alias.scope !244
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i11, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i10, i64 40 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.br, %i.az
  br i1 %.not.i.i.i.i.i12, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !242

_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i13 = phi ptr [ %i.bp, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bs, %.lr.ph.i.i.i.i.i9 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i13, i64 40
  %.not.i23.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i14, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.bu = load ptr, ptr %i.ba, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bw) #32
  br label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bp, ptr %i.ax, align 8
  store ptr %i.bt, ptr %i.ay, align 8
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bx, ptr %i.ba, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z22ExtractRotationSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1040
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 11 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 13 uses
  store float 0.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc ]
  %i.j = shl i32 %i.b, 2                          ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.not.i.i.i.i45 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i45, label %.lr.ph, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
          to label %.noexc50 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ; 4 uses

.noexc50:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  store float 0.000000e+00, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i.i.i47 = add nsw i64 %i.l, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i47, i1 false)
  %i.p = ptrtoint ptr %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.noexc50, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.sroa.059.0.ph = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.m, %.noexc50 ] ; 14 uses
  %.sroa.14.0.ph = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.p, %.noexc50 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1048
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = fpext float %4 to double                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %i.c, 4294967295
  %i.u = and i64 %i.t, 3221225472
  %mul.overflow.not = icmp eq i64 %i.u, 0
  br i1 %mul.overflow.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.v = shl nuw nsw i64 %i.c, 2
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v     ; 2 uses
  %i.x = shl nuw nsw i64 %i.c, 5
  %i.y = getelementptr i8, ptr %i.r, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8       ; 2 uses
  %i.aa = shl nuw nsw i64 %i.c, 4
  %i.ab = getelementptr i8, ptr %.sroa.059.0.ph, i64 %i.aa ; 2 uses
  %bound0 = icmp ult ptr %i.e, %i.z
  %bound1 = icmp ult ptr %i.r, %i.w
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %i.e, %i.ab
  %bound1117 = icmp ult ptr %.sroa.059.0.ph, %i.w
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult ptr %i.r, %i.ab
  %bound1120 = icmp ult ptr %.sroa.059.0.ph, %i.z
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  br i1 %conflict.rdx122, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %6 = add nsw i64 %i.c, -1
  %n.vec = and i64 %6, -2                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load double, ptr %i.ac, align 8, !alias.scope !251, !noalias !252
  %i.ag = load double, ptr %i.ae, align 8, !alias.scope !251, !noalias !252
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = fdiv <2 x double> %i.ai, %broadcast.splat
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ak, ptr %i.al, align 4, !alias.scope !253, !noalias !254
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.aq = load float, ptr %i.ao, align 4, !alias.scope !251, !noalias !252
  %i.ar = load float, ptr %i.ap, align 4, !alias.scope !251, !noalias !252
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = shl i64 %index, 2
  %i.av = and i64 %i.au, 4294967288
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.az = load float, ptr %i.ax, align 8, !alias.scope !251, !noalias !252
  %i.ba = load float, ptr %i.ay, align 8, !alias.scope !251, !noalias !252
  %i.bb = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.bf = load float, ptr %i.bd, align 4, !alias.scope !251, !noalias !252
  %i.bg = load float, ptr %i.be, align 4, !alias.scope !251, !noalias !252
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bg, i64 1
  %i.bj = load float, ptr %i.am, align 8, !alias.scope !251, !noalias !252
  %i.bk = load float, ptr %i.an, align 8, !alias.scope !251, !noalias !252
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = shufflevector <2 x float> %i.at, <2 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aw, align 4, !alias.scope !252
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !249

._crit_edge:                                      ; preds = %scalar.ph
  %i.bq = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.br = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bu, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv ; 5 uses
  %i.bx = load double, ptr %i.bw, align 8
  %i.by = fdiv double %i.bx, %i.s
  %i.bz = fptrunc double %i.by to float
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = trunc nuw i64 %indvars.iv to i32
  %i.cf = shl i32 %i.ce, 2                        ; 4 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cg
  store float %i.cd, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cj = load float, ptr %i.ci, align 8
  %i.ck = or disjoint i32 %i.cf, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cl
  store float %i.cj, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = or disjoint i32 %i.cf, 2
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cq
  store float %i.co, ptr %i.cr, align 4
  %i.cs = load float, ptr %i.cb, align 8
  %i.ct = or disjoint i32 %i.cf, 3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cu
  store float %i.cs, ptr %i.cv, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !250

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bv, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.cw = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %.sroa.059.0.ph, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit54 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit54:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cw, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cy, align 8
  %i.cz = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.da = sub i64 %.sroa.14.0.ph, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.da) #32
  %.idx = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.059.0.ph, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit58, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pn75 = phi { ptr, i32 } [ %i.db, %.thread ], [ %i.dc, %bb.b ]
  %i.dd = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.de = sub i64 %.sroa.14.0.ph, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.de) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge: ; preds = %bb.a
  %i.df = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit58:                  ; preds = %bb.c, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.br, %bb.b ], [ %i.br, %bb.c ]
  %.pn.pn79 = phi { ptr, i32 } [ %i.df, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.dc, %bb.b ], [ %.pn75, %bb.c ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.di) #32
  resume { ptr, i32 } %.pn.pn79
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z19ExtractScaleSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 9 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 12 uses
  store float 0.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.a, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.a

bb.a:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i.ph = phi ptr [ %i.f, %.noexc ], [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.j = mul i32 %i.b, 3
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
          to label %.noexc48 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ; 9 uses

.noexc48:                                         ; preds = %bb.a
  store float 0.000000e+00, ptr %i.m, align 4
  %i.n = add nsw i64 %i.k, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i.i.i45 = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i45, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44, %.noexc48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1064
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = fpext float %4 to double                 ; 2 uses
  %i.t = add i32 %i.b, -1431655766
  %or.cond = icmp ult i32 %i.t, -1431655757
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = shl nuw nsw i64 %i.c, 2
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %i.w = mul nuw nsw i64 %i.c, 24
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %bound0 = icmp ult ptr %i.e, %i.y
  %bound1 = icmp ult ptr %i.r, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %6 = add nsw i64 %i.c, -1
  %n.vec = and i64 %6, -2                         ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load double, ptr %i.z, align 8, !alias.scope !261
  %i.ad = load double, ptr %i.ab, align 8, !alias.scope !261
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fdiv <2 x double> %i.af, %broadcast.splat
  %i.ah = fptrunc <2 x double> %i.ag to <2 x float>
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ah, ptr %i.ai, align 4, !alias.scope !262, !noalias !261
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.al = load float, ptr %i.aj, align 8, !alias.scope !261
  %i.am = load float, ptr %i.ak, align 8, !alias.scope !261
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 1
  %i.ap = mul i64 %index, 3
  %i.aq = and i64 %i.ap, 4294967294
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.au = load float, ptr %i.as, align 4, !alias.scope !261
  %i.av = load float, ptr %i.at, align 4, !alias.scope !261
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ba = load float, ptr %i.ay, align 8, !alias.scope !261
  %i.bb = load float, ptr %i.az, align 8, !alias.scope !261
  %i.bc = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.bb, i64 1
  %i.be = shufflevector <2 x float> %i.ao, <2 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.ar, align 4, !alias.scope !263
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !259

._crit_edge:                                      ; preds = %scalar.ph
  %i.bg = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bh = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bk, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bn = load double, ptr %i.bm, align 8
  %i.bo = fdiv double %i.bn, %i.s
  %i.bp = fptrunc double %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bp, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load float, ptr %i.br, align 8
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = mul i32 %i.bt, 3                        ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bv
  store float %i.bs, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = add i32 %i.bu, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ca
  store float %i.by, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cd = load float, ptr %i.cc, align 8
  %i.ce = add i32 %i.bu, 2
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !260

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ch = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ch, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.ci, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cj, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.ck, %.thread ], [ %i.cl, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bh, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cm, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cp) #32
  resume { ptr, i32 } %.pn.pn77
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5glTF26Buffer9IsSpecialEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !264
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !264
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}
end_hunk_0
