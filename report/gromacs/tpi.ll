inline.NumInlined: 1973
inline.NumDeleted: 915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN9t_mdatomsD2Ev:bb.a
  %.not.i.i.i29 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIfSaIfEED2Ev.exit30, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit28
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !302
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit30

_ZNSt6vectorIfSaIfEED2Ev.exit30:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit28, %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !172 ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !171
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #26
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit30, %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !307 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.ee)
          to label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #28
  unreachable

_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIfSaIfEED2Ev.exit33, label %bb.w

bb.w:                                             ; preds = %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !302
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

_ZNSt6vectorIfSaIfEED2Ev.exit33:                  ; preds = %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev.exit, %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIfSaIfEED2Ev.exit35, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit33
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !302
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit35

_ZNSt6vectorIfSaIfEED2Ev.exit35:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit33, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIfSaIfEED2Ev.exit37, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit35
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !302
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit37

_ZNSt6vectorIfSaIfEED2Ev.exit37:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit35, %bb.y
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !187
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !188
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !187
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !187
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !185
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !188
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !186
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !179
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILEENK3$_0clEv", ptr noundef nonnull @.str.19, i32 noundef 430) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.g = load i32, ptr %i.f, align 4, !tbaa !180  ; 2 uses
  %.not1415 = icmp eq i32 %i.b, %i.g
  br i1 %.not1415, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %2, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.k = load i32, ptr %i.j, align 4, !tbaa !254
  %4 = sext i32 %i.b to i64                       ; 2 uses
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %5 = trunc nsw i64 %indvars.iv.next to i32
  %.not14 = icmp eq i32 %i.g, %5
  br i1 %.not14, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %4, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %6 = sub nsw i64 %indvars.iv, %4
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !253
  %i.n = and i32 %i.m, 255
  %.not = icmp eq i32 %i.n, %i.k
  br i1 %.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.23, i64 147, i64 1, ptr %3) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK3gmx21TestParticleInsertion14openOutputFileEPKcPK16gmx_output_env_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::vector.324", align 8   ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, ptr noundef nonnull align 1 dereferenceable(9) @.str.26, i64 9, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.j, align 8, !tbaa !284
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.k, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 26, ptr %i.g, align 8, !tbaa !268
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc38 unwind label %bb.g   ; 2 uses

.noexc38:                                         ; preds = %._crit_edge.i.i
  store ptr %i.m, ptr %5, align 8, !tbaa !9
  %i.n = load i64, ptr %i.g, align 8, !tbaa !268  ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.m, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, i64 26, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !284
  %i.p = load ptr, ptr %5, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.r = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2)
          to label %bb.a unwind label %bb.h       ; 3 uses

bb.a:                                             ; preds = %.noexc38
  %i.s = load ptr, ptr %5, align 8, !tbaa !9      ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.u = load i64, ptr %i.l, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.w = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.i, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab) #27
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ac = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_Z13xvgr_subtitleP8_IO_FILEPKcPK16gmx_output_env_t(ptr noundef %i.r, ptr noundef nonnull @.str.28, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 26 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA29_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, ptr noundef nonnull align 1 dereferenceable(29) @.str.29)
          to label %.noexc44 unwind label %bb.i

.noexc44:                                         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !349 ; 8 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !352
  %.not.i45 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i45, label %bb.c, label %.noexc.i.i47

.noexc.i.i47:                                     ; preds = %.noexc44
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i64 24, ptr %i.f, align 8, !tbaa !268
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc49 unwind label %bb.i   ; 2 uses

.noexc49:                                         ; preds = %.noexc.i.i47
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !9
  %i.an = load i64, ptr %i.f, align 8, !tbaa !268 ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 1 dereferenceable(25) @.str.30, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !284
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !349
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  store ptr %i.as, ptr %i.ah, align 8, !tbaa !349
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit

bb.c:                                             ; preds = %.noexc44
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA25_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(25) @.str.30)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.i

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !349
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge, %.noexc49
  %i.at = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.as, %.noexc49 ] ; 8 uses
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !352
  %.not.i51 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i51, label %bb.d, label %.noexc.i.i53

