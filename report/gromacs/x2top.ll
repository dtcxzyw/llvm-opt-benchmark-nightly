Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/x2top?download=true
inline.NumInlined: 713
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN17InteractionOfTypeD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_Z7nm2typeiP9t_nm2typeP7t_atomsP22PreprocessingAtomTypesPiP18InteractionsOfType(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK22PreprocessingAtomTypes4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2akEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef float @_Z10bond_anglePKfS0_S0_PK5t_pbcPfS4_S4_PiS5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105), i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(105) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !210

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !209
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !166
  %i.n = load ptr, ptr %1, align 8, !tbaa !211    ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !211
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !212

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.n, align 4, !tbaa !9
  store i32 %i.u, ptr %i.j, align 4, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  store ptr %i.v, ptr %i.k, align 8, !tbaa !209
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !tbaa.struct !213
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !143
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %i.y, align 8, !tbaa !124
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !143
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ah = phi ptr [ %i.af, %.noexc ], [ %i.aa, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !64
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !64
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !62
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !214, !range !104, !noundef !105
  store i8 %i.ap, ptr %i.an, align 8, !tbaa !214
  ret void

bb.j:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %0, align 8, !tbaa !165   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !166
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.aq
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2alEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare noundef float @_Z9dih_anglePKfS0_S0_S0_PK5t_pbcPfS4_S4_S4_S4_PiS5_S5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18lo_set_force_constP18InteractionsOfTypePfibbb(ptr %.0.val, ptr nofree readnone captures(address) %.8.val, ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 2, 4) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %5 = alloca %"struct.std::array", align 16      ; 7 uses
  %6 = alloca %class.InteractionOfType, align 16  ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %.not12 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.m = zext nneg i32 %1 to i64                  ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.m
  %trip.count.minus.136 = add nsw i64 %i.m, -1
  %broadcast.splatinsert37 = insertelement <4 x i64> poison, i64 %trip.count.minus.136, i64 0
  %broadcast.splat38 = shufflevector <4 x i64> %broadcast.splatinsert37, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.n = icmp samesign uge <4 x i64> %broadcast.splat38, <i64 0, i64 1, i64 2, i64 3>
  %trip.count.minus.1 = add nsw i64 %i.m, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.o = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.06.013 = phi ptr [ %.0.val, %.lr.ph ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 15 uses
  br i1 %4, label %bb.c, label %vector.body39

vector.body39:                                    ; preds = %bb.b
  call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float -4.092030e+05), ptr align 4 %0, <4 x i1> %i.n), !tbaa !70
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c0Ev(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.06.013)
  %i.q = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = fpext float %i.q to double
  %i.s = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, double noundef %i.r) #21 ; 0 uses
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.u = load double, ptr %i.a, align 8, !tbaa !162
  %i.v = fptrunc double %i.u to float
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi float [ %i.v, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  store float %storemerge, ptr %0, align 4, !tbaa !70
  br i1 %3, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = load float, ptr %i.c, align 4, !tbaa !70
  %i.x = fmul float %storemerge, %i.w
  %i.y = fadd float %i.x, 3.600000e+03
  %i.z = fptosi float %i.y to i32
  %i.aa = srem i32 %i.z, 360                      ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 180
  %i.ac = select i1 %i.ab, i32 -180, i32 180
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = sitofp i32 %i.ad to float
  store float %i.ae, ptr %0, align 4, !tbaa !70
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body39, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %0, <4 x i1> %i.o, <4 x float> poison), !tbaa !70 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %wide.masked.load, ptr align 16 %5, <4 x i1> %i.o), !tbaa !70
  call void @llvm.masked.store.v4f32.p0(<4 x float> %wide.masked.load, ptr align 4 %invariant.gep, <4 x i1> %i.o), !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.af = load ptr, ptr %.sroa.06.013, align 8, !tbaa !165 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !209
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.e, ptr %7, align 8, !tbaa !59
  store i64 0, ptr %i.f, align 8, !tbaa !62
  store i8 0, ptr %i.e, align 8, !tbaa !64
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %6, ptr %i.af, ptr %i.al, ptr nonnull %5, ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.loopexit
  %i.am = load ptr, ptr %.sroa.06.013, align 8, !tbaa !165 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !166
  %i.ap = load <2 x ptr>, ptr %6, align 16, !tbaa !211
  store <2 x ptr> %i.ap, ptr %.sroa.06.013, align 8, !tbaa !211
  %i.aq = load ptr, ptr %i.g, align 16, !tbaa !166
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !166
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.at) #24
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !tbaa.struct !213
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 72 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !124 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 88 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !124 ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.j                 ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.ba, label %bb.i, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.ba, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bb = load i64, ptr %i.k, align 16, !tbaa !62 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %.not21.i.i = icmp eq ptr %6, %.sroa.06.013
  br i1 %.not21.i.i, label %_ZN17InteractionOfTypeaSEOS_.exit, label %bb.j, !prof !210

bb.j:                                             ; preds = %bb.i
  switch i64 %i.bb, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !64
  store i8 %i.bd, ptr %i.aw, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.be = load i64, ptr %i.k, align 16, !tbaa !62 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 80
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !62
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !64
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !124
  br label %_ZN17InteractionOfTypeaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 80
  store ptr %i.az, ptr %i.av, align 8, !tbaa !124
  %i.bj = load <2 x i64>, ptr %i.k, align 16, !tbaa !64
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !tbaa !64
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !64
  store ptr %i.az, ptr %i.av, align 8, !tbaa !124
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 80
  %i.bm = load <2 x i64>, ptr %i.k, align 16, !tbaa !64
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !124
  store i64 %i.bk, ptr %i.j, align 8, !tbaa !64
  br label %_ZN17InteractionOfTypeaSEOS_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.j, ptr %i.i, align 8, !tbaa !124
  br label %_ZN17InteractionOfTypeaSEOS_.exit

_ZN17InteractionOfTypeaSEOS_.exit:                ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %i.bn = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.aw, %bb.m ], [ %i.j, %bb.n ], [ %i.az, %bb.i ]
  store i64 0, ptr %i.k, align 16, !tbaa !62
  store i8 0, ptr %i.bn, align 1, !tbaa !64
  %i.bo = load i8, ptr %i.l, align 8, !tbaa !214, !range !104, !noundef !105
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 104
  store i8 %i.bo, ptr %i.bp, align 8, !tbaa !214
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !124 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.j
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN17InteractionOfTypeaSEOS_.exit
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !64
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN17InteractionOfTypeaSEOS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bu = load ptr, ptr %6, align 16, !tbaa !165  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bv = load ptr, ptr %i.g, align 16, !tbaa !166
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #24
  br label %_ZN17InteractionOfTypeD2Ev.exit

_ZN17InteractionOfTypeD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.o
  %i.bz = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.e
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN17InteractionOfTypeD2Ev.exit
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !64
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17InteractionOfTypeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.cd, %.8.val
  br i1 %.not, label %._crit_edge, label %bb.b

bb.p:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.e
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.p
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !64
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.ce
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c0Ev(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

declare noundef zeroext i1 @_Z6is_intd(double noundef) local_unnamed_addr #3

declare noundef ptr @_Z13gmx_fio_fopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::optional.110") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL8print_plP8_IO_FILERKN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS3_95EEES3_PKcPPPc(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(21280) %1, i32 noundef range(i32 0, 25) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #16 {
bb.a:
end_hunk_0
