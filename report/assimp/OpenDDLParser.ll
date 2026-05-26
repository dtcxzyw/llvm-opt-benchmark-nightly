inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser9setBufferERKSt6vectorIcSaIcEE:bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j)
  %i.k = load ptr, ptr %1, align 8                ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !3

bb.c:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser5clearEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.k, i64 %i.p, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.d:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser5clearEv.exit
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.k, align 1
  store i8 %i.s, ptr %i.m, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser13OpenDDLParser9getBufferEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  %spec.select = select i1 %i.e, ptr null, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK10ODDLParser13OpenDDLParser13getBufferSizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser7ContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLParser8validateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1               ; 2 uses
  %i.g = and i8 %i.f, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %i.j = add i8 %i.f, -48
  %.0.i = icmp ult i8 %i.j, 11
  %or.cond = or i1 %.0.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %or.cond, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLParser5parseEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ODDLParser13OpenDDLParser15normalizeBufferERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread, label %_ZN10ODDLParser13OpenDDLParser8validateEv.exit

_ZN10ODDLParser13OpenDDLParser8validateEv.exit:   ; preds = %bb.b
  %i.i = load i8, ptr %i.f, align 1               ; 2 uses
  %i.j = and i8 %i.i, -33
  %i.k = add i8 %i.j, -65
  %i.l = icmp ult i8 %i.k, 26
  %i.m = add i8 %i.i, -48
  %.0.i.i = icmp ult i8 %i.m, 11
  %or.cond.i = or i1 %.0.i.i, %i.l
  br i1 %or.cond.i, label %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread, label %.loopexit

_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread: ; preds = %bb.b, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit
  %i.n = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31 ; 3 uses
  invoke void @_ZN10ODDLParser7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %._crit_edge.i.i unwind label %bb.j

._crit_edge.i.i:                                  ; preds = %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.p, ptr %1, align 8
  store i32 1953460082, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.s, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %i.u = invoke noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.v = load ptr, ptr %i.o, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.p, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.af, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ai, align 8
  br label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.at = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #31 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ar ; 2 uses
  store ptr %i.af, ptr %i.ay, align 8
  %i.az = icmp sgt i64 %i.ar, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ax, ptr %i.ah, align 8
  store ptr %i.ba, ptr %i.ai, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bb, ptr %i.ak, align 8
  br label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit

_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.e, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %.not35.not = icmp eq ptr %i.bd, %i.bc
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %bb.l
  %.01036 = phi ptr [ %i.bi, %bb.l ], [ %i.bc, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ]
  %i.bh = call noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.01036, ptr noundef nonnull %i.bg), !inline_history !4
  %i.bi = call noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bh, ptr noundef nonnull %i.bg), !inline_history !4 ; 3 uses
  %.not54.not = icmp ne ptr %i.bi, null           ; 3 uses
  br i1 %.not54.not, label %bb.l, label %.loopexit