.noexc.i.i53:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 17, ptr %i.e, align 8, !tbaa !268
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc55 unwind label %bb.i   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i.i53
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !9
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !268 ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aw, ptr noundef nonnull align 1 dereferenceable(18) @.str.31, i64 17, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !284
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !349
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  store ptr %i.bc, ptr %i.ah, align 8, !tbaa !349
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.at, ptr noundef nonnull align 1 dereferenceable(18) @.str.31)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.i

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.d
  %.pre130 = load ptr, ptr %i.ah, align 8, !tbaa !349
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge, %.noexc55
end_hunk_0
begin_hunk_1_@_ZN3gmx15LegacySimulator6do_tpiEv:bb.a
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !755
  %i.to = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.62, i32 noundef %i.tl, ptr noundef %i.tn)
          to label %bb.cd unwind label %bb.ck

bb.bz:                                            ; preds = %bb.bx
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ca:                                            ; preds = %.lr.ph592, %bb.cb
  %.sroa.0428.0590 = phi ptr [ %i.td, %.lr.ph592 ], [ %i.tw, %bb.cb ] ; 2 uses
  %i.tq = load ptr, ptr %i.tg, align 8, !tbaa !342 ; 3 uses
  %i.tr = load ptr, ptr %i.th, align 8, !tbaa !339
  %i.ts = ptrtoint ptr %i.tr to i64
  %i.tt = ptrtoint ptr %i.tq to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tu
  invoke void @_ZN12ListedForces5setupERK22InteractionDefinitionsibN3gmx8ArrayRefIKtEE(ptr noundef nonnull align 8 dereferenceable(2880) %.sroa.0428.0590, ptr noundef nonnull align 8 dereferenceable(2760) %8, i32 noundef 0, i1 noundef zeroext false, ptr %i.tq, ptr %i.tv)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0428.0590, i64 2880 ; 2 uses
  %.not520.a = icmp eq ptr %i.tw, %i.tf
  br i1 %.not520.a, label %._crit_edge593, label %bb.ca

