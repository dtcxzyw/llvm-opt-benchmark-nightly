inline.NumInlined: 675
inline.NumDeleted: 297
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
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
define hidden void @_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
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
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %1, ptr %i.u, align 8
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.b, align 8
  store ptr %i.w, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.e, align 8
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
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLParser13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %or.cond108, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.h = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.d) ; 5 uses
  %.not9.i = icmp eq ptr %i.h, %2
  br i1 %.not9.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %11 = ptrtoaddr ptr %2 to i64
  %12 = ptrtoaddr ptr %i.h to i64
  %i.i = sub i64 %11, %12
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.k, %.critedge2.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %i.j = load i8, ptr %.010.i, align 1
  switch i8 %i.j, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %2
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i, %bb.b
  %.0.lcssa.i = phi ptr [ %i.h, %bb.b ], [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %i.l = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread171, label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.n = icmp eq ptr %.val, null
  br i1 %i.n, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.o, ptr %3, align 8
  %i.p = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.p, ptr %i.c, align 8
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %3, align 8
  %i.s = load i64, ptr %i.c, align 8
  store i64 %i.s, ptr %i.o, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.t = phi ptr [ %i.r, %.noexc.i.i ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %.val, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull readonly align 1 %.val, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.c, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %3, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  br label %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i

_ZN10ODDLParser13OpenDDLParser3topEv.exit.i:      ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.af, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ag, ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ai = invoke noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.0.i.i)
          to label %bb.i unwind label %bb.j       ; 5 uses

bb.i:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.al = load i64, ptr %i.ag, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.o
  br i1 %i.ao, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ap = load i64, ptr %i.o, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit

bb.j:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %4, align 8               ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ag
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.ag, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.aw = load ptr, ptr %3, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.o
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
  %i.ay = load i64, ptr %i.o, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

common.resume:                                    ; preds = %bb.bc, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.cz, %bb.w ], [ %.pn102.pn.pn.pn, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not177 = icmp eq ptr %i.ai, null
  br i1 %.not177, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit
  %i.ba = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ai, ptr %i.ba, align 8
  %i.bd = load ptr, ptr %i.ab, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.ab, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #31 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %i.ai, ptr %i.br, align 8
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.o, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bq, ptr %i.z, align 8
  store ptr %i.bt, ptr %i.ab, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bu, ptr %i.bb, align 8
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
  %.0.i155 = phi ptr [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ai, %bb.l ], [ %i.ai, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  call void @_ZN10ODDLParser4TextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #28
  %i.cn = icmp eq ptr %.0.lcssa.i, null
  %i.co = icmp eq ptr %.0.lcssa.i, %2
  %or.cond.i = or i1 %i.cn, %i.co
  br i1 %or.cond.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %13 = ptrtoaddr ptr %2 to i64
  %14 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.cp = sub i64 %13, %14
  %scevgep.i.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cp ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.cr, %.critedge2.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cq = load i8, ptr %.010.i.i, align 1         ; 2 uses
  switch i8 %i.cq, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.cr, %2
  br i1 %.not.i.i113, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i: ; preds = %.critedge2.i.i
  %.pre.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i
  %i.cs = phi i8 [ %.pre.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %i.cq, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ct = and i8 %i.cs, -2
  %switch.i = icmp eq i8 %i.ct, 36
  br i1 %switch.i, label %bb.u, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.u:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %i.cv = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.cu, ptr noundef readnone %2, ptr noundef nonnull %i.b) ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not25.i = icmp eq ptr %i.cw, null
  br i1 %.not25.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162, label %bb.v

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cx = icmp eq i8 %i.cs, 37
  %spec.store.select.i = zext i1 %i.cx to i32
  %i.cy = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 5 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.cw)
          to label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br i1 %i.cm, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not92 = icmp eq ptr %i.dd, null
  br i1 %.not92, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.de = load ptr, ptr %i.dc, align 8            ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.df, ptr %5, align 8
  %i.dg = icmp eq ptr %i.de, null
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #30
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.dh, ptr %i.a, align 8
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.aa
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc115 unwind label %bb.af ; 2 uses

.noexc115:                                        ; preds = %.noexc.i
  store ptr %i.dj, ptr %5, align 8
  %i.dk = load i64, ptr %i.a, align 8
  store i64 %i.dk, ptr %i.df, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc115, %bb.aa
  %i.dl = phi ptr [ %i.dj, %.noexc115 ], [ %i.df, %bb.aa ] ; 2 uses
  switch i64 %i.dh, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.dm = load i8, ptr %i.de, align 1
  store i8 %i.dm, ptr %i.dl, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.de, i64 %i.dh, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  %i.dn = load i64, ptr %i.a, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %5, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i155, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr %5, align 8               ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.df
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.dt = load i64, ptr %i.df, align 8
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ah

bb.af:                                            ; preds = %.noexc.i, %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ag:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %5, align 8               ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.df
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.df, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.dw, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bc

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  call void @_ZN10ODDLParser4NameD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cy) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 16) #28
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %bb.t, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162, %bb.ah
  %.0.i114161168 = phi ptr [ %i.cv, %bb.ah ], [ %i.cv, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162 ], [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ], [ %.0.lcssa.i, %bb.t ] ; 5 uses
  %.not9.i119 = icmp eq ptr %.0.i114161168, %2
  br i1 %.not9.i119, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, label %.lr.ph.preheader.i120

.lr.ph.preheader.i120:                            ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %15 = ptrtoaddr ptr %2 to i64
  %16 = ptrtoaddr ptr %.0.i114161168 to i64
  %i.eb = sub i64 %15, %16
  %scevgep.i121 = getelementptr i8, ptr %.0.i114161168, i64 %i.eb
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.critedge2.i124, %.lr.ph.preheader.i120
  %.010.i123 = phi ptr [ %i.ed, %.critedge2.i124 ], [ %.0.i114161168, %.lr.ph.preheader.i120 ] ; 3 uses
  %i.ec = load i8, ptr %.010.i123, align 1
  switch i8 %i.ec, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127 [
    i8 32, label %.critedge2.i124
    i8 9, label %.critedge2.i124
    i8 13, label %.critedge2.i124
    i8 10, label %.critedge2.i124
    i8 44, label %.critedge2.i124
  ]

.critedge2.i124:                                  ; preds = %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i123, i64 1 ; 2 uses
  %.not.i125 = icmp eq ptr %i.ed, %2
  br i1 %.not.i125, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, label %.lr.ph.i122, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127: ; preds = %.lr.ph.i122, %.critedge2.i124, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %.0.lcssa.i126 = phi ptr [ %.0.i114161168, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread ], [ %scevgep.i121, %.critedge2.i124 ], [ %.010.i123, %.lr.ph.i122 ] ; 5 uses
  %.not94 = icmp eq ptr %.0.lcssa.i126, %2
  br i1 %.not94, label %.thread171, label %bb.ai

bb.ai:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127
  %i.ee = load i8, ptr %.0.lcssa.i126, align 1
  %i.ef = icmp eq i8 %i.ee, 40
  br i1 %i.ef, label %bb.aj, label %.thread171

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i126, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store ptr null, ptr %i.e, align 8
  %.not95181 = icmp eq ptr %i.eg, %2
  br i1 %.not95181, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread171

.lr.ph:                                           ; preds = %bb.aj
  %17 = ptrtoaddr ptr %2 to i64
  %i.eh = load i8, ptr %i.eg, align 1
  %.not96248 = icmp eq i8 %i.eh, 41
  br i1 %.not96248, label %._crit_edge, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph, %bb.ba
  %.072182251 = phi ptr [ %.0.lcssa.i135, %bb.ba ], [ %i.eg, %.lr.ph ]
  %.056183250 = phi ptr [ %.2, %bb.ba ], [ null, %.lr.ph ] ; 4 uses
  %.054184249 = phi ptr [ %.155, %bb.ba ], [ null, %.lr.ph ] ; 3 uses
  %i.ei = call noundef ptr @_ZN10ODDLParser13OpenDDLParser13parsePropertyEPcS1_PPNS_8PropertyE(ptr noundef nonnull %.072182251, ptr noundef %2, ptr noundef nonnull %i.e) ; 5 uses
  %.not9.i128 = icmp eq ptr %i.ei, %2
  br i1 %.not9.i128, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136, label %.lr.ph.preheader.i129

.lr.ph.preheader.i129:                            ; preds = %.lr.ph252
  %18 = ptrtoaddr ptr %i.ei to i64
  %i.ej = sub i64 %17, %18
  %scevgep.i130 = getelementptr i8, ptr %i.ei, i64 %i.ej
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.critedge2.i133, %.lr.ph.preheader.i129
  %.010.i132 = phi ptr [ %i.el, %.critedge2.i133 ], [ %i.ei, %.lr.ph.preheader.i129 ] ; 3 uses
  %i.ek = load i8, ptr %.010.i132, align 1
  switch i8 %i.ek, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136 [
    i8 32, label %.critedge2.i133
    i8 9, label %.critedge2.i133
    i8 13, label %.critedge2.i133
    i8 10, label %.critedge2.i133
    i8 44, label %.critedge2.i133
  ]

.critedge2.i133:                                  ; preds = %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i132, i64 1 ; 2 uses
  %.not.i134 = icmp eq ptr %i.el, %2
  br i1 %.not.i134, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136, label %.lr.ph.i131, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136: ; preds = %.lr.ph.i131, %.critedge2.i133, %.lr.ph252
  %.0.lcssa.i135 = phi ptr [ %i.ei, %.lr.ph252 ], [ %scevgep.i130, %.critedge2.i133 ], [ %.010.i132, %.lr.ph.i131 ] ; 7 uses
  %i.em = icmp eq ptr %.0.lcssa.i135, %2
  br i1 %i.em, label %._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136
  %i.en = load i8, ptr %.0.lcssa.i135, align 1    ; 2 uses
  switch i8 %i.en, label %bb.al [
    i8 44, label %bb.ax
    i8 41, label %bb.ax
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %.0.lcssa.i135, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %10)
          to label %.critedge111.critedge unwind label %bb.au

.critedge111.critedge:                            ; preds = %bb.ao
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not.i137 = icmp eq ptr %i.ep, null
  br i1 %.not.i137, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.critedge111.critedge
  %i.eq = invoke noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.critedge111.critedge, %bb.ap
  %i.et = load ptr, ptr %8, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread171

bb.ar:                                            ; preds = %bb.al
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.as:                                            ; preds = %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.at:                                            ; preds = %bb.an
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit145