bb.j:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #28
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %2, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.s
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.bn = load i64, ptr %i.s, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bp = load ptr, ptr %1, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.br = load i64, ptr %i.p, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = ptrtoint ptr %i.bi to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bv
  %.not = icmp ult i64 %i.bw, %i.bz
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %bb.l, %.lr.ph, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit ], [ true, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ], [ %.not54.not, %.lr.ph ], [ %.not54.not, %bb.l ]
  ret i1 %.1

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.bj, %bb.j ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser15normalizeBufferERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.t, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.j, %i.e
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge2
  %i.l = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.b:                                             ; preds = %.lr.ph63, %.critedge2
  %i.m = phi ptr [ null, %.lr.ph63 ], [ %i.bn, %.critedge2 ] ; 10 uses
  %.03762 = phi i64 [ 0, %.lr.ph63 ], [ %i.bo, %.critedge2 ] ; 11 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.03762 ; 6 uses
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  switch i8 %i.p, label %.thread [
    i8 47, label %bb.c
    i8 13, label %.critedge2
    i8 10, label %.critedge2
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %.not.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader, label %bb.g

_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader: ; preds = %bb.d
  %.158 = add nuw i64 %.03762, 1                  ; 2 uses
  %i.t = icmp ult i64 %.158, %i.g
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit
  %.160 = phi i64 [ %.1, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ], [ %.158, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ] ; 3 uses
  %.1.in59 = phi i64 [ %.160, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ], [ %.03762, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.160 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 42
  br i1 %i.w, label %bb.e, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i41 = icmp eq ptr %i.x, %i.c
  br i1 %.not.i41, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %.critedge, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit

_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %.1 = add nuw i64 %.160, 1                      ; 2 uses
  %i.aa = icmp ult i64 %.1, %i.g
  br i1 %i.aa, label %.lr.ph, label %.critedge, !llvm.loop !7

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.critedge:                                        ; preds = %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit, %bb.f, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader
  %.1.in.lcssa = phi i64 [ %.03762, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ], [ %.1.in59, %bb.f ], [ %i.k, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ]
  %i.ab = add i64 %.1.in.lcssa, 2
  br label %.critedge2

bb.g:                                             ; preds = %bb.d
  %i.ac = load i8, ptr %i.q, align 1
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, -33
  %i.ah = add i8 %i.ag, -65
  %or.cond.i = icmp ult i8 %i.ah, 26
  br i1 %or.cond.i, label %bb.i, label %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 47
  br i1 %i.ak, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.c, %bb.g, %bb.i, %bb.b
  %i.al = load ptr, ptr %i.i, align 8
  %.not.i43 = icmp eq ptr %i.m, %i.al
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  store i8 %i.p, ptr %i.m, align 1
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.an, ptr %i.h, align 8
  br label %.critedge2

bb.k:                                             ; preds = %.thread
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = ptrtoint ptr %i.ao to i64
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser13OpenDDLParser15normalizeBufferERSt6vectorIcSaIcEE:bb.a
  br i1 %i.bb, label %bb.n, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  store ptr %i.az, ptr %1, align 8
  store ptr %i.bc, ptr %i.h, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  store ptr %i.bd, ptr %i.i, align 8
  br label %.critedge2

bb.p:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 47
  br i1 %i.bg, label %.critedge2, label %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48

_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48:      ; preds = %bb.h, %bb.p
  %i.bh = add nuw i64 %.03762, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.bh) ; 2 uses
  %.282 = add nuw i64 %.03762, 1                  ; 2 uses
  %i.bi = icmp ult i64 %.282, %i.g
  br i1 %i.bi, label %.lr.ph84, label %.critedge2

bb.q:                                             ; preds = %.lr.ph84
  %.2 = add nuw i64 %.283, 1                      ; 2 uses
  %i.bj = icmp ult i64 %.2, %i.g
  br i1 %i.bj, label %.lr.ph84, label %.critedge2, !llvm.loop !8

.lr.ph84:                                         ; preds = %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %bb.q
  %.283 = phi i64 [ %.2, %bb.q ], [ %.282, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %.283
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %..critedge2.loopexit_crit_edge85, label %bb.q, !llvm.loop !8

..critedge2.loopexit_crit_edge85:                 ; preds = %.lr.ph84
  br label %.critedge2, !llvm.loop !8

.critedge2:                                       ; preds = %bb.q, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %..critedge2.loopexit_crit_edge85, %bb.b, %bb.b, %bb.p, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.j, %.critedge
  %i.bn = phi ptr [ %i.m, %.critedge ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.bc, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %i.an, %bb.j ], [ %i.m, %bb.p ], [ %i.m, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %i.m, %..critedge2.loopexit_crit_edge85 ], [ %i.m, %bb.q ]
  %.3 = phi i64 [ %i.ab, %.critedge ], [ %.03762, %bb.b ], [ %.03762, %bb.b ], [ %.03762, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.03762, %bb.j ], [ %.03762, %bb.p ], [ %umax, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %.283, %..critedge2.loopexit_crit_edge85 ], [ %umax, %bb.q ]
  %i.bo = add i64 %.3, 1                          ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.g
  br i1 %i.bp, label %bb.b, label %._crit_edge, !llvm.loop !9

bb.r:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZNSt6vectorIcSaIcEED2Ev.exit
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.pre65 = load ptr, ptr %1, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u
  %i.bx = phi ptr [ %.pre65, %bb.u ], [ %i.ao, %.loopexit ], [ %i.ao, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i50 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIcSaIcEED2Ev.exit51, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit51

_ZNSt6vectorIcSaIcEED2Ev.exit51:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN10ODDLParser7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #16

declare noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.c, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.l ; 2 uses
  store ptr %1, ptr %i.s, align 8
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.b, align 8
  store ptr %i.u, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser13parseNextNodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2)
  %i.b = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.a, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLParser13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ODDLParser::OpenDDLExport", align 8 ; 7 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN10ODDLParser13OpenDDLExportC1EPNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
  %i.b = invoke noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i1 [ %i.b, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN10ODDLParser13OpenDDLExportC1EPNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #16

declare noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::function", align 8    ; 8 uses
  %i.f = icmp eq ptr %1, null
  %i.g = icmp eq ptr %1, %2
  %or.cond108 = or i1 %i.f, %i.g
  br i1 %or.cond108, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.h = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.d) ; 5 uses
  %.not9.i = icmp eq ptr %i.h, %2
  br i1 %.not9.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.k
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.m, %.critedge2.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.010.i, align 1
  switch i8 %i.l, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i, %bb.b
  %.0.lcssa.i = phi ptr [ %i.h, %bb.b ], [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %i.n = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread171, label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.p = icmp eq ptr %.val, null
  br i1 %i.p, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.q, ptr %3, align 8
  %i.r = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.r, ptr %i.c, align 8
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %3, align 8
  %i.u = load i64, ptr %i.c, align 8
  store i64 %i.u, ptr %i.q, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc.i.i ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %.val, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull readonly align 1 %.val, i64 %i.r, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.c, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i

_ZN10ODDLParser13OpenDDLParser3topEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.ah, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ai, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.0.i.i)
          to label %bb.i unwind label %bb.j       ; 5 uses

bb.i:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.ai, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ap = load ptr, ptr %3, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.q
  br i1 %i.aq, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ar = load i64, ptr %i.q, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit

bb.j:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %4, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ai
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %bb.j
  %i.aw = load i64, ptr %i.ai, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ay = load ptr, ptr %3, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.q
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
  %i.ba = load i64, ptr %i.q, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

common.resume:                                    ; preds = %bb.ba, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.db, %bb.w ], [ %.pn102.pn.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not177 = icmp eq ptr %i.ak, null
  br i1 %.not177, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit
  %i.bc = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.not.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ak, ptr %i.bc, align 8
  %i.bf = load ptr, ptr %i.ad, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.ad, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.n, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bm = ashr exact i64 %i.bk, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #31 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store ptr %i.ak, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.o, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bq, ptr %i.ab, align 8
  store ptr %i.bt, ptr %i.ad, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bu, ptr %i.bd, align 8
  br label %bb.t

_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread: ; preds = %bb.c, %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 37) ; 0 uses
  %i.bw = load ptr, ptr @_ZSt4cerr, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8            ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8
  %.not.i1.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
  %i.cg = load ptr, ptr %i.cb, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10), !inline_history !11
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.cf, %bb.r ], [ %i.cj, %bb.s ]
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.cm = phi i1 [ false, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ true, %bb.l ], [ true, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.0.i155 = phi ptr [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ak, %bb.l ], [ %i.ak, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  call void @_ZN10ODDLParser4TextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #28
  %i.cn = icmp eq ptr %.0.lcssa.i, null
  %i.co = icmp eq ptr %.0.lcssa.i, %2
  %or.cond.i = or i1 %i.cn, %i.co
  br i1 %or.cond.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.cp = ptrtoint ptr %2 to i64
  %i.cq = ptrtoint ptr %.0.lcssa.i to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %scevgep.i.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cr ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.ct, %.critedge2.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cs = load i8, ptr %.010.i.i, align 1         ; 2 uses
  switch i8 %i.cs, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.ct, %2
  br i1 %.not.i.i113, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i: ; preds = %.critedge2.i.i
  %.pre.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i
  %i.cu = phi i8 [ %.pre.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %i.cs, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cv = and i8 %i.cu, -2
  %switch.i = icmp eq i8 %i.cv, 36
  br i1 %switch.i, label %bb.u, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.u:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %i.cx = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.cw, ptr noundef %2, ptr noundef nonnull %i.b) ; 2 uses
  %i.cy = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not25.i = icmp eq ptr %i.cy, null
  br i1 %.not25.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162, label %bb.v

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cz = icmp eq i8 %i.cu, 37
  %spec.store.select.i = zext i1 %i.cz to i32
  %i.da = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 5 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.cy)
          to label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br i1 %i.cm, label %bb.x, label %bb.af

bb.x:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 4 uses
  %.not92 = icmp eq ptr %i.df, null
  br i1 %.not92, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.dg, ptr %5, align 8
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.dh, ptr %i.a, align 8
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc115 unwind label %bb.ad ; 2 uses

.noexc115:                                        ; preds = %.noexc.i
  store ptr %i.dj, ptr %5, align 8
  %i.dk = load i64, ptr %i.a, align 8
  store i64 %i.dk, ptr %i.dg, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc115, %bb.y
  %i.dl = phi ptr [ %i.dj, %.noexc115 ], [ %i.dg, %bb.y ] ; 2 uses
  switch i64 %i.dh, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.dm = load i8, ptr %i.df, align 1
  store i8 %i.dm, ptr %i.dl, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.df, i64 %i.dh, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.dn = load i64, ptr %i.a, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %5, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i155, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %5, align 8               ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dg
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.dt = load i64, ptr %i.dg, align 8
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.af

bb.ad:                                            ; preds = %.noexc.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ae:                                            ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %5, align 8               ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dg
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIcSaIcEEaSERKS1_:bb.a
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.f, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !3

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.c, align 1
  store i8 %i.y, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.v, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !3

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %bb.p, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %i.c, align 1
  store i8 %i.ab, ptr %i.i, align 1
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ae = load ptr, ptr %0, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !3

bb.q:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %i.ai, align 1
  store i8 %i.ap, ptr %i.ad, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) unnamed_addr #16