bb.cc:                                            ; preds = %bb.ca
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.cd:                                            ; preds = %._crit_edge593
  store ptr %i.to, ptr %i.e, align 8, !tbaa !267
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext 2)
          to label %bb.ce unwind label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.ty = invoke noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef %i.tj, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %9, i32 noundef 2)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  %i.tz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, ptr noundef nonnull %i.ua) #27
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.cg, %bb.cf
  %i.ub = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !15
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ug = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !761
  %i.ui = sext i32 %i.uh to i64
  %i.uj = ptrtoint ptr %.sroa.13.1 to i64
  %i.uk = ptrtoint ptr %.sroa.0482.1 to i64       ; 2 uses
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = ashr exact i64 %i.ul, 2
  %i.un = select i1 %i.ay, i64 %i.um, i64 0
  %i.uo = sub nsw i64 %i.ui, %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.ea, i64 12 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !764
  %i.ur = load i32, ptr %i.gl, align 4, !tbaa !180
  %i.us = load i32, ptr %5, align 4, !tbaa !179
  %.neg = sub i32 %i.uq, %i.ur
  %i.ut = add i32 %.neg, %i.us
  %i.uu = sext i32 %i.ut to i64
  %.not240 = icmp eq i64 %i.uo, %i.uu
  br i1 %.not240, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA58_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(58) @.str.19, i8 noundef zeroext 2)
          to label %bb.ci unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.uv = load i32, ptr %i.ug, align 8, !tbaa !761
  %i.uw = select i1 %i.ay, ptr @.str.67, ptr @.str.68
  %i.ux = load i32, ptr %i.up, align 4, !tbaa !764
  %i.uy = load i32, ptr %i.gl, align 4, !tbaa !180
  %i.uz = load i32, ptr %5, align 4, !tbaa !179
  %i.va = sub nsw i32 %i.uy, %i.uz
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1119, ptr noundef nonnull @.str.66, i32 noundef %i.uv, ptr noundef nonnull %i.uw, i32 noundef %i.ux, i32 noundef %i.va) #29
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.cd, %._crit_edge593
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ce
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #27
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn238 = phi { ptr, i32 } [ %i.vc, %bb.cl ], [ %i.vb, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.fy

bb.cn:                                            ; preds = %bb.ch
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ci
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #27
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn269 = phi { ptr, i32 } [ %i.ve, %bb.co ], [ %i.vd, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.fy

bb.cq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.vf = load ptr, ptr %i.k, align 8, !tbaa !626
  %i.vg = load ptr, ptr %i.an, align 8, !tbaa !670, !nonnull !199, !align !200
  %i.vh = load ptr, ptr %i.ap, align 8, !tbaa !671
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !780
  %i.vk = load ptr, ptr %i.co, align 8, !tbaa !675
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !781
  store ptr %i.oz, ptr %13, align 8, !tbaa !610
  %i.vn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %scevgep.i.i.i.i.i759761766, ptr %i.vn, align 8, !tbaa !610
  %i.vo = getelementptr inbounds nuw i8, ptr %9, i64 116 ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !132
  %i.vq = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %9, i64 132 ; 2 uses
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !132 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %9, i64 140 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %9, i64 148 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !132 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.vx = load float, ptr %i.vw, align 8, !tbaa !132 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 8, !tbaa !132 ; 2 uses
  %i.wa = fneg float %i.vz
  %i.wb = fmul float %i.vx, %i.wa
  %i.wc = call float @llvm.fmuladd.f32(float %i.vs, float %i.vv, float %i.wb)
  %i.wd = load float, ptr %i.vq, align 8, !tbaa !132
  %i.we = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.wf = load float, ptr %i.we, align 8, !tbaa !132 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %9, i64 124 ; 2 uses
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !132
  %i.wi = fneg float %i.wh                        ; 2 uses
  %i.wj = fmul float %i.vx, %i.wi
  %i.wk = call float @llvm.fmuladd.f32(float %i.wf, float %i.vv, float %i.wj)
  %i.wl = fneg float %i.wk
  %i.wm = fmul float %i.wd, %i.wl
  %i.wn = call float @llvm.fmuladd.f32(float %i.vp, float %i.wc, float %i.wm)
  %i.wo = load float, ptr %i.vt, align 4, !tbaa !132
  %i.wp = fmul float %i.vs, %i.wi
  %i.wq = call float @llvm.fmuladd.f32(float %i.wf, float %i.vz, float %i.wp)
  %i.wr = call noundef float @llvm.fmuladd.f32(float %i.wo, float %i.wq, float %i.wn)
  %i.ws = load ptr, ptr %i.fu, align 8, !tbaa !715
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !782, !nonnull !199, !align !200 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !783
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !784
  invoke void @_ZN3gmx21TestParticleInsertionC1ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii(ptr noundef nonnull align 8 dereferenceable(472) %12, ptr noundef nonnull align 8 dereferenceable(888) %i.vf, ptr noundef nonnull align 8 dereferenceable(768) %i.vg, ptr noundef nonnull align 8 dereferenceable(2808) %i.vh, ptr noundef nonnull align 8 dereferenceable(648) %i.ea, ptr noundef nonnull align 1 %i.vj, ptr noundef %i.vk, ptr noundef %i.vm, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %13, float noundef %i.ds, float noundef %.0208, float noundef %i.wr, i32 noundef %i.ww, i32 noundef %i.wy)
          to label %bb.cr unwind label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  %i.wz = load ptr, ptr %i.co, align 8, !tbaa !675 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 176
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !785 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 184
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !786
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %i.xb to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xg ; 2 uses
  %i.xi = load ptr, ptr %i.j, align 8, !tbaa !673
  %i.xj = getelementptr inbounds i8, ptr %i.xh, i64 -32
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !193 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %12, i64 312
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !179
  %i.xn = icmp eq i32 %i.xk, %i.xm
  br i1 %i.xn, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILEENK3$_0clEv", ptr noundef nonnull @.str.19, i32 noundef 430) #29
          to label %.noexc328 unwind label %bb.cz

.noexc328:                                        ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.xo = getelementptr inbounds nuw i8, ptr %12, i64 316
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !180 ; 2 uses
  %.not1415.i = icmp eq i32 %i.xk, %i.xp
  br i1 %.not1415.i, label %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit, label %.critedge.lr.ph.i

.critedge.lr.ph.i:                                ; preds = %bb.ct
  %i.xq = getelementptr inbounds i8, ptr %i.xh, i64 -24
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !176
  %i.xs = getelementptr inbounds nuw i8, ptr %12, i64 372
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !254
  %23 = sext i32 %i.xk to i64                     ; 2 uses
  br label %.critedge.i

bb.cu:                                            ; preds = %.critedge.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %24 = trunc nsw i64 %indvars.iv.next.i to i32
  %.not14.i = icmp eq i32 %i.xp, %24
  br i1 %.not14.i, label %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cu, %.critedge.lr.ph.i
  %indvars.iv.i325 = phi i64 [ %23, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.cu ] ; 2 uses
  %25 = sub nsw i64 %indvars.iv.i325, %23
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %25
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !253
  %i.xw = and i32 %i.xv, 255
  %.not.i326 = icmp eq i32 %i.xw, %i.xt
  br i1 %.not.i326, label %bb.cu, label %bb.cv

bb.cv:                                            ; preds = %.critedge.i
  %i.xx = call i64 @fwrite(ptr nonnull @.str.23, i64 147, i64 1, ptr %i.xi) ; 0 uses
  br label %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit

_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit: ; preds = %bb.cu, %bb.cv, %bb.ct
  %i.xy = load ptr, ptr %i.fu, align 8, !tbaa !715
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !787, !nonnull !199, !align !200
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 12
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !784
  %i.yc = icmp eq i32 %i.yb, 0
  br i1 %i.yc, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit
  %i.yd = load i32, ptr %i.tk, align 8, !tbaa !754
  %i.ye = load ptr, ptr %i.tm, align 8, !tbaa !755
  %i.yf = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.69, i32 noundef %i.yd, ptr noundef %i.ye)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.yg = load ptr, ptr %i.ti, align 8, !tbaa !760
  %i.yh = invoke noundef ptr @_ZNK3gmx21TestParticleInsertion14openOutputFileEPKcPK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(472) %12, ptr noundef %i.yf, ptr noundef %i.yg)
          to label %bb.db unwind label %bb.da

