inline.NumInlined: 1469
inline.NumDeleted: 612
begin_hunk_0_@_ZN6Assimp3PLY16PropertyInstance19ParseInstanceBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjPKNS0_8PropertyEPS1_b:bb.a
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #30 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  %i.ax = load i64, ptr %8, align 8
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = icmp sgt i64 %i.an, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #28
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.av, ptr %5, align 8
  store ptr %i.az, ptr %i.ad, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.ba, ptr %i.af, align 8
  br label %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6Assimp3PLY16PropertyInstance10ValueUnionESaIS3_EE9push_backERKS3_.exit, %._crit_edge
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance10ParseValueERPKcNS0_9EDataTypeEPNS1_10ValueUnionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
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
define hidden noundef zeroext i1 @_ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = icmp ult i32 %4, 8
  br i1 %i.a, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp3PLY16PropertyInstance16ParseValueBinaryERNS_14IOStreamBufferIcEERSt6vectorIcSaIcEERPKcRjNS0_9EDataTypeEPNS1_10ValueUnionEb, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp ult i32 %i.c, %switch.ext
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE12getNextBlockERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.k

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %3, align 4                ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 4 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i ; 2 uses
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !39

bb.d:                                             ; preds = %.noexc5.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.k, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit

bb.e:                                             ; preds = %.noexc5.i
  %i.n = load i8, ptr %i.k, align 1
  store i8 %i.n, ptr %i.l, align 1
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit

_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i:           ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.e, %bb.d
  %.sroa.11.0 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 3 uses
  %.sroa.0115.0 = phi ptr [ %i.l, %bb.e ], [ %i.l, %bb.d ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %.sroa.0115.0, ptr %1, align 8
  store ptr %.sroa.11.0, ptr %i.f, align 8
  store ptr %.sroa.11.0, ptr %i.q, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  %.pre = load ptr, ptr %i.f, align 8
  %.pre128 = load ptr, ptr %1, align 8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit
  %i.v = phi ptr [ %.pre128, %bb.f ], [ %.sroa.0115.0, %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit ] ; 2 uses
  %i.w = phi ptr [ %.pre, %bb.f ], [ %.sroa.11.0, %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcS1_EEvEET_S7_RKS0_.exit ]
  %i.x = load ptr, ptr %7, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPcS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ad, ptr %i.x, ptr %i.z)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ae = load ptr, ptr %1, align 8
  %i.af = load ptr, ptr %7, align 8               ; 5 uses
  %i.ag = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.af, ptr %i.y, align 8
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.g, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %3, align 4
  %i.am = load ptr, ptr %1, align 8
  store ptr %i.am, ptr %2, align 8
  %.not.i.i.i62 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIcSaIcEED2Ev.exit64, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit64

_ZNSt6vectorIcSaIcEED2Ev.exit64:                  ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.thread

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.c
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.87)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ab unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.au) #27
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i, %bb.m, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.av, %bb.m ], [ %i.as, %bb.i ], [ %i.o, %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ]
  %i.aw = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIcSaIcEED2Ev.exit67, label %bb.n

bb.n:                                             ; preds = %.body
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit67

_ZNSt6vectorIcSaIcEED2Ev.exit67:                  ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn

.thread:                                          ; preds = %bb.a, %_ZNSt6vectorIcSaIcEED2Ev.exit64, %switch.lookup
  %.0123 = phi i32 [ %switch.ext, %switch.lookup ], [ %switch.ext, %_ZNSt6vectorIcSaIcEED2Ev.exit64 ], [ 0, %bb.a ]
  switch i32 %4, label %bb.aa [
    i32 5, label %bb.o
    i32 3, label %bb.r
    i32 1, label %bb.s
    i32 4, label %bb.t
    i32 2, label %bb.w
    i32 0, label %bb.x
    i32 6, label %bb.y
    i32 7, label %bb.z
  ]

