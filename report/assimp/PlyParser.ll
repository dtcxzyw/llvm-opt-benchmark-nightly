inline.NumInlined: 1469
inline.NumDeleted: 612
begin_hunk_0_@_ZN6Assimp3PLY3DOM13ParseInstanceERNS_14IOStreamBufferIcEEPS1_PNS_11PLYImporterE:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM11ParseHeaderERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.k, %bb.j, %bb.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.e

bb.i:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.m = invoke noundef zeroext i1 @_ZN6Assimp3PLY3DOM25ParseElementInstanceListsERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEEPNS_11PLYImporterE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2)
          to label %bb.k unwind label %bb.g       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.f, %bb.k
  %i.o = phi ptr [ %i.n, %bb.k ], [ %i.d, %bb.f ]
  %i.p = phi ptr [ @.str.84, %bb.k ], [ @.str.83, %bb.f ]
  invoke void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull %i.p)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.q = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIcSaIcEED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit10

_ZNSt6vectorIcSaIcEED2Ev.exit10:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance13ParseInstanceERPKcS3_PKNS0_7ElementEPS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca double, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %2, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.p)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %.not17 = icmp eq ptr %i.aa, %i.z
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  %i.ab = load ptr, ptr %2, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit
  %.sroa.012.019 = phi ptr [ %i.az, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit ], [ %i.aa, %.lr.ph.preheader ] ; 6 uses
  %.sroa.09.018 = phi ptr [ %i.ba, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit ], [ %i.ab, %.lr.ph.preheader ] ; 3 uses
  %i.ac = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance13ParseInstanceERPKcS3_PKNS0_8PropertyEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %.sroa.09.018, ptr noundef nonnull %.sroa.012.019)
  br i1 %i.ac, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ad = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull @.str.85)
  %i.ae = load i32, ptr %.sroa.09.018, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  switch i32 %i.ae, label %bb.i [
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

bb.h:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

bb.i:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i, align 8
  br label %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334 = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit
  store i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334, ptr %i.ag, align 8
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.af, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE.exit
  %i.al = load ptr, ptr %.sroa.012.019, align 8   ; 4 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.l, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %4 = icmp ult i64 %i.ar, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %5 = select i1 %4, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %5, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #30 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ao ; 2 uses
  store i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.123.i163334, ptr %i.av, align 8
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.au, ptr %.sroa.012.019, align 8
  store ptr %i.ax, ptr %i.af, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %5
  store ptr %i.ay, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.019, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 48
  %i.bb = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.az, %i.bb
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  ret i1 true
}