bb.cy:                                            ; preds = %bb.cq
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.cz:                                            ; preds = %bb.cs
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %bb.ef, %bb.ed, %._crit_edge609, %bb.cx, %bb.cw
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.db:                                            ; preds = %bb.cx, %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit
  %.0201 = phi ptr [ null, %_ZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILE.exit ], [ %i.yh, %bb.cx ] ; 7 uses
  br i1 %i.ty, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %bb.db
  %i.yl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.yo = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.yp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %12, i64 448
  %i.yv = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.yx = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.yy = getelementptr inbounds nuw i8, ptr %12, i64 400
  %i.yz = sitofp i64 %i.dv to double              ; 4 uses
  %.not258 = icmp eq ptr %.0201, null
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.zb = fpext float %i.ds to double             ; 4 uses
  %i.zc = fdiv float 2.000000e+01, %i.ds
  %i.zd = fpext float %i.zc to double             ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %.lr.ph608, %bb.eb
  %.0202606 = phi i32 [ 0, %.lr.ph608 ], [ %i.afk, %bb.eb ] ; 2 uses
  %.0205604 = phi double [ 0.000000e+00, %.lr.ph608 ], [ %i.afo, %bb.eb ]
  %.0206603 = phi double [ 0.000000e+00, %.lr.ph608 ], [ %i.afl, %bb.eb ]
  %i.ze = load ptr, ptr %i.gr, align 8, !tbaa !725 ; 11 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 416
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !461 ; 12 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 440
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !315
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = ptrtoint ptr %i.zg to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = getelementptr inbounds i8, ptr %i.zg, i64 %i.zl ; 2 uses
  %i.zn = load i32, ptr %i.ug, align 8, !tbaa !761 ; 3 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %.lr.ph596, label %._crit_edge597

