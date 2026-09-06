Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueEELb1EEEEE16_M_allocate_nodeIJRS9_RKSC_EEEPSE_DpOT_:bb.a
  %i.x = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #41
  invoke void @__cxa_rethrow() #39
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #42
  unreachable

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow4json6wvalueC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %2 = alloca %"struct.std::__detail::_AllocNode.288", align 8 ; 4 uses
  %3 = alloca %"class.std::function.247", align 16 ; 12 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 16, ptr %i.b, align 8, !tbaa !111
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !113
  %i.e = load i64, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.66, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !115
  %i.g = load ptr, ptr %4, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow10returnableE, i64 16), ptr %0, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !109
  %i.k = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.l, ptr %i.a, align 8, !tbaa !111
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.d   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i.i
  store ptr %i.n, ptr %i.i, align 8, !tbaa !113
  %i.o = load i64, ptr %i.a, align 8, !tbaa !111
  store i64 %i.o, ptr %i.j, align 8, !tbaa !114
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %.noexc.i
  %i.p = phi ptr [ %i.n, %.noexc24 ], [ %i.j, %.noexc.i ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !114
  store i8 %i.q, ptr %i.p, align 1, !tbaa !114
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !115
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.v = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.c, align 8, !tbaa !114
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow4json6wvalueE, i64 16), ptr %0, align 8, !tbaa !229
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !536
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  store i8 3, ptr %i.aa, align 1, !tbaa !537
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.ae, align 8, !tbaa !115
  store i8 0, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !536 ; 2 uses
  store i8 %i.aj, ptr %i.z, align 8, !tbaa !536
  switch i8 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit [
    i8 7, label %bb.t
    i8 6, label %bb.r
    i8 5, label %bb.j
    i8 3, label %bb.e
    i8 4, label %bb.i
  ]

bb.d:                                             ; preds = %.noexc.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.c
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.d
  %i.an = load i64, ptr %i.c, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.sink.split

.loopexit:                                        ; preds = %.lr.ph61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt15__new_allocatorIN4crow4json6wvalueEE8allocateEmPKv.exit.i.i, %bb.k, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !537 ; 2 uses
  store i8 %i.ap, ptr %i.aa, align 1, !tbaa !537
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  switch i8 %i.ap, label %bb.h [
    i8 2, label %bb.f
    i8 4, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !114
  store double %i.ar, ptr %i.ab, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !114
  store i64 %i.as, ptr %i.ab, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.h:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !114
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43
          to label %_ZNK4crow4json6wvalue4sizeEv.exit unwind label %bb.m ; 5 uses

_ZNK4crow4json6wvalue4sizeEv.exit:                ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr %i.av, ptr %i.af, align 8, !tbaa !512
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !512 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !516 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !515 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.ba, %i.bc                    ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 9223372036854775680
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4crow4json6wvalue4sizeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #39
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !25

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNK4crow4json6wvalue4sizeEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.not111 = icmp eq ptr %i.az, %i.bb
  br i1 %.not111, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZNSt15__new_allocatorIN4crow4json6wvalueEE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIN4crow4json6wvalueEE8allocateEmPKv.exit.i.i: ; preds = %bb.l
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #43
          to label %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit unwind label %.loopexit.split-lp, !inline_history !1426 ; 3 uses

_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt15__new_allocatorIN4crow4json6wvalueEE8allocateEmPKv.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !515
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !516
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !517
  %.pre85 = load ptr, ptr %i.ax, align 8, !tbaa !538 ; 2 uses
  %.pre87 = load ptr, ptr %i.ay, align 8, !tbaa !538
  %i.bj = icmp eq ptr %.pre85, %.pre87
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit, %bb.p
  %.sroa.044.058 = phi ptr [ %i.bs, %bb.p ], [ %.pre85, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit ] ; 3 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !512 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !516 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !517
  %.not.i30 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  invoke void @_ZN4crow4json6wvalueC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.044.058)
          to label %.noexc31 unwind label %bb.q, !inline_history !1427

.noexc31:                                         ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !516
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !516
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.044.058)
          to label %bb.p unwind label %bb.q, !inline_history !1427

