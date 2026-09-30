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
  %i.c = zext i32 %i.b to i64                     ; 12 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 13 uses
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
          to label %.noexc48 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ; 12 uses

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
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = fpext float %4 to double                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %6 = add nsw i64 %i.c, -1                       ; 2 uses
  %7 = trunc i64 %6 to i32
  %8 = icmp ugt i32 %7, 1431655764
  %9 = icmp ugt i64 %6, 4294967295
  %10 = or i1 %8, %9
  br i1 %10, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.t = shl nuw nsw i64 %i.c, 2
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t     ; 2 uses
  %i.v = mul nuw nsw i64 %i.c, 24
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4       ; 2 uses
  %i.y = mul nuw nsw i64 %i.c, 12
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y     ; 2 uses
  %bound0 = icmp ult ptr %i.e, %i.x
  %bound1 = icmp ult ptr %i.r, %i.u
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %i.e, %i.z
  %bound1120 = icmp ult ptr %i.m, %i.u
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  %bound0122 = icmp ult ptr %i.r, %i.z
  %bound1123 = icmp ult ptr %i.m, %i.x
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx, %found.conflict124
  br i1 %conflict.rdx125, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load double, ptr %i.aa, align 8, !alias.scope !232, !noalias !233
  %i.ae = load double, ptr %i.ac, align 8, !alias.scope !232, !noalias !233
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fdiv <2 x double> %i.ag, %broadcast.splat
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ai, ptr %i.aj, align 4, !alias.scope !234, !noalias !235
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.am = load float, ptr %i.ak, align 8, !alias.scope !232, !noalias !233
  %i.an = load float, ptr %i.al, align 8, !alias.scope !232, !noalias !233
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.aq = mul i64 %index, 3
  %i.ar = and i64 %i.aq, 4294967294
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.av = load float, ptr %i.at, align 4, !alias.scope !232, !noalias !233
  %i.aw = load float, ptr %i.au, align 4, !alias.scope !232, !noalias !233
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bb = load float, ptr %i.az, align 8, !alias.scope !232, !noalias !233
  %i.bc = load float, ptr %i.ba, align 8, !alias.scope !232, !noalias !233
  %i.bd = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.bc, i64 1
  %i.bf = shufflevector <2 x float> %i.ap, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bf, <4 x float> %i.be, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.as, align 4, !alias.scope !233
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !230

._crit_edge:                                      ; preds = %scalar.ph
  %i.bh = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bi = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bl, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fdiv double %i.bo, %i.s
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = trunc nuw i64 %indvars.iv to i32
  %i.bv = mul i32 %i.bu, 3                        ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bw
  store float %i.bt, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = add i32 %i.bv, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ce = load float, ptr %i.cd, align 8
  %i.cf = add i32 %i.bv, 2
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cg
  store float %i.ce, ptr %i.ch, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !231

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ci = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.ck, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.cl, %.thread ], [ %i.cm, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bi, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cn, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cq) #32
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !244
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !239

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i10, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i11, i64 40, i1 false), !alias.scope !245
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i11, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i10, i64 40 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.br, %i.az
  br i1 %.not.i.i.i.i.i12, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !243

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
  %6 = add i32 %i.b, -9
  %or.cond = icmp ult i32 %6, 1073741816
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.t = shl nuw nsw i64 %i.c, 2
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t     ; 2 uses
  %i.v = shl nuw nsw i64 %i.c, 5
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %i.y = shl nuw nsw i64 %i.c, 4
  %i.z = getelementptr i8, ptr %.sroa.059.0.ph, i64 %i.y ; 2 uses
  %bound0 = icmp ult ptr %i.e, %i.x
  %bound1 = icmp ult ptr %i.r, %i.u
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %i.e, %i.z
  %bound1117 = icmp ult ptr %.sroa.059.0.ph, %i.u
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult ptr %i.r, %i.z
  %bound1120 = icmp ult ptr %.sroa.059.0.ph, %i.x
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  br i1 %conflict.rdx122, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load double, ptr %i.aa, align 8, !alias.scope !252, !noalias !253
  %i.ae = load double, ptr %i.ac, align 8, !alias.scope !252, !noalias !253
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fdiv <2 x double> %i.ag, %broadcast.splat
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ai, ptr %i.aj, align 4, !alias.scope !254, !noalias !255
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ao = load float, ptr %i.am, align 4, !alias.scope !252, !noalias !253
  %i.ap = load float, ptr %i.an, align 4, !alias.scope !252, !noalias !253
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ap, i64 1
  %i.as = shl i64 %index, 2
  %i.at = and i64 %i.as, 4294967288
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ax = load float, ptr %i.av, align 8, !alias.scope !252, !noalias !253
  %i.ay = load float, ptr %i.aw, align 8, !alias.scope !252, !noalias !253
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ay, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.bd = load float, ptr %i.bb, align 4, !alias.scope !252, !noalias !253
  %i.be = load float, ptr %i.bc, align 4, !alias.scope !252, !noalias !253
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = load float, ptr %i.ak, align 8, !alias.scope !252, !noalias !253
  %i.bi = load float, ptr %i.al, align 8, !alias.scope !252, !noalias !253
  %i.bj = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bi, i64 1
  %i.bl = shufflevector <2 x float> %i.ar, <2 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.au, align 4, !alias.scope !253
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !250

