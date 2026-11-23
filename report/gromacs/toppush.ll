Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandler:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  ret void

bb.eh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %.pn111.pn = phi { ptr, i32 } [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %i.me, %bb.ed ], [ %.pn105.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %24) #30
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %bb.eh ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.ei, %bb.ci, %bb.bt, %bb.bo
  %.pn116 = phi { ptr, i32 } [ %i.ew, %bb.bo ], [ %i.fb, %bb.bt ], [ %i.gi, %bb.ci ], [ %.pn111.pn.pn, %bb.ei ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.be, %bb.az, %bb.at, %bb.ao, %bb.ah, %bb.ac, %bb.w, %bb.r, %bb.e
  %.pn120 = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %bb.r ], [ %.pn116, %bb.ej ], [ %i.bu, %bb.w ], [ %i.ce, %bb.ac ], [ %i.co, %bb.ah ], [ %i.db, %bb.ao ], [ %i.dm, %bb.at ], [ %i.dw, %bb.az ], [ %i.eg, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  resume { ptr, i32 } %.pn120
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

declare void @_Z16too_few_functionP14WarningHandlerRKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_Z22warning_error_and_exitP14WarningHandlerPKciRKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmx26StringToEnumValueConverterI12ParticleTypeXadL_ZL25enumValueToLetterAsStringS1_EELNS_17StringCompareTypeE1ELNS_12StripStringsE0EEC2Ev() unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.gmx::StringCompare", align 4 ; 6 uses
  %1 = alloca %"class.std::tuple.92", align 8     ; 4 uses
  %2 = alloca %"class.std::tuple.95", align 1     ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  store i32 1, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, align 8, !tbaa !231
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8), align 8, !tbaa !78
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 16), align 8, !tbaa !70
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 24), align 8, !tbaa !79
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 32), align 8, !tbaa !80
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 40), align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZL25enumValueToLetterAsString12ParticleTypeE19particleTypeLetters, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !18
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !20
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.n   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %3, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.i, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc16, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc16 ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.e, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.e, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !24
  %i.m = load ptr, ptr %3, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 16), align 8, !tbaa !70 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.thread.i, label %.lr.ph.i.i.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.noexc17
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc17 ], [ %i.o, %bb.f ] ; 5 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc17 ], [ getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8), %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 4 uses
  %i.q = load i32, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, align 8, !tbaa !83
  switch i32 %i.q, label %bb.j [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.s) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.g
  %i.v = load ptr, ptr %3, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.x = call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.v, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %.noexc17

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.g
  %i.y = sub i64 %i.s, %i.t
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %.noexc17

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.aa = load ptr, ptr %3, align 8, !tbaa !22
  %i.ab = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.z, ptr noundef %i.aa)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.ad = load ptr, ptr %3, align 8, !tbaa !22
  %i.ae = invoke noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.ac, ptr noundef %i.ad)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.sroa.speculated.i.i10.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i10.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11.i: ; preds = %bb.j
  %i.aj = load ptr, ptr %3, align 8, !tbaa !22
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.al = call i32 @memcmp(ptr noundef %i.ak, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i10.i) #30 ; 2 uses
  %.not.i.i12.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i12.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14.i, label %.noexc17

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11.i, %bb.j
  %i.am = sub i64 %i.ag, %i.ah
  %spec.select7.i.i.i15.i = call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i16.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i15.i, i64 2147483647)
  %.0.i6.i.i17.i = trunc nsw i64 %.08.i.i.i16.i to i32
  br label %.noexc17

.noexc17:                                         ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.h, %bb.i
  %.0.in.i = phi i32 [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.ab, %bb.h ], [ %.0.i6.i.i17.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14.i ], [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11.i ], [ %i.ae, %bb.i ]
  %.0.i = icmp slt i32 %.0.in.i, 0                ; 2 uses
  %.19.i.i.i.i = select i1 %.0.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !230

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i: ; preds = %.noexc17
  %i.an = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  br i1 %i.an, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, align 8, !tbaa !231
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %0, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ap = invoke noundef zeroext i1 @_ZNK3gmx13StringCompareclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.ap, label %bb.l, label %bb.m

.critedge.i:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.thread.i
  %.08.lcssa.i.i.i11.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, i64 8), %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.thread.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i, %.noexc18
  %.08.lcssa.i.i.i10.i = phi ptr [ %.08.lcssa.i.i.i11.i, %.critedge.i ], [ %.19.i.i.i.i, %.noexc18 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %3, ptr %1, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aq = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ParticleTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType, ptr %.08.lcssa.i.i.i10.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.m

bb.m:                                             ; preds = %.noexc19, %.noexc18
  %.sroa.05.0.i = phi ptr [ %i.aq, %.noexc19 ], [ %.19.i.i.i.i, %.noexc18 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 64
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !73
  %i.at = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.av = load i64, ptr %i.b, align 8, !tbaa !23
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.n:                                             ; preds = %.noexc.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.h, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.ax, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) @_ZZ7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandlerE22s_stringToParticleType) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3gmx26StringToEnumValueConverterI12ParticleTypeXadL_ZL25enumValueToLetterAsStringS1_EELNS_17StringCompareTypeE1ELNS_12StripStringsE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ParticleTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare noundef i32 @_ZN25PreprocessingBondAtomType15addBondAtomTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare i64 @_ZNK22PreprocessingAtomTypes16atomTypeFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #6

declare i64 @_ZN22PreprocessingAtomTypes7setTypeEiRK6t_atomRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK17InteractionOfTypeii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(105), i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN22PreprocessingAtomTypes7addTypeERK6t_atomRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK17InteractionOfTypeii(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(105), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17realloc_nb_paramsP22PreprocessingAtomTypesPPP9t_nbparamS4_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK22PreprocessingAtomTypes4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %sext = shl i64 %i.a, 32                        ; 2 uses
  %i.b = ashr exact i64 %sext, 32                 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !233
  %i.d = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.9, i32 noundef 241, ptr noundef %i.c, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !233
  %sext11 = add i64 %sext, -4294967296
  %i.e = ashr exact i64 %sext11, 32               ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.9, i32 noundef 242, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 20)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !58
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !233
  %i.i = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.9, i32 noundef 245, ptr noundef %i.h, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !233
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.e
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.9, i32 noundef 246, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 20)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ParticleTypeN3gmx13StringCompareESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ParticleTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ParticleTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ParticleTypeESt10_Select1stIS9_EN3gmx13StringCompareESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3gmx13StringCompareclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !83
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.c) ; 2 uses
  %i.f = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !22
  %i.h = load ptr, ptr %1, align 8, !tbaa !22
  %i.i = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %i.j = sub i64 %i.c, %i.e
  %spec.select7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %.08.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !22
  %i.l = load ptr, ptr %2, align 8, !tbaa !22
  %i.m = tail call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.k, ptr noundef %i.l)
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !22
  %i.o = load ptr, ptr %2, align 8, !tbaa !22
  %i.p = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.n, ptr noundef %i.o)
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.r) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i10, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11: ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8, !tbaa !22
  %i.w = load ptr, ptr %1, align 8, !tbaa !22
end_hunk_0
