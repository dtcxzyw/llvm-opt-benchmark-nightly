Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/molecules?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5nblib8Molecule13getExclusionsEv:bb.a
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %12 = alloca %"class.std::tuple.390", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 104
  %i.o = shl i64 %i.n, 32
  %i.p = ashr exact i64 %i.o, 32
  invoke void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.p)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !69
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 104
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.aa = load ptr, ptr %2, align 8, !tbaa !416   ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !416 ; 6 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 72
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_less_iterEEvT_SH_T0_T1_(ptr %i.aa, ptr %i.ac, i64 noundef %i.aj)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.ak = icmp sgt i64 %i.af, 1152
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 1152 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %i.aa, ptr nonnull %i.al)
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.d
  %.not4.i.i.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc92, %.noexc93
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.am, %.noexc93 ], [ %i.al, %.noexc92 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc93 unwind label %.loopexit253

.noexc93:                                         ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !400

bb.e:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %i.aa, ptr %i.ac)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %.loopexit.split-lp

.loopexit253:                                     ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %.noexc.i.i, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit
  %i.an = phi ptr [ %i.r, %.lr.ph ], [ %i.ay, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit ]
  %storemerge276 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit ]
  %i.ao = sext i32 %storemerge276 to i64
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !131 ; 3 uses
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_iEEC2IRKS5_JS9_RiEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc95 unwind label %bb.i

.noexc95:                                         ; preds = %bb.g
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr %i.au, ptr %i.y, align 8, !tbaa !131
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE17_M_realloc_insertIJRKS6_SC_RiEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit unwind label %bb.i

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit: ; preds = %bb.h, %.noexc95
  %i.av = load i32, ptr %i.b, align 4, !tbaa !69
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  store i32 %i.aw, ptr %i.b, align 4, !tbaa !69
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 104
  %i.bd = trunc i64 %i.bc to i32
  %i.be = icmp slt i32 %i.aw, %i.bd
  br i1 %i.be, label %bb.f, label %._crit_edge, !llvm.loop !401

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.noexc93, %.noexc92, %._crit_edge, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 3 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !68 ; 3 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i97 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i97, label %.noexc99, label %bb.j

bb.j:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.bn = icmp ugt i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #28
          to label %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge unwind label %.loopexit.split-lp

_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bg, align 8, !tbaa !417
  %.pre306 = load ptr, ptr %i.bh, align 8, !tbaa !417
  br label %.noexc99