bb.au:                                            ; preds = %bb.ao
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not.i144 = icmp eq ptr %i.fi, null
  br i1 %.not.i144, label %_ZNSt14_Function_baseD2Ev.exit145, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fj = invoke noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit145 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit145:                ; preds = %bb.av, %bb.au, %bb.at
  %.pn102 = phi { ptr, i32 } [ %i.ff, %bb.at ], [ %i.fg, %bb.au ], [ %i.fg, %bb.av ] ; 2 uses
  %i.fm = load ptr, ptr %8, align 8               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt14_Function_baseD2Ev.exit145
  %i.fp = load i64, ptr %i.fn, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt14_Function_baseD2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.as
  %.pn102.pn = phi { ptr, i32 } [ %i.fe, %bb.as ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn102, %_ZNSt14_Function_baseD2Ev.exit145 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fr = load ptr, ptr %6, align 8               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.fu = load i64, ptr %i.fs, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.ar
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.ar ], [ %.pn102.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.bc

bb.ax:                                            ; preds = %bb.ak, %bb.ak
  %i.fw = load ptr, ptr %i.e, align 8             ; 5 uses
  %.not99 = icmp eq ptr %i.fw, null
  %.not100 = icmp eq i8 %i.en, 44
  %or.cond176 = or i1 %.not100, %.not99
  br i1 %or.cond176, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fx = icmp eq ptr %.056183250, null
  %spec.select = select i1 %i.fx, ptr %i.fw, ptr %.056183250 ; 2 uses
  %.not101 = icmp eq ptr %.054184249, null
  br i1 %.not101, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %.054184249, i64 24
  store ptr %i.fw, ptr %i.fy, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.2 = phi ptr [ %.056183250, %bb.ax ], [ %spec.select, %bb.ay ], [ %spec.select, %bb.az ] ; 2 uses
  %.155 = phi ptr [ %.054184249, %bb.ax ], [ %i.fw, %bb.ay ], [ %i.fw, %bb.az ]
  %i.fz = load i8, ptr %.0.lcssa.i135, align 1
  %.not96 = icmp eq i8 %i.fz, 41
  br i1 %.not96, label %._crit_edge, label %.lr.ph252

._crit_edge:                                      ; preds = %bb.ba, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136, %.lr.ph
  %.056183.lcssa = phi ptr [ null, %.lr.ph ], [ %.2, %bb.ba ], [ %.056183250, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136 ] ; 2 uses
  %.173 = phi ptr [ %i.eg, %.lr.ph ], [ %.0.lcssa.i135, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136 ], [ %.0.lcssa.i135, %bb.ba ] ; 2 uses
  %.not107 = icmp ne ptr %.173, %2
  %spec.select109.idx = zext i1 %.not107 to i64
  %spec.select109 = getelementptr inbounds nuw i8, ptr %.173, i64 %spec.select109.idx ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.ga = icmp ne ptr %.056183.lcssa, null
  %or.cond4 = and i1 %i.cm, %i.ga
  br i1 %or.cond4, label %bb.bb, label %.thread171

bb.bb:                                            ; preds = %._crit_edge
  call void @_ZN10ODDLParser7DDLNode13setPropertiesEPNS_8PropertyE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i155, ptr noundef nonnull %.056183.lcssa)
  br label %.thread171

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %common.resume

.thread171:                                       ; preds = %._crit_edge.thread, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, %bb.ai, %bb.bb, %._crit_edge, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.370 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %spec.select109, %bb.bb ], [ %spec.select109, %._crit_edge ], [ %.0.lcssa.i126, %bb.ai ], [ %.0.lcssa.i126, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127 ], [ %i.eg, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %.thread171
  %.471 = phi ptr [ %.370, %.thread171 ], [ %1, %bb.a ]
  ret ptr %.471
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %1, %2
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.u, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 0, ptr %i.b, align 1
  %6 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %7 = ptrtoaddr ptr %1 to i64
  %i.e = sub i64 %6, %7
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.g, %.critedge2.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
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
  %.not.i = icmp eq ptr %i.g, %2
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %.not = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.h = load i8, ptr %.0.lcssa.i, align 1
  %i.i = icmp eq i8 %i.h, 123
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.d
  %.031 = phi ptr [ %i.j, %bb.d ], [ %.0.lcssa.i, %bb.b ]
  %i.j = call noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStructureBodyEPcS1_Rb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.031, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %.not41.not.not.not.not.not = icmp ne ptr %i.j, %2 ; 2 uses
  br i1 %.not41.not.not.not.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.j, align 1
  %.not42 = icmp eq i8 %i.l, 125
  br i1 %.not42, label %.critedge, label %.preheader, !llvm.loop !12

.critedge:                                        ; preds = %bb.c, %bb.d
  %spec.select.idx = zext i1 %.not41.not.not.not.not.not to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %8 = ptrtoint ptr %2 to i64
  %i.o = ptrtoint ptr %.0.lcssa.i to i64
  %i.p = sub i64 %8, %i.o                         ; 4 uses
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %3, align 8
  %i.s = load i64, ptr %i.a, align 8
  store i64 %i.s, ptr %i.m, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.t = phi ptr [ %i.r, %.noexc.i ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %i.p, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %._crit_edge.i.i43
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %.0.lcssa.i, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %._crit_edge.i.i43

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %.0.lcssa.i, i64 %i.p, i1 false)
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.v, ptr %i.n, align 8
  %i.w = load ptr, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.y, ptr %4, align 8
  store i8 123, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i43
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.af, ptr %i.ab, align 8
  br label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit: ; preds = %bb.i, %._crit_edge.i.i43
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.al = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i46 = icmp eq ptr %i.al, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  %i.ap = load ptr, ptr %4, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.y
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ar = load i64, ptr %i.y, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.m, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit

bb.p:                                             ; preds = %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i50 = icmp eq ptr %i.ay, null
  br i1 %.not.i50, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.r      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable

.body:                                            ; preds = %bb.q, %bb.p, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.ax, %bb.q ], [ %i.ag, %bb.k ], [ %i.ax, %bb.p ]
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.y
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.body
  %i.be = load i64, ptr %i.y, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.m
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bi = load i64, ptr %i.m, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %.critedge, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.132 = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %spec.select, %.critedge ] ; 5 uses
  %.not9.i58 = icmp eq ptr %.132, %2
  br i1 %.not9.i58, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66, label %.lr.ph.preheader.i59

.lr.ph.preheader.i59:                             ; preds = %bb.s
  %9 = ptrtoaddr ptr %.132 to i64
  %i.bk = sub i64 %6, %9
  %scevgep.i60 = getelementptr i8, ptr %.132, i64 %i.bk
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.critedge2.i63, %.lr.ph.preheader.i59
  %.010.i62 = phi ptr [ %i.bm, %.critedge2.i63 ], [ %.132, %.lr.ph.preheader.i59 ] ; 3 uses
  %i.bl = load i8, ptr %.010.i62, align 1
  switch i8 %i.bl, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66 [
    i8 32, label %.critedge2.i63
    i8 9, label %.critedge2.i63
    i8 13, label %.critedge2.i63
    i8 10, label %.critedge2.i63
    i8 44, label %.critedge2.i63
  ]

.critedge2.i63:                                   ; preds = %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i62, i64 1 ; 2 uses
  %.not.i64 = icmp eq ptr %i.bm, %2
  br i1 %.not.i64, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66, label %.lr.ph.i61, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66: ; preds = %.lr.ph.i61, %.critedge2.i63, %bb.s
  %.0.lcssa.i65 = phi ptr [ %.132, %bb.s ], [ %scevgep.i60, %.critedge2.i63 ], [ %.010.i62, %.lr.ph.i61 ] ; 3 uses
  %i.bn = load i8, ptr %i.b, align 1, !range !13, !noundef !14
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i

_ZN10ODDLParser13OpenDDLParser3topEv.exit.i:      ; preds = %bb.t
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -8
  store ptr %i.bu, ptr %i.br, align 8
  br label %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit

_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit:    ; preds = %.preheader, %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i, %bb.t, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.029 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.0.lcssa.i65, %_ZN10ODDLParser13OpenDDLParser3topEv.exit.i ], [ %.0.lcssa.i65, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66 ], [ %.0.lcssa.i65, %bb.t ], [ null, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit
  %.130 = phi ptr [ %.029, %_ZN10ODDLParser13OpenDDLParser7popNodeEv.exit ], [ %1, %bb.a ]
  ret ptr %.130
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %3, %4
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.e, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.010.i, align 1
  switch i8 %i.d, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 8 uses
  %.0.lcssa.i75 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.f = icmp eq ptr %.0.lcssa.i, %1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.g = load i8, ptr %.0.lcssa.i, align 1
  %i.h = add i8 %i.g, -48
  %.0.i = icmp ult i8 %i.h, 11
  br i1 %.0.i, label %bb.f, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = sub i64 %3, %.0.lcssa.i75                ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.02940 = phi ptr [ %i.k, %bb.c ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 13 uses
  %.03039 = phi i64 [ %i.l, %bb.c ], [ 0, %.lr.ph.preheader ] ; 12 uses
  %i.j = load i8, ptr %.02940, align 1
  switch i8 %i.j, label %bb.c [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 36, label %.critedge
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02940, i64 1 ; 2 uses
  %i.l = add nuw i64 %.03039, 1
  %.not = icmp eq ptr %i.k, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !15

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.030.lcssa.ph = phi i64 [ %i.i, %bb.c ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ], [ %.03039, %.lr.ph ]
  %.029.lcssa.ph = phi ptr [ %scevgep, %bb.c ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ], [ %.02940, %.lr.ph ]
  %i.m = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  invoke void @_ZN10ODDLParser4TextC1EPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.0.lcssa.i, i64 noundef %.030.lcssa.ph)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.critedge
  store ptr %i.m, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #28
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.b, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %bb.a, %bb.d
  %.0 = phi ptr [ %.029.lcssa.ph, %bb.d ], [ %0, %bb.a ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.0.lcssa.i, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser4TextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr null, ptr %2, align 8
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %0, %1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %3, %4
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.f, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.e, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge: ; preds = %.critedge2.i
  %.pre = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge
  %i.g = phi i8 [ %.pre, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge ], [ %.010.i, %.lr.ph.i ] ; 2 uses
  %i.h = and i8 %i.g, -2
  %switch = icmp eq i8 %i.h, 36
  br i1 %switch, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8
  %i.j = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.i, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i8 %i.g, 37
  %spec.store.select = zext i1 %i.l to i32
  %i.m = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 3 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %spec.store.select, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %bb.a, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %0, %bb.a ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ]
  ret ptr %.0
}

declare void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN10ODDLParser4NameD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser13parsePropertyEPcS1_PPNS_8PropertyE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %"class.std::vector.6", align 8     ; 10 uses
  store ptr null, ptr %2, align 8
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %0, %1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.ae, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %5 = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %4, %5
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
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8
  %i.h = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull %i.a) ; 6 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.not9.i51 = icmp eq ptr %i.h, %1
  br i1 %.not9.i51, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59, label %.lr.ph.preheader.i52

.lr.ph.preheader.i52:                             ; preds = %bb.b
  %6 = ptrtoaddr ptr %i.h to i64
  %i.j = sub i64 %4, %6
  %scevgep.i53 = getelementptr i8, ptr %i.h, i64 %i.j
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.critedge2.i56, %.lr.ph.preheader.i52
  %.010.i55 = phi ptr [ %i.l, %.critedge2.i56 ], [ %i.h, %.lr.ph.preheader.i52 ] ; 3 uses
  %i.k = load i8, ptr %.010.i55, align 1
  switch i8 %i.k, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59 [
    i8 32, label %.critedge2.i56
    i8 9, label %.critedge2.i56
    i8 13, label %.critedge2.i56
    i8 10, label %.critedge2.i56
    i8 44, label %.critedge2.i56
  ]