bb.p:                                             ; preds = %.noexc31, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.044.058, i64 136 ; 2 uses
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !512
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !538
  %.not = icmp eq ptr %i.bs, %i.bv
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph, !llvm.loop !1428

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43
          to label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EEaSEOSL_.exit unwind label %bb.s ; 9 uses

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EEaSEOSL_.exit: ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !509
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !510
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.by, align 16, !tbaa !438
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store ptr %i.bx, ptr %i.ag, align 8, !tbaa !506
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !506
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !508 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr %i.bx, ptr %2, align 8, !tbaa !544
  %.not5659 = icmp eq ptr %i.cg, null
  br i1 %.not5659, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE6insertINSt8__detail14_Node_iteratorISF_Lb0ELb1EEEEEvT_SM_.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EEaSEOSL_.exit, %.noexc42
  %.sroa.051.060 = phi ptr [ %i.cj, %.noexc42 ], [ %i.cg, %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EEaSEOSL_.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.051.060, i64 8 ; 2 uses
  %i.ci = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4crow4json6wvalueEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS7_RKSB_NSD_10_AllocNodeISaINSD_10_Hash_nodeISB_Lb1EEEEEEEES6_INSD_14_Node_iteratorISB_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(168) %i.ch, ptr noundef nonnull align 8 dereferenceable(168) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc42 unwind label %.loopexit, !inline_history !1429 ; 0 uses

.noexc42:                                         ; preds = %.lr.ph61
  %i.cj = load ptr, ptr %.sroa.051.060, align 8, !tbaa !246 ; 2 uses
  %.not56 = icmp eq ptr %i.cj, null
  br i1 %.not56, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE6insertINSt8__detail14_Node_iteratorISF_Lb0ELb1EEEEEvT_SM_.exit, label %.lr.ph61, !llvm.loop !1430

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE6insertINSt8__detail14_Node_iteratorISF_Lb0ELb1EEEEEvT_SM_.exit: ; preds = %.noexc42, %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EEaSEOSL_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEC2ERKS8_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cq = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i32 noundef 2)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cr = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !119
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre63 = load ptr, ptr %.phi.trans.insert62, align 8, !tbaa !119
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEC2ERKS8_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %i.cl, align 16, !tbaa !197 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.y      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #42
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEC2ERKS8_.exit.i: ; preds = %bb.v, %bb.t
  %i.cx = phi ptr [ null, %bb.t ], [ %.pre63, %bb.v ]
  %i.cy = phi ptr [ null, %bb.t ], [ %.pre, %bb.v ] ; 3 uses
  %i.cz = phi <2 x ptr> [ splat (ptr null), %bb.t ], [ %i.cr, %bb.v ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 16, i1 false), !tbaa.struct !118
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ah, align 8, !tbaa !114
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cy, ptr %i.cl, align 16, !tbaa !119
  store ptr %i.cx, ptr %i.cm, align 8, !tbaa !119
  store <2 x ptr> %i.cz, ptr %i.da, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEaSERKS8_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEC2ERKS8_.exit.i
  %i.db = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEaSERKS8_.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #42
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEaSERKS8_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEC2ERKS8_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.p, %bb.l, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit, %bb.i, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_EEaSERKS8_.exit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE6insertINSt8__detail14_Node_iteratorISF_Lb0ELb1EEEEEvT_SM_.exit, %bb.f, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x, %bb.s, %bb.q, %bb.m
  %.pn21 = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %i.ck, %bb.s ], [ %i.bw, %bb.q ], [ %i.cs, %bb.w ], [ %i.cs, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !197 ; 2 uses
  %.not.i36 = icmp eq ptr %i.df, null
  br i1 %.not.i36, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.body
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ac ; 0 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseEEZNS0_10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlS2_S4_E_E9_M_invokeERKSt9_Any_dataS2_S4_":bb.a
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !114
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !113 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !114
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i, i64 noundef 80) #41
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i
  %i.bt = load ptr, ptr %i.bd, align 8, !tbaa !468
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !469
  %i.bw = shl i64 %i.bv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %i.bw, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !468 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !469
  %i.cb = shl i64 %i.ca, 3
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit.i.i.i.i: ; preds = %bb.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !113 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %"_ZSt10__invoke_rIvRZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS0_7requestERNS0_8responseEE_JS8_SA_EENSt9enable_ifIX16is_invocable_r_vIS5_T0_DpT1_EES5_E4typeEOSE_DpOSF_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !114
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #41
  br label %"_ZSt10__invoke_rIvRZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS0_7requestERNS0_8responseEE_JS8_SA_EENSt9enable_ifIX16is_invocable_r_vIS5_T0_DpT1_EES5_E4typeEOSE_DpOSF_.exit"

bb.t:                                             ; preds = %"_ZZ4mainENK3$_6clEv.exit.i.i.i.i"
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow4json6wvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume.i.i.i.i