declare void @_ZN10ODDLParser4TextC1EPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %0, %1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.critedge, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.i, %.critedge2.i.i ], [ %0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.h = load i8, ptr %.010.i.i, align 1          ; 2 uses
  switch i8 %i.h, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %1
  br i1 %.not.i.i, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i: ; preds = %.critedge2.i.i
  %.pre.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i
  %i.j = phi i8 [ %.pre.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = and i8 %i.j, -2
  %switch.i = icmp eq i8 %i.k, 36
  br i1 %switch.i, label %bb.b, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %i.m = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.l, ptr noundef %1, ptr noundef nonnull %i.b) ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.n, null
  br i1 %.not25.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64, label %bb.c

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.j, 37
  %spec.store.select.i = zext i1 %i.o to i32
  %i.p = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.n)
          to label %bb.e unwind label %bb.d

common.resume:                                    ; preds = %bb.p, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.bg, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %i.s, align 8
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %2, align 8                ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store ptr %i.p, ptr %i.ah, align 8
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ag, ptr %2, align 8
  store ptr %i.aj, ptr %i.r, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.t, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64
  %.0.i63 = phi ptr [ %i.m, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.m, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64 ], [ %i.m, %bb.f ], [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ] ; 3 uses
  %.not2581 = icmp eq ptr %.0.i63, %1
  br i1 %.not2581, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52
  %.02082 = phi ptr [ %.0.i63, %.lr.ph ], [ %.0.i4170, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52 ] ; 5 uses
  %i.an = load i8, ptr %.02082, align 1
  %i.ao = icmp eq i8 %i.an, 44
  br i1 %i.ao, label %.lr.ph.preheader.i, label %.critedge

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ap = ptrtoint ptr %.02082 to i64
  %i.aq = sub i64 %i.e, %i.ap
  %scevgep.i = getelementptr i8, ptr %.02082, i64 %i.aq
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.06.i = phi ptr [ %i.as, %bb.l ], [ %.02082, %.lr.ph.preheader.i ] ; 10 uses
  %i.ar = load i8, ptr %.06.i, align 1
  switch i8 %i.ar, label %bb.l [
    i8 125, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 123, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 91, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 44, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 41, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 40, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 32, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 9, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
  ]

