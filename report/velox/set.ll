inline.NumInlined: 715
inline.NumDeleted: 360
begin_hunk_0_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEElSC_NS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_SP_T1_T2_":bb.a

.thread.i.i18.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !37
  store i64 %.pre53, ptr %i.eh, align 8, !tbaa !58
  %i.ei = load i64, ptr %i.cc, align 8, !tbaa !41
  store i64 %i.ei, ptr %i.dx, align 8, !tbaa !41
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11.i
  %i.ej = load i64, ptr %i.dx, align 8, !tbaa !41
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %.pre53, ptr %i.ek, align 8, !tbaa !58
  %i.el = load i64, ptr %i.cc, align 8, !tbaa !41
  store i64 %i.el, ptr %i.dx, align 8, !tbaa !41
  %.not.i.i13.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i13.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i
  store ptr %i.dw, ptr %4, align 8, !tbaa !37
  store i64 %i.ej, ptr %i.cc, align 8, !tbaa !41
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i, %.thread.i.i18.i
  store ptr %i.cc, ptr %4, align 8, !tbaa !37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i, %bb.y
  %i.em = phi ptr [ %i.dw, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.dz, %bb.y ], [ %.pre.i.i16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i ]
  store i64 0, ptr %i.cn, align 8, !tbaa !58
  store i8 0, ptr %i.em, align 1, !tbaa !41
  %i.en = load ptr, ptr %i.co, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !45
  %i.ep = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cc
  br i1 %i.eq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ae
  %i.er = load i64, ptr %i.cc, align 8, !tbaa !41
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #21
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58   ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !37
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !58
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !58
  store i64 0, ptr %i.l, align 8, !tbaa !58
  store i8 0, ptr %.pre52, align 1, !tbaa !41
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !37
  %.pre = load i64, ptr %i.f, align 8, !tbaa !58
  store i64 %.pre, ptr %i.l, align 8, !tbaa !58
  store i64 0, ptr %i.f, align 8, !tbaa !58
  store i8 0, ptr %.pre50, align 1, !tbaa !41
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !tbaa !41
  %i.t = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.t, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !37
  store ptr %i.j, ptr %1, align 8, !tbaa !37
  store i64 %i.s, ptr %i.d, align 8, !tbaa !41
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.u = load i64, ptr %i.d, align 8, !tbaa !41
  %i.v = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !37
  store ptr %i.d, ptr %0, align 8, !tbaa !37
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !37
  store ptr %i.c, ptr %1, align 8, !tbaa !37
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !41
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.u, ptr %i.w, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !58
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !58
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.021, %1
  br i1 %i.b, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not21.i.i = icmp eq ptr %2, %0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.023 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.023, %bb.q ] ; 4 uses
  %i.j = getelementptr i8, ptr %.pn22, i64 48     ; 2 uses
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !58 ; 5 uses
  %.val3.i = load i64, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val3.i, i64 %.val1.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %.val2.i = load ptr, ptr %0, align 8
  %.val.i = load ptr, ptr %.sroa.0.023, align 8
  %i.l = call i32 @memcmp(ptr noundef readonly %.val.i, ptr noundef readonly %.val2.i, i64 noundef %.sroa.speculated.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.m = sub i64 %.val1.i, %.val3.i
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.n, label %bb.c, label %bb.p

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.d, ptr %2, align 8, !tbaa !67
  %i.o = load ptr, ptr %.sroa.0.023, align 8, !tbaa !37 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn22, i64 56 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %.val1.i, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %.val1.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.s, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEC2EOS9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.o, ptr %2, align 8, !tbaa !37
  %i.t = load i64, ptr %i.p, align 8, !tbaa !41
  store i64 %i.t, ptr %i.d, align 8, !tbaa !41
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEC2EOS9_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEC2EOS9_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store i64 %.val1.i, ptr %i.e, align 8, !tbaa !58
  store ptr %i.p, ptr %.sroa.0.023, align 8, !tbaa !37
  store i64 0, ptr %i.j, align 8, !tbaa !58
  store i8 0, ptr %i.p, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %.pn22, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  store ptr %i.v, ptr %i.f, align 8, !tbaa !45
  %i.w = ptrtoint ptr %.sroa.0.023 to i64
  %i.x = sub i64 %i.w, %i.g                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEC2EOS9_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pn22, i64 80
  %i.aa = udiv exact i64 %i.x, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %.sroa.0.023, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !41
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !58
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !41
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !37
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !58
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !41
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !41
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !41
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !37
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !58
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !41
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !41
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.bb, align 8, !tbaa !58
  store i8 0, ptr %i.ba, align 1, !tbaa !41
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !65
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !45
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEC2EOS9_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !37    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  %i.bj = load ptr, ptr %2, align 8, !tbaa !37    ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.d                 ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.loopexit
  br i1 %i.bk, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !58  ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit, label %bb.k, !prof !59

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bl, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !41
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  store i64 %i.bo, ptr %i.c, align 8, !tbaa !58
  %i.bp = load ptr, ptr %0, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !41
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  store ptr %i.bj, ptr %0, align 8, !tbaa !37
  %i.br = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  store <2 x i64> %i.br, ptr %i.c, align 8, !tbaa !41
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !41
  store ptr %i.bj, ptr %0, align 8, !tbaa !37
  %i.bt = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  store <2 x i64> %i.bt, ptr %i.c, align 8, !tbaa !41
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !37
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !41
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.n, %bb.o
  %i.bu = phi ptr [ %i.bh, %bb.n ], [ %i.d, %bb.o ], [ %i.bj, %bb.j ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !58
  store i8 0, ptr %i.bu, align 1, !tbaa !41
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !65
  store ptr %i.bv, ptr %i.i, align 8, !tbaa !45
  %i.bw = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.d
  br i1 %i.bx, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit
  %i.by = load i64, ptr %i.d, align 8, !tbaa !41
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #21
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.q

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops14_Val_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.023)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re26RegexpEED2Ev.exit, %bb.p
end_hunk_0
