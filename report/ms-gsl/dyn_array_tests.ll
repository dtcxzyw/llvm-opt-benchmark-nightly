Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/dyn_array_tests?download=true
inline.NumInlined: 2502
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN47dyn_array_tests_input_iterator_constructor_Test8TestBodyEv:._crit_edge.i.i
  br i1 %i.gi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135: ; preds = %bb.ck
  %i.gj = load i64, ptr %i.gh, align 8
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit138

_ZN7testing15AssertionResultD2Ev.exit138:         ; preds = %bb.cj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit138
  %i.gl = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.gl, null
  br i1 %.not.i, label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gm = load i64, ptr %i.ae, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gm) #29
  br label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit

_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.gn = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gn, ptr %1, align 8
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gp = getelementptr i8, ptr %i.gn, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds i8, ptr %1, i64 %i.gq
  store ptr %i.go, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit
  %i.gx = load i64, ptr %i.gv, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #29
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gs, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gz) #28
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ha, ptr %1, align 8
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.hc = getelementptr i8, ptr %i.ha, i64 -24
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %1, i64 %i.hd
  store ptr %i.hb, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.cn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit133, %bb.bz
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %_ZN7testing7MessageD2Ev.exit133 ], [ %i.fo, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.by, %bb.bh, %bb.aq, %bb.z
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.cn ], [ %.pn45.pn.pn, %bb.by ], [ %.pn41.pn.pn, %bb.bh ], [ %.pn37.pn.pn, %bb.aq ], [ %.pn33.pn.pn, %bb.z ] ; 2 uses
  %i.hh = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i141 = icmp eq ptr %i.hh, null
  br i1 %.not.i141, label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit142, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hi = load i64, ptr %i.ae, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hi) #29
  br label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit142

_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit142: ; preds = %bb.cp, %bb.co, %bb.h
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %.pn49.pn.pn.pn, %bb.co ], [ %.pn49.pn.pn.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit142, %bb.g
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit142 ], [ %i.ao, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %1) #28
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.pn49.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn, %bb.cq ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gsl9dyn_arrayIcSaIcEEC2ISt16istream_iteratorIccSt11char_traitsIcElETnNSt9enable_ifIXaantsr7details15is_fwd_iteratorIT_EE5valuesr7details11is_iteratorIS9_EE5valueEbE4typeELb1EEES9_S9_RKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %5 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.j = load i8, ptr %i.i, align 1, !range !7, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %i.e, ptr %i.l, align 1
  store ptr %i.f, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.h, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.j, ptr %i.n, align 1
  invoke void @_ZNSt6vectorIcSaIcEE19_M_range_initializeISt16istream_iteratorIccSt11char_traitsIcElEEEvT_S7_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(16) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(16) %5)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %6, align 8                ; 9 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 10 uses
  %i.w = load ptr, ptr %0, align 8
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false, !prof !10
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @_ZN3gsl7details9terminateEv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp slt i64 %i.v, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i, !prof !9

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30
          to label %iter.check unwind label %bb.i ; 7 uses

