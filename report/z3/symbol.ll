Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/symbol?download=true
inline.NumInlined: 159
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE12expand_tableEv:bb.a
  %.02839.i = phi ptr [ %i.ap, %bb.g ], [ %i.u, %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE11alloc_tableEj.exit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02839.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = icmp ult ptr %i.ab, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph41.i
  %i.ad = load i32, ptr %.02839.i, align 8, !tbaa !38
  %i.ae = and i32 %i.ad, %i.w                     ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %.idx43.i = shl nuw nsw i64 %i.af, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx43.i ; 2 uses
  %.not2933.i = icmp eq i32 %i.ae, %i.c
  br i1 %.not2933.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d, %bb.b
  %.not3035.i = icmp eq i32 %i.ae, 0
  br i1 %.not3035.i, label %._crit_edge.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.034.i = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.034.i, ptr noundef nonnull align 8 dereferenceable(16) %.02839.i, i64 16, i1 false), !tbaa.struct !62
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.034.i, i64 16 ; 2 uses
  %.not29.i = icmp eq ptr %i.ak, %i.z
  br i1 %.not29.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !57

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.f
  %.136.i = phi ptr [ %i.ao, %bb.f ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.136.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.136.i, ptr noundef nonnull align 8 dereferenceable(16) %.02839.i, i64 16, i1 false), !tbaa.struct !62
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph37.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.136.i, i64 16 ; 2 uses
  %.not30.i = icmp eq ptr %i.ao, %i.ag
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef nonnull @.str.3)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph41.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02839.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.y
  br i1 %.not.i, label %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit.loopexit, label %.lr.ph41.i, !llvm.loop !59

_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit.loopexit: ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit

_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit: ; preds = %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit.loopexit, %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE11alloc_tableEj.exit
  %i.aq = phi ptr [ %.pre, %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit.loopexit ], [ %i.u, %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE11alloc_tableEj.exit ] ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE12delete_tableEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aq)
  br label %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE12delete_tableEv.exit

_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE12delete_tableEv.exit: ; preds = %_ZN14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE10move_tableEPS2_jS6_j.exit, %bb.h
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  store i32 %i.c, ptr %i.a, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.as, align 8, !tbaa !20
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22internal_symbol_tablesD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_Z12dealloc_vectIPN12_GLOBAL__N_121internal_symbol_tableEEvPT_j.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_Z12dealloc_vectIPN12_GLOBAL__N_121internal_symbol_tableEEvPT_j.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit
  %i.f = phi i32 [ %i.a, %.lr.ph ], [ %i.u, %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_Z7deallocISt5mutexEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_Z7deallocISt5mutexEvPT_.exit.i.i unwind label %bb.h

_Z7deallocISt5mutexEvPT_.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_Z7deallocISt5mutexEvPT_.exit.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
          to label %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #20
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #20
  unreachable

_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i: ; preds = %bb.f, %_Z7deallocISt5mutexEvPT_.exit.i.i
  tail call void @_ZN6regionD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(72) %i.i) #16
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i._Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i._Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit_crit_edge: ; preds = %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i
  %.pre = load i32, ptr %0, align 8, !tbaa !14
  br label %_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit

_Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit: ; preds = %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i._Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit_crit_edge, %bb.c
  %i.u = phi i32 [ %.pre, %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i._Z7deallocIN12_GLOBAL__N_121internal_symbol_tableEEvPT_.exit_crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !63

_Z12dealloc_vectIPN12_GLOBAL__N_121internal_symbol_tableEEvPT_j.exit: ; preds = %._crit_edge, %bb.b
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN12_GLOBAL__N_121internal_symbol_tableD2Ev.exit.i, %bb.b
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.loopexit.split-lp12, 0
  tail call void @__clang_call_terminate(ptr %i.x) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13string_bufferILj128EE6appendEi(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %7, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %6, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.a
  %3 = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.a
  %i.d = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %5 = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %6 = udiv i32 %.02329.i.i, 10000
  %7 = add i32 %.030.i.i, 4                       ; 2 uses
  %8 = icmp ult i32 %.02329.i.i, 100000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a, !llvm.loop !66

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %5, %bb.f ], [ %3, %bb.b ], [ %4, %bb.d ], [ 1, %bb.a ], [ %7, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.f = add i32 %.022.i.i, %.lobit.i             ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !41, !alias.scope !69
  %i.i = icmp ugt i32 %i.f, 15
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #19
          to label %.noexc.i unwind label %bb.o   ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr %i.k, ptr %2, align 8, !tbaa !43, !alias.scope !69
  store i64 %i.g, ptr %i.h, align 8, !tbaa !44, !alias.scope !69
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.f, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.h, align 8, !tbaa !44, !alias.scope !69
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.noexc.i
  %i.l = phi ptr [ %i.k, %.noexc.i ], [ %i.h, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 45, i64 %i.g, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.m = phi ptr [ %i.h, %bb.i ], [ %i.l, %bb.k ], [ %i.h, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.n, align 8, !tbaa !45, !alias.scope !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1, !tbaa !44
  %i.p = zext nneg i32 %.lobit.i to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !43, !alias.scope !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 4 uses
  %i.s = icmp ugt i32 %i.a, 99
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.t = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i.a

.lr.ph.i11.i.a:                                   ; preds = %.lr.ph.i11.i.a, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.w, %.lr.ph.i11.i.a ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %9, %.lr.ph.i11.i.a ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i32 %.020.i.i, 100
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !44, !noalias !69
  %i.ab = zext i32 %.01819.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !44
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !44, !noalias !69
  %i.ae = add i32 %.01819.i.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !44
  %9 = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i11.i.a, label %._crit_edge.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i.a, %bb.l
  %.0.lcssa.i.i = phi i32 [ %i.a, %bb.l ], [ %i.w, %.lr.ph.i11.i.a ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !44, !noalias !69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !44
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !44, !noalias !69
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.aq = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.o:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #20
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.ar, %bb.n ], [ %i.ap, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.r, align 1, !tbaa !44
  %i.au = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #18 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !48 ; 2 uses
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br i1 %i.bb, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !47
  br label %bb.q

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZN13string_bufferILj128EE6expandEv.exit.i
  %i.bd = phi i64 [ %i.be, %_ZN13string_bufferILj128EE6expandEv.exit.i ], [ %i.ba, %_ZNSt7__cxx119to_stringEi.exit ]
  %i.be = shl i64 %i.bd, 1                        ; 4 uses
  %i.bf = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.be)
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 3 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !48
  %i.bj = icmp ult i64 %i.bi, 129
  %i.bk = icmp eq ptr %i.bg, null
  %or.cond.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i.i, label %_ZN13string_bufferILj128EE6expandEv.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bg)
          to label %_ZN13string_bufferILj128EE6expandEv.exit.i unwind label %bb.r

_ZN13string_bufferILj128EE6expandEv.exit.i:       ; preds = %bb.p, %.noexc
  store i64 %i.be, ptr %i.az, align 8, !tbaa !48
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !47
  %i.bl = icmp ugt i64 %i.ay, %i.be
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %_ZN13string_bufferILj128EE6expandEv.exit.i
  %.pre6.i = load i64, ptr %i.aw, align 8, !tbaa !49
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %i.bm = phi i64 [ %i.ax, %.._crit_edge_crit_edge.i ], [ %.pre6.i, %._crit_edge.loopexit.i ]
  %i.bn = phi ptr [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.bf, %._crit_edge.loopexit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.au, i64 %i.av, i1 false)
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !49
  %i.bq = add i64 %i.bp, %i.av
  store i64 %i.bq, ptr %i.aw, align 8, !tbaa !49
  %i.br = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.h
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !44
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.r:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.h
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.r
  %i.by = load i64, ptr %i.h, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS22internal_symbol_tables", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any p2 pointer", !8, i64 0}
!12 = !{!"p2 _ZTSN12_GLOBAL__N_121internal_symbol_tableE", !11, i64 0}
!13 = !{!"_ZTS22internal_symbol_tables", !5, i64 0, !12, i64 8}
!14 = !{!13, !5, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!"p1 _ZTS14ptr_hash_entryIKcE", !8, i64 0}
!17 = !{!"_ZTS14core_hashtableI14ptr_hash_entryIKcE13str_hash_proc11str_eq_procE", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!18 = !{!17, !5, i64 8}
!19 = !{!17, !5, i64 12}
!20 = !{!17, !5, i64 16}
!21 = !{!"p1 omnipotent char", !8, i64 0}
!22 = !{!"_ZTS14ptr_hash_entryIKcE", !5, i64 0, !21, i64 8}
!23 = !{!22, !21, i64 8}
!24 = !{!17, !16, i64 0}
!25 = !{!"p1 _ZTSN6region4markE", !8, i64 0}
!26 = !{!"_ZTS6region", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !25, i64 32}
!27 = !{!"_ZTS13ptr_hashtableIKc13str_hash_proc11str_eq_procE", !17, i64 0}
!28 = !{!"p1 _ZTSSt5mutex", !8, i64 0}
!29 = !{!"_ZTSN12_GLOBAL__N_121internal_symbol_tableE", !26, i64 0, !27, i64 40, !28, i64 64}
!30 = !{!29, !28, i64 64}
!31 = !{!"p1 _ZTSN12_GLOBAL__N_121internal_symbol_tableE", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"_ZTS6symbol", !21, i64 0}
!35 = !{!34, !21, i64 0}
!36 = !{!21, !21, i64 0}
!37 = !{!16, !16, i64 0}
!38 = !{!22, !5, i64 0}
!39 = !{!"long", !4, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!41 = !{!40, !21, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !39, i64 8, !4, i64 16}
!43 = !{!42, !21, i64 0}
!44 = !{!4, !4, i64 0}
!45 = !{!42, !39, i64 8}
!46 = !{!"_ZTS13string_bufferILj128EE", !4, i64 0, !21, i64 128, !39, i64 136, !39, i64 144}
!47 = !{!46, !21, i64 128}
!48 = !{!46, !39, i64 144}
!49 = !{!46, !39, i64 136}
!50 = distinct !{!50, !33}
!51 = !{!39, !39, i64 0}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !60}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!5, !5, i64 0}
!62 = !{i64 0, i64 4, !61, i64 8, i64 8, !36}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!65 = distinct !{!65, !64, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = !{!65}
end_hunk_0