declare void @_ZN6Assimp11PLYImporter10LoadVertexEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3PLY15ElementInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY15ElementInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_7ElementEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr noundef readonly captures(none) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %4, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %5, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.p)
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.g ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.aa = load ptr, ptr %5, align 8               ; 2 uses
  %.not14 = icmp eq ptr %i.aa, %i.z
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  %i.ab = load ptr, ptr %4, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.011.016 = phi ptr [ %i.ad, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.sroa.09.015 = phi ptr [ %i.ae, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %i.ac = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_8PropertyEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull %.sroa.09.015, ptr noundef nonnull %.sroa.011.016, i1 noundef zeroext %6) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 48
  %i.af = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.ad, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstanceESaIS2_EE6resizeEm.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance13ParseInstanceERPKcS3_PKNS0_8PropertyEPS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %5 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = sub i64 %i.c, %i.b
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.d ] ; 4 uses
  %i.e = load i8, ptr %.0.i.i, align 1
  switch i8 %i.e, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %1
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !7

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.g = load i8, ptr %.0.lcssa.i.i, align 1      ; 2 uses
  %i.h = icmp ult i8 %i.g, 14
  %switch.maskindex = zext nneg i8 %i.g to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !35, !noundef !36
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.m, ptr noundef nonnull %4) ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  switch i32 %i.o, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 5, label %bb.i
    i32 3, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.i
    i32 2, label %bb.i
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = bitcast i32 %.sroa.0.sroa.0.0.extract.trunc.i to float
  %i.q = fptoui float %i.p to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = bitcast i64 %.sroa.0.0.copyload to double
  %i.s = fptoui double %i.r to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.q, %bb.g ], [ %i.s, %bb.h ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.i ] ; 2 uses
  %i.t = zext i32 %.0.i to i64                    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.ac = sub nuw nsw i64 %i.t, %i.aa
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ac)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.k:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.ad = icmp ugt i64 %i.aa, %i.t
  br i1 %i.ad, label %bb.l, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i26, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.ae, ptr %i.u, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i
  %.not38.not = icmp eq i32 %.0.i, 0
  br i1 %.not38.not, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, label %.lr.ph

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37: ; preds = %bb.p, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.w

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.af = load ptr, ptr %0, align 8               ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.c, %i.ag
  %scevgep.i.i27 = getelementptr i8, ptr %i.af, i64 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph
  %.0.i.i28 = phi ptr [ %i.af, %.lr.ph ], [ %i.aj, %bb.o ] ; 4 uses
  %i.ai = load i8, ptr %.0.i.i28, align 1
  switch i8 %i.ai, label %.critedge.i.i30 [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i29 = icmp eq ptr %.0.i.i28, %1
  br i1 %.not.i.i29, label %.critedge.i.i30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 1
  br label %bb.m, !llvm.loop !7

.critedge.i.i30:                                  ; preds = %bb.n, %bb.m
  %.0.lcssa.i.i31 = phi ptr [ %.0.i.i28, %bb.m ], [ %scevgep.i.i27, %bb.n ] ; 2 uses
  store ptr %.0.lcssa.i.i31, ptr %0, align 8
  %i.ak = load i8, ptr %.0.lcssa.i.i31, align 1
  switch i8 %i.ak, label %bb.p [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32
  ]

bb.p:                                             ; preds = %.critedge.i.i30
  %i.al = load i32, ptr %2, align 8
  %i.am = load ptr, ptr %3, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.al, ptr noundef nonnull %i.an) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond.not, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, label %.lr.ph, !llvm.loop !37

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32:       ; preds = %.critedge.i.i30, %.critedge.i.i30, %.critedge.i.i30, %.critedge.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ap = load i32, ptr %2, align 8
  %i.aq = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ap, ptr noundef nonnull %5) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load i64, ptr %5, align 8
  store i64 %i.av, ptr %i.as, align 8
  %i.aw = load ptr, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ar, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %3, align 8               ; 4 uses
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.t, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %6 = icmp ult i64 %i.be, %i.bd
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %7 = select i1 %6, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %7, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #30 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.bb ; 2 uses
  %i.bj = load i64, ptr %5, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = icmp sgt i64 %i.bb, 0
  br i1 %i.bk, label %bb.u, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.u, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bh, ptr %3, align 8
  store ptr %i.bl, ptr %i.ar, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %7
  store ptr %i.bm, ptr %i.at, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.r, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.w