.noexc99:                                         ; preds = %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.bp = phi ptr [ %i.bi, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %.pre306, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 4 uses
  %i.bq = phi ptr [ %i.bj, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %.pre, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 8 uses
  %i.br = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %i.bo, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 12 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !47
  %.not7.i.i.i.i.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc99
  %i.bv = ptrtoaddr ptr %i.bq to i64              ; 2 uses
  %i.bw = ptrtoaddr ptr %i.br to i64
  %i.bx = ptrtoaddr ptr %i.bp to i64
  %i.by = add i64 %i.bx, -8
  %i.bz = sub i64 %i.by, %i.bv                    ; 3 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  %i.cc = sub i64 %i.bv, %i.bw
  %diff.check = icmp ugt i64 %i.cc, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check459 = icmp ult i64 %i.bz, 120
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cb, 12
  %n.vec = and i64 %i.cb, 4611686018427387888     ; 4 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.br, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bq, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ch ; 4 uses
  %next.gep460 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 4 uses
  %i.ci = getelementptr i8, ptr %next.gep460, i64 32
  %i.cj = getelementptr i8, ptr %next.gep460, i64 64
  %i.ck = getelementptr i8, ptr %next.gep460, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep460, align 4
  %wide.load461 = load <4 x i64>, ptr %i.ci, align 4
  %wide.load462 = load <4 x i64>, ptr %i.cj, align 4
  %wide.load463 = load <4 x i64>, ptr %i.ck, align 4
  %i.cl = getelementptr i8, ptr %next.gep, i64 32
  %i.cm = getelementptr i8, ptr %next.gep, i64 64
  %i.cn = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load461, ptr %i.cl, align 4
  store <4 x i64> %wide.load462, ptr %i.cm, align 4
  store <4 x i64> %wide.load463, ptr %i.cn, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec465 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cp = shl i64 %n.vec465, 3                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.br, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bq, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index466 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next470, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = shl i64 %index466, 3                    ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.br, i64 %i.cs
  %next.gep468 = getelementptr i8, ptr %i.bq, i64 %i.cs
  %wide.load469 = load <4 x i64>, ptr %next.gep468, align 4
  store <4 x i64> %wide.load469, ptr %next.gep467, align 4
  %index.next470 = add nuw i64 %index466, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next470, %n.vec465
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n471 = icmp eq i64 %i.cb, %n.vec465
  br i1 %cmp.n471, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.br, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bq, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cu = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.cu, ptr %.09.i.i.i.i.i, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, %i.bp
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !404

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc99
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.br, %.noexc99 ], [ %i.cq, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %i.cw, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !46
  %i.cx = ptrtoint ptr %i.bp to i64
  %i.cy = ptrtoint ptr %i.bq to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !126 ; 2 uses
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 7
  %i.dj = add nsw i64 %i.di, %i.da                ; 4 uses
  %i.dk = icmp ugt i64 %i.dj, 1152921504606846975
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc102 unwind label %bb.o

.noexc102:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.loopexit
  %i.dl = lshr exact i64 %i.bm, 3
  %i.dm = icmp samesign ult i64 %i.dl, %i.dj
  br i1 %i.dm, label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.dn = ptrtoint ptr %i.br to i64
  %i.do = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.dp = sub i64 %i.do, %i.dn
  %i.dq = shl nuw nsw i64 %i.dj, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #28
          to label %.noexc103 unwind label %bb.o  ; 13 uses

.noexc103:                                        ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i
  %i.ds = load ptr, ptr %0, align 8, !tbaa !68    ; 15 uses
  %i.dt = load ptr, ptr %i.bs, align 8, !tbaa !46 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ds, %i.dt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %iter.check498

iter.check498:                                    ; preds = %.noexc103
  %22 = ptrtoaddr ptr %i.dt to i64
  %23 = ptrtoaddr ptr %i.ds to i64
  %i.du = add i64 %22, -8
  %i.dv = sub i64 %i.du, %23                      ; 3 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 5 uses
  %min.iters.check476 = icmp ult i64 %i.dv, 24
  br i1 %min.iters.check476, label %.lr.ph.i.i.i.i100.preheader, label %vector.memcheck477

vector.memcheck477:                               ; preds = %iter.check498
  %24 = ptrtoaddr ptr %i.dt to i64
  %25 = ptrtoaddr ptr %i.ds to i64
  %i.dy = add i64 %24, -8
  %i.dz = sub i64 %i.dy, %25
  %i.ea = and i64 %i.dz, -8
  %i.eb = add i64 %i.ea, 8                        ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dr, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ds, i64 %i.eb
  %bound0 = icmp ult ptr %i.dr, %i.ed
  %bound1 = icmp ult ptr %i.ds, %i.ec
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i100.preheader, label %vector.main.loop.iter.check478

vector.main.loop.iter.check478:                   ; preds = %vector.memcheck477
  %min.iters.check479 = icmp ult i64 %i.dv, 120
  br i1 %min.iters.check479, label %vec.epilog.ph502, label %vector.ph480

vector.ph480:                                     ; preds = %vector.main.loop.iter.check478
  %i.ee = and i64 %i.dx, 12
  %n.vec481 = and i64 %i.dx, 4611686018427387888  ; 4 uses
  %i.ef = shl i64 %n.vec481, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dr, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.ds, i64 %i.ef
  br label %vector.body482

vector.body482:                                   ; preds = %vector.ph480, %vector.body482
  %index483 = phi i64 [ 0, %vector.ph480 ], [ %index.next493, %vector.body482 ] ; 2 uses
  %i.ei = shl i64 %index483, 3                    ; 3 uses
  %i.ej = or disjoint i64 %i.ei, 64               ; 2 uses
  %next.gep484 = getelementptr i8, ptr %i.dr, i64 %i.ei
  %next.gep485 = getelementptr i8, ptr %i.dr, i64 %i.ej
  %next.gep486 = getelementptr i8, ptr %i.ds, i64 %i.ei
  %next.gep487 = getelementptr i8, ptr %i.ds, i64 %i.ej
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %wide.vec = load <16 x i32>, ptr %next.gep486, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  %wide.vec489 = load <16 x i32>, ptr %next.gep487, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <16 x i32> %wide.vec, ptr %next.gep484, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  store <16 x i32> %wide.vec489, ptr %next.gep485, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %index.next493 = add nuw i64 %index483, 16      ; 2 uses
  %i.ek = icmp eq i64 %index.next493, %n.vec481
  br i1 %i.ek, label %middle.block494, label %vector.body482, !llvm.loop !408

middle.block494:                                  ; preds = %vector.body482
  %cmp.n495 = icmp eq i64 %i.dx, %n.vec481
  br i1 %cmp.n495, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %vec.epilog.iter.check500

vec.epilog.iter.check500:                         ; preds = %middle.block494
  %min.epilog.iters.check501 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check501, label %.lr.ph.i.i.i.i100.preheader, label %vec.epilog.ph502, !prof !72

vec.epilog.ph502:                                 ; preds = %vector.main.loop.iter.check478, %vec.epilog.iter.check500
  %vec.epilog.resume.val496 = phi i64 [ %n.vec481, %vec.epilog.iter.check500 ], [ 0, %vector.main.loop.iter.check478 ]
  %n.vec503 = and i64 %i.dx, 4611686018427387900  ; 3 uses
  %i.el = shl i64 %n.vec503, 3                    ; 2 uses
  %i.em = getelementptr i8, ptr %i.dr, i64 %i.el
  %i.en = getelementptr i8, ptr %i.ds, i64 %i.el
  br label %vec.epilog.vector.body504

vec.epilog.vector.body504:                        ; preds = %vec.epilog.vector.body504, %vec.epilog.ph502
  %index505 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph502 ], [ %index.next512, %vec.epilog.vector.body504 ] ; 2 uses
  %i.eo = shl i64 %index505, 3                    ; 2 uses
  %next.gep506 = getelementptr i8, ptr %i.dr, i64 %i.eo
  %next.gep507 = getelementptr i8, ptr %i.ds, i64 %i.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %wide.vec508 = load <8 x i32>, ptr %next.gep507, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <8 x i32> %wide.vec508, ptr %next.gep506, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %index.next512 = add nuw i64 %index505, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next512, %n.vec503
  br i1 %i.ep, label %vec.epilog.middle.block513, label %vec.epilog.vector.body504, !llvm.loop !409

vec.epilog.middle.block513:                       ; preds = %vec.epilog.vector.body504
  %cmp.n514 = icmp eq i64 %i.dx, %n.vec503
  br i1 %cmp.n514, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i100.preheader

.lr.ph.i.i.i.i100.preheader:                      ; preds = %iter.check498, %vector.memcheck477, %vec.epilog.iter.check500, %vec.epilog.middle.block513
  %.012.i.i.i.i.ph = phi ptr [ %i.dr, %iter.check498 ], [ %i.dr, %vector.memcheck477 ], [ %i.eg, %vec.epilog.iter.check500 ], [ %i.em, %vec.epilog.middle.block513 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ds, %iter.check498 ], [ %i.ds, %vector.memcheck477 ], [ %i.eh, %vec.epilog.iter.check500 ], [ %i.en, %vec.epilog.middle.block513 ]
  br label %.lr.ph.i.i.i.i100

.lr.ph.i.i.i.i100:                                ; preds = %.lr.ph.i.i.i.i100.preheader, %.lr.ph.i.i.i.i100
  %.012.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i100 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i100 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.eq = load <2 x i32>, ptr %.0911.i.i.i.i, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <2 x i32> %i.eq, ptr %.012.i.i.i.i, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %i.er = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i101 = icmp eq ptr %i.er, %i.dt
  br i1 %.not.i.i.i.i101, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i100, !llvm.loop !410

_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i100, %middle.block494, %vec.epilog.middle.block513, %.noexc103
  %.not.i8.i = icmp eq ptr %i.ds, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.et = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.ds to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.ew) #26
  br label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dr, ptr %0, align 8, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp ; 2 uses
  store ptr %i.ex, ptr %i.bs, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dj
  store ptr %i.ey, ptr %i.bu, align 8, !tbaa !47
  %.pre307 = load ptr, ptr %i.db, align 8, !tbaa !420
  %.pre308 = load ptr, ptr %i.dc, align 8, !tbaa !420
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.l
  %i.ez = phi ptr [ %i.ex, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.0.lcssa.i.i.i.i.i, %bb.l ]
  %i.fa = phi ptr [ %i.dr, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.br, %bb.l ]
  %i.fb = phi ptr [ %.pre308, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.dd, %bb.l ] ; 2 uses
  %i.fc = phi ptr [ %.pre307, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.de, %bb.l ] ; 2 uses
  %.not277 = icmp eq ptr %i.fc, %i.fb
  br i1 %.not277, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  br label %bb.p

