inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.gs = fsub float %i.gr, %.sroa.22.0
  %i.gt = tail call noundef float @sqrtf(float noundef %i.gs) #31
  %i.gu = fmul float %i.gt, 2.000000e+00
  %i.gv = fadd float %.sroa.1260.0, %.sroa.32.0
  %i.gw = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gx = fsub float %.sroa.7.0, %.sroa.17.0
  %i.gy = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.gx, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 1
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 2 ; 2 uses
  %i.hb = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hd = fdiv <4 x float> %i.ha, %i.hc
  %i.he = fmul <4 x float> %i.ha, %i.hc
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hg = phi <4 x float> [ %i.fg, %bb.d ], [ %i.fy, %bb.f ], [ %i.gp, %bb.h ], [ %i.hf, %bb.i ]
  store <4 x float> %i.hg, ptr %2, align 4
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
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.q = load i64, ptr %i.n, align 8
  %i.r = select i1 %i.o, i64 15, i64 %i.q
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.v, align 8
  br label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8
  %i.ar = load i64, ptr %i.al, align 8
  store i64 %i.ar, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.al, ptr %i.ai, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
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
  %min.iters.check = icmp ult i32 %i.b, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.t = add nsw i64 %i.c, -1                     ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp ugt i32 %i.u, 1431655764
  %i.w = icmp ugt i64 %i.t, 4294967295
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.y = shl nuw nsw i64 %i.c, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  %i.z = mul nuw nsw i64 %i.c, 24
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ab = mul nuw nsw i64 %i.c, 12
  %scevgep111 = getelementptr i8, ptr %i.m, i64 %i.ab ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep110
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %i.e, %scevgep111
  %bound1113 = icmp ult ptr %i.m, %scevgep
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %i.r, %scevgep111
  %bound1116 = icmp ult ptr %i.m, %scevgep110
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  br i1 %conflict.rdx118, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ac, align 8, !alias.scope !213, !noalias !216
  %i.ag = load double, ptr %i.ae, align 8, !alias.scope !213, !noalias !216
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = fdiv <2 x double> %i.ai, %broadcast.splat
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ak, ptr %i.al, align 4, !alias.scope !218, !noalias !220
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ao = load float, ptr %i.am, align 8, !alias.scope !213, !noalias !216
  %i.ap = load float, ptr %i.an, align 8, !alias.scope !213, !noalias !216
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ap, i64 1
  %i.as = mul i64 %index, 3
  %i.at = and i64 %i.as, 4294967294
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ax = load float, ptr %i.av, align 4, !alias.scope !213, !noalias !216
  %i.ay = load float, ptr %i.aw, align 4, !alias.scope !213, !noalias !216
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ay, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bd = load float, ptr %i.bb, align 8, !alias.scope !213, !noalias !216
  %i.be = load float, ptr %i.bc, align 8, !alias.scope !213, !noalias !216
  %i.bf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.be, i64 1
  %i.bh = shufflevector <2 x float> %i.ar, <2 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bh, <4 x float> %i.bg, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.au, align 4, !alias.scope !216
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %scalar.ph.preheader, label %vector.body, !llvm.loop !221

._crit_edge:                                      ; preds = %scalar.ph
  %i.bj = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bk = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bn, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = fdiv double %i.bq, %i.s
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load float, ptr %i.bu, align 8
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = mul i32 %i.bw, 3                        ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.by
  store float %i.bv, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = add i32 %i.bx, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cd
  store float %i.cb, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cg = load float, ptr %i.cf, align 8
  %i.ch = add i32 %i.bx, 2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ci
  store float %i.cg, ptr %i.cj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !224

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bo, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ck = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ck, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ck, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cm, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.cn, %.thread ], [ %i.co, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bk, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cp, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cs) #32
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
end_hunk_0
begin_hunk_1_@_ZL10AddSamplerRN10glTFCommon3RefIN5glTF29AnimationEEERNS0_INS1_4NodeEEERNS2_7SamplerENS1_13AnimationPathE:bb.a
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
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !225
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !229

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN5glTF29Animation7ChannelESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ai, ptr %i.q, align 8
  store ptr %i.am, ptr %i.r, align 8
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.t, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = load i32, ptr %i.b, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 264 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 272 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 280 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not.i5 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.az = load ptr, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store ptr %i.ba, ptr %i.av, align 8
  br label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE9push_backERKS2_.exit
  %i.bb = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.h, label %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
  unreachable