bb.w:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32.thread37, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit
  %i.bn = load ptr, ptr %0, align 8               ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.c, %i.bo
  %scevgep.i.i33 = getelementptr i8, ptr %i.bn, i64 %i.bp
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.0.i.i34 = phi ptr [ %i.bn, %bb.w ], [ %i.br, %bb.z ] ; 4 uses
  %i.bq = load i8, ptr %.0.i.i34, align 1
  switch i8 %i.bq, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit [
    i8 32, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %.not.i.i35 = icmp eq ptr %.0.i.i34, %1
  br i1 %.not.i.i35, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 1
  br label %bb.x, !llvm.loop !8

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit: ; preds = %bb.x, %bb.y
  %.0.lcssa.i.i36 = phi ptr [ %.0.i.i34, %bb.x ], [ %scevgep.i.i33, %bb.y ]
  store ptr %.0.lcssa.i.i36, ptr %0, align 8
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  %.1 = phi i1 [ true, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit ], [ false, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit32 ], [ false, %.critedge.i.i ]
  ret i1 %.1
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @_ZN6Assimp3PLY16PropertyInstance12DefaultValueENS0_9EDataTypeE(i32 noundef %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.0 = alloca double, align 8               ; 4 uses
  switch i32 %0, label %bb.d [
    i32 6, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %.sroa.0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %.sroa.0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %.sroa.0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.1234 = load i64, ptr %.sroa.0, align 8
  ret i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.1234
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_8PropertyEPS1_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr noundef readonly captures(none) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 4 uses
  %8 = alloca %"union.Assimp::PLY::PropertyInstance::ValueUnion", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.e, ptr noundef nonnull %7, i1 noundef zeroext %6) ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %7, align 8 ; 2 uses
  %i.g = load i32, ptr %i.d, align 4
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  switch i32 %i.g, label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit [
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 5, label %bb.e
    i32 3, label %bb.e
    i32 1, label %bb.e
    i32 4, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = bitcast i32 %.sroa.0.sroa.0.0.extract.trunc.i to float
  %i.i = fptoui float %i.h to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = bitcast i64 %.sroa.0.0.copyload to double
  %i.k = fptoui double %i.j to i32
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit

_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.e ] ; 2 uses
  %i.l = zext i32 %.0.i to i64                    ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.u)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.w, ptr %i.m, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstance10ValueUnionES3_EvT_S5_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.o

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE6resizeEm.exit ] ; 2 uses
  %i.x = load i32, ptr %4, align 8
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = tail call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.x, ptr noundef nonnull %i.z, i1 noundef zeroext %6) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i32, ptr %4, align 8
  %i.ac = call noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.ab, ptr noundef nonnull %8, i1 noundef zeroext %6) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %8, align 8
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = load ptr, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ad, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %5, align 8               ; 4 uses
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %9 = icmp ult i64 %i.aq, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %10 = select i1 %9, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %10, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #30 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.av = load i64, ptr %8, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.at, ptr %5, align 8
  store ptr %i.ax, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %10
  store ptr %i.ay, ptr %i.af, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, %._crit_edge
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %i.c = alloca double, align 8                   ; 2 uses
  switch i32 %1, label %bb.k [
    i32 5, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.c
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = add i8 %i.e, -58
  %or.cond11.i = icmp ult i8 %i.f, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.g = phi i8 [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ]
  %.013.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.b ]
  %.0812.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.d, %bb.b ]
  %i.h = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.g, -48
  %i.i = zext nneg i8 %narrow.i to i32
  %i.j = add i32 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i, %bb.b
  %.08.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.k, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.j, %.lr.ph.i ]
  store ptr %.08.lcssa.i, ptr %0, align 8
  store i32 %.0.lcssa.i, ptr %2, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.n = load ptr, ptr %0, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %i.p = icmp eq i8 %i.o, 45
  switch i8 %i.o, label %bb.e [
    i8 45, label %bb.d
    i8 43, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.q, ptr %i.a, align 8
  %.pre.i = load i8, ptr %i.q, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i8 [ %i.o, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %i.n, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.t = add i8 %i.r, -58
  %or.cond11.i.i = icmp ult i8 %i.t, -10
  br i1 %or.cond11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.u = phi i8 [ %i.z, %.lr.ph.i.i ], [ %i.r, %bb.e ]
  %.013.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ 0, %bb.e ]
  %.0812.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.e ]
  %i.v = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.u, -48
  %i.w = zext nneg i8 %narrow.i.i to i32
  %i.x = add i32 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = add i8 %i.z, -58
  %or.cond.i.i = icmp ult i8 %i.aa, -10
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.08.lcssa.i.i = phi ptr [ %i.s, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.x, %.lr.ph.i.i ] ; 4 uses
  store ptr %.08.lcssa.i.i, ptr %0, align 8
  br i1 %i.p, label %bb.f, label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = add i32 %.0.lcssa.i.i, 2147483647
  %or.cond.i13 = icmp ult i32 %i.ab, -2
  br i1 %or.cond.i13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = sub nsw i32 0, %.0.lcssa.i.i
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 1 dereferenceable(24) @.str.88, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.89)
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