bb.l:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i28 = icmp eq ptr %i.as, %1
  br i1 %.not.i28, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !32

_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi ptr [ %scevgep.i, %bb.l ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ] ; 7 uses
  %.not26 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not26, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
  %i.at = load i8, ptr %.0.lcssa.i, align 1
  %i.au = icmp eq i8 %i.at, 44
  br i1 %i.au, label %.lr.ph.preheader.i.i30, label %.critedge

.lr.ph.preheader.i.i30:                           ; preds = %bb.m
  %i.av = ptrtoint ptr %.0.lcssa.i to i64
  %i.aw = sub i64 %i.e, %i.av
  %scevgep.i.i31 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw ; 2 uses
  br label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.critedge2.i.i34, %.lr.ph.preheader.i.i30
  %.010.i.i33 = phi ptr [ %i.ay, %.critedge2.i.i34 ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i30 ] ; 3 uses
  %i.ax = load i8, ptr %.010.i.i33, align 1       ; 2 uses
  switch i8 %i.ax, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38 [
    i8 32, label %.critedge2.i.i34
    i8 9, label %.critedge2.i.i34
    i8 13, label %.critedge2.i.i34
    i8 10, label %.critedge2.i.i34
    i8 44, label %.critedge2.i.i34
  ]

.critedge2.i.i34:                                 ; preds = %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i.i33, i64 1 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i35, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36, label %.lr.ph.i.i32, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36: ; preds = %.critedge2.i.i34
  %.pre.i37 = load i8, ptr %scevgep.i.i31, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38: ; preds = %.lr.ph.i.i32, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36
  %i.az = phi i8 [ %.pre.i37, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36 ], [ %i.ax, %.lr.ph.i.i32 ] ; 2 uses
  %.0.lcssa.i.i39 = phi ptr [ %scevgep.i.i31, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36 ], [ %.010.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  %i.ba = and i8 %i.az, -2
  %switch.i40 = icmp eq i8 %i.ba, 36
  br i1 %switch.i40, label %bb.n, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.n:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i39, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8
  %i.bc = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.bb, ptr noundef %1, ptr noundef nonnull %i.a) ; 3 uses
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not25.i42 = icmp eq ptr %i.bd, null
  br i1 %.not25.i42, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71, label %bb.o

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.az, 37
  %spec.store.select.i43 = zext i1 %i.be to i32
  %i.bf = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i32 noundef %spec.store.select.i43, ptr noundef nonnull %i.bd)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bh = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.bi = load ptr, ptr %i.am, align 8
  %.not.i45 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.al, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.al, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.s:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %2, align 8               ; 4 uses
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.t, label %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46: ; preds = %bb.s
  %i.bq = ashr exact i64 %i.bo, 3                 ; 2 uses
  %.sroa.speculated.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i47, %i.bq ; 2 uses
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i48 = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i48)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bo ; 2 uses
  store ptr %i.bf, ptr %i.bv, align 8
  %i.bw = icmp sgt i64 %i.bo, 0
  br i1 %i.bw, label %bb.u, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49