.lr.ph596:                                        ; preds = %bb.dc
  %i.zp = load ptr, ptr %i.ym, align 8, !tbaa !788 ; 8 uses
  %wide.trip.count646 = zext nneg i32 %i.zn to i64 ; 6 uses
  %min.iters.check795 = icmp ult i32 %i.zn, 8
  br i1 %min.iters.check795, label %scalar.ph794.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph596
  %i.zq = mul nuw nsw i64 %wide.trip.count646, 12 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.zg, i64 %i.zq
  %scevgep793 = getelementptr i8, ptr %i.zp, i64 %i.zq
  %bound0 = icmp ult ptr %i.zg, %scevgep793
  %bound1 = icmp ult ptr %i.zp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph794.preheader, label %vector.ph796

vector.ph796:                                     ; preds = %vector.memcheck
  %n.vec797 = and i64 %wide.trip.count646, 2147483640 ; 3 uses
  br label %vector.body798

vector.body798:                                   ; preds = %vector.body798, %vector.ph796
  %index799 = phi i64 [ 0, %vector.ph796 ], [ %index.next805, %vector.body798 ] ; 3 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.zp, i64 %index799
  %i.zs = getelementptr inbounds nuw [12 x i8], ptr %i.zg, i64 %index799
  %wide.vec800 = load <24 x float>, ptr %i.zr, align 4, !tbaa !132, !alias.scope !789
  store <24 x float> %wide.vec800, ptr %i.zs, align 4, !tbaa !132, !alias.scope !792, !noalias !789
  %index.next805 = add nuw i64 %index799, 8       ; 2 uses
  %i.zt = icmp eq i64 %index.next805, %n.vec797
  br i1 %i.zt, label %middle.block806, label %vector.body798, !llvm.loop !794

middle.block806:                                  ; preds = %vector.body798
  %cmp.n807 = icmp eq i64 %n.vec797, %wide.trip.count646
  br i1 %cmp.n807, label %._crit_edge597, label %scalar.ph794.preheader

scalar.ph794.preheader:                           ; preds = %vector.memcheck, %.lr.ph596, %middle.block806
  %indvars.iv643.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph596 ], [ %n.vec797, %middle.block806 ] ; 3 uses
  %xtraiter833 = and i64 %wide.trip.count646, 3   ; 2 uses
  %lcmp.mod834.not = icmp eq i64 %xtraiter833, 0
  br i1 %lcmp.mod834.not, label %scalar.ph794.prol.loopexit, label %scalar.ph794.prol

scalar.ph794.prol:                                ; preds = %scalar.ph794.preheader, %scalar.ph794.prol
  %indvars.iv643.prol = phi i64 [ %indvars.iv.next644.prol, %scalar.ph794.prol ], [ %indvars.iv643.ph, %scalar.ph794.preheader ] ; 3 uses
  %prol.iter835 = phi i64 [ %prol.iter835.next, %scalar.ph794.prol ], [ 0, %scalar.ph794.preheader ]
  %i.zu = getelementptr inbounds nuw [12 x i8], ptr %i.zp, i64 %indvars.iv643.prol ; 3 uses
  %i.zv = getelementptr inbounds nuw [12 x i8], ptr %i.zg, i64 %indvars.iv643.prol ; 3 uses
  %i.zw = load float, ptr %i.zu, align 4, !tbaa !132
  store float %i.zw, ptr %i.zv, align 4, !tbaa !132
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !132
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store float %i.zy, ptr %i.zz, align 4, !tbaa !132
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !132
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store float %i.aab, ptr %i.aac, align 4, !tbaa !132
  %indvars.iv.next644.prol = add nuw nsw i64 %indvars.iv643.prol, 1 ; 2 uses
  %prol.iter835.next = add i64 %prol.iter835, 1   ; 2 uses
  %prol.iter835.cmp.not = icmp eq i64 %prol.iter835.next, %xtraiter833
  br i1 %prol.iter835.cmp.not, label %scalar.ph794.prol.loopexit, label %scalar.ph794.prol, !llvm.loop !795