_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bg = sdiv exact i64 %i.be, 40                ; 3 uses
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i6, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 230584300921369395)
  %i.bk = select i1 %i.bi, i64 230584300921369395, i64 %i.bj ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #33 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %.not10.i.i.i.i.i8 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not10.i.i.i.i.i8, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i9
  %.012.i.i.i.i.i10 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i9 ], [ %i.bm, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i11 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i9 ], [ %i.bb, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i10, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i11, i64 40, i1 false), !alias.scope !230
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i11, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i10, i64 40 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bo, %i.aw
  br i1 %.not.i.i.i.i.i12, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !234

_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i13 = phi ptr [ %i.bm, %_ZNKSt6vectorIN5glTF29Animation7SamplerESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i9 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i13, i64 40
  %.not.i23.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i.i14, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #32
  br label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bm, ptr %i.au, align 8
  store ptr %i.bq, ptr %i.av, align 8
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.br, ptr %i.ax, align 8
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
  %i.t = add i32 %i.b, -7
  %or.cond = icmp ult i32 %i.t, 1073741818
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = shl nuw nsw i64 %i.c, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.u ; 2 uses
  %i.v = shl nuw nsw i64 %i.c, 5
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  %scevgep107 = getelementptr i8, ptr %i.w, i64 -8 ; 2 uses
  %i.x = shl nuw nsw i64 %i.c, 4
  %scevgep108 = getelementptr i8, ptr %.sroa.059.0.ph, i64 %i.x ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep107
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %i.e, %scevgep108
  %bound1110 = icmp ult ptr %.sroa.059.0.ph, %scevgep
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  %bound0112 = icmp ult ptr %i.r, %scevgep108
  %bound1113 = icmp ult ptr %.sroa.059.0.ph, %scevgep107
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx, %found.conflict114
  br i1 %conflict.rdx115, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load double, ptr %i.y, align 8, !alias.scope !235, !noalias !238
  %i.ac = load double, ptr %i.aa, align 8, !alias.scope !235, !noalias !238
  %i.ad = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = fdiv <2 x double> %i.ae, %broadcast.splat
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ag, ptr %i.ah, align 4, !alias.scope !240, !noalias !242
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.am = load float, ptr %i.ak, align 4, !alias.scope !235, !noalias !238
  %i.an = load float, ptr %i.al, align 4, !alias.scope !235, !noalias !238
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.aq = shl i64 %index, 2
  %i.ar = and i64 %i.aq, 4294967288
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.av = load float, ptr %i.at, align 8, !alias.scope !235, !noalias !238
  %i.aw = load float, ptr %i.au, align 8, !alias.scope !235, !noalias !238
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.aw, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.bb = load float, ptr %i.az, align 4, !alias.scope !235, !noalias !238
  %i.bc = load float, ptr %i.ba, align 4, !alias.scope !235, !noalias !238
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = load float, ptr %i.ai, align 8, !alias.scope !235, !noalias !238
  %i.bg = load float, ptr %i.aj, align 8, !alias.scope !235, !noalias !238
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bg, i64 1
  %i.bj = shufflevector <2 x float> %i.ap, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <2 x float> %i.be, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.as, align 4, !alias.scope !238
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !243

._crit_edge:                                      ; preds = %scalar.ph
  %i.bm = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bq, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv ; 5 uses
  %i.bt = load double, ptr %i.bs, align 8
  %i.bu = fdiv double %i.bt, %i.s
  %i.bv = fptrunc double %i.bu to float
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = trunc nuw i64 %indvars.iv to i32
  %i.cb = shl i32 %i.ca, 2                        ; 4 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cc
  store float %i.bz, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cf = load float, ptr %i.ce, align 8
  %i.cg = or disjoint i32 %i.cb, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.ch
  store float %i.cf, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = or disjoint i32 %i.cb, 2
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4
  %i.co = load float, ptr %i.bx, align 8
  %i.cp = or disjoint i32 %i.cb, 3
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cq
  store float %i.co, ptr %i.cr, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !244

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.br, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.cs = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %.sroa.059.0.ph, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit54 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit54:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cs, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cs, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.ct, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cu, align 8
  %i.cv = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.cw = sub i64 %.sroa.14.0.ph, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.cw) #32
  %.idx = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.059.0.ph, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit58, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pn75 = phi { ptr, i32 } [ %i.cx, %.thread ], [ %i.cy, %bb.b ]
  %i.cz = ptrtoint ptr %.sroa.059.0.ph to i64
  %i.da = sub i64 %.sroa.14.0.ph, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0.ph, i64 noundef %i.da) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge: ; preds = %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit58