bb.o:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %2, align 8               ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 1            ; 5 uses
  %.sroa.6108.0.extract.shift = lshr i32 %i.bd, 8 ; 2 uses
  %.sroa.8109.0.extract.shift = lshr i32 %i.bd, 16 ; 2 uses
  %.sroa.10110.0.extract.shift = lshr i32 %i.bd, 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.be, ptr %2, align 8
  br i1 %6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = and i32 %i.bd, 255
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.10110.0 = phi i32 [ %i.bf, %bb.p ], [ %.sroa.10110.0.extract.shift, %bb.o ]
  %.sroa.8109.0 = phi i32 [ %.sroa.6108.0.extract.shift, %bb.p ], [ %.sroa.8109.0.extract.shift, %bb.o ]
  %.sroa.6108.0.in = phi i32 [ %.sroa.8109.0.extract.shift, %bb.p ], [ %.sroa.6108.0.extract.shift, %bb.o ]
  %.sroa.0106.0.in = phi i32 [ %.sroa.10110.0.extract.shift, %bb.p ], [ %i.bd, %bb.o ]
  %.sroa.10110.0.insert.shift = shl nuw i32 %.sroa.10110.0, 24
  %.sroa.8109.0.insert.ext = shl i32 %.sroa.8109.0, 16
  %.sroa.8109.0.insert.shift = and i32 %.sroa.8109.0.insert.ext, 16711680
  %.sroa.8109.0.insert.insert = or disjoint i32 %.sroa.8109.0.insert.shift, %.sroa.10110.0.insert.shift
  %.sroa.6108.0.insert.ext = shl nuw i32 %.sroa.6108.0.in, 8
  %.sroa.6108.0.insert.shift = and i32 %.sroa.6108.0.insert.ext, 65280
  %.sroa.6108.0.insert.insert = or disjoint i32 %.sroa.8109.0.insert.insert, %.sroa.6108.0.insert.shift
  %.sroa.0106.0.insert.ext = and i32 %.sroa.0106.0.in, 255
  %.sroa.0106.0.insert.insert = or disjoint i32 %.sroa.6108.0.insert.insert, %.sroa.0106.0.insert.ext
  store i32 %.sroa.0106.0.insert.insert, ptr %5, align 8
  br label %bb.aa

bb.r:                                             ; preds = %.thread
  %i.bg = load ptr, ptr %2, align 8               ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 1            ; 2 uses
  %.sroa.6105.0.extract.shift = lshr i16 %i.bh, 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store ptr %i.bi, ptr %2, align 8
  %i.bj = and i16 %i.bh, 255                      ; 2 uses
  %.sroa.6105.0.insert.ext = select i1 %6, i16 %i.bj, i16 %.sroa.6105.0.extract.shift
  %.sroa.6105.0.insert.shift = shl nuw i16 %.sroa.6105.0.insert.ext, 8
  %.sroa.0103.0.insert.ext = select i1 %6, i16 %.sroa.6105.0.extract.shift, i16 %i.bj
  %.sroa.0103.0.insert.insert = or disjoint i16 %.sroa.6105.0.insert.shift, %.sroa.0103.0.insert.ext
  %i.bk = zext i16 %.sroa.0103.0.insert.insert to i32
  store i32 %i.bk, ptr %5, align 8
  br label %bb.aa

bb.s:                                             ; preds = %.thread
  %i.bl = load ptr, ptr %2, align 8               ; 2 uses
  %.0.copyload1 = load i8, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %2, align 8
  %i.bn = zext i8 %.0.copyload1 to i32
  store i32 %i.bn, ptr %5, align 8
  br label %bb.aa

bb.t:                                             ; preds = %.thread
  %i.bo = load ptr, ptr %2, align 8               ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 1            ; 5 uses
  %.sroa.6102.0.extract.shift = lshr i32 %i.bp, 8 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i32 %i.bp, 16   ; 2 uses
  %.sroa.10.0.extract.shift = lshr i32 %i.bp, 24  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store ptr %i.bq, ptr %2, align 8
  br i1 %6, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = and i32 %i.bp, 255
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.10.0 = phi i32 [ %i.br, %bb.u ], [ %.sroa.10.0.extract.shift, %bb.t ]
  %.sroa.8.0 = phi i32 [ %.sroa.6102.0.extract.shift, %bb.u ], [ %.sroa.8.0.extract.shift, %bb.t ]
  %.sroa.6102.0.in = phi i32 [ %.sroa.8.0.extract.shift, %bb.u ], [ %.sroa.6102.0.extract.shift, %bb.t ]
  %.sroa.0100.0.in = phi i32 [ %.sroa.10.0.extract.shift, %bb.u ], [ %i.bp, %bb.t ]
  %.sroa.10.0.insert.shift = shl nuw i32 %.sroa.10.0, 24
  %.sroa.8.0.insert.ext = shl i32 %.sroa.8.0, 16
end_hunk_0