.critedge2.i56:                                   ; preds = %.lr.ph.i54, %.lr.ph.i54, %.lr.ph.i54, %.lr.ph.i54, %.lr.ph.i54
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i55, i64 1 ; 2 uses
  %.not.i57 = icmp eq ptr %i.l, %1
  br i1 %.not.i57, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59, label %.lr.ph.i54, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59: ; preds = %.lr.ph.i54, %.critedge2.i56, %bb.b
  %.0.lcssa.i58 = phi ptr [ %i.h, %bb.b ], [ %scevgep.i53, %.critedge2.i56 ], [ %.010.i55, %.lr.ph.i54 ] ; 4 uses
  %.not48 = icmp eq ptr %.0.lcssa.i58, %1
  br i1 %.not48, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59
  %i.m = load i8, ptr %.0.lcssa.i58, align 1
  %i.n = icmp eq i8 %i.m, 61
  br i1 %i.n, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa.i58, i64 1 ; 6 uses
  %.not9.i.i = icmp eq ptr %i.o, %1
  br i1 %.not9.i.i, label %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %7 = ptrtoaddr ptr %i.o to i64
  %i.p = sub i64 %4, %7
  %scevgep.i.i = getelementptr i8, ptr %i.o, i64 %i.p
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.r, %.critedge2.i.i ], [ %i.o, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.q = load i8, ptr %.010.i.i, align 1
  switch i8 %i.q, label %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i, label %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit:  ; preds = %.lr.ph.i.i, %.critedge2.i.i, %bb.d
  %.0.lcssa.i.i = phi ptr [ %i.o, %bb.d ], [ %.010.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %.critedge2.i.i ] ; 2 uses
  %i.s = icmp eq ptr %i.o, %.0.lcssa.i.i
  %spec.select.idx.i = zext i1 %i.s to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 %spec.select.idx.i ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %.not.i60 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i60, label %.peel.begin.i, label %bb.e

bb.e:                                             ; preds = %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit
  %i.t = load i8, ptr %spec.select.i, align 1
  %i.u = icmp eq i8 %i.t, 45
  %spec.select.idx.i61 = zext i1 %i.u to i64
  %spec.select.i62 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select.idx.i61
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.e, %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit
  %.09.i = phi ptr [ %spec.select.i, %_ZN10ODDLParser12getNextTokenIcEEPT_S2_S2_.exit ], [ %spec.select.i62, %bb.e ] ; 3 uses
  %i.v = load i8, ptr %.09.i, align 1             ; 2 uses
  switch i8 %i.v, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i [
    i8 125, label %.loopexit
    i8 44, label %.loopexit
    i8 32, label %.loopexit
    i8 9, label %.loopexit
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i: ; preds = %.peel.begin.i
  %i.w = icmp ne ptr %.09.i, %1
  %i.x = add i8 %i.v, -48
  %.0.i.peel.i = icmp ult i8 %i.x, 11
  %or.cond.i = and i1 %i.w, %.0.i.peel.i
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit

.peel.next.i:                                     ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i, %bb.f
  %.09.pn.i = phi ptr [ %.110.i, %bb.f ], [ %.09.i, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i ]
  %.110.i = getelementptr inbounds nuw i8, ptr %.09.pn.i, i64 1 ; 3 uses
  %i.y = load i8, ptr %.110.i, align 1            ; 3 uses
  switch i8 %i.y, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i [
    i8 125, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 44, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 32, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 9, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i: ; preds = %.peel.next.i
  %.not7.i.i = icmp ne i8 %i.y, 41
  %i.z = icmp ne ptr %.110.i, %1
  %spec.select.i.i = and i1 %i.z, %.not7.i.i
  br i1 %spec.select.i.i, label %bb.f, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit

bb.f:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i
  %i.aa = add i8 %i.y, -48
  %.0.i.i = icmp ult i8 %i.aa, 11
  br i1 %.0.i.i, label %.peel.next.i, label %.loopexit, !llvm.loop !16

_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit:        ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i, %.peel.next.i, %.peel.next.i, %.peel.next.i, %.peel.next.i
  %i.ab = call noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %spec.select.i, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 3) ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i63 = icmp eq ptr %i.ac, null
  br i1 %.not.i63, label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 4 uses
  invoke void @_ZN10ODDLParser8PropertyC1EPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef %i.ad)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ae, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  br label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit

common.resume:                                    ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit67, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.am, %bb.m ], [ %.pn.pn90, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit67 ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.f, %.peel.begin.i, %.peel.begin.i, %.peel.begin.i, %.peel.begin.i, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i
  %i.ah = tail call noundef zeroext i1 @_ZN10ODDLParser7isFloatIcEEbPT_S2_(ptr noundef %spec.select.i, ptr noundef %1)
  br i1 %i.ah, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.loopexit
  %i.ai = call noundef ptr @_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %spec.select.i, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 10) ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i64 = icmp eq ptr %i.aj, null
  br i1 %.not.i64, label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 4 uses
  invoke void @_ZN10ODDLParser8PropertyC1EPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull %i.i)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ak, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  br label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #28
  br label %common.resume

bb.n:                                             ; preds = %.loopexit
  %i.an = load i8, ptr %spec.select.i, align 1
  %i.ao = icmp eq i8 %i.an, 34
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = call noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE(ptr noundef nonnull %spec.select.i, ptr noundef %1, ptr noundef nonnull %i.b)
  %i.aq = load ptr, ptr %i.b, align 8
  tail call fastcc void @_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE(ptr noundef nonnull %i.i, ptr noundef %i.aq, ptr noundef nonnull %2)
  br label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ar = invoke noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE(ptr noundef nonnull %spec.select.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %3, align 8               ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %bb.s unwind label %bb.w       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  invoke void @_ZN10ODDLParser9ReferenceC1EmPPNS_4NameE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 noundef %i.ba, ptr noundef nonnull %i.as)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.u unwind label %bb.w       ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %i.a, align 8
  invoke void @_ZN10ODDLParser8PropertyC1EPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef %i.bc)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.u
  store ptr %i.bb, ptr %2, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.aw, ptr %i.bd, align 8
  br label %bb.aa

bb.v:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8
  br label %bb.ab

bb.w:                                             ; preds = %bb.t, %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 16) #28
  br label %.thread86

bb.y:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #28
  br label %.thread86

bb.z:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.pre70 = ptrtoint ptr %i.as to i64
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre70, %._crit_edge ], [ %i.ay, %.thread ]
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bl) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit

bb.ab:                                            ; preds = %bb.w, %bb.v
  %i.bm = phi ptr [ %.pre, %bb.v ], [ %i.as, %bb.w ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bf, %bb.w ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit67, label %.thread86

.thread86:                                        ; preds = %bb.x, %bb.y, %bb.ab
  %.pn.pn89 = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.bg, %bb.x ], [ %i.bh, %bb.y ]
  %i.bn = phi ptr [ %i.bm, %bb.ab ], [ %i.as, %bb.x ], [ %i.as, %bb.y ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit67

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit67: ; preds = %bb.ab, %.thread86
  %.pn.pn90 = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %.pn.pn89, %.thread86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %common.resume

_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit: ; preds = %bb.l, %bb.j, %bb.h, %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit, %bb.o
  %.042 = phi ptr [ %i.ar, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit ], [ %i.ab, %bb.h ], [ %i.ap, %bb.o ], [ %i.ab, %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit ], [ %i.ai, %bb.j ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit59, %bb.c
  tail call void @_ZN10ODDLParser4TextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #27
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 24) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit, %bb.ac, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.143 = phi ptr [ %.042, %_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE.exit ], [ %i.h, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.0.lcssa.i58, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.0 = phi ptr [ %.143, %bb.ad ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !18 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !alias.scope !18
  %i.h = load ptr, ptr %0, align 8, !noalias !18  ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 50) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !18
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !noalias !18
  %i.i = icmp ugt i64 %i.f, 15
  br i1 %i.i, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !alias.scope !18
  %i.k = load i64, ptr %i.b, align 8, !noalias !18
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc10.i.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.h, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.h, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.b, align 8, !noalias !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !18
  %i.p = load ptr, ptr %3, align 8, !alias.scope !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.27, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %0, align 8
  %i.u = load i64, ptr %i.e, align 8
end_hunk_0
begin_hunk_1_@_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = load ptr, ptr %5, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ai
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.ai, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bg, ptr %4, align 8
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %4, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bl, ptr %i.r, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #27
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %4, align 8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %4, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ca) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cb = load ptr, ptr %3, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.g
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cd = load i64, ptr %i.g, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.q

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ai
  br i1 %i.cj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.g
  %.sink = phi ptr [ %i.aw, %bb.g ], [ %i.ci, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ch, %bb.n ]
  %i.ck = load i64, ptr %i.ai, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cl) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ch, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cg, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.cf, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cm = load ptr, ptr %3, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.g
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.p
  %i.co = load i64, ptr %i.g, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %.noexc
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.l, ptr %i.c, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @_ZN10ODDLParser7DDLNode13setPropertiesEPNS_8PropertyE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStructureBodyEPcS1_Rb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 10 uses
  %i.i = load i8, ptr %1, align 1                 ; 2 uses
  %i.j = add i8 %i.i, -59
  %.0.i = icmp ult i8 %i.j, -11
  %i.k = and i8 %i.i, -33
  %i.l = add i8 %i.k, -91
  %i.m = icmp ult i8 %i.l, -26
  %narrow = and i1 %.0.i, %i.m
  %.032.idx = zext i1 %narrow to i64
  %.032 = getelementptr inbounds nuw i8, ptr %1, i64 %.032.idx ; 5 uses
  %.not9.i = icmp eq ptr %.032, %2
  br i1 %.not9.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %.032 to i64
  %i.n = sub i64 %7, %8
  %scevgep.i = getelementptr i8, ptr %.032, i64 %i.n
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.p, %.critedge2.i ], [ %.032, %.lr.ph.preheader.i ] ; 3 uses
  %i.o = load i8, ptr %.010.i, align 1
  switch i8 %i.o, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %2
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i, %bb.a
  %.0.lcssa.i = phi ptr [ %.032, %bb.a ], [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 -1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 0, ptr %i.c, align 8
  %i.q = call noundef ptr @_ZN10ODDLParser13OpenDDLParser22parsePrimitiveDataTypeEPcS1_RNS_5Value9ValueTypeERm(ptr noundef %.0.lcssa.i, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 6 uses
  %i.r = load i32, ptr %i.b, align 4              ; 3 uses
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.not9.i42 = icmp eq ptr %i.q, %2
  br i1 %.not9.i42, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split, label %.lr.ph.preheader.i43

.lr.ph.preheader.i43:                             ; preds = %bb.b
  %9 = ptrtoaddr ptr %2 to i64
  %10 = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %9, %10
  %scevgep.i44 = getelementptr i8, ptr %i.q, i64 %i.s
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.critedge2.i47, %.lr.ph.preheader.i43
  %.010.i46 = phi ptr [ %i.u, %.critedge2.i47 ], [ %i.q, %.lr.ph.preheader.i43 ] ; 3 uses
  %i.t = load i8, ptr %.010.i46, align 1          ; 2 uses
  switch i8 %i.t, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50 [
    i8 32, label %.critedge2.i47
    i8 9, label %.critedge2.i47
    i8 13, label %.critedge2.i47
    i8 10, label %.critedge2.i47
    i8 44, label %.critedge2.i47
  ]

.critedge2.i47:                                   ; preds = %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i46, i64 1 ; 2 uses
  %.not.i48 = icmp eq ptr %i.u, %2
  br i1 %.not.i48, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split, label %.lr.ph.i45, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split: ; preds = %.critedge2.i47, %bb.b
  %.0.lcssa.i49.ph = phi ptr [ %i.q, %bb.b ], [ %scevgep.i44, %.critedge2.i47 ] ; 2 uses
  %.pr = load i8, ptr %.0.lcssa.i49.ph, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50: ; preds = %.lr.ph.i45, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split
  %i.v = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split ], [ %i.t, %.lr.ph.i45 ]
  %.0.lcssa.i49 = phi ptr [ %.0.lcssa.i49.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50thread-pre-split ], [ %.010.i46, %.lr.ph.i45 ] ; 4 uses
  %i.w = icmp eq i8 %i.v, 123
  br i1 %i.w, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store ptr null, ptr %i.f, align 8
  %i.x = load i64, ptr %i.c, align 8
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.d
    i64 0, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i64 0, ptr %i.h, align 8
  %i.y = call noundef ptr @_ZN10ODDLParser13OpenDDLParser13parseDataListEPcS1_NS_5Value9ValueTypeEPPS2_RmPPNS_9ReferenceES6_(ptr noundef nonnull %.0.lcssa.i49, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit

_ZN10ODDLParser13OpenDDLParser3topEv.exit:        ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = icmp ne ptr %i.af, null
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZN10ODDLParserL13setNodeValuesEPNS_7DDLNodeEPNS_5ValueE.exit, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit53

_ZN10ODDLParserL13setNodeValuesEPNS_7DDLNodeEPNS_5ValueE.exit: ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit
  tail call void @_ZN10ODDLParser7DDLNode8setValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(136) %i.af, ptr noundef nonnull %i.ag)
  %.pre = load ptr, ptr %i.z, align 8
  %.pre93 = load ptr, ptr %i.ab, align 8          ; 2 uses
  %i.aj = icmp eq ptr %.pre, %.pre93
  br i1 %i.aj, label %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit53

_ZN10ODDLParser13OpenDDLParser3topEv.exit53:      ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit, %_ZN10ODDLParserL13setNodeValuesEPNS_7DDLNodeEPNS_5ValueE.exit
  %i.ak = phi ptr [ %.pre93, %_ZN10ODDLParserL13setNodeValuesEPNS_7DDLNodeEPNS_5ValueE.exit ], [ %i.ac, %_ZN10ODDLParser13OpenDDLParser3topEv.exit ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = icmp ne ptr %i.am, null
  %or.cond.i54 = and i1 %i.ap, %i.ao
  br i1 %or.cond.i54, label %bb.e, label %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit

bb.e:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit53
  tail call void @_ZN10ODDLParser7DDLNode13setReferencesEPNS_9ReferenceE(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull %i.an)
  br label %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit

_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit: ; preds = %bb.d, %_ZN10ODDLParserL13setNodeValuesEPNS_7DDLNodeEPNS_5ValueE.exit, %_ZN10ODDLParser13OpenDDLParser3topEv.exit53, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit

bb.f:                                             ; preds = %bb.c
  %i.aq = call noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseDataArrayListEPcS1_NS_5Value9ValueTypeEPPNS_13DataArrayListE(ptr noundef nonnull %.0.lcssa.i49, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.e) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit, label %_ZN10ODDLParser13OpenDDLParser3topEv.exit56

_ZN10ODDLParser13OpenDDLParser3topEv.exit56:      ; preds = %bb.f
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = icmp ne ptr %i.ax, null
  %or.cond.i57 = and i1 %i.ba, %i.az
  br i1 %or.cond.i57, label %bb.g, label %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit

bb.g:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser3topEv.exit56
  call void @_ZN10ODDLParser7DDLNode16setDataArrayListEPNS_13DataArrayListE(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, ptr noundef nonnull %i.ay)
  br label %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit

bb.h:                                             ; preds = %bb.c
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 23) ; 0 uses
  %i.bc = load ptr, ptr @_ZSt4cerr, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8            ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8
  %.not.i1.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
  %i.bm = load ptr, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10), !inline_history !11
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.bl, %bb.j ], [ %i.bp, %bb.k ]
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) ; 0 uses
  store i8 1, ptr %3, align 1
  br label %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit

_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit: ; preds = %bb.f, %bb.g, %_ZN10ODDLParser13OpenDDLParser3topEv.exit56, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit
  %.133 = phi ptr [ %i.y, %_ZN10ODDLParserL17setNodeReferencesEPNS_7DDLNodeEPNS_9ReferenceE.exit ], [ %.0.lcssa.i49, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.aq, %bb.g ], [ %i.aq, %_ZN10ODDLParser13OpenDDLParser3topEv.exit56 ], [ %i.aq, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.l

bb.l:                                             ; preds = %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50
  %.234 = phi ptr [ %.133, %_ZN10ODDLParserL20setNodeDataArrayListEPNS_7DDLNodeEPNS_13DataArrayListE.exit ], [ %.0.lcssa.i49, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit50 ] ; 5 uses
  %.not9.i58 = icmp eq ptr %.234, %2
  br i1 %.not9.i58, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66, label %.lr.ph.preheader.i59

.lr.ph.preheader.i59:                             ; preds = %bb.l
  %11 = ptrtoaddr ptr %2 to i64
  %12 = ptrtoaddr ptr %.234 to i64
  %i.bs = sub i64 %11, %12
  %scevgep.i60 = getelementptr i8, ptr %.234, i64 %i.bs
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.critedge2.i63, %.lr.ph.preheader.i59
  %.010.i62 = phi ptr [ %i.bu, %.critedge2.i63 ], [ %.234, %.lr.ph.preheader.i59 ] ; 3 uses
  %i.bt = load i8, ptr %.010.i62, align 1
  switch i8 %i.bt, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66 [
    i8 32, label %.critedge2.i63
    i8 9, label %.critedge2.i63
    i8 13, label %.critedge2.i63
    i8 10, label %.critedge2.i63
    i8 44, label %.critedge2.i63
  ]

.critedge2.i63:                                   ; preds = %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61, %.lr.ph.i61
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i62, i64 1 ; 2 uses
  %.not.i64 = icmp eq ptr %i.bu, %2
  br i1 %.not.i64, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66, label %.lr.ph.i61, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66: ; preds = %.lr.ph.i61, %.critedge2.i63, %bb.l
  %.0.lcssa.i65 = phi ptr [ %.234, %bb.l ], [ %scevgep.i60, %.critedge2.i63 ], [ %.010.i62, %.lr.ph.i61 ] ; 6 uses
  %i.bv = icmp eq ptr %.0.lcssa.i65, %2
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66
  %i.bw = load i8, ptr %.0.lcssa.i65, align 1
  %.not38 = icmp eq i8 %i.bw, 125
  br i1 %.not38, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bx, ptr %4, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = ptrtoint ptr %.0.lcssa.i65 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  store i64 %i.cb, ptr %i.a, align 8
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.n
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cd, ptr %4, align 8
  %i.ce = load i64, ptr %i.a, align 8
  store i64 %i.ce, ptr %i.bx, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.n
  %i.cf = phi ptr [ %i.cd, %.noexc.i ], [ %i.bx, %bb.n ] ; 2 uses
  switch i64 %i.cb, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %._crit_edge.i.i67
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cg = load i8, ptr %.0.lcssa.i65, align 1
  store i8 %i.cg, ptr %i.cf, align 1
  br label %._crit_edge.i.i67

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %.0.lcssa.i65, i64 %i.cb, i1 false)
  br label %._crit_edge.i.i67

._crit_edge.i.i67:                                ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.ch = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ch, ptr %i.by, align 8
  %i.ci = load ptr, ptr %4, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 0, ptr %i.cj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ck, ptr %5, align 8
  store i8 125, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i67
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cr = load <2 x ptr>, ptr %i.co, align 8
  store <2 x ptr> %i.cr, ptr %i.cn, align 8
  br label %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit

bb.s:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.u      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #29
  unreachable

_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit: ; preds = %bb.r, %._crit_edge.i.i67
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.cx = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i70 = icmp eq ptr %i.cx, null
  br i1 %.not.i70, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.v, %bb.w
  %i.db = load ptr, ptr %5, align 8               ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ck
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dd = load i64, ptr %i.ck, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.df = load ptr, ptr %4, align 8               ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bx
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = load i64, ptr %i.bx, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ac

bb.y:                                             ; preds = %_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i74 = icmp eq ptr %i.dk, null
  br i1 %.not.i74, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #29
  unreachable

.body:                                            ; preds = %bb.z, %bb.y, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %i.dj, %bb.z ], [ %i.cs, %bb.t ], [ %i.dj, %bb.y ]
  %i.do = load ptr, ptr %5, align 8               ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ck
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.body
  %i.dq = load i64, ptr %i.ck, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ds = load ptr, ptr %4, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bx
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
end_hunk_1
begin_hunk_2_@_ZN10ODDLParser13OpenDDLParser22parsePrimitiveDataTypeEPcS1_RNS_5Value9ValueTypeERm:bb.a
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %.thread110, %.thread106, %.thread104, %.thread115, %bb.p, %.thread111, %bb.n, %.thread101, %bb.m, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.04261.lcssa = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.i ], [ 6, %bb.k ], [ 7, %bb.l ], [ 8, %bb.m ], [ 9, %.thread101 ], [ 10, %bb.n ], [ 11, %.thread111 ], [ 12, %bb.p ], [ 13, %.thread115 ], [ 9, %.thread104 ], [ 9, %.thread106 ], [ 10, %.thread110 ]
  %.lcssa65 = phi i64 [ 4, %bb.b ], [ 4, %bb.c ], [ 5, %bb.e ], [ 5, %bb.f ], [ 5, %bb.g ], [ 13, %bb.i ], [ 14, %bb.k ], [ 14, %bb.l ], [ 14, %bb.m ], [ 4, %.thread101 ], [ 5, %bb.n ], [ 6, %.thread111 ], [ 6, %bb.p ], [ 3, %.thread115 ], [ 4, %.thread104 ], [ 4, %.thread106 ], [ 5, %.thread110 ]
  store i32 %.04261.lcssa, ptr %2, align 4
  br label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4) #32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.e, 4
  br i1 %i.k, label %.thread106, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12, i64 noundef 5) #32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.13, i64 noundef 5) #32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ult i64 %i.e, 13
  br i1 %i.r, label %.thread101, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.15, i64 noundef 13) #32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp eq i64 %i.e, 13
  br i1 %i.u, label %.thread104, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.16, i64 noundef 14) #32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.17, i64 noundef 14) #32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.18, i64 noundef 14) #32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %.thread101

.thread101:                                       ; preds = %bb.m, %bb.h
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.19, i64 noundef 4) #32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.n