iter.check:                                       ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i
  store ptr %i.ad, ptr %0, align 8
  store i64 %i.v, ptr %i.y, align 8
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = sub i64 %i.u, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.v, 9223372036854775776      ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep30, align 1
  %wide.load31 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load31, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %7 = and i64 %i.v, 24
  %8 = getelementptr i8, ptr %i.ad, i64 %n.vec
  %9 = getelementptr i8, ptr %i.s, i64 %n.vec
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %7, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.v, 9223372036854775800    ; 4 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.ad, i64 %index34
  %next.gep36 = getelementptr i8, ptr %i.s, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep36, align 1
  store <8 x i8> %wide.load37, ptr %next.gep35, align 1
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %10 = getelementptr i8, ptr %i.ad, i64 %n.vec33
  %11 = getelementptr i8, ptr %i.s, i64 %n.vec33
  %cmp.n39 = icmp eq i64 %i.v, %n.vec33
  br i1 %cmp.n39, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.ad, %iter.check ], [ %8, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.04.08.i.ph = phi ptr [ %i.s, %iter.check ], [ %9, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.04.08.i.ph43 = ptrtoaddr ptr %.sroa.04.08.i.ph to i64 ; 2 uses
  %i.ak = sub i64 %i.t, %.sroa.04.08.i.ph43
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.an, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.04.08.i.prol = phi ptr [ %i.am, %.lr.ph.i.prol ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.al = load i8, ptr %.sroa.04.08.i.prol, align 1
  store i8 %i.al, ptr %.09.i.prol, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.prol, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !259

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %.sroa.04.08.i.unr = phi ptr [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.ao = sub i64 %.sroa.04.08.i.ph43, %i.t
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.sroa.04.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.aq = load i8, ptr %.sroa.04.08.i, align 1
  store i8 %i.aq, ptr %.09.i, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.at = load i8, ptr %i.ar, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.aw = load i8, ptr %i.au, align 1
  store i8 %i.aw, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.az = load i8, ptr %i.ax, align 1
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.bc = load i8, ptr %i.ba, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 5
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.bf = load i8, ptr %i.bd, align 1
  store i8 %i.bf, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 6
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.bi = load i8, ptr %i.bg, align 1
  store i8 %i.bi, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 7
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bl = load i8, ptr %i.bj, align 1
  store i8 %i.bl, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i7.7 = icmp eq ptr %i.bm, %i.r
  br i1 %.not.i7.7, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i, !llvm.loop !260

_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.not.i.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.br) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i10, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.b
  %.sink26 = phi ptr [ %i.p, %bb.b ], [ %i.bt, %bb.i ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.bs, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %.sink26 to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %.sink26, i64 noundef %i.by) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.bs, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bz = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i13 = icmp eq ptr %i.bz, null
  br i1 %.not.i13, label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cb) #29
  br label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit

_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN40dyn_array_tests_contract_violations_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %13 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %17 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = tail call noundef ptr @_ZSt13set_terminatePFvvE(ptr noundef nonnull @"_ZZN40dyn_array_tests_contract_violations_Test8TestBodyEvEN3$_08__invokeEv") #28
  %.not.i = icmp eq ptr %i.f, null
  %i.g = select i1 %.not.i, ptr @_ZL32failed_set_terminate_deathstring, ptr @_ZL11deathstring ; 5 uses
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.h, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %1, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.147, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 651, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.n, align 8
  invoke void %i.t(ptr noundef %i.u)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31, !inline_history !17
  unreachable
end_hunk_0
begin_hunk_1_@_ZSt17__throw_bad_allocv

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_count_value_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_count_value_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37dyn_array_tests_count_value_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI33dyn_array_tests_inputit_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI33dyn_array_tests_inputit_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV33dyn_array_tests_inputit_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gsl15narrowing_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3gsl15narrowing_error4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str.157
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_copy_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_copy_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_copy_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gsl9dyn_arrayIcSaIcEEC2INS_7details18dyn_array_iteratorIKcEETnNSt9enable_ifIXsr7details15is_fwd_iteratorIT_EE5valueEbE4typeELb1EEES9_S9_RKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.gsl::details::dyn_array_iterator.66") align 8 %1, ptr noundef byval(%"class.gsl::details::dyn_array_iterator.66") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8
  %.fr.i = freeze ptr %.sroa.09.0.copyload        ; 9 uses
  %.fr.i37 = ptrtoaddr ptr %.fr.i to i64
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 11 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.220.0.copyload = load i64, ptr %.sroa.220.0..sroa_idx, align 8 ; 6 uses
  %i.a = icmp eq ptr %.sroa.019.0.copyload, %.fr.i
  br i1 %i.a, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.321.0.copyload = load i64, ptr %.sroa.321.0..sroa_idx, align 8
  %i.b = icmp eq i64 %.sroa.321.0.copyload, %.sroa.3.0.copyload
  br i1 %i.b, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = icmp slt i64 %.sroa.220.0.copyload, 0
  br i1 %i.c, label %bb.f, label %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.d, align 8
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i: ; preds = %bb.e
  %i.e = icmp slt i64 %.sroa.2.0.copyload, 0
  br i1 %i.e, label %bb.g, label %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit

bb.g:                                             ; preds = %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.f, align 8
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit: ; preds = %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i
  %i.g = sub nsw i64 %.sroa.220.0.copyload, %.sroa.2.0.copyload ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit

bb.h:                                             ; preds = %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.i, align 8
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit: ; preds = %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit
  %i.j = icmp eq i64 %.sroa.220.0.copyload, %.sroa.2.0.copyload
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.us.i.thread

.lr.ph.split.us.i:                                ; preds = %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit

.lr.ph.split.us.i.thread:                         ; preds = %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  store ptr %i.k, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.m, align 8
  %.not.i.i36 = icmp eq ptr %.fr.i, null
  br i1 %.not.i.i36, label %.split14.us.i, label %.lr.ph28.preheader.i, !prof !9

.lr.ph28.preheader.i:                             ; preds = %.lr.ph.split.us.i.thread
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload) ; 6 uses
  %i.n = xor i64 %.sroa.2.0.copyload, -1
  %i.o = add nsw i64 %.sroa.220.0.copyload, %i.n
  %i.p = freeze i64 %i.o
  %i.q = sub i64 %umax.i, %.sroa.2.0.copyload
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 33
  br i1 %min.iters.check, label %.lr.ph28.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.preheader.i
  %i.t = add i64 %.sroa.2.0.copyload, %.fr.i37
  %i.u = sub i64 %i.t, %i.l
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph28.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = and i64 %i.s, 31                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 32, i64 %i.v
  %n.vec = sub i64 %i.s, %i.x                     ; 3 uses
  %i.y = getelementptr i8, ptr %.fr.i, i64 %.sroa.2.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %index   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load38, ptr %i.ab, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %.lr.ph28.i.preheader.loopexit, label %vector.body, !llvm.loop !268

.lr.ph28.i.preheader.loopexit:                    ; preds = %vector.body
  %4 = getelementptr i8, ptr %i.k, i64 %n.vec
  %5 = add i64 %.sroa.2.0.copyload, %n.vec
  br label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.lr.ph28.i.preheader.loopexit, %vector.memcheck, %.lr.ph28.preheader.i
  %.08.us.us2127.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph28.preheader.i ], [ %4, %.lr.ph28.i.preheader.loopexit ] ; 2 uses
  %.ph = phi i64 [ %.sroa.2.0.copyload, %vector.memcheck ], [ %.sroa.2.0.copyload, %.lr.ph28.preheader.i ], [ %5, %.lr.ph28.i.preheader.loopexit ] ; 3 uses
  %i.ad = sub i64 %.sroa.220.0.copyload, %.ph
  %i.ae = freeze i64 %i.ad                        ; 2 uses
  %i.af = add i64 %i.ae, -1
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol

.lr.ph28.i.prol:                                  ; preds = %.lr.ph28.i.preheader, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol
  %.08.us.us2127.i.prol = phi ptr [ %i.ak, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ %.08.us.us2127.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %i.ag = phi i64 [ %i.aj, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ %.ph, %.lr.ph28.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ 0, %.lr.ph28.i.preheader ]
  %exitcond.not.i.prol = icmp eq i64 %i.ag, %umax.i
  br i1 %exitcond.not.i.prol, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol: ; preds = %.lr.ph28.i.prol
  %i.ah = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  store i8 %i.ai, ptr %.08.us.us2127.i.prol, align 1
  %i.aj = add i64 %i.ag, 1                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol, !llvm.loop !269

.lr.ph28.i.prol.loopexit:                         ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol, %.lr.ph28.i.preheader
  %.08.us.us2127.i.unr = phi ptr [ %.08.us.us2127.i.ph, %.lr.ph28.i.preheader ], [ %i.ak, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph28.i.preheader ], [ %i.aj, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ]
  %i.al = icmp ult i64 %i.af, 3
  br i1 %i.al, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.prol.loopexit, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3
  %.08.us.us2127.i = phi ptr [ %i.bc, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3 ], [ %.08.us.us2127.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %i.am = phi i64 [ %i.bb, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3 ], [ %.unr, %.lr.ph28.i.prol.loopexit ] ; 6 uses
  %exitcond.not.i = icmp eq i64 %i.am, %umax.i
  br i1 %exitcond.not.i, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i: ; preds = %.lr.ph28.i
  %i.an = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  store i8 %i.ao, ptr %.08.us.us2127.i, align 1
  %i.ap = add i64 %i.am, 1                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %umax.i
  br i1 %exitcond.not.i.1, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1
  store i8 %i.as, ptr %i.aq, align 1
  %i.at = add i64 %i.am, 2                        ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.at, %umax.i
  br i1 %exitcond.not.i.2, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1
  store i8 %i.aw, ptr %i.au, align 1
  %i.ax = add i64 %i.am, 3                        ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ax, %umax.i
  br i1 %exitcond.not.i.3, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %i.ay, align 1
  %i.bb = add i64 %i.am, 4                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 4
  %.not.us.us22.i.3 = icmp eq i64 %i.bb, %.sroa.220.0.copyload
  br i1 %.not.us.us22.i.3, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit, label %.lr.ph28.i, !llvm.loop !270

.split14.us.i:                                    ; preds = %.lr.ph.split.us.i.thread
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

.split17.us.i:                                    ; preds = %.lr.ph28.i.prol, %.lr.ph28.i, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit: ; preds = %.lr.ph28.i.prol.loopexit, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI36dyn_array_tests_access_operator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI36dyn_array_tests_access_operator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV36dyn_array_tests_access_operator_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_iterators_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_iterators_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_iterators_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_range_for_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_range_for_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_range_for_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI39dyn_array_tests_use_std_algorithms_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI39dyn_array_tests_use_std_algorithms_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV39dyn_array_tests_use_std_algorithms_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI54dyn_array_tests_custom_allocator_models_allocator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI54dyn_array_tests_custom_allocator_models_allocator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV54dyn_array_tests_custom_allocator_models_allocator_Test, i64 16), ptr %i.a, align 8
end_hunk_1
