Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/manage_threading?download=true
inline.NumInlined: 457
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@__kmpc_for_static_init_4
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !62 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

declare void @_ZN3gmx19ThreadedForceBufferIA4_fE14setupReductionEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(79) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(79) %1) #3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 %i.b, ptr %i.a, align 8, !tbaa !60
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !65
  %i.f = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.f, ptr %i.c, align 8, !tbaa !49
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !49
  store i8 %i.h, ptr %i.g, align 1, !tbaa !49
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !147
  %i.k = load ptr, ptr %0, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #3
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #3
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !49
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gmx17ThreadForceBufferIA4_fE24resizeBufferAndClearMaskEi(ptr noundef nonnull align 8 dereferenceable(652), i32 noundef) local_unnamed_addr #8

declare void @_ZN3gmx17ThreadForceBufferIA4_fE11processMaskEv(ptr noundef nonnull align 8 dereferenceable(652)) local_unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN18bonded_threading_tC2EiiiP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 4)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %1, ptr %i.a, align 4, !tbaa !13
  store i32 %3, ptr %i.b, align 4, !tbaa !13
  store i32 %1, ptr %0, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN3gmx19ThreadedForceBufferIA4_fEC1Eibi(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i32 noundef %1, i1 noundef zeroext true, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = mul nsw i32 %i.i, 95
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp slt i32 %i.h, -1
  br i1 %i.m, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.n = shl nuw nsw i64 %i.l, 2                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26
          to label %.noexc13 unwind label %bb.f   ; 5 uses

.noexc13:                                         ; preds = %.noexc3.i
  store ptr %i.o, ptr %i.j, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.p, ptr %i.q, align 8, !tbaa !68
  store i32 0, ptr %i.o, align 4, !tbaa !13
  %i.r = getelementptr i8, ptr %i.o, i64 4
  %i.s = add nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !13
  %5 = getelementptr i8, ptr %i.o, i64 %i.n
  br label %bb.b

bb.b:                                             ; preds = %.noexc13, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %5, %.noexc13 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 2, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(760) ptr @_Znwm(i64 noundef 760) #26
          to label %bb.c unwind label %bb.g       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 760 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(760) %i.w, i8 0, i64 760, i1 false)
  store ptr %i.x, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = tail call ptr @getenv(ptr noundef nonnull @.str.7) #3 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.f) #3 ; 0 uses
  %.not10 = icmp eq ptr %4, null
  br i1 %.not10, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !47
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, i32 noundef %i.ad) #3 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %.noexc3.i, %.noexc.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12WorkDivisionD2Ev.exit23

bb.g:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12WorkDivisionD2Ev.exit

bb.h:                                             ; preds = %bb.c
  store i32 4, ptr %i.f, align 4, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.h
  %i.ah = sext i32 %1 to i64                      ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 3 uses
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = sub nuw nsw i64 %i.ah, %i.ao
  invoke void @_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.aq)
          to label %_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE6resizeEm.exit unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ar, label %bb.l, label %_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.ah ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i ], [ %i.as, %bb.l ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #25
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i
  %i.ba = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #25
  br label %_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i

_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP26CentersOfMassScaledBuffersS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP26CentersOfMassScaledBuffersS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI26CentersOfMassScaledBuffersEvPT_.exit.i.i.i.i
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !69
  br label %_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE6resizeEm.exit

_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIP26CentersOfMassScaledBuffersS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.l, %bb.k, %bb.j
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN18bonded_threading_tC2EiiiP8_IO_FILE.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #3
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i21.a = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21.a, label %_ZN12WorkDivisionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #25
  br label %_ZN12WorkDivisionD2Ev.exit

_ZN12WorkDivisionD2Ev.exit:                       ; preds = %bb.p, %bb.o, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.bh, %bb.o ], [ %i.bh, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i22, label %_ZN12WorkDivisionD2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %_ZN12WorkDivisionD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #25
  br label %_ZN12WorkDivisionD2Ev.exit23

_ZN12WorkDivisionD2Ev.exit23:                     ; preds = %bb.q, %_ZN12WorkDivisionD2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn, %_ZN12WorkDivisionD2Ev.exit ], [ %.pn, %bb.q ]
  tail call void @_ZN3gmx19ThreadedForceBufferIA4_fED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #3
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN3gmx19ThreadedForceBufferIA4_fEC1Eibi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN18bonded_threading_tC2EiiiP8_IO_FILE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %6 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !13     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 4, !tbaa !13     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !13
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !13
  %i.k = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %.not25 = icmp sgt i32 %i.k, %i.j
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = sext i32 %i.k to i64
  br label %bb.c
end_hunk_0
