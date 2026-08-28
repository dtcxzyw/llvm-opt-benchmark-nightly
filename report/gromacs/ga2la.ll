Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/ga2la?download=true
inline.NumInlined: 246
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11gmx_ga2la_tC2Eii:bb.a
  br label %_ZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEED2Ev.exit

_ZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEED2Ev.exit: ; preds = %_ZNSt7variantIJSt6vectorIN11gmx_ga2la_t5EntryESaIS2_EEN3gmx9HashedMapIS2_EEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.thread35, %_ZNSt7variantIJSt6vectorIN11gmx_ga2la_t5EntryESaIS2_EEN3gmx9HashedMapIS2_EEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit.thread, %_ZNSt7variantIJSt6vectorIN11gmx_ga2la_t5EntryESaIS2_EEN3gmx9HashedMapIS2_EEEEaSIS7_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_S7_EE4typeEE18is_constructible_vISF_SC_E15is_assignable_vIRSF_SC_EERS8_E4typeESD_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZNSt6vectorIN11gmx_ga2la_t5EntryESaIS1_EED2Ev.exit

.body:                                            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.m

_ZNSt6vectorIN11gmx_ga2la_t5EntryESaIS1_EED2Ev.exit: ; preds = %_ZSt3getILm0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS2_EEN3gmx9HashedMapIS2_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSC_.exit.i, %bb.e, %_ZNSt7variantIJSt6vectorIN11gmx_ga2la_t5EntryESaIS2_EEN3gmx9HashedMapIS2_EEEE7emplaceILm0EJS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_S7_EE4typeEDpT0_EERSD_E4typeEDpOSE_.exit.i, %_ZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEED2Ev.exit
  ret void

bb.m:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ac, %.body ]
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #12
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEE8_M_resetEv.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEE8_M_resetEv.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEE8_M_resetEv.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEE8_M_resetEv.exit: ; preds = %bb.b, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS6_EEN3gmx9HashedMapIS6_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS8_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit.sink.split.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = sitofp i32 %1 to float
  %i.e = fmul nnan float %i.d, 1.500000e+00       ; 24 uses
  %i.f = fcmp ogt float %i.e, 6.400000e+01
  br i1 %i.f, label %bb.c, label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE6resizeEiENKUlvE_clEv, ptr noundef nonnull @.str.5, i32 noundef 92) #16
  unreachable

bb.c:                                             ; preds = %.preheader
  %i.g = fcmp ogt float %i.e, 1.280000e+02
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp ogt float %i.e, 2.560000e+02
  br i1 %i.h, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.i = fcmp ogt float %i.e, 5.120000e+02
  br i1 %i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.j = fcmp ogt float %i.e, 1.024000e+03
  br i1 %i.j, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.k = fcmp ogt float %i.e, 2.048000e+03
  br i1 %i.k, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.l = fcmp ogt float %i.e, 4.096000e+03
  br i1 %i.l, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.m = fcmp ogt float %i.e, 8.192000e+03
  br i1 %i.m, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.n = fcmp ogt float %i.e, 1.638400e+04
  br i1 %i.n, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.o = fcmp ogt float %i.e, 3.276800e+04
  br i1 %i.o, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.p = fcmp ogt float %i.e, 6.553600e+04
  br i1 %i.p, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.q = fcmp ogt float %i.e, 1.310720e+05
  br i1 %i.q, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.r = fcmp ogt float %i.e, 2.621440e+05
  br i1 %i.r, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.s = fcmp ogt float %i.e, 5.242880e+05
  br i1 %i.s, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.t = fcmp ogt float %i.e, f0x49800000
  br i1 %i.t, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.u = fcmp ogt float %i.e, f0x4A000000
  br i1 %i.u, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.v = fcmp ogt float %i.e, f0x4A800000
  br i1 %i.v, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.w = fcmp ogt float %i.e, f0x4B000000
  br i1 %i.w, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.x = fcmp ogt float %i.e, f0x4B800000
  br i1 %i.x, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.y = fcmp ogt float %i.e, f0x4C000000
  br i1 %i.y, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.z = fcmp ogt float %i.e, f0x4C800000
  br i1 %i.z, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.aa = fcmp ogt float %i.e, f0x4D000000
  br i1 %i.aa, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ab = fcmp ogt float %i.e, f0x4D800000
  br i1 %i.ab, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.ac = fcmp ogt float %i.e, f0x4E000000
  %spec.select = select i1 %i.ac, i32 1073741824, i32 536870912
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader
  %.0.lcssa = phi i32 [ 262144, %bb.n ], [ 64, %.preheader ], [ 128, %bb.c ], [ %spec.select, %bb.y ], [ 256, %bb.d ], [ 2097152, %bb.q ], [ 512, %bb.e ], [ 268435456, %bb.x ], [ 1024, %bb.f ], [ 524288, %bb.o ], [ 2048, %bb.g ], [ 134217728, %bb.w ], [ 4096, %bb.h ], [ 8388608, %bb.s ], [ 8192, %bb.i ], [ 67108864, %bb.v ], [ 16384, %bb.j ], [ 1048576, %bb.p ], [ 32768, %bb.k ], [ 33554432, %bb.u ], [ 65536, %bb.l ], [ 4194304, %bb.r ], [ 131072, %bb.m ], [ 16777216, %bb.t ] ; 3 uses
  %i.ad = zext nneg i32 %.0.lcssa to i64          ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 4                 ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.ad
  br i1 %i.al, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge
  %i.am = sub nuw nsw i64 %i.ad, %i.ak
  tail call void @_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.am)
  br label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit

bb.aa:                                            ; preds = %.critedge
  %i.an = icmp ugt i64 %i.ak, %i.ad
  br i1 %i.an, label %bb.ab, label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.ab
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !36
  br label %_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit

_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE6resizeEm.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %_ZSt8_DestroyIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ap = add nsw i32 %.0.lcssa, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.lcssa, ptr %i.ar, align 4, !tbaa !38
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 4
  store i64 0, ptr %i.p, align 4
  store i32 -1, ptr %.08.i.i.i.prol, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12
  store i32 -1, ptr %i.q, align 4, !tbaa !42
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !43

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 8
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i64 0, ptr %i.u, align 4
  store i32 -1, ptr %.08.i.i.i, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 -1, ptr %i.v, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 20
  store i64 0, ptr %i.x, align 4
  store i32 -1, ptr %i.w, align 4, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  store i32 -1, ptr %i.y, align 4, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store i64 0, ptr %i.aa, align 4
  store i32 -1, ptr %i.z, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 -1, ptr %i.ab, align 4, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 52
  store i64 0, ptr %i.ad, align 4
  store i32 -1, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 60
  store i32 -1, ptr %i.ae, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 68
  store i64 0, ptr %i.ag, align 4
  store i32 -1, ptr %i.af, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 76
  store i32 -1, ptr %i.ah, align 4, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 84
  store i64 0, ptr %i.aj, align 4
  store i32 -1, ptr %i.ai, align 4, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 92
  store i32 -1, ptr %i.ak, align 4, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 100
  store i64 0, ptr %i.am, align 4
  store i32 -1, ptr %i.al, align 4, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 108
  store i32 -1, ptr %i.an, align 4, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 116
  store i64 0, ptr %i.ap, align 4
  store i32 -1, ptr %i.ao, align 4, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 124
  store i32 -1, ptr %i.aq, align 4, !tbaa !42
  %i.ar = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.at = icmp ult i64 %i.n, %1
  br i1 %i.at, label %bb.d, label %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #16
  unreachable

_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.au = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487) ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #17 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i30.prol ], [ %i.ay, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 4
  store i64 0, ptr %i.az, align 4
  store i32 -1, ptr %.08.i.i.i31.prol, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 12
  store i32 -1, ptr %i.ba, align 4, !tbaa !42
  %i.bb = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !47

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ay, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i30.prol ]
  %i.bd = icmp ult i64 %1, 8
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.cc, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 25 uses
  %.057.i.i.i32 = phi i64 [ %i.cb, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 4
  store i64 0, ptr %i.be, align 4
end_hunk_0
