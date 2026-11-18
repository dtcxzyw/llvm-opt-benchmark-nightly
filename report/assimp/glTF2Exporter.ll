Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL10AddSamplerRN10glTFCommon3RefIN5glTF29AnimationEEERNS0_INS1_4NodeEEERNS2_7SamplerENS1_13AnimationPathE:bb.a
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !665
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5glTF29Animation7ChannelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !659

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i10, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i11, i64 40, i1 false), !alias.scope !666
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i11, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i10, i64 40 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.br, %i.az
  br i1 %.not.i.i.i.i.i12, label %_ZNSt6vectorIN5glTF29Animation7SamplerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !663

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
define linkonce_odr hidden void @_Z22ExtractRotationSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !guid !673 {
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
  %6 = shl nuw nsw i64 %i.c, 4
  %7 = getelementptr i8, ptr %.sroa.059.0.ph, i64 %6 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %i.z
  %bound1 = icmp ult ptr %i.r, %i.w
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %i.e, %7
  %bound1114 = icmp ult ptr %.sroa.059.0.ph, %i.w
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %bound0116 = icmp ult ptr %i.r, %7
  %bound1117 = icmp ult ptr %.sroa.059.0.ph, %i.z
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = add nsw i64 %i.c, -1
  %n.vec = and i64 %i.aa, -2                      ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %index ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load double, ptr %i.ab, align 8, !alias.scope !674, !noalias !675
  %i.af = load double, ptr %i.ad, align 8, !alias.scope !674, !noalias !675
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = fdiv <2 x double> %i.ah, %broadcast.splat
  %i.aj = fptrunc <2 x double> %i.ai to <2 x float>
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> %i.aj, ptr %i.ak, align 4, !alias.scope !676, !noalias !677
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.ap = load float, ptr %i.an, align 4, !alias.scope !674, !noalias !675
  %i.aq = load float, ptr %i.ao, align 4, !alias.scope !674, !noalias !675
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = shl i64 %index, 2
  %i.au = and i64 %i.at, 4294967288
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ay = load float, ptr %i.aw, align 8, !alias.scope !674, !noalias !675
  %i.az = load float, ptr %i.ax, align 8, !alias.scope !674, !noalias !675
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.az, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.be = load float, ptr %i.bc, align 4, !alias.scope !674, !noalias !675
  %i.bf = load float, ptr %i.bd, align 4, !alias.scope !674, !noalias !675
  %i.bg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bf, i64 1
  %i.bi = load float, ptr %i.al, align 8, !alias.scope !674, !noalias !675
  %i.bj = load float, ptr %i.am, align 8, !alias.scope !674, !noalias !675
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = shufflevector <2 x float> %i.as, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.av, align 4, !alias.scope !675
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %scalar.ph.preheader, label %vector.body, !llvm.loop !671

._crit_edge:                                      ; preds = %scalar.ph
  %i.bp = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bq = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.bt, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit unwind label %bb.b ; 2 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv ; 5 uses
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = fdiv double %i.bw, %i.s
  %i.by = fptrunc double %i.bx to float
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.by, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = trunc nuw i64 %indvars.iv to i32
  %i.ce = shl i32 %i.cd, 2                        ; 4 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cf
  store float %i.cc, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ci = load float, ptr %i.ch, align 8
  %i.cj = or disjoint i32 %i.ce, 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.ck
  store float %i.ci, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = or disjoint i32 %i.ce, 2
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.cp
  store float %i.cn, ptr %i.cq, align 4
  %i.cr = load float, ptr %i.ca, align 8
  %i.cs = or disjoint i32 %i.ce, 3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.059.0.ph, i64 %i.ct
  store float %i.cr, ptr %i.cu, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !672

_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.bu, 1
  store ptr %.fca.0.extract2, ptr %5, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.57.0..sroa_idx, align 8
  %i.cv = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.c, ptr noundef nonnull %.sroa.059.0.ph, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit54 unwind label %.thread ; 2 uses

.thread:                                          ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_ZNSt6vectorIfSaIfEED2Ev.exit54:                  ; preds = %_Z18GetSamplerInputRefRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEERSt6vectorIfSaIfEE.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cv, 1
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

bb.b:                                             ; preds = %._crit_edge
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.059.0.ph, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit58, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.dc = phi { ptr, i32 } [ %i.cw, %.thread ], [ %i.db, %bb.b ]
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
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.bq, %bb.b ], [ %i.bq, %bb.c ]
  %.pn.pn76 = phi { ptr, i32 } [ %i.df, %_ZNSt6vectorIfSaIfEED2Ev.exit56._ZNSt6vectorIfSaIfEED2Ev.exit56.thread_crit_edge ], [ %i.db, %bb.b ], [ %i.dc, %bb.c ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.di) #32
  resume { ptr, i32 } %.pn.pn76
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z19ExtractScaleSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !guid !684 {
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

end_hunk_0