_ZN6Assimp8strtol10EPKcPS1_.exit:                 ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.g ], [ %.0.lcssa.i.i, %bb.h ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %.0.i, ptr %2, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8
  %i.af = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  store ptr %i.af, ptr %0, align 8
  %i.ag = load float, ptr %i.b, align 4
  store float %i.ag, ptr %2, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = call noundef ptr @_ZN6Assimp17fast_atoreal_moveId17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext true)
  store ptr %i.ai, ptr %0, align 8
  %i.aj = load double, ptr %i.c, align 8
  store double %i.aj, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %_ZN6Assimp8strtol10EPKcPS1_.exit, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %.0 = phi i1 [ true, %bb.j ], [ true, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ true, %_ZN6Assimp8strtol10EPKcPS1_.exit ], [ true, %bb.i ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3, i32 noundef %4, ptr noundef writeonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = icmp ult i32 %4, 8
  br i1 %i.a, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4 ; 3 uses
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp ult i32 %i.c, %switch.load
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE12getNextBlockERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.l

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %3, align 4                ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 5 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i ; 2 uses
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.f, label %bb.d, !prof !39

bb.d:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.k, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.i
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit

bb.f:                                             ; preds = %.noexc5.i
  %i.o = load i8, ptr %i.k, align 1
  store i8 %i.o, ptr %i.l, align 1
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit

end_hunk_0
begin_hunk_1_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #27
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #27
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %4 = select i1 %3, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %4, 48                   ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = load i64, ptr %2, align 8
  store i64 %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.w, ptr %i.a, align 8
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.t, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNKSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.ag, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !66, !noalias !63
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !alias.scope !63, !noalias !66
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !alias.scope !63, !noalias !66
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !66, !noalias !63 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !66, !noalias !63 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !68
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %i.ak, align 8, !alias.scope !63, !noalias !66
  %i.au = load i64, ptr %i.ao, align 8, !alias.scope !66, !noalias !63
  store i64 %i.au, ptr %i.am, align 8, !alias.scope !63, !noalias !66
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !66, !noalias !63
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.av = phi i64 [ %i.ar, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !alias.scope !63, !noalias !66
  store ptr %i.ao, ptr %i.al, align 8, !alias.scope !66, !noalias !63
  store i64 0, ptr %i.aw, align 8, !alias.scope !66, !noalias !63
  store i8 0, ptr %i.ao, align 8, !alias.scope !66, !noalias !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !66, !noalias !63
  store i64 %i.ba, ptr %i.ay, align 8, !alias.scope !63, !noalias !66
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !69

_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.bc, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.bd, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.be = load i64, ptr %.0911.i.i.i29, align 8, !alias.scope !73, !noalias !70
  store i64 %i.be, ptr %.012.i.i.i28, align 8, !alias.scope !70, !noalias !73
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !alias.scope !70, !noalias !73
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !73, !noalias !70 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !73, !noalias !70 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !75
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bi, ptr %i.bf, align 8, !alias.scope !70, !noalias !73
  %i.bp = load i64, ptr %i.bj, align 8, !alias.scope !73, !noalias !70
  store i64 %i.bp, ptr %i.bh, align 8, !alias.scope !70, !noalias !73
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !73, !noalias !70
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bq = phi i64 [ %i.bm, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !alias.scope !70, !noalias !73
  store ptr %i.bj, ptr %i.bg, align 8, !alias.scope !73, !noalias !70
  store i64 0, ptr %i.br, align 8, !alias.scope !73, !noalias !70
  store i8 0, ptr %i.bj, align 8, !alias.scope !73, !noalias !70
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !73, !noalias !70
  store i64 %i.bv, ptr %i.bt, align 8, !alias.scope !70, !noalias !73
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bw, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !69

_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.bd, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN6Assimp3PLY8PropertyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp3PLY8PropertyESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.cb) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3PLY8PropertyESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3PLY8PropertyESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.o, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %4
  store ptr %i.cc, ptr %i.by, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  %i.cg = call ptr @__cxa_begin_catch(ptr %i.cf) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.cd

bb.l:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #31
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8     ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !76

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !76

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !77

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !77

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 6 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %i.c, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #28
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3PLY7ElementESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN6Assimp3PLY7ElementESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %4 = select i1 %3, i64 128102389400760775, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 72                   ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #30 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  invoke void @_ZN6Assimp3PLY7ElementC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.o, ptr noundef nonnull align 8 dereferenceable(68) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp3PLY7ElementESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.p = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !84, !noalias !81
  store <2 x ptr> %i.p, ptr %.012.i.i.i, align 8, !alias.scope !81, !noalias !84
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !84, !noalias !81
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !81, !noalias !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !84, !noalias !81
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !84, !noalias !81
  store i32 %i.v, ptr %i.t, align 8, !alias.scope !81, !noalias !84
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !alias.scope !81, !noalias !84
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !84, !noalias !81 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !84, !noalias !81 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !86
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %i.w, align 8, !alias.scope !81, !noalias !84
  %i.ag = load i64, ptr %i.aa, align 8, !alias.scope !84, !noalias !81
  store i64 %i.ag, ptr %i.y, align 8, !alias.scope !81, !noalias !84
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ah = phi i64 [ %i.ad, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ah, ptr %i.aj, align 8, !alias.scope !81, !noalias !84
  store ptr %i.aa, ptr %i.x, align 8, !alias.scope !84, !noalias !81
  store i64 0, ptr %i.ai, align 8, !alias.scope !84, !noalias !81
  store i8 0, ptr %i.aa, align 8, !alias.scope !84, !noalias !81
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.am = load i32, ptr %i.al, align 8, !alias.scope !84, !noalias !81
  store i32 %i.am, ptr %i.ak, align 8, !alias.scope !81, !noalias !84
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !87

_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNSt16allocator_traitsISaIN6Assimp3PLY7ElementEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ap, %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i29 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !alias.scope !91, !noalias !88
  store <2 x ptr> %i.aq, ptr %.012.i.i.i28, align 8, !alias.scope !88, !noalias !91
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !91, !noalias !88
  store ptr %i.at, ptr %i.ar, align 8, !alias.scope !88, !noalias !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !91, !noalias !88
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !91, !noalias !88
  store i32 %i.aw, ptr %i.au, align 8, !alias.scope !88, !noalias !91
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !alias.scope !88, !noalias !91
  %i.ba = load ptr, ptr %i.ay, align 8, !alias.scope !91, !noalias !88 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.d:                                             ; preds = %.lr.ph.i.i.i27
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !91, !noalias !88 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !93
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ba, ptr %i.ax, align 8, !alias.scope !88, !noalias !91
  %i.bh = load i64, ptr %i.bb, align 8, !alias.scope !91, !noalias !88
  store i64 %i.bh, ptr %i.az, align 8, !alias.scope !88, !noalias !91
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !91, !noalias !88
  br label %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.d
  %i.bi = phi i64 [ %i.be, %bb.d ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.bi, ptr %i.bk, align 8, !alias.scope !88, !noalias !91
  store ptr %i.bb, ptr %i.ay, align 8, !alias.scope !91, !noalias !88
  store i64 0, ptr %i.bj, align 8, !alias.scope !91, !noalias !88
  store i8 0, ptr %i.bb, align 8, !alias.scope !91, !noalias !88
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !91, !noalias !88
  store i32 %i.bn, ptr %i.bl, align 8, !alias.scope !88, !noalias !91
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !87

_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ap, %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN6Assimp3PLY7ElementES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp3PLY7ElementESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3PLY7ElementESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3PLY7ElementESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.e
  store ptr %i.n, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %4
  store ptr %i.bu, ptr %i.bq, align 8
  ret void

bb.f:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY7ElementESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = tail call ptr @__cxa_begin_catch(ptr %i.bx) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bv

bb.i:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3PLY7ElementC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ugt i64 %i.h, 192153584101141162
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6Assimp3PLY8PropertyEE8allocateEmPKv.exit.i.i.i.i, !prof !9

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN6Assimp3PLY8PropertyEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6Assimp3PLY8PropertyEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN6Assimp3PLY8PropertyEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %1, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3PLY8PropertyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.o, ptr %i.p, ptr noundef %i.k)
          to label %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8
  store i32 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EEC2ERKS4_.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %i.aa, align 8
  %i.ai = load i64, ptr %i.a, align 8
  store i64 %i.ai, ptr %i.ac, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EEC2ERKS4_.exit
  %i.aj = phi ptr [ %i.ah, %.noexc ], [ %i.ac, %_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ad, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.aa, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.ap, align 8
  ret void

bb.i:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6Assimp3PLY8PropertyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3PLY8PropertyESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.v, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.sroa.08.013 = phi ptr [ %i.u, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %i.b = load i64, ptr %.sroa.08.013, align 8
  store i64 %i.b, ptr %.014, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.e, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %.lr.ph ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1
  store i8 %i.m, ptr %i.l, align 1
end_hunk_2