.thread106:                                       ; preds = %bb.d
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.19, i64 noundef 4) #32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %.thread115

.thread104:                                       ; preds = %bb.j
  %i.af = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.19, i64 noundef 4) #32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread, label %.thread110

bb.n:                                             ; preds = %.thread101
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20, i64 noundef 5) #32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.o

.thread110:                                       ; preds = %.thread104
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20, i64 noundef 5) #32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread, label %.thread111

bb.o:                                             ; preds = %bb.n
  %i.al = icmp ult i64 %i.e, 6
  br i1 %i.al, label %.thread115, label %.thread111

.thread111:                                       ; preds = %.thread110, %bb.o
  %i.am = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.21, i64 noundef 6) #32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread111
  %i.ao = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.22, i64 noundef 6) #32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %.thread115

bb.q:                                             ; preds = %.preheader
  %.not119 = icmp eq i64 %i.e, 3
  br i1 %.not119, label %.thread115, label %bb.r

.thread115:                                       ; preds = %.thread106, %bb.p, %bb.o, %bb.q
  %i.aq = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23, i64 noundef 3) #32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.r

bb.r:                                             ; preds = %.thread115, %bb.q
  %.pr = load i32, ptr %2, align 4
  %i.as = icmp eq i32 %.pr, -1
  br i1 %i.as, label %.lr.ph.preheader.i, label %bb.s

.lr.ph.preheader.i:                               ; preds = %bb.r
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.au, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.at = load i8, ptr %.010.i, align 1
  switch i8 %i.at, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

bb.s:                                             ; preds = %.thread, %bb.r
  %i.av = phi i64 [ %.lcssa65, %.thread ], [ 3, %bb.r ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 5 uses
  %.not = icmp ult ptr %i.aw, %1
  br i1 %.not, label %bb.t, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

bb.t:                                             ; preds = %bb.s
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 91
  br i1 %i.ay, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 4 uses
  %.not52.not62 = icmp eq ptr %i.az, %1
  br i1 %.not52.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.04563 = phi ptr [ %i.bf, %bb.w ], [ %i.az, %.lr.ph.preheader ] ; 3 uses
  %i.ba = load i8, ptr %.04563, align 1
  %i.bb = icmp eq i8 %i.ba, 93
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 10) #27, !inline_history !29
  %sext = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext, 32
  store i64 %i.bd, ptr %3, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.04563, i64 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

bb.w:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.04563, i64 1 ; 2 uses
  %.not52.not = icmp eq ptr %i.bf, %1
  br i1 %.not52.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

bb.x:                                             ; preds = %bb.t
  store i64 1, ptr %3, align 8
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