bb.u:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49: ; preds = %bb.u, %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i50 = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51: ; preds = %bb.v, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49
  store ptr %i.bu, ptr %2, align 8
  store ptr %i.bx, ptr %i.al, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.by, ptr %i.am, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51, %bb.r, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71
  %.0.i4170 = phi ptr [ %i.bc, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51 ], [ %i.bc, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71 ], [ %i.bc, %bb.r ], [ %.0.lcssa.i.i39, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38 ] ; 3 uses
  %.not25 = icmp eq ptr %.0.i4170, %1
  br i1 %.not25, label %.critedge, label %bb.k, !llvm.loop !35

.critedge:                                        ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, %bb.m, %bb.k, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.i63, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.i4170, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52 ], [ %.0.lcssa.i, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit ], [ %.02082, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseBooleanLiteralEPcS1_PPNS_5ValueE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.g, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.010.i, align 1
  switch i8 %i.f, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %.not32 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not32, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i60 = ptrtoint ptr %.0.lcssa.i to i64
  %i.h = sub i64 %i.c, %.0.lcssa.i60              ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.034 = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.02733 = phi ptr [ %i.j, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.i = load i8, ptr %.02733, align 1
  switch i8 %i.i, label %bb.b [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.02733, i64 1 ; 2 uses
  %i.k = add nuw i64 %.034, 1
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.027.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %scevgep, %bb.b ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = tail call i32 @strncmp(ptr noundef nonnull @.str.41, ptr noundef %.0.lcssa.i, i64 noundef %.0.lcssa) #32
  %.not30 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %.not30, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = tail call i32 @strncmp(ptr noundef nonnull @.str.42, ptr noundef %.0.lcssa.i, i64 noundef %.0.lcssa) #32
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %.critedge, %bb.c
  %i.n = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 0, i64 noundef 1) ; 2 uses
  store ptr %i.n, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value7setBoolEb(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i1 noundef zeroext %.not30)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.027.lcssa, %bb.c ], [ %.027.lcssa, %.sink.split ]
  ret ptr %.1
}