._crit_edge:                                      ; preds = %scalar.ph
  %i.bo = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bp = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bs, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv ; 5 uses
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fdiv double %i.bv, %i.s
  %i.bx = fptrunc double %i.bw to float
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = trunc nuw i64 %indvars.iv to i32
  %i.cd = shl i32 %i.cc, 2                        ; 4 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.ce
  store float %i.cb, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ch = load float, ptr %i.cg, align 8
  %i.ci = or disjoint i32 %i.cd, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cj
  store float %i.ch, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = or disjoint i32 %i.cd, 2
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.co
  store float %i.cm, ptr %i.cp, align 4
  %i.cq = load float, ptr %i.bz, align 8
  %i.cr = or disjoint i32 %i.cd, 3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cs
  store float %i.cq, ptr %i.ct, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !251

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bt, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.cu = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %.sroa.059.0.ph, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit54 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit54:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cu, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cv, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cw, align 8
  %i.cx = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.cy = sub i64 %.sroa.14.0.ph, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.cy) #32
  %.idx = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.059.0.ph, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit58, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pn75 = phi { ptr, i32 } [ %i.cz, %.thread ], [ %i.da, %bb.b ]
  %i.db = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.dc = sub i64 %.sroa.14.0.ph, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.dc) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge: ; preds = %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit58:                  ; preds = %bb.c, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.bp, %bb.b ], [ %i.bp, %bb.c ]
  %.pn.pn79 = phi { ptr, i32 } [ %i.dd, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.da, %bb.b ], [ %.pn75, %bb.c ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.dg) #32
  resume { ptr, i32 } %.pn.pn79
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z19ExtractScaleSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 12 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 13 uses
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
          to label %.noexc48 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ; 12 uses

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
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = fpext float %4 to double                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %6 = add nsw i64 %i.c, -1                       ; 2 uses
  %7 = trunc i64 %6 to i32
  %8 = icmp ugt i32 %7, 1431655764
  %9 = icmp ugt i64 %6, 4294967295
  %10 = or i1 %8, %9
  br i1 %10, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.t = shl nuw nsw i64 %i.c, 2
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t     ; 2 uses
  %i.v = mul nuw nsw i64 %i.c, 24
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4       ; 2 uses
  %i.y = mul nuw nsw i64 %i.c, 12
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y     ; 2 uses
  %bound0 = icmp ult ptr %i.e, %i.x
  %bound1 = icmp ult ptr %i.r, %i.u
  %found.conflict = and i1 %bound0, %bound1
  %bound0119 = icmp ult ptr %i.e, %i.z
  %bound1120 = icmp ult ptr %i.m, %i.u
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx = or i1 %found.conflict, %found.conflict121
  %bound0122 = icmp ult ptr %i.r, %i.z
  %bound1123 = icmp ult ptr %i.m, %i.x
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx, %found.conflict124
  br i1 %conflict.rdx125, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load double, ptr %i.aa, align 8, !alias.scope !262, !noalias !263
  %i.ae = load double, ptr %i.ac, align 8, !alias.scope !262, !noalias !263
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fdiv <2 x double> %i.ag, %broadcast.splat
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ai, ptr %i.aj, align 4, !alias.scope !264, !noalias !265
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.am = load float, ptr %i.ak, align 8, !alias.scope !262, !noalias !263
  %i.an = load float, ptr %i.al, align 8, !alias.scope !262, !noalias !263
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.aq = mul i64 %index, 3
  %i.ar = and i64 %i.aq, 4294967294
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.av = load float, ptr %i.at, align 4, !alias.scope !262, !noalias !263
  %i.aw = load float, ptr %i.au, align 4, !alias.scope !262, !noalias !263
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bb = load float, ptr %i.az, align 8, !alias.scope !262, !noalias !263
  %i.bc = load float, ptr %i.ba, align 8, !alias.scope !262, !noalias !263
  %i.bd = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.bc, i64 1
  %i.bf = shufflevector <2 x float> %i.ap, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bf, <4 x float> %i.be, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.as, align 4, !alias.scope !263
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !260

._crit_edge:                                      ; preds = %scalar.ph
  %i.bh = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bi = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bl, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fdiv double %i.bo, %i.s
  %i.bq = fptrunc double %i.bp to float
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = trunc nuw i64 %indvars.iv to i32
  %i.bv = mul i32 %i.bu, 3                        ; 3 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bw
  store float %i.bt, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = add i32 %i.bv, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ce = load float, ptr %i.cd, align 8
  %i.cf = add i32 %i.bv, 2
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cg
  store float %i.ce, ptr %i.ch, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !261

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ci = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.ck, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.cl, %.thread ], [ %i.cm, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bi, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cn, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cq) #32
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
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !266
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
end_hunk_0