_ZNSt6vectorIfSaIfEED2Ev.exit58:                  ; preds = %bb.c, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.bn, %bb.b ], [ %i.bn, %bb.c ]
  %.pn.pn79 = phi { ptr, i32 } [ %i.db, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.cy, %bb.b ], [ %.pn75, %bb.c ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.de) #32
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
  %min.iters.check = icmp ult i32 %i.b, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.t = add nsw i64 %i.c, -1                     ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp ugt i32 %i.u, 1431655764
  %i.w = icmp ugt i64 %i.t, 4294967295
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.y = shl nuw nsw i64 %i.c, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  %i.z = mul nuw nsw i64 %i.c, 24
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ab = mul nuw nsw i64 %i.c, 12
  %scevgep111 = getelementptr i8, ptr %i.m, i64 %i.ab ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep110
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %i.e, %scevgep111
  %bound1113 = icmp ult ptr %i.m, %scevgep
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %i.r, %scevgep111
  %bound1116 = icmp ult ptr %i.m, %scevgep110
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  br i1 %conflict.rdx118, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.c, -2
  %n.vec = add nsw i64 %.neg, %i.c                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ac, align 8, !alias.scope !245, !noalias !248
  %i.ag = load double, ptr %i.ae, align 8, !alias.scope !245, !noalias !248
  %i.ah = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = fdiv <2 x double> %i.ai, %broadcast.splat
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.ak, ptr %i.al, align 4, !alias.scope !250, !noalias !252
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ao = load float, ptr %i.am, align 8, !alias.scope !245, !noalias !248
  %i.ap = load float, ptr %i.an, align 8, !alias.scope !245, !noalias !248
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ap, i64 1
  %i.as = mul i64 %index, 3
  %i.at = and i64 %i.as, 4294967294
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ax = load float, ptr %i.av, align 4, !alias.scope !245, !noalias !248
  %i.ay = load float, ptr %i.aw, align 4, !alias.scope !245, !noalias !248
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ay, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bd = load float, ptr %i.bb, align 8, !alias.scope !245, !noalias !248
  %i.be = load float, ptr %i.bc, align 8, !alias.scope !245, !noalias !248
  %i.bf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.be, i64 1
  %i.bh = shufflevector <2 x float> %i.ar, <2 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bh, <4 x float> %i.bg, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.au, align 4, !alias.scope !248
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %scalar.ph.preheader, label %vector.body, !llvm.loop !253

._crit_edge:                                      ; preds = %scalar.ph
  %i.bj = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bk = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bn, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = fdiv double %i.bq, %i.s
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load float, ptr %i.bu, align 8
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = mul i32 %i.bw, 3                        ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.by
  store float %i.bv, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = add i32 %i.bx, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cd
  store float %i.cb, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cg = load float, ptr %i.cf, align 8
  %i.ch = add i32 %i.bx, 2
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ci
  store float %i.cg, ptr %i.cj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !254

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bo, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.ck = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %i.m, i32 noundef 2, i32 noundef 2, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit52 unwind label %.thread ; 2 uses

_ZNSt6vectorIfSaIfEED2Ev.exit52:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ck, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ck, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract, ptr %i.cl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.cm, align 8
  %.idx108 = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx108) #32
  %.idx109 = shl nuw nsw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.idx109) #32
  ret void

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.pn73 = phi { ptr, i32 } [ %i.cn, %.thread ], [ %i.co, %bb.b ]
  %.idx = shl nuw nsw i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge: ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit56

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %i.bk, %bb.c ]
  %.pn.pn77 = phi { ptr, i32 } [ %i.cp, %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ], [ %.pn73, %bb.c ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.cs) #32
  resume { ptr, i32 } %.pn.pn77
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5glTF26Buffer9IsSpecialEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
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
end_hunk_1