"_ZSt10__invoke_rIvRZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS0_7requestERNS0_8responseEE_JS8_SA_EENSt9enable_ifIX16is_invocable_r_vIS5_T0_DpT1_EES5_E4typeEOSE_DpOSF_.exit": ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZN4crow4json6wvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4crow7requestERNS0_8responseEEZNS0_10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlS2_S4_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS1_7requestERNS1_8responseEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS_7requestERNS_8responseEE_", ptr %0, align 8, !tbaa !503
  br label %"_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS1_7requestERNS1_8responseEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !119
  br label %"_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS1_7requestERNS1_8responseEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i8, ptr %1, align 8
  store i8 %.val.i, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS1_7requestERNS1_8responseEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4crow10TaggedRuleIJEEclIZ4mainE3$_6EEvOT_EUlRNS1_7requestERNS1_8responseEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow4json6wvalueC2ERKSt6vectorIS1_SaIS1_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 16, ptr %i.b, align 8, !tbaa !111
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !113
  %i.e = load i64, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.66, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !115
  %i.g = load ptr, ptr %2, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow10returnableE, i64 16), ptr %0, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !109
  %i.k = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !115  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.l, ptr %i.a, align 8, !tbaa !111
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.h   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i.i
  store ptr %i.n, ptr %i.i, align 8, !tbaa !113
  %i.o = load i64, ptr %i.a, align 8, !tbaa !111
  store i64 %i.o, ptr %i.j, align 8, !tbaa !114
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc12, %.noexc.i
  %i.p = phi ptr [ %i.n, %.noexc12 ], [ %i.j, %.noexc.i ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !114
  store i8 %i.q, ptr %i.p, align 1, !tbaa !114
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !115
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.v = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.c, align 8, !tbaa !114
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow4json6wvalueE, i64 16), ptr %0, align 8, !tbaa !229
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 3, ptr %i.aa, align 1, !tbaa !537
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ab, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.ae, align 8, !tbaa !115
  store i8 0, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  store i8 5, ptr %i.z, align 8, !tbaa !536
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43
          to label %_ZNSt10unique_ptrISt6vectorIN4crow4json6wvalueESaIS3_EESt14default_deleteIS5_EED2Ev.exit unwind label %bb.i ; 8 uses

_ZNSt10unique_ptrISt6vectorIN4crow4json6wvalueESaIS3_EESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !512
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !516 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !515   ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %3 = udiv exact i64 %i.ao, 136
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775680
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4crow4json6wvalueESaIS3_EESt14default_deleteIS5_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #39
          to label %.noexc13 unwind label %bb.j, !inline_history !25

.noexc13:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4crow4json6wvalueESaIS3_EESt14default_deleteIS5_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.not53 = icmp eq ptr %i.ak, %i.al
  br i1 %.not53, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.as = invoke noundef ptr @_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %3, ptr noundef null, ptr noundef null)
          to label %.noexc14 unwind label %bb.j, !inline_history !25 ; 3 uses

.noexc14:                                         ; preds = %bb.f
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !515 ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !516 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc14, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.at, %.noexc14 ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i, align 8, !tbaa !229
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.05.i.i.i) #40, !inline_history !1453
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !515
  br label %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exit.i

_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exitthread-pre-split.i, %.noexc14
  %i.az = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exitthread-pre-split.i ], [ %i.at, %.noexc14 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exit.i
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !517
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #41, !inline_history !25
  br label %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit: ; preds = %_ZSt8_DestroyIPN4crow4json6wvalueEEvT_S4_.exit.i, %bb.g
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !515
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !516
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !517
  %.pre = load ptr, ptr %1, align 8, !tbaa !538   ; 2 uses
  %.pre34 = load ptr, ptr %i.aj, align 8, !tbaa !538
  %i.bf = icmp eq ptr %.pre, %.pre34
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit, %bb.e, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.sink.split

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.f, %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %.sroa.026.033 = phi ptr [ %i.bt, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit ], [ %.pre, %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE7reserveEm.exit ] ; 3 uses
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !512 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !516 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !517
  %.not.i18 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  invoke void @_ZN4crow4json6wvalueC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.bo, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.026.033)
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %bb.k
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !516
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !516
  br label %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.l:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.026.033)
          to label %_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit unwind label %bb.m

_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.l, %.noexc19
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.026.033, i64 136 ; 2 uses
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !538
  %.not = icmp eq ptr %i.bt, %i.bu
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1454

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %i.bl, %bb.j ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !197 ; 2 uses
  %.not.i21 = icmp eq ptr %i.bx, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.n, %bb.o
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !506 ; 2 uses
  %.not.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZNKSt14default_deleteISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEEEclEPSI_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.cb), !inline_history !26
  br label %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EED2Ev.exit

_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.q
  call void @_ZNSt10unique_ptrISt6vectorIN4crow4json6wvalueESaIS3_EESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #40
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ad
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EED2Ev.exit
  %i.ce = load i64, ptr %i.ad, align 8, !tbaa !114
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4crow4json6wvalueESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S9_EEESt14default_deleteISI_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow10returnableE, i64 16), ptr %0, align 8, !tbaa !229
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !113 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.j
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.sink56 = phi i64 [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %.sink = phi ptr [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %.pn9.pn.ph = phi { ptr, i32 } [ %.pn9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.cj = add i64 %.sink56, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %i.bg, %bb.h ], [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.pn9.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.sink.split ]
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4crow4json6wvalueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !516  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !515    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4crow4json6wvalueESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #39
  unreachable

_ZNKSt6vectorIN4crow4json6wvalueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
end_hunk_1
