Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldInfo?download=true
inline.NumInlined: 6011
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNSt6vectorIN4LIEF5MachO7details19binding_instructionESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  %i.j = sdiv exact i64 %i.h, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i, %i.j    ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 164703072086692425)
  %i.n = select i1 %i.l, i64 164703072086692425, i64 %i.m ; 3 uses
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.o, %i.g
  %.not.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.q = mul nuw nsw i64 %i.n, 56
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 6 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !97
  %i.u = trunc i32 %i.t to i8
  %i.v = load i32, ptr %3, align 4, !tbaa !97
  %i.w = sext i32 %i.v to i64
  store i8 %i.u, ptr %i.s, align 8, !tbaa !358
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !359
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !360
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !116
  store i8 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !118
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.as, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0810.i.i.i.i.i, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !116
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !175 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !99
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !175
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !99
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.al = phi ptr [ %i.aj, %bb.c ], [ %i.ae, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.ah, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.am = load i8, ptr %i.af, align 1, !tbaa !106
  store i8 %i.am, ptr %i.al, align 1, !tbaa !106
  br label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !118
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !175
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.as, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i.i.i20 = icmp eq ptr %1, %i.d
  br i1 %.not9.i.i.i.i.i20, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.011.i.i.i.i.i22 = phi ptr [ %i.bk, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 5 uses
  %.0810.i.i.i.i.i23 = phi ptr [ %i.bj, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.011.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(56) %.0810.i.i.i.i.i23, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 40 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !116
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !175 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.az, ptr %i.a, align 8, !tbaa !99
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i.i.i24

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !175
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i.i.i.i.i24

._crit_edge.i.i.i.i.i.i.i.i.i24:                  ; preds = %bb.f, %.lr.ph.i.i.i.i.i21
  %i.bd = phi ptr [ %i.bb, %bb.f ], [ %i.aw, %.lr.ph.i.i.i.i.i21 ] ; 2 uses
  switch i64 %i.az, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i24
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !106
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !106
  br label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25

_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i24
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !118
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !175
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 56 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.bj, %i.d
  br i1 %.not.i.i.i.i.i26, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28, label %.lr.ph.i.i.i.i.i21, !llvm.loop !47

_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28: ; preds = %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.at, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.bk, %_ZSt10_ConstructIN4LIEF5MachO7details19binding_instructionEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25 ]
  %.not4.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i ], [ %i.e, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !175 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !106
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #27
  br label %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i

_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4LIEF5MachO7details19binding_instructionEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO7details19binding_instructionES4_SaIS3_EET0_T_S7_S6_RT1_.exit28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.e, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN4LIEF5MachO7details19binding_instructionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !356
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.bv) #27
  br label %_ZNSt12_Vector_baseIN4LIEF5MachO7details19binding_instructionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF5MachO7details19binding_instructionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO7details19binding_instructionEEvT_S5_.exit, %bb.i
  store ptr %i.r, ptr %0, align 8, !tbaa !364
  store ptr %.0.lcssa.i.i.i.i.i27, ptr %i.c, align 8, !tbaa !355
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.n
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !93
  store i64 %i.r, ptr %i.q, align 8, !tbaa !93
  store ptr null, ptr %2, align 8, !tbaa !93
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %3 = and i64 %i.t, -8
  %4 = add i64 %3, 8                              ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %4
  %6 = getelementptr i8, ptr %i.c, i64 %4
  %bound0 = icmp ult ptr %i.p, %6
  %bound1 = icmp ult ptr %i.c, %5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.aa = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !93, !alias.scope !1693, !noalias !1691
  %wide.load37 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !93, !alias.scope !1693, !noalias !1691
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !93, !alias.scope !1694, !noalias !1693
  store <2 x i64> %wide.load37, ptr %i.ab, align 8, !tbaa !93, !alias.scope !1694, !noalias !1693
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !93, !alias.scope !1693, !noalias !1691
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !93, !alias.scope !1693, !noalias !1691
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader64

.lr.ph.i.i.i.preheader64:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader64, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !93, !alias.scope !1692, !noalias !1691
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !93, !alias.scope !1691, !noalias !1692
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !93, !alias.scope !1692, !noalias !1691
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !1682

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check45, label %.lr.ph.i.i.i17.preheader63, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound047 = icmp ult ptr %i.ah, %i.aq
  %bound148 = icmp ult ptr %1, %i.ao
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %.lr.ph.i.i.i17.preheader63, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck46
  %n.vec51 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec51, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.au = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep55 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.av = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load56 = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !93, !alias.scope !1697, !noalias !1695
  %wide.load57 = load <2 x i64>, ptr %i.av, align 8, !tbaa !93, !alias.scope !1697, !noalias !1695
  %i.aw = getelementptr i8, ptr %next.gep54, i64 16
  store <2 x i64> %wide.load56, ptr %next.gep54, align 8, !tbaa !93, !alias.scope !1698, !noalias !1697
  store <2 x i64> %wide.load57, ptr %i.aw, align 8, !tbaa !93, !alias.scope !1698, !noalias !1697
  %i.ax = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !93, !alias.scope !1697, !noalias !1695
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !93, !alias.scope !1697, !noalias !1695
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.ay, label %middle.block59, label %vector.body52, !llvm.loop !1689

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.al, %n.vec51
  br i1 %cmp.n60, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader63

.lr.ph.i.i.i17.preheader63:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block59
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck46 ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block59 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block59 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader63, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader63 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader63 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !93, !alias.scope !1696, !noalias !1695
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !93, !alias.scope !1695, !noalias !1696
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !93, !alias.scope !1696, !noalias !1695
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1690

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block59, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block59 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !90
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !91
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !94
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { cold nounwind }

!llvm.module.flags = !{!49, !50}
!llvm.ident = !{!51}
!llvm.errno.tbaa = !{!56}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{!2, !89}
!3 = distinct !{!3, !89}
!4 = distinct !{!4, !89}
!5 = distinct !{!5, !89}
!6 = distinct !{!6, !89}
!7 = distinct !{!7, !89}
!8 = distinct !{!8, !89}
!9 = distinct !{!9, !89}
!10 = distinct !{null, null}
!11 = distinct !{!11, !89}
!12 = distinct !{!12, !89}
!13 = distinct !{!13, !89}
!14 = distinct !{null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !89}
!18 = distinct !{!18, !89}
!19 = distinct !{!19, !89}
!20 = distinct !{!20, !89}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !89}
!24 = distinct !{!24, !89}
!25 = distinct !{!25, !89}
!26 = distinct !{!26, !89}
!27 = distinct !{!27, !89}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !89}
!30 = distinct !{null, null}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = distinct !{null, null, null}
!34 = distinct !{null, null, null, null, null}
!35 = distinct !{!35, !89}
!36 = distinct !{null, null, null, null}
!37 = distinct !{!37, !89}
!38 = distinct !{!38, !89}
!39 = distinct !{null, null, null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{!42, !89}
!43 = distinct !{!43, !89}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = distinct !{null}
!47 = distinct !{!47, !89}
!48 = distinct !{null, null}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"omnipotent char", !52, i64 0}
!54 = !{!"int", !53, i64 0}
!55 = !{!"__libc_errno", !54, i64 0}
!56 = !{!55, !54, i64 0}
!57 = !{!"_ZTSN4LIEF6ObjectE"}
!58 = !{!"any pointer", !53, i64 0}
!59 = !{!"p1 omnipotent char", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIhSaIhEE", !62, i64 0}
!64 = !{!"_ZTSN4LIEF5MachO11LoadCommand4TYPEE", !53, i64 0}
!65 = !{!"long", !53, i64 0}
!66 = !{!"_ZTSN4LIEF5MachO11LoadCommandE", !57, i64 0, !63, i64 8, !64, i64 32, !54, i64 40, !65, i64 48}
!67 = !{!66, !65, i64 48}
!68 = !{!"vtable pointer", !52, i64 0}
!69 = !{!68, !68, i64 0}
end_hunk_0
begin_hunk_1_@llvm.cttz.i64
!1478 = distinct !{!1478, !1477, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!1479 = !{!1474, !1472}
!1480 = !{!1478, !1476}
!1481 = !{!479, !479, i64 0}
!1482 = !{!480, !480, i64 0}
!1483 = distinct !{!1483, !89}
!1484 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !479, i64 0, !480, i64 8, !58, i64 16}
!1485 = !{!1484, !480, i64 8}
!1486 = !{!1484, !58, i64 16}
!1487 = !{!1484, !479, i64 0}
!1488 = distinct !{!1488, !89}
!1489 = distinct !{null, null, null, null}
!1490 = distinct !{null, null, null, null, null}
!1491 = distinct !{null, null, null}
!1492 = distinct !{null, null, null, null}
!1493 = distinct !{!1493, !89}
!1494 = distinct !{!1494, !89}
!1495 = distinct !{null, null, null, null}
!1496 = distinct !{null, null, null, null, null}
!1497 = distinct !{null, null, null}
!1498 = distinct !{null, null, null, null}
!1499 = distinct !{!1499, !89}
!1500 = distinct !{!1500, !89}
!1501 = distinct !{!1501, !89, !384, !385}
!1502 = distinct !{!1502, !89, !384, !385}
!1503 = distinct !{!1503, !387}
!1504 = distinct !{!1504, !89, !384}
!1505 = distinct !{!1505, !89}
!1506 = distinct !{!1506, !89}
!1507 = distinct !{!1507, !89}
!1508 = distinct !{!1508, !89}
!1509 = !{!"char32_t", !53, i64 0}
!1510 = !{!1509, !1509, i64 0}
!1511 = distinct !{null, null, null, null}
!1512 = distinct !{null, null, null, null}
!1513 = distinct !{null, null, null, null}
!1514 = distinct !{null, null, null, null, null}
!1515 = distinct !{null, null, null, null}
!1516 = !{!481, !54, i64 4}
!1517 = distinct !{null, null, null, null}
!1518 = distinct !{null, null, null, null, null}
!1519 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !58, i64 0, !432, i64 8, !409, i64 16, !409, i64 24, !59, i64 32, !411, i64 40, !409, i64 48}
!1520 = !{!1519, !58, i64 0}
!1521 = !{!1519, !432, i64 8}
!1522 = !{!1519, !409, i64 16}
!1523 = !{!1519, !409, i64 24}
!1524 = !{!1519, !59, i64 32}
!1525 = !{!1519, !411, i64 40}
!1526 = !{!1519, !409, i64 48}
!1527 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !58, i64 0, !437, i64 8, !59, i64 16, !409, i64 24, !432, i64 32, !409, i64 40}
!1528 = !{!1527, !58, i64 0}
!1529 = !{!1527, !437, i64 8}
!1530 = !{!1527, !59, i64 16}
!1531 = !{!1527, !409, i64 24}
!1532 = !{!1527, !432, i64 32}
!1533 = !{!1527, !409, i64 40}
!1534 = distinct !{null, null, null, null}
!1535 = !{i64 0, i64 8, !99, i64 8, i64 4, !97}
!1536 = distinct !{null, null, null, null}
!1537 = distinct !{null, null, null, null}
!1538 = distinct !{null, null, null, null, null}
!1539 = distinct !{null, null, null, null}
!1540 = !{!488, !65, i64 8}
!1541 = distinct !{null, null, null, null}
!1542 = distinct !{null, null, null, null, null}
!1543 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !58, i64 0, !442, i64 8, !409, i64 16, !409, i64 24, !59, i64 32, !411, i64 40, !409, i64 48}
!1544 = !{!1543, !58, i64 0}
!1545 = !{!1543, !442, i64 8}
!1546 = !{!1543, !409, i64 16}
!1547 = !{!1543, !409, i64 24}
!1548 = !{!1543, !59, i64 32}
!1549 = !{!1543, !411, i64 40}
!1550 = !{!1543, !409, i64 48}
!1551 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !58, i64 0, !437, i64 8, !59, i64 16, !409, i64 24, !442, i64 32, !409, i64 40}
!1552 = !{!1551, !58, i64 0}
!1553 = !{!1551, !437, i64 8}
!1554 = !{!1551, !59, i64 16}
!1555 = !{!1551, !409, i64 24}
!1556 = !{!1551, !442, i64 32}
!1557 = !{!1551, !409, i64 40}
!1558 = distinct !{null, null, null}
!1559 = distinct !{!1559, !89, !384, !385}
!1560 = distinct !{!1560, !89, !384, !385}
!1561 = distinct !{!1561, !387}
!1562 = distinct !{!1562, !89, !384}
!1563 = distinct !{!1563, i1 false, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!1564 = distinct !{!1564, !1563, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!1565 = distinct !{!1565, !89, !384, !385}
!1566 = distinct !{!1566, !89, !384, !385}
!1567 = distinct !{!1567, !387}
!1568 = distinct !{!1568, !89, !384}
!1569 = distinct !{!1569, !89}
!1570 = !{!1564}
!1571 = distinct !{!1571, !89}
!1572 = distinct !{!1572, !89, !384, !385}
!1573 = distinct !{!1573, !89, !384, !385}
!1574 = distinct !{!1574, !387}
!1575 = distinct !{!1575, !89, !384}
!1576 = distinct !{!1576, !89}
!1577 = !{i64 0, i64 8, !438, i64 8, i64 8, !495, i64 16, i64 8, !495, i64 24, i64 8, !495, i64 32, i64 8, !497}
!1578 = distinct !{null, null, null}
!1579 = distinct !{!1579, !89, !384, !385}
!1580 = distinct !{!1580, !89, !384, !385}
!1581 = distinct !{!1581, !387}
!1582 = distinct !{!1582, !89, !384}
!1583 = distinct !{!1583, !89}
!1584 = distinct !{!1584, !89, !384, !385}
!1585 = distinct !{!1585, !89, !384, !385}
!1586 = distinct !{!1586, !387}
!1587 = distinct !{!1587, !89, !384}
!1588 = distinct !{!1588, !89}
!1589 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !437, i64 0, !333, i64 8, !333, i64 16, !333, i64 24, !496, i64 32}
!1590 = !{!1589, !437, i64 0}
!1591 = !{!1589, !333, i64 8}
!1592 = !{!1589, !333, i64 16}
!1593 = !{!1589, !333, i64 24}
!1594 = !{!1589, !496, i64 32}
!1595 = distinct !{!1595, i1 false, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!1596 = distinct !{!1596, !1595, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!1597 = distinct !{null, null, null, null, null}
!1598 = distinct !{!1598, !89}
!1599 = distinct !{!1599, !89}
!1600 = !{!1596}
!1601 = distinct !{!1601, !89}
!1602 = !{!230, !228, i64 0}
!1603 = !{!230, !229, i64 8}
!1604 = distinct !{!1604, !89}
!1605 = distinct !{!1605, !89}
!1606 = distinct !{!1606, !89}
!1607 = distinct !{null, null}
!1608 = distinct !{!1608, !89, !384, !385}
!1609 = distinct !{!1609, !89, !384, !385}
!1610 = distinct !{!1610, !387}
!1611 = distinct !{!1611, !89, !384}
!1612 = distinct !{!1612, !89, !384, !385}
!1613 = distinct !{!1613, !89, !384, !385}
!1614 = distinct !{!1614, !387}
!1615 = distinct !{!1615, !89, !384}
!1616 = distinct !{!1616, !89, !384, !385}
!1617 = distinct !{!1617, !89, !384, !385}
!1618 = distinct !{!1618, !387}
!1619 = distinct !{!1619, !89, !384}
!1620 = distinct !{null, null, null, null, null, null}
!1621 = !{!"p1 _ZTSN6spdlog7details14log_msg_bufferE", !58, i64 0}
!1622 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE17_Vector_impl_dataE", !1621, i64 0, !1621, i64 8, !1621, i64 16}
!1623 = !{!"_ZTSNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE12_Vector_implE", !1622, i64 0}
!1624 = !{!"_ZTSSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EE", !1623, i64 0}
!1625 = !{!"_ZTSSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE", !1624, i64 0}
!1626 = !{!"_ZTSN6spdlog7details10circular_qINS0_14log_msg_bufferEEE", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !1625, i64 32}
!1627 = !{!1626, !65, i64 0}
!1628 = !{!1626, !65, i64 16}
!1629 = !{!1622, !1621, i64 0}
!1630 = !{!1626, !65, i64 8}
!1631 = !{!1626, !65, i64 24}
!1632 = distinct !{!1632, i1 false, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1633 = distinct !{!1633, !1632, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1634 = !{!1633}
!1635 = distinct !{!1635, i1 false, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!1636 = distinct !{!1636, !1635, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!1637 = !{!1636}
!1638 = distinct !{!1638, i1 false, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_"}
!1639 = distinct !{!1639, !1638, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1640 = distinct !{!1640, !1638, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1641 = distinct !{!1641, i1 false, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_"}
!1642 = distinct !{!1642, !1641, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1643 = distinct !{!1643, !1641, !"_ZSt19__relocate_object_aIN4LIEF5MachO16ThreadedBindDataES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1644 = !{!1639}
!1645 = !{!1640}
!1646 = !{!1639, !1640}
!1647 = !{!1642}
!1648 = !{!1643}
!1649 = !{!1642, !1643}
!1650 = distinct !{!1650, i1 false, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKtKmS4_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_ELi5ELi0ELy316482EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!1651 = distinct !{!1651, !1650, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKtKmS4_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_ELi5ELi0ELy316482EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!1652 = !{!1651}
!1653 = distinct !{null, null, null}
!1654 = distinct !{null, null, null}
!1655 = distinct !{null, null, null}
!1656 = distinct !{null, null}
!1657 = distinct !{null}
!1658 = distinct !{!1658, !89}
!1659 = distinct !{!1659, i1 false, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKhELi2ELi0ELy44EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!1660 = distinct !{!1660, !1659, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKPKcKhELi2ELi0ELy44EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!1661 = !{!1660}
!1662 = distinct !{!1662, !89}
!1663 = distinct !{!1663, !89}
!1664 = distinct !{!1664, !89}
!1665 = distinct !{null, null, null, null}
!1666 = distinct !{null, null, null, null}
!1667 = distinct !{!1667, !89}
!1668 = distinct !{!1668, !89}
!1669 = distinct !{!1669, !89}
!1670 = distinct !{!1670, !89}
!1671 = distinct !{null, null, null}
!1672 = distinct !{!1672, !89}
!1673 = distinct !{null, null, null}
!1674 = distinct !{!1674, !89}
!1675 = distinct !{!1675, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!1676 = distinct !{!1676, !1675, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!1677 = distinct !{!1677, !1675, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!1678 = distinct !{!1678, i1 false, !"LVerDomain"}
!1679 = distinct !{!1679, !1678}
!1680 = distinct !{!1680, !1678}
!1681 = distinct !{!1681, !89, !384, !385}
!1682 = distinct !{!1682, !89, !384}
!1683 = distinct !{!1683, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!1684 = distinct !{!1684, !1683, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!1685 = distinct !{!1685, !1683, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!1686 = distinct !{!1686, i1 false, !"LVerDomain"}
!1687 = distinct !{!1687, !1686}
!1688 = distinct !{!1688, !1686}
!1689 = distinct !{!1689, !89, !384, !385}
!1690 = distinct !{!1690, !89, !384}
!1691 = !{!1676}
!1692 = !{!1677}
!1693 = !{!1677, !1679}
!1694 = !{!1676, !1680}
!1695 = !{!1684}
!1696 = !{!1685}
!1697 = !{!1685, !1687}
!1698 = !{!1684, !1688}
end_hunk_1