scalar.ph794.prol.loopexit:                       ; preds = %scalar.ph794.prol, %scalar.ph794.preheader
  %indvars.iv643.unr = phi i64 [ %indvars.iv643.ph, %scalar.ph794.preheader ], [ %indvars.iv.next644.prol, %scalar.ph794.prol ]
  %i.aad = sub nsw i64 %indvars.iv643.ph, %wide.trip.count646
  %i.aae = icmp ugt i64 %i.aad, -4
  br i1 %i.aae, label %._crit_edge597, label %scalar.ph794

._crit_edge597:                                   ; preds = %scalar.ph794.prol.loopexit, %scalar.ph794, %middle.block806, %bb.dc
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ze, i64 52 ; 4 uses
  %i.aag = load float, ptr %i.vo, align 4, !tbaa !132 ; 2 uses
  store float %i.aag, ptr %i.aaf, align 4, !tbaa !132
  %i.aah = load float, ptr %i.we, align 8, !tbaa !132 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ze, i64 56
  store float %i.aah, ptr %i.aai, align 8, !tbaa !132
  %i.aaj = load float, ptr %i.wg, align 4, !tbaa !132 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ze, i64 60
  store float %i.aaj, ptr %i.aak, align 4, !tbaa !132
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.aam = load float, ptr %i.vq, align 8, !tbaa !132 ; 2 uses
  store float %i.aam, ptr %i.aal, align 8, !tbaa !132
  %i.aan = load float, ptr %i.vr, align 4, !tbaa !132 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.ze, i64 68 ; 2 uses
  store float %i.aan, ptr %i.aao, align 4, !tbaa !132
  %i.aap = load float, ptr %i.vy, align 8, !tbaa !132 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.ze, i64 72
  store float %i.aap, ptr %i.aaq, align 8, !tbaa !132
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ze, i64 76
  %i.aas = load float, ptr %i.vt, align 4, !tbaa !132 ; 2 uses
  store float %i.aas, ptr %i.aar, align 4, !tbaa !132
  %i.aat = load float, ptr %i.vw, align 8, !tbaa !132 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ze, i64 80
  store float %i.aat, ptr %i.aau, align 8, !tbaa !132
  %i.aav = load float, ptr %i.vu, align 4, !tbaa !132 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.ze, i64 84 ; 2 uses
  store float %i.aav, ptr %i.aaw, align 4, !tbaa !132
  %i.aax = fneg float %i.aap
  %i.aay = fmul float %i.aat, %i.aax
  %i.aaz = call float @llvm.fmuladd.f32(float %i.aan, float %i.aav, float %i.aay)
  %i.aba = fneg float %i.aaj                      ; 2 uses
  %i.abb = fmul float %i.aat, %i.aba
  %i.abc = call float @llvm.fmuladd.f32(float %i.aah, float %i.aav, float %i.abb)
  %i.abd = fneg float %i.abc
  %i.abe = fmul float %i.aam, %i.abd
  %i.abf = call float @llvm.fmuladd.f32(float %i.aag, float %i.aaz, float %i.abe)
  %i.abg = fmul float %i.aan, %i.aba
  %i.abh = call float @llvm.fmuladd.f32(float %i.aah, float %i.aap, float %i.abg)
  %i.abi = call noundef float @llvm.fmuladd.f32(float %i.aas, float %i.abh, float %i.abf)
  %i.abj = fpext float %i.abi to double           ; 3 uses
  %i.abk = load ptr, ptr %i.co, align 8, !tbaa !675
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !676
  invoke void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef %i.abm, ptr noundef nonnull %i.aaf, ptr %i.zg, ptr %i.zm)
          to label %bb.dd unwind label %bb.dl

end_hunk_1