declare noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef, i64 noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value7setBoolEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, %1
  %or.cond.not48 = and i1 %i.a, %i.b
  %i.c = add i32 %3, -1
  %i.d = icmp ult i32 %i.c, 8
  %or.cond45 = and i1 %or.cond.not48, %i.d
  br i1 %or.cond45, label %.lr.ph.preheader.i, label %bb.l

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.i, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.h = load i8, ptr %.010.i, align 1
  switch i8 %i.h, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 8 uses
  %.not49 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not49, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i67 = ptrtoint ptr %.0.lcssa.i to i64
  %i.j = sub i64 %i.e, %.0.lcssa.i67
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03850 = phi ptr [ %i.l, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.k = load i8, ptr %.03850, align 1
  switch i8 %i.k, label %bb.b [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.03850, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.038.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %scevgep, %bb.b ] ; 10 uses
  %i.m = load i8, ptr %.0.lcssa.i, align 1
  %i.n = add i8 %i.m, -48
  %.0.i = icmp ult i8 %i.n, 11
  br i1 %.0.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.critedge
  %i.o = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #27, !inline_history !38 ; 4 uses
  %i.p = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #27 ; 4 uses
  %i.q = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef %3, i64 noundef 1) ; 9 uses
  store ptr %i.q, ptr %2, align 8
  switch i32 %3, label %bb.l [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.o to i8
  tail call void @_ZN10ODDLParser5Value7setInt8Ea(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 noundef signext %i.r)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.o to i16
  tail call void @_ZN10ODDLParser5Value8setInt16Es(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i16 noundef signext %i.s)
end_hunk_2