._crit_edge280.loopexit:                          ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184
  %.pre313 = load ptr, ptr %0, align 8, !tbaa !417
  %.pre314 = load ptr, ptr %i.bs, align 8, !tbaa !417
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %._crit_edge280.loopexit, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit
  %i.fp = phi ptr [ %.pre314, %._crit_edge280.loopexit ], [ %i.ez, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.fq = phi ptr [ %.pre313, %._crit_edge280.loopexit ], [ %i.fa, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit ] ; 5 uses
  %.not.i.i104 = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i.i104, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge280
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 3
  %i.fv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fu, i1 true)
  %i.fw = shl nuw nsw i64 %i.fv, 1
  %i.fx = xor i64 %i.fw, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.fq, ptr %i.fp, i64 noundef %i.fx)
          to label %.noexc105 unwind label %bb.bt

.noexc105:                                        ; preds = %bb.n
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.fq, ptr %i.fp)
          to label %.noexc105._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge unwind label %bb.bt

.noexc105._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc105
  %.pre315 = load ptr, ptr %0, align 8, !tbaa !417
  %.pre316 = load ptr, ptr %i.bs, align 8, !tbaa !417
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i, %bb.k
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.p:                                             ; preds = %.lr.ph279, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184
  %.sroa.0211.0278 = phi ptr [ %i.fc, %.lr.ph279 ], [ %i.og, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184 ] ; 12 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 96 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 64 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 32 ; 3 uses
  %i.gc = load ptr, ptr %2, align 8, !tbaa !416   ; 3 uses
  %i.gd = load ptr, ptr %i.ab, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !69
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_iEEC2IRKS5_JS9_iEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0211.0278, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit unwind label %bb.ad

_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit: ; preds = %bb.p
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  %.pre309 = load ptr, ptr %i.fe, align 8         ; 3 uses
  br i1 %i.gh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEES9_ZNK5nblib8Molecule13getExclusionsEvE3$_0ET_SI_SI_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit
  %i.gi = udiv exact i64 %i.gg, 72
  %i.gj = load i64, ptr %i.fd, align 8, !tbaa !21 ; 2 uses
  %i.gk = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.gl = load ptr, ptr %i.fg, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.gi, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %bb.r ] ; 2 uses
end_hunk_0