._crit_edge:                                      ; preds = %bb.w, %bb.u
  %.045.lcssa = phi ptr [ %i.az, %bb.u ], [ %scevgep, %bb.w ]
  store i32 -1, ptr %2, align 4
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.critedge2.i, %.lr.ph.i, %bb.v, %bb.x, %bb.s, %._crit_edge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %i.be, %bb.v ], [ %i.aw, %bb.s ], [ %.045.lcssa, %._crit_edge ], [ %i.aw, %bb.x ], [ %.010.i, %.lr.ph.i ], [ %scevgep.i, %.critedge2.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser13parseDataListEPcS1_NS_5Value9ValueTypeEPPS2_RmPPNS_9ReferenceES6_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %7 = alloca %"class.std::vector.6", align 8     ; 9 uses
  store ptr null, ptr %3, align 8
  store i64 0, ptr %6, align 8
  store i64 0, ptr %4, align 8
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %0, %1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.af, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %8 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %9 = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %8, %9
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.f, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.010.i, align 1
  switch i8 %i.e, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 5 uses
  %.not = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.g = load i8, ptr %.0.lcssa.i, align 1
  %i.h = icmp eq i8 %i.g, 123
  br i1 %i.h, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8
  %.not83122 = icmp eq ptr %i.i, %1
  br i1 %.not83122, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1
  %.not84167 = icmp eq i8 %.pre, 125
  br i1 %.not84167, label %.critedge, label %.lr.ph.preheader.i92

.lr.ph.preheader.i92:                             ; preds = %.lr.ph, %.lr.ph.preheader.i92.backedge
  %.071123169 = phi ptr [ %.0.lcssa.i110, %.lr.ph.preheader.i92.backedge ], [ %i.i, %.lr.ph ] ; 3 uses
  %.069124168 = phi ptr [ %.2, %.lr.ph.preheader.i92.backedge ], [ null, %.lr.ph ] ; 3 uses
  store ptr null, ptr %i.a, align 8
  %10 = ptrtoaddr ptr %.071123169 to i64
  %i.l = sub i64 %8, %10
  %scevgep.i93 = getelementptr i8, ptr %.071123169, i64 %i.l
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.critedge2.i96, %.lr.ph.preheader.i92
  %.010.i95 = phi ptr [ %i.n, %.critedge2.i96 ], [ %.071123169, %.lr.ph.preheader.i92 ] ; 3 uses
  %i.m = load i8, ptr %.010.i95, align 1
  switch i8 %i.m, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99 [
    i8 32, label %.critedge2.i96
    i8 9, label %.critedge2.i96
    i8 13, label %.critedge2.i96
    i8 10, label %.critedge2.i96
    i8 44, label %.critedge2.i96
  ]

.critedge2.i96:                                   ; preds = %.lr.ph.i94, %.lr.ph.i94, %.lr.ph.i94, %.lr.ph.i94, %.lr.ph.i94
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i95, i64 1 ; 2 uses
  %.not.i97 = icmp eq ptr %i.n, %1
  br i1 %.not.i97, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, label %.lr.ph.i94, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99: ; preds = %.lr.ph.i94, %.critedge2.i96
  %.0.lcssa.i98 = phi ptr [ %scevgep.i93, %.critedge2.i96 ], [ %.010.i95, %.lr.ph.i94 ] ; 24 uses
  switch i32 %2, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit [
    i32 13, label %bb.d
    i32 -1, label %bb.n
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.v
    i32 7, label %bb.v
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 10, label %bb.w
    i32 11, label %bb.w
    i32 12, label %bb.x
  ]

bb.d:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.o = invoke noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE(ptr noundef %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %7, align 8                ; 8 uses
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  invoke void @_ZN10ODDLParser9ReferenceC1EmPPNS_4NameE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef %i.w, ptr noundef nonnull %i.p)
          to label %.thread unwind label %.thread150

.thread:                                          ; preds = %bb.g
  store ptr %i.s, ptr %5, align 8
  store i64 %i.w, ptr %6, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.pre134 = load ptr, ptr %7, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.thread150:                                       ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #28
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre135 = ptrtoint ptr %i.p to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre135, %._crit_edge ], [ %i.u, %.thread ]
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ac) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %.pre134, %bb.h ], [ %i.p, %bb.i ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit101, label %bb.m

bb.m:                                             ; preds = %.thread150, %bb.l
  %.pn.pn153 = phi { ptr, i32 } [ %i.z, %.thread150 ], [ %.pn.pn, %bb.l ]
  %i.ae = phi ptr [ %i.p, %.thread150 ], [ %i.ad, %bb.l ] ; 2 uses
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit101

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit101: ; preds = %bb.l, %bb.m
  %.pn.pn154 = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %.pn.pn153, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn.pn154

bb.n:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99
  %.not.i102 = icmp eq ptr %.0.lcssa.i98, %1
  br i1 %.not.i102, label %.peel.begin.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %.0.lcssa.i98, align 1
  %i.ak = icmp eq i8 %i.aj, 45
  %spec.select.idx.i = zext i1 %i.ak to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i98, i64 %spec.select.idx.i
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.o, %bb.n
  %.09.i = phi ptr [ %.0.lcssa.i98, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %i.al = load i8, ptr %.09.i, align 1            ; 2 uses
  switch i8 %i.al, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i [
    i8 125, label %.loopexit
    i8 44, label %.loopexit
    i8 32, label %.loopexit
    i8 9, label %.loopexit
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i: ; preds = %.peel.begin.i
  %i.am = icmp ne ptr %.09.i, %1
  %i.an = add i8 %i.al, -48
  %.0.i.peel.i = icmp ult i8 %i.an, 11
  %or.cond.i = and i1 %i.am, %.0.i.peel.i
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit

.peel.next.i:                                     ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i, %bb.p
  %.09.pn.i = phi ptr [ %.110.i, %bb.p ], [ %.09.i, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i ]
  %.110.i = getelementptr inbounds nuw i8, ptr %.09.pn.i, i64 1 ; 3 uses
  %i.ao = load i8, ptr %.110.i, align 1           ; 3 uses
  switch i8 %i.ao, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i [
    i8 125, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 44, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 32, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
    i8 9, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i: ; preds = %.peel.next.i
  %.not7.i.i = icmp ne i8 %i.ao, 41
  %i.ap = icmp ne ptr %.110.i, %1
  %spec.select.i.i = and i1 %i.ap, %.not7.i.i
  br i1 %spec.select.i.i, label %bb.p, label %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit

bb.p:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i
  %i.aq = add i8 %i.ao, -48
  %.0.i.i = icmp ult i8 %i.aq, 11
  br i1 %.0.i.i, label %.peel.next.i, label %.loopexit, !llvm.loop !16

_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit:        ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.i, %.peel.next.i, %.peel.next.i, %.peel.next.i, %.peel.next.i
  %i.ar = call noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 3)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

.loopexit:                                        ; preds = %bb.p, %.peel.begin.i, %.peel.begin.i, %.peel.begin.i, %.peel.begin.i, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel.i
  %i.as = tail call noundef zeroext i1 @_ZN10ODDLParser7isFloatIcEEbPT_S2_(ptr noundef %.0.lcssa.i98, ptr noundef %1)
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.at = call noundef ptr @_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.r:                                             ; preds = %.loopexit
  %i.au = load i8, ptr %.0.lcssa.i98, align 1
  switch i8 %i.au, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit [
    i8 34, label %bb.s
    i8 48, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.av = call noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE(ptr noundef nonnull %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i98, i64 1 ; 2 uses
  %.not.i103 = icmp eq ptr %i.aw, %1
  br i1 %.not.i103, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit, label %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit

_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit:    ; preds = %bb.t
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = add i8 %i.ax, -88
  %switch.and.i = and i8 %i.ay, -33
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %bb.u, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.u:                                             ; preds = %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit
  %i.az = call noundef ptr @_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE(ptr noundef nonnull %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.v:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99
  %i.ba = call noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.w:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99
  %i.bb = call noundef ptr @_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %.0.lcssa.i98, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2)
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.x:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99
  %i.bc = icmp eq ptr %.0.lcssa.i98, null
  %i.bd = icmp eq ptr %.0.lcssa.i98, %1
  %or.cond.i104 = or i1 %i.bc, %i.bd
  br i1 %or.cond.i104, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %11 = ptrtoaddr ptr %.0.lcssa.i98 to i64
  %i.be = sub i64 %8, %11
  %scevgep.i.i = getelementptr i8, ptr %.0.lcssa.i98, i64 %i.be ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.bg, %.critedge2.i.i ], [ %.0.lcssa.i98, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bf = load i8, ptr %.010.i.i, align 1         ; 2 uses
  switch i8 %i.bf, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split.i: ; preds = %.critedge2.i.i
  %.pr.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split.i
  %i.bh = phi i8 [ %.pr.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split.i ], [ %i.bf, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bi = icmp eq i8 %i.bh, 34
  br i1 %i.bi, label %bb.y, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

bb.y:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp ne i8 %i.bk, 34
  %i.bm = icmp ne ptr %i.bj, %1
  %i.bn = and i1 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph.i106, label %._crit_edge.i

.lr.ph.i106:                                      ; preds = %bb.y, %.lr.ph.i106
  %.032.i = phi i64 [ %i.bp, %.lr.ph.i106 ], [ 0, %bb.y ]
  %.02631.i = phi ptr [ %i.bo, %.lr.ph.i106 ], [ %i.bj, %bb.y ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 3 uses
  %i.bp = add i64 %.032.i, 1                      ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1
  %i.br = icmp ne i8 %i.bq, 34
  %i.bs = icmp ne ptr %i.bo, %1
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph.i106, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i106, %bb.y
  %i.bu = phi ptr [ %.0.lcssa.i.i, %bb.y ], [ %.02631.i, %.lr.ph.i106 ]
  %.0.lcssa.i105 = phi i64 [ 0, %bb.y ], [ %i.bp, %.lr.ph.i106 ] ; 3 uses
  %i.bv = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 12, i64 noundef %.0.lcssa.i105) ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call ptr @strncpy(ptr noundef %i.bx, ptr noundef nonnull %i.bj, i64 noundef %.0.lcssa.i105) #27 ; 0 uses
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.lcssa.i105
  store i8 0, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit

_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit: ; preds = %bb.r, %bb.t, %._crit_edge.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99, %bb.q, %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit, %bb.u, %bb.s, %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit, %bb.w, %bb.v, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit
  %.172.ph = phi ptr [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ], [ %i.cb, %._crit_edge.i ], [ %i.o, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EED2Ev.exit ], [ %i.bb, %bb.w ], [ %i.ba, %bb.v ], [ %.0.lcssa.i98, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit99 ], [ %.0.lcssa.i98, %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit ], [ %i.az, %bb.u ], [ %i.av, %bb.s ], [ %i.at, %bb.q ], [ %i.ar, %_ZN10ODDLParser9isIntegerIcEEbPT_S2_.exit ], [ %.0.lcssa.i98, %bb.t ], [ %.0.lcssa.i98, %bb.r ] ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not87 = icmp eq ptr %.pr, null
  br i1 %.not87, label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit
  %i.cc = load ptr, ptr %3, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %.pr, ptr %3, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZN10ODDLParser5Value7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(32) %.069124168, ptr noundef nonnull %.pr)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ce = load i64, ptr %4, align 8
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %4, align 8
  br label %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread

_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread: ; preds = %bb.x, %bb.ac, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit
  %.172117 = phi ptr [ %.172.ph, %bb.ac ], [ %.172.ph, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit ], [ %.0.lcssa.i98, %bb.x ] ; 5 uses
  %.2 = phi ptr [ %.pr, %bb.ac ], [ %.069124168, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit ], [ %.069124168, %bb.x ]
  %.not5.i = icmp eq ptr %.172117, %1
  br i1 %.not5.i, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.preheader.i107

.lr.ph.preheader.i107:                            ; preds = %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread
  %12 = ptrtoaddr ptr %.172117 to i64
  %i.cg = sub i64 %8, %12
  %scevgep.i108 = getelementptr i8, ptr %.172117, i64 %i.cg
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.ad, %.lr.ph.preheader.i107
  %.06.i = phi ptr [ %i.ci, %bb.ad ], [ %.172117, %.lr.ph.preheader.i107 ] ; 10 uses
  %i.ch = load i8, ptr %.06.i, align 1
  switch i8 %i.ch, label %bb.ad [
    i8 125, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 123, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 91, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 44, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 41, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 40, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 32, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
    i8 9, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
  ]

bb.ad:                                            ; preds = %.lr.ph.i109
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i111 = icmp eq ptr %i.ci, %1
  br i1 %.not.i111, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.i109, !llvm.loop !32

_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %.lr.ph.i109, %bb.ad, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread
  %.0.lcssa.i110 = phi ptr [ %.172117, %_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE.exit.thread ], [ %scevgep.i108, %bb.ad ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ], [ %.06.i, %.lr.ph.i109 ] ; 5 uses
  %i.cj = icmp eq ptr %.0.lcssa.i110, %1
  br i1 %i.cj, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
  %i.ck = load i8, ptr %.0.lcssa.i110, align 1
  switch i8 %i.ck, label %.critedge [
    i8 44, label %.lr.ph.preheader.i92.backedge
    i8 9, label %.lr.ph.preheader.i92.backedge
    i8 32, label %.lr.ph.preheader.i92.backedge
  ]

.lr.ph.preheader.i92.backedge:                    ; preds = %bb.ae, %bb.ae, %bb.ae
  br label %.lr.ph.preheader.i92

.critedge:                                        ; preds = %bb.ae, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, %.lr.ph, %bb.c
  %.273 = phi ptr [ %i.i, %bb.c ], [ %i.i, %.lr.ph ], [ %.0.lcssa.i110, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit ], [ %.0.lcssa.i110, %bb.ae ] ; 2 uses
  %.not90 = icmp ne ptr %.273, %1
  %spec.select.idx = zext i1 %.not90 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.273, i64 %spec.select.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.af

bb.af:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %bb.b, %.critedge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %.critedge ], [ %.0.lcssa.i, %bb.b ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser3topEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseDataArrayListEPcS1_NS_5Value9ValueTypeEPPNS_13DataArrayListE(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %0, %1
  %or.cond36 = or i1 %i.f, %i.g
  br i1 %or.cond36, label %bb.l, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %0 to i64
  %i.h = sub i64 %4, %5
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.j, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.i = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split: ; preds = %.critedge2.i
  %.pr = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split
  %i.k = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %i.i, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %scevgep.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %.010.i, %.lr.ph.i ] ; 2 uses
  %i.l = icmp eq i8 %i.k, 123
  br i1 %i.l, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.030 = phi ptr [ %i.m, %bb.c ], [ %i.n, %bb.j ]
  %.0 = phi ptr [ null, %bb.c ], [ %.1, %bb.j ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 0, ptr %i.d, align 8
  store ptr null, ptr %i.a, align 8
  %i.n = call noundef ptr @_ZN10ODDLParser13OpenDDLParser13parseDataListEPcS1_NS_5Value9ValueTypeEPPS2_RmPPNS_9ReferenceES6_(ptr noundef nonnull %.030, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 8 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = load i64, ptr %i.c, align 8              ; 3 uses
  %i.r = icmp ne i64 %i.q, 0
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %.0, null
  %i.t = load i64, ptr %i.d, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.v = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 15 uses
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN10ODDLParser13DataArrayListC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit unwind label %bb.g

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.aa, %bb.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 40) #28
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.o, ptr %i.x, align 8
  store i64 %i.t, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.u, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %i.q, ptr %i.z, align 8
  store ptr %i.v, ptr %3, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  invoke void @_ZN10ODDLParser13DataArrayListC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit37 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit37: ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.o, ptr %i.ab, align 8
  store i64 %i.t, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.u, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %i.q, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.v, ptr %i.ae, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit, %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit37, %bb.d
  %.1 = phi ptr [ %i.v, %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit ], [ %i.v, %_ZN10ODDLParserL19createDataArrayListEPNS_5ValueEmPNS_9ReferenceEm.exit37 ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.af = load i8, ptr %i.n, align 1
  %i.ag = icmp eq i8 %i.af, 44
  %i.ah = icmp ne ptr %i.n, %1
  %i.ai = and i1 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.k, !llvm.loop !33

bb.k:                                             ; preds = %bb.j
  %.not9.i38 = icmp eq ptr %i.n, %1
  br i1 %.not9.i38, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46, label %.lr.ph.preheader.i39

.lr.ph.preheader.i39:                             ; preds = %bb.k
  %6 = ptrtoaddr ptr %i.n to i64
  %i.aj = sub i64 %4, %6
  %scevgep.i40 = getelementptr i8, ptr %i.n, i64 %i.aj
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.critedge2.i43, %.lr.ph.preheader.i39
  %.010.i42 = phi ptr [ %i.al, %.critedge2.i43 ], [ %i.n, %.lr.ph.preheader.i39 ] ; 3 uses
  %i.ak = load i8, ptr %.010.i42, align 1
  switch i8 %i.ak, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46 [
    i8 32, label %.critedge2.i43
    i8 9, label %.critedge2.i43
    i8 13, label %.critedge2.i43
    i8 10, label %.critedge2.i43
    i8 44, label %.critedge2.i43
  ]

.critedge2.i43:                                   ; preds = %.lr.ph.i41, %.lr.ph.i41, %.lr.ph.i41, %.lr.ph.i41, %.lr.ph.i41
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i42, i64 1 ; 2 uses
  %.not.i44 = icmp eq ptr %i.al, %1
  br i1 %.not.i44, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46, label %.lr.ph.i41, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46: ; preds = %.lr.ph.i41, %.critedge2.i43, %bb.k
  %.0.lcssa.i45 = phi ptr [ %i.n, %bb.k ], [ %scevgep.i40, %.critedge2.i43 ], [ %.010.i42, %.lr.ph.i41 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i45, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.l

bb.l:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46, %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.b ], [ %0, %bb.a ], [ %i.am, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit46 ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ]
  ret ptr %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK10ODDLParser13OpenDDLParser7getRootEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK10ODDLParser13OpenDDLParser10getContextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, !prof !34

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !3

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1
  store i8 %i.q, ptr %i.o, align 1
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit: ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit, %bb.g
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
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseReferenceEPcS1_RSt6vectorIPNS_4NameESaIS4_EE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %0, %1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.critedge, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %4 = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %3, %4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.g, %.critedge2.i.i ], [ %0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.f = load i8, ptr %.010.i.i, align 1          ; 2 uses
  switch i8 %i.f, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %1
  br i1 %.not.i.i, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i: ; preds = %.critedge2.i.i
  %.pre.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i
  %i.h = phi i8 [ %.pre.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = and i8 %i.h, -2
  %switch.i = icmp eq i8 %i.i, 36
  br i1 %switch.i, label %bb.b, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %i.k = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.j, ptr noundef readnone %1, ptr noundef nonnull %i.b) ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.l, null
  br i1 %.not25.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64, label %bb.c

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.h, 37
  %spec.store.select.i = zext i1 %i.m to i32
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.l)
          to label %bb.e unwind label %bb.d

common.resume:                                    ; preds = %bb.p, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.be, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.n, ptr %i.q, align 8
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.p, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8                ; 4 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.n, ptr %i.ah, align 8
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ag, ptr %2, align 8
  store ptr %i.aj, ptr %i.p, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64
  %.0.i63 = phi ptr [ %i.k, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.k, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread64 ], [ %i.k, %bb.f ], [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ] ; 3 uses
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
  %5 = ptrtoaddr ptr %.02082 to i64
  %i.ap = sub i64 %3, %5
  %scevgep.i = getelementptr i8, ptr %.02082, i64 %i.ap
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.06.i = phi ptr [ %i.ar, %bb.l ], [ %.02082, %.lr.ph.preheader.i ] ; 10 uses
  %i.aq = load i8, ptr %.06.i, align 1
  switch i8 %i.aq, label %bb.l [
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
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %.not.i28 = icmp eq ptr %i.ar, %1
  br i1 %.not.i28, label %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !32

_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi ptr [ %scevgep.i, %bb.l ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ], [ %.06.i, %.lr.ph.i ] ; 7 uses
  %.not26 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not26, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit
  %i.as = load i8, ptr %.0.lcssa.i, align 1
  %i.at = icmp eq i8 %i.as, 44
  br i1 %i.at, label %.lr.ph.preheader.i.i30, label %.critedge

.lr.ph.preheader.i.i30:                           ; preds = %bb.m
  %6 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.au = sub i64 %3, %6
  %scevgep.i.i31 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.au ; 2 uses
  br label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.critedge2.i.i34, %.lr.ph.preheader.i.i30
  %.010.i.i33 = phi ptr [ %i.aw, %.critedge2.i.i34 ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i30 ] ; 3 uses
  %i.av = load i8, ptr %.010.i.i33, align 1       ; 2 uses
  switch i8 %i.av, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38 [
    i8 32, label %.critedge2.i.i34
    i8 9, label %.critedge2.i.i34
    i8 13, label %.critedge2.i.i34
    i8 10, label %.critedge2.i.i34
    i8 44, label %.critedge2.i.i34
  ]

.critedge2.i.i34:                                 ; preds = %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32, %.lr.ph.i.i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i33, i64 1 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i35, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36, label %.lr.ph.i.i32, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36: ; preds = %.critedge2.i.i34
  %.pre.i37 = load i8, ptr %scevgep.i.i31, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38: ; preds = %.lr.ph.i.i32, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36
  %i.ax = phi i8 [ %.pre.i37, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36 ], [ %i.av, %.lr.ph.i.i32 ] ; 2 uses
  %.0.lcssa.i.i39 = phi ptr [ %scevgep.i.i31, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i36 ], [ %.010.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  %i.ay = and i8 %i.ax, -2
  %switch.i40 = icmp eq i8 %i.ay, 36
  br i1 %switch.i40, label %bb.n, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.n:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i39, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8
  %i.ba = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.az, ptr noundef readnone %1, ptr noundef nonnull %i.a) ; 3 uses
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not25.i42 = icmp eq ptr %i.bb, null
  br i1 %.not25.i42, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71, label %bb.o

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i8 %i.ax, 37
  %spec.store.select.i43 = zext i1 %i.bc to i32
  %i.bd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i32 noundef %spec.store.select.i43, ptr noundef nonnull %i.bb)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bf = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.bg = load ptr, ptr %i.am, align 8
  %.not.i45 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.al, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.al, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

bb.s:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %2, align 8               ; 4 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.t, label %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46: ; preds = %bb.s
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i47, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i48)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #31 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store ptr %i.bd, ptr %i.bv, align 8
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.u, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49

bb.u:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49: ; preds = %bb.u, %_ZNKSt6vectorIPN10ODDLParser4NameESaIS2_EE12_M_check_lenEmPKc.exit.i.i46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i50 = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #28
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51: ; preds = %bb.v, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i49
  store ptr %i.bu, ptr %2, align 8
  store ptr %i.bx, ptr %i.al, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.by, ptr %i.am, align 8
  br label %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52

_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51, %bb.r, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71
  %.0.i4170 = phi ptr [ %i.ba, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i51 ], [ %i.ba, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit44.thread71 ], [ %i.ba, %bb.r ], [ %.0.lcssa.i.i39, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i38 ] ; 3 uses
  %.not25 = icmp eq ptr %.0.i4170, %1
  br i1 %.not25, label %.critedge, label %bb.k, !llvm.loop !35

.critedge:                                        ; preds = %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit, %bb.m, %bb.k, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.i63, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.i4170, %_ZNSt6vectorIPN10ODDLParser4NameESaIS2_EE9push_backERKS2_.exit52 ], [ %.0.lcssa.i, %_ZN10ODDLParserL16getNextSeparatorIcEEPT_S2_S2_.exit ], [ %.02082, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseBooleanLiteralEPcS1_PPNS_5ValueE(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %3, %4
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.e, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.010.i, align 1
  switch i8 %i.d, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 7 uses
  %.not32 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not32, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i60 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.f = sub i64 %3, %.0.lcssa.i60                ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.034 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.02733 = phi ptr [ %i.h, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.g = load i8, ptr %.02733, align 1
  switch i8 %i.g, label %bb.b [
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
  %i.h = getelementptr inbounds nuw i8, ptr %.02733, i64 1 ; 2 uses
  %i.i = add nuw i64 %.034, 1
  %.not = icmp eq ptr %i.h, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.027.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %.02733, %.lr.ph ], [ %scevgep, %bb.b ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %.034, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = tail call i32 @strncmp(ptr noundef nonnull @.str.41, ptr noundef %.0.lcssa.i, i64 noundef %.0.lcssa) #32
  %.not30 = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not30, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = tail call i32 @strncmp(ptr noundef nonnull @.str.42, ptr noundef %.0.lcssa.i, i64 noundef %.0.lcssa) #32
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %.critedge, %bb.c
  %i.l = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 0, i64 noundef 1) ; 2 uses
  store ptr %i.l, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value7setBoolEb(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i1 noundef zeroext %.not30)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.027.lcssa, %bb.c ], [ %.027.lcssa, %.sink.split ]
  ret ptr %.1
}

declare noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef, i64 noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value7setBoolEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser19parseIntegerLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
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
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %0 to i64
  %i.e = sub i64 %4, %5
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
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 8 uses
  %.not49 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not49, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i67 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.h = sub i64 %4, %.0.lcssa.i67
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03850 = phi ptr [ %i.j, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.i = load i8, ptr %.03850, align 1
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
  %i.j = getelementptr inbounds nuw i8, ptr %.03850, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.038.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %.03850, %.lr.ph ], [ %scevgep, %bb.b ] ; 10 uses
  %i.k = load i8, ptr %.0.lcssa.i, align 1
  %i.l = add i8 %i.k, -48
  %.0.i = icmp ult i8 %i.l, 11
  br i1 %.0.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.critedge
  %i.m = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #27, !inline_history !38 ; 4 uses
  %i.n = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %.0.lcssa.i, ptr noundef null, i32 noundef 10) #27 ; 4 uses
  %i.o = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef %3, i64 noundef 1) ; 9 uses
  store ptr %i.o, ptr %2, align 8
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
  %i.p = trunc i64 %i.m to i8
  tail call void @_ZN10ODDLParser5Value7setInt8Ea(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 noundef signext %i.p)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = trunc i64 %i.m to i16
  tail call void @_ZN10ODDLParser5Value8setInt16Es(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i16 noundef signext %i.q)
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.m to i32
  tail call void @_ZN10ODDLParser5Value8setInt32Ei(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef %i.r)
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN10ODDLParser5Value8setInt64El(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.m)
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.n to i8
  tail call void @_ZN10ODDLParser5Value15setUnsignedInt8Eh(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 noundef zeroext %i.s)
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.t = trunc i64 %i.n to i16
  tail call void @_ZN10ODDLParser5Value16setUnsignedInt16Et(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i16 noundef zeroext %i.t)
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.u = trunc i64 %i.n to i32
  tail call void @_ZN10ODDLParser5Value16setUnsignedInt32Ej(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef %i.u)
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  tail call void @_ZN10ODDLParser5Value16setUnsignedInt64Em(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.n)
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.038.lcssa, %.critedge ], [ %.038.lcssa, %bb.d ], [ %.038.lcssa, %bb.e ], [ %.038.lcssa, %bb.f ], [ %.038.lcssa, %bb.g ], [ %.038.lcssa, %bb.h ], [ %.038.lcssa, %bb.i ], [ %.038.lcssa, %bb.j ], [ %.038.lcssa, %bb.k ], [ %.038.lcssa, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN10ODDLParser5Value7setInt8Ea(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value8setInt16Es(ptr noundef nonnull align 8 dereferenceable(32), i16 noundef signext) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value8setInt32Ei(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value8setInt64El(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value15setUnsignedInt8Eh(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value16setUnsignedInt16Et(ptr noundef nonnull align 8 dereferenceable(32), i16 noundef zeroext) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value16setUnsignedInt32Ej(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value16setUnsignedInt64Em(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser20parseFloatingLiteralEPcS1_PPNS_5ValueENS2_9ValueTypeE(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.critedge36, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %4, %5
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.e, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.010.i, align 1
  switch i8 %i.d, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.010.i, %.lr.ph.i ] ; 10 uses
  %.not46 = icmp eq ptr %.0.lcssa.i, %1
  br i1 %.not46, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.0.lcssa.i64 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.f = sub i64 %4, %.0.lcssa.i64
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03247 = phi ptr [ %i.h, %bb.b ], [ %.0.lcssa.i, %.lr.ph.preheader ] ; 10 uses
  %i.g = load i8, ptr %.03247, align 1
  switch i8 %i.g, label %bb.b [
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
  %i.h = getelementptr inbounds nuw i8, ptr %.03247, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.h, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !39

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %.032.lcssa = phi ptr [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %.03247, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %i.i = load i8, ptr %.0.lcssa.i, align 1        ; 3 uses
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  %.not.i39 = icmp eq ptr %i.k, %1
  br i1 %.not.i39, label %.critedge38, label %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit

_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit:    ; preds = %bb.c
  %i.l = load i8, ptr %i.k, align 1
  %i.m = add i8 %i.l, -88
  %switch.and.i = and i8 %i.m, -33
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %bb.d, label %.critedge38

bb.d:                                             ; preds = %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit
  %i.n = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE(ptr noundef nonnull %.0.lcssa.i, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %.critedge36

bb.e:                                             ; preds = %.critedge
  %i.o = add i8 %i.i, -48
  %.0.i40 = icmp ult i8 %i.o, 11
  br i1 %.0.i40, label %.critedge38, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i8 %i.i, 45
  br i1 %i.p, label %bb.g, label %.critedge36

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = add i8 %i.r, -48
  %.0.i41 = icmp ult i8 %i.s, 11
  br i1 %.0.i41, label %.critedge38, label %.critedge36

.critedge38:                                      ; preds = %_ZN10ODDLParser12isHexLiteralIcEEbPT_S2_.exit, %bb.c, %bb.e, %bb.g
  %i.t = icmp eq i32 %3, 11
  %i.u = tail call double @strtod(ptr noundef nonnull captures(none) %.0.lcssa.i, ptr noundef null) #27 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge38
  %i.v = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 11, i64 noundef 1) ; 2 uses
  store ptr %i.v, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(32) %i.v, double noundef %i.u)
  br label %.critedge36

bb.i:                                             ; preds = %.critedge38
  %i.w = fptrunc double %i.u to float
  %i.x = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 10, i64 noundef 1) ; 2 uses
  store ptr %i.x, ptr %2, align 8
  tail call void @_ZN10ODDLParser5Value8setFloatEf(ptr noundef nonnull align 8 dereferenceable(32) %i.x, float noundef %i.w)
  br label %.critedge36

.critedge36:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.i, %bb.g, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.032.lcssa, %bb.g ], [ %.032.lcssa, %bb.i ], [ %.032.lcssa, %bb.h ], [ %.032.lcssa, %bb.f ], [ %.032.lcssa, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser16parseHexaLiteralEPcS1_PPNS_5ValueE(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %4 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %3, %4
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.e, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.d, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split: ; preds = %.critedge2.i
  %.pr = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split
  %i.f = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %i.d, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %scevgep.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %.010.i, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i104 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %.not = icmp eq i8 %i.f, 48
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.g [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 2 ; 4 uses
  %.not6468 = icmp eq ptr %i.i, %1
  br i1 %.not6468, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = sub i64 %3, %.0.lcssa.i104
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.j
  %i.k = trunc i64 %3 to i32
  %i.l = add i32 %i.k, -2
  %i.m = trunc i64 %.0.lcssa.i104 to i32
  %i.n = sub i32 %i.l, %i.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.04770 = phi i32 [ %i.p, %bb.d ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.05369 = phi ptr [ %i.q, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 10 uses
  %i.o = load i8, ptr %.05369, align 1
  switch i8 %i.o, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %.critedge
    i8 91, label %.critedge
    i8 44, label %.critedge
    i8 41, label %.critedge
    i8 40, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i32 %.04770, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.05369, i64 1 ; 2 uses
  %.not64 = icmp eq ptr %i.q, %1
  br i1 %.not64, label %.critedge, label %.lr.ph, !llvm.loop !40

.critedge:                                        ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.053.lcssa = phi ptr [ %.05369, %.lr.ph ], [ %scevgep, %bb.d ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ], [ %.05369, %.lr.ph ] ; 2 uses
  %.047.lcssa = phi i32 [ %.04770, %.lr.ph ], [ %i.n, %bb.d ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ], [ %.04770, %.lr.ph ] ; 2 uses
  %i.r = icmp sgt i32 %.047.lcssa, 0
  br i1 %i.r, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %.critedge, %select.unfold
  %.04498 = phi i32 [ %i.ac, %select.unfold ], [ 0, %.critedge ]
  %.14897 = phi i32 [ %i.aa, %select.unfold ], [ %.047.lcssa, %.critedge ] ; 2 uses
  %.05096 = phi ptr [ %i.ad, %select.unfold ], [ %i.i, %.critedge ] ; 2 uses
  %i.s = load i8, ptr %.05096, align 1            ; 3 uses
  %i.t = add i8 %i.s, -48
  %.0.i.i = icmp ult i8 %i.t, 11
  br i1 %.0.i.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph99
  %i.u = sext i8 %i.s to i32                      ; 2 uses
  %i.v = add nsw i32 %i.u, -65
  %i.w = add nsw i32 %i.u, -97
  %umin.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.w) ; 2 uses
  %i.x = icmp ult i32 %umin.i, 16
  %switch.offset.i = add nsw i32 %umin.i, 10
  %spec.select = select i1 %i.x, i32 %switch.offset.i, i32 9999999
  br label %select.unfold

bb.e:                                             ; preds = %.lr.ph99
  %i.y = zext nneg i8 %i.s to i32
  %i.z = add nsw i32 %i.y, -48
  br label %select.unfold

select.unfold:                                    ; preds = %.preheader.i, %bb.e
  %.2.i = phi i32 [ %i.z, %bb.e ], [ %spec.select, %.preheader.i ]
  %i.aa = add nsw i32 %.14897, -1
  %i.ab = shl i32 %.04498, 4
  %i.ac = or i32 %.2.i, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05096, i64 1
  %i.ae = icmp sgt i32 %.14897, 1
  br i1 %i.ae, label %.lr.ph99, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %select.unfold
  %i.af = sext i32 %i.ac to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %.critedge
  %.053.lcssa112 = phi ptr [ %.053.lcssa, %.critedge ], [ %.053.lcssa, %._crit_edge.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %.044.lcssa = phi i64 [ 0, %.critedge ], [ %i.af, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ag = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 8, i64 noundef 1) ; 3 uses
  store ptr %i.ag, ptr %2, align 8
  %.not65 = icmp eq ptr %i.ag, null
  br i1 %.not65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN10ODDLParser5Value16setUnsignedInt64Em(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 noundef %.044.lcssa)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.b, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %bb.a
  %.4 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ], [ %.053.lcssa112, %._crit_edge ], [ %.053.lcssa112, %bb.f ]
  ret ptr %.4
}

declare void @_ZN10ODDLParser5Value9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #16

declare void @_ZN10ODDLParser5Value8setFloatEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser18parseStringLiteralEPcS1_PPNS_5ValueE(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %3, %4
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.e, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.010.i, align 1            ; 2 uses
  switch i8 %i.d, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 10, label %.critedge2.i
    i8 44, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split: ; preds = %.critedge2.i
  %.pr = load i8, ptr %scevgep.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit: ; preds = %.lr.ph.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split
  %i.f = phi i8 [ %.pr, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %i.d, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %scevgep.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exitthread-pre-split ], [ %.010.i, %.lr.ph.i ] ; 3 uses
  %i.g = icmp eq i8 %i.f, 34
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp ne i8 %i.i, 34
  %i.k = icmp ne ptr %i.h, %1
  %i.l = and i1 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.032 = phi i64 [ %i.n, %.lr.ph ], [ 0, %bb.b ]
  %.02631 = phi ptr [ %i.m, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02631, i64 1 ; 3 uses
  %i.n = add i64 %.032, 1                         ; 2 uses
  %i.o = load i8, ptr %i.m, align 1
  %i.p = icmp ne i8 %i.o, 34
  %i.q = icmp ne ptr %i.m, %1
  %i.r = and i1 %i.q, %i.p
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.s = phi ptr [ %.0.lcssa.i, %bb.b ], [ %.02631, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.t = tail call noundef ptr @_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm(i32 noundef 12, i64 noundef %.0.lcssa) ; 2 uses
  store ptr %i.t, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @strncpy(ptr noundef %i.v, ptr noundef nonnull %i.h, i64 noundef %.0.lcssa) #27 ; 0 uses
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.lcssa
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  br label %bb.c

bb.c:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit, %._crit_edge, %bb.a
  %.025 = phi ptr [ %0, %bb.a ], [ %i.ab, %._crit_edge ], [ %.0.lcssa.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit ]
  ret ptr %.025
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10ODDLParserL22createPropertyWithDataEPNS_4TextEPNS_5ValueEPPNS_8PropertyE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 4 uses
  invoke void @_ZN10ODDLParser8PropertyC1EPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #28
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10ODDLParser7isFloatIcEEbPT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 45
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 9 uses
  %i.c = load i8, ptr %.019, align 1              ; 9 uses
  switch i8 %i.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel: ; preds = %.peel.begin
  %.not7.i.peel = icmp ne i8 %i.c, 41
  %i.d = icmp ne ptr %.019, %1
  %spec.select.i.peel = and i1 %i.d, %.not7.i.peel
  br i1 %spec.select.i.peel, label %bb.c, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread

bb.c:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel
  %i.e = icmp eq i8 %i.c, 46
  br i1 %i.e, label %.preheader.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i8 %i.c, -48
  %.0.i.peel = icmp ult i8 %i.f, 11
  br i1 %.0.i.peel, label %.peel.next, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.019.pn = phi ptr [ %.120, %bb.f ], [ %.019, %bb.d ]
  %.120 = getelementptr inbounds nuw i8, ptr %.019.pn, i64 1 ; 9 uses
  %i.g = load i8, ptr %.120, align 1              ; 9 uses
  switch i8 %i.g, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit: ; preds = %.peel.next
  %.not7.i = icmp ne i8 %i.g, 41
  %i.h = icmp ne ptr %.120, %1
  %spec.select.i = and i1 %i.h, %.not7.i
  br i1 %spec.select.i, label %bb.e, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread

bb.e:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %.preheader.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i8 %i.g, -48
  %.0.i = icmp ult i8 %i.j, 11
  br i1 %.0.i, label %.peel.next, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread, !llvm.loop !42

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread: ; preds = %.peel.next, %.peel.next, %.peel.next, %.peel.next, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel, %.peel.begin, %.peel.begin, %.peel.begin, %.peel.begin
  %.120.lcssa = phi ptr [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %.peel.begin ], [ %.019, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ %.120, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ], [ %.120, %.peel.next ], [ %.120, %.peel.next ], [ %.120, %.peel.next ], [ %.120, %.peel.next ]
  %.lcssa = phi i8 [ %i.c, %.peel.begin ], [ %i.c, %.peel.begin ], [ %i.c, %.peel.begin ], [ %i.c, %.peel.begin ], [ %i.c, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ %i.g, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ], [ %i.g, %.peel.next ], [ %i.g, %.peel.next ], [ %i.g, %.peel.next ], [ %i.g, %.peel.next ]
  %.1 = phi i1 [ false, %.peel.begin ], [ false, %.peel.begin ], [ false, %.peel.begin ], [ false, %.peel.begin ], [ false, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.peel ], [ true, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit ], [ true, %.peel.next ], [ true, %.peel.next ], [ true, %.peel.next ], [ true, %.peel.next ]
  %i.k = icmp eq i8 %.lcssa, 46
  br i1 %i.k, label %.preheader.preheader, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

.preheader.preheader:                             ; preds = %bb.e, %bb.c, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread
  %.147 = phi i1 [ %.1, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread ], [ true, %bb.c ], [ true, %bb.e ] ; 5 uses
  %.120.lcssa46 = phi ptr [ %.120.lcssa, %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit.thread ], [ %.019, %bb.c ], [ %.120, %bb.e ]
  %.221.peel = getelementptr inbounds nuw i8, ptr %.120.lcssa46, i64 1 ; 3 uses
  %i.l = load i8, ptr %.221.peel, align 1         ; 3 uses
  switch i8 %i.l, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 44, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 32, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
    i8 9, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
  ]

_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel: ; preds = %.preheader.preheader
  %.not7.i24.peel = icmp ne i8 %i.l, 41
  %i.m = icmp ne ptr %.221.peel, %1
  %spec.select.i25.peel = and i1 %i.m, %.not7.i24.peel
  br i1 %spec.select.i25.peel, label %bb.g, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

bb.g:                                             ; preds = %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.peel
  %i.n = add i8 %i.l, -48
  %.0.i27.peel = icmp ult i8 %i.n, 11
  br i1 %.0.i27.peel, label %.preheader, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread

.preheader:                                       ; preds = %bb.g, %bb.h
  %.120.pn = phi ptr [ %.221, %bb.h ], [ %.221.peel, %bb.g ]
  %.221 = getelementptr inbounds nuw i8, ptr %.120.pn, i64 1 ; 3 uses
  %i.o = load i8, ptr %.221, align 1              ; 3 uses
  switch i8 %i.o, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26 [
    i8 125, label %_ZN10ODDLParser15isNotEndOfTokenIcEEbPT_S2_.exit26.thread
end_hunk_2
