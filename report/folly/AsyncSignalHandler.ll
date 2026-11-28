Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSignalHandler?download=true
inline.NumInlined: 344
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev:bb.a
_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly18AsyncSignalHandler15attachEventBaseEPNS_9EventBaseE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly18AsyncSignalHandler15detachEventBaseEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18AsyncSignalHandler21registerSignalHandlerEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.std::pair.11", align 8     ; 8 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26, !noalias !80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.c, i8 0, i64 152, i1 false), !noalias !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  store i32 %1, ptr %2, align 8, !tbaa !83, !alias.scope !81
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.cast = ptrtoint ptr %i.c to i64
  store i64 %.cast, ptr %i.d, align 8, !tbaa !33, !alias.scope !81
  store ptr null, ptr %3, align 8, !tbaa !33, !noalias !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = icmp slt i32 %i.i, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.k, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  %i.n = icmp slt i32 %1, %i.m
  br i1 %i.n, label %.critedge.i, label %.thread

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, %bb.a
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i ], [ %i.g, %bb.a ]
  %i.o = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJS0_IiS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %.critedge.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit.thread, label %.thread

_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.m

.thread:                                          ; preds = %bb.b, %bb.c
  %.sroa.3.0.i58 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %.sroa.012.0.i56 = phi ptr [ %i.o, %bb.c ], [ %.19.i.i.i.i, %bb.b ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not2.i.i.i.i, label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.t(ptr noundef nonnull %i.r)
          to label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #22
  unreachable

_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %bb.d, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 152) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.sroa.3.0.i58, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA39_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(39) @.str, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.ag unwind label %bb.k

bb.j:                                             ; preds = %.critedge.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %.017 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !61
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.017, label %bb.l, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.017, label %bb.l, label %bb.ae

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn35 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.w) #23
  br label %bb.ae

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit
  %.sroa.012.0.i5762 = phi ptr [ %i.o, %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit.thread ], [ %.sroa.012.0.i56, %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i5762, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 3 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !49
  invoke void @event_set(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, i32 noundef %i.ah, i16 noundef signext 24, ptr noundef nonnull @_ZN5folly18AsyncSignalHandler16libeventCallbackEisPv, ptr noundef nonnull %0)
          to label %_ZN5folly14EventBaseEvent13eb_signal_setEiPFvisPvES1_.exit unwind label %bb.r

_ZN5folly14EventBaseEvent13eb_signal_setEiPFvisPvES1_.exit: ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = invoke noundef i32 @_ZN5folly14EventBaseEvent17eb_event_base_setEPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef %i.aj)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN5folly14EventBaseEvent13eb_signal_setEiPFvisPvES1_.exit
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA45_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(45) @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.ag unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.t, %_ZN5folly14EventBaseEvent13eb_signal_setEiPFvisPvES1_.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %7

bb.s:                                             ; preds = %bb.q, %bb.p
  %.015 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.ao = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !61
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.015, label %7, label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.015, label %7, label %bb.aa

7:                                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn2238 = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @__cxa_free_exception(ptr %i.al) #23
  br label %bb.aa

bb.t:                                             ; preds = %bb.n
  %i.au = invoke noundef i32 @_ZN5folly14EventBaseEvent12eb_event_addEPK7timeval(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef null)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  %.not20 = icmp eq i32 %i.au, 0
  br i1 %.not20, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA39_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(39) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
          to label %bb.ag unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread: ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.013 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.ay = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.y
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !61
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.013, label %bb.z, label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.013, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn2141 = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ]
  call void @__cxa_free_exception(ptr %i.av) #23
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %7, %bb.r
  %.pn22.pn = phi { ptr, i32 } [ %.pn2238, %7 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn2141, %bb.z ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.am, %bb.r ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ]
  %.3 = extractvalue { ptr, i32 } %.pn22.pn, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %.3) #23 ; 0 uses
  %i.be = invoke ptr @_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr nonnull %.sroa.012.0.i5762)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #27
          to label %bb.ag unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.ad:                                            ; preds = %bb.u
  ret void

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %bb.j
  %.pn23 = phi { ptr, i32 } [ %i.x, %bb.j ], [ %.pn35, %bb.l ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %bb.ac ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn23

bb.af:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #22
  unreachable

bb.ag:                                            ; preds = %bb.ab, %bb.x, %bb.q, %bb.i
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not2.i.i.i, label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %i.d)
          to label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 152) #25
  br label %_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA39_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !63
  store i8 0, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZN5folly11toAppendFitIJA39_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !61
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly18AsyncSignalHandler16libeventCallbackEisPv(i32 noundef %0, i16 signext %1, ptr noundef %2) #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %0) #23, !call_target !162
  ret void
}

declare noundef i32 @_ZN5folly14EventBaseEvent17eb_event_base_setEPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA45_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !63
  store i8 0, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !65
  invoke void @_ZN5folly11toAppendFitIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !61
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

declare noundef i32 @_ZN5folly14EventBaseEvent12eb_event_addEPK7timeval(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3mapIiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS2_EESt4lessIiESaISt4pairIKiS5_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN5folly14EventBaseEventESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessIiESaIS8_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS8_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.i(ptr noundef nonnull %i.g)
          to label %_ZNKSt14default_deleteIN5folly14EventBaseEventEEclEPS1_.exit.i.i.i.i.i.i.i unwind label %bb.e

end_hunk_0
