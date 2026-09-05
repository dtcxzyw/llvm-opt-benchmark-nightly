Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/dyn_array_tests?download=true
inline.NumInlined: 2502
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN47dyn_array_tests_input_iterator_constructor_Test8TestBodyEv:._crit_edge.i.i
  br label %bb.cn

bb.cj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125, %_ZN7testing7MessageD2Ev.exit130
  %i.ge = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8            ; 4 uses
  %.not.i.i134 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i134, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
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
  %i.ag = and i64 %i.v, 24
  %n.vec = and i64 %i.v, 9223372036854775776      ; 5 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 %n.vec
  %i.ai = getelementptr i8, ptr %i.s, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep30, align 1
  %wide.load31 = load <16 x i8>, ptr %i.aj, align 1
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load31, ptr %i.ak, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !261

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.v, 9223372036854775800    ; 4 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 %n.vec33
  %i.an = getelementptr i8, ptr %i.s, i64 %n.vec33
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %next.gep35 = getelementptr i8, ptr %i.ad, i64 %index34
  %next.gep36 = getelementptr i8, ptr %i.s, i64 %index34
  %wide.load37 = load <8 x i8>, ptr %next.gep36, align 1
  store <8 x i8> %wide.load37, ptr %next.gep35, align 1
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.v, %n.vec33
  br i1 %cmp.n39, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.04.08.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.04.08.i.ph43 = ptrtoaddr ptr %.sroa.04.08.i.ph to i64 ; 2 uses
  %i.ap = sub i64 %i.t, %.sroa.04.08.i.ph43
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.as, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.04.08.i.prol = phi ptr [ %i.ar, %.lr.ph.i.prol ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = load i8, ptr %.sroa.04.08.i.prol, align 1
  store i8 %i.aq, ptr %.09.i.prol, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.prol, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !259

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.sroa.04.08.i.unr = phi ptr [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %i.at = sub i64 %.sroa.04.08.i.ph43, %i.t
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.sroa.04.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.av = load i8, ptr %.sroa.04.08.i, align 1
  store i8 %i.av, ptr %.09.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.ay = load i8, ptr %i.aw, align 1
  store i8 %i.ay, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.bb = load i8, ptr %i.az, align 1
  store i8 %i.bb, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.be = load i8, ptr %i.bc, align 1
  store i8 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.bh = load i8, ptr %i.bf, align 1
  store i8 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.bk = load i8, ptr %i.bi, align 1
  store i8 %i.bk, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 6
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.bn = load i8, ptr %i.bl, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 7
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bq = load i8, ptr %i.bo, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i7.7 = icmp eq ptr %i.br, %i.r
  br i1 %.not.i7.7, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, label %.lr.ph.i, !llvm.loop !260

_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e
  %.not.i.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bw) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS2_EEEEEvT_SB_S7_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i10, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.b
  %.sink26 = phi ptr [ %i.p, %bb.b ], [ %i.by, %bb.i ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.bx, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %.sink26 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sink26, i64 noundef %i.cd) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.bx, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ce = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i13 = icmp eq ptr %i.ce, null
  br i1 %.not.i13, label %_ZN3gsl7details14dyn_array_baseIcSaIcEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i64, ptr %i.cf, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cg) #29
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
end_hunk_0
begin_hunk_1_@bcmp
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!63 = distinct !{!63, !62, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!64 = distinct !{!64, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!65 = distinct !{!65, !64, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!68 = distinct !{!68, !67, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!69 = distinct !{!69, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!70 = distinct !{!70, !69, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!71 = distinct !{!71, !11}
!72 = !{!60, !58}
!73 = !{!65, !63}
!74 = !{!70, !68}
!75 = distinct !{!75, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!76 = distinct !{!76, !75, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!77 = distinct !{!77, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!78 = distinct !{!78, !77, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!81 = distinct !{!81, !80, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!82 = distinct !{!82, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!83 = distinct !{!83, !82, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0ET_S6_S6_T0_"}
!86 = distinct !{!86, !85, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0ET_S6_S6_T0_: argument 0"}
!87 = distinct !{!87, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0EEET_SA_SA_T0_"}
!88 = distinct !{!88, !87, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0EEET_SA_SA_T0_: argument 0"}
!89 = distinct !{!89, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag"}
!90 = distinct !{!90, !89, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!91 = distinct !{!91, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!92 = distinct !{!92, !91, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!93 = distinct !{!93, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!94 = distinct !{!94, !93, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!97 = distinct !{!97, !96, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!98 = distinct !{!98, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!99 = distinct !{!99, !98, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1ET_S6_S6_T0_"}
!102 = distinct !{!102, !101, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1ET_S6_S6_T0_: argument 0"}
!103 = distinct !{!103, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1EEET_SA_SA_T0_"}
!104 = distinct !{!104, !103, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1EEET_SA_SA_T0_: argument 0"}
!105 = distinct !{!105, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1EEET_SA_SA_T0_St26random_access_iterator_tag"}
!106 = distinct !{!106, !105, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_iterators_Test8TestBodyEvE3$_1EEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!107 = !{!78, !76}
!108 = !{!83, !81}
!109 = !{!90, !88, !86}
!110 = !{!94, !92}
!111 = !{!99, !97}
!112 = !{!106, !104, !102}
!113 = distinct !{!113, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0ET_S6_S6_T0_"}
!114 = distinct !{!114, !113, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0ET_S6_S6_T0_: argument 0"}
!115 = distinct !{!115, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0EEET_SA_SA_T0_"}
!116 = distinct !{!116, !115, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0EEET_SA_SA_T0_: argument 0"}
!117 = distinct !{!117, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag"}
!118 = distinct !{!118, !117, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_range_for_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!119 = !{!118, !116, !114}
!120 = distinct !{!120, !"_ZN3gsl9dyn_arrayIcSaIcEE5beginEv"}
!121 = distinct !{!121, !120, !"_ZN3gsl9dyn_arrayIcSaIcEE5beginEv: argument 0"}
!122 = distinct !{!122, !"_ZN7testing8internal8EqHelper7CompareIN3gsl7details18dyn_array_iteratorIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_"}
!123 = distinct !{!123, !122, !"_ZN7testing8internal8EqHelper7CompareIN3gsl7details18dyn_array_iteratorIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_: argument 0"}
!124 = distinct !{!124, !"_ZN7testing8internal11CmpHelperEQIN3gsl7details18dyn_array_iteratorIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_"}
!125 = distinct !{!125, !124, !"_ZN7testing8internal11CmpHelperEQIN3gsl7details18dyn_array_iteratorIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_: argument 0"}
!126 = distinct !{!126, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!127 = distinct !{!127, !126, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!128 = distinct !{!128, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!129 = distinct !{!129, !128, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!130 = !{!121}
!131 = !{!125, !123}
!132 = !{!129, !127}
!133 = distinct !{!133, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0ET_S6_S6_T0_"}
!134 = distinct !{!134, !133, !"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0ET_S6_S6_T0_: argument 0"}
!135 = distinct !{!135, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0EEET_SA_SA_T0_"}
!136 = distinct !{!136, !135, !"_ZSt13__find_if_notIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops10_Iter_predIZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0EEET_SA_SA_T0_: argument 0"}
!137 = distinct !{!137, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag"}
!138 = distinct !{!138, !137, !"_ZSt9__find_ifIN3gsl7details18dyn_array_iteratorIcEEN9__gnu_cxx5__ops12_Iter_negateIZN37dyn_array_tests_custom_allocator_Test8TestBodyEvE3$_0EEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!139 = distinct !{!139, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!140 = distinct !{!140, !139, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!141 = distinct !{!141, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!142 = distinct !{!142, !141, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!143 = distinct !{!143, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!144 = distinct !{!144, !143, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!145 = distinct !{!145, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!146 = distinct !{!146, !145, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!147 = !{!138, !136, !134}
!148 = !{!142, !140}
!149 = !{!146, !144}
!150 = distinct !{!150, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!151 = distinct !{!151, !150, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!152 = distinct !{!152, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!153 = distinct !{!153, !152, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!154 = !{!153, !151}
!155 = distinct !{!155, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!156 = distinct !{!156, !155, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!157 = distinct !{!157, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!158 = distinct !{!158, !157, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!159 = distinct !{!159, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!160 = distinct !{!160, !159, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!161 = distinct !{!161, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!162 = distinct !{!162, !161, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!163 = !{!158, !156}
!164 = !{!162, !160}
!165 = distinct !{!165, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!166 = distinct !{!166, !165, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!167 = distinct !{!167, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!168 = distinct !{!168, !167, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!169 = distinct !{!169, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!170 = distinct !{!170, !169, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!171 = distinct !{!171, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!172 = distinct !{!172, !171, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!173 = !{!168, !166}
!174 = !{!172, !170}
!175 = distinct !{!175, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!176 = distinct !{!176, !175, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!177 = distinct !{!177, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!178 = distinct !{!178, !177, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!179 = !{!178, !176}
!180 = distinct !{!180, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!181 = distinct !{!181, !180, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!182 = distinct !{!182, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!183 = distinct !{!183, !182, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!184 = distinct !{!184, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!185 = distinct !{!185, !184, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!186 = distinct !{!186, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!187 = distinct !{!187, !186, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!188 = distinct !{!188, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!189 = distinct !{!189, !188, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!190 = distinct !{!190, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!191 = distinct !{!191, !190, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!192 = !{!183, !181}
!193 = !{!187, !185}
!194 = !{!191, !189}
!195 = distinct !{!195, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!196 = distinct !{!196, !195, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!197 = distinct !{!197, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!198 = distinct !{!198, !197, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!199 = !{!198, !196}
!200 = distinct !{!200, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!201 = distinct !{!201, !200, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!202 = distinct !{!202, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!203 = distinct !{!203, !202, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!204 = distinct !{!204, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!205 = distinct !{!205, !204, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!206 = distinct !{!206, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!207 = distinct !{!207, !206, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!208 = !{!203, !201}
!209 = !{!207, !205}
!210 = distinct !{!210, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!211 = distinct !{!211, !210, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!212 = distinct !{!212, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!213 = distinct !{!213, !212, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!214 = distinct !{!214, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!215 = distinct !{!215, !214, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!216 = distinct !{!216, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!217 = distinct !{!217, !216, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!218 = !{!213, !211}
!219 = !{!217, !215}
!220 = distinct !{!220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!221 = distinct !{!221, !220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!222 = distinct !{!222, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!223 = distinct !{!223, !222, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!224 = distinct !{!224, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!225 = distinct !{!225, !224, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!226 = distinct !{!226, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!227 = distinct !{!227, !226, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!228 = distinct !{!228, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!229 = distinct !{!229, !228, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!230 = distinct !{!230, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!231 = distinct !{!231, !230, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!232 = !{!221}
!233 = !{!223, !221}
!234 = !{!227, !225}
!235 = !{!229}
!236 = !{!231, !229}
!237 = distinct !{!237, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!238 = distinct !{!238, !237, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!239 = distinct !{!239, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!240 = distinct !{!240, !239, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!241 = distinct !{!241, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!242 = distinct !{!242, !241, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!243 = distinct !{!243, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!244 = distinct !{!244, !243, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!245 = distinct !{!245, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!246 = distinct !{!246, !245, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!247 = distinct !{!247, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!248 = distinct !{!248, !247, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!249 = distinct !{!249, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!250 = distinct !{!250, !249, !"_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!251 = distinct !{!251, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!252 = distinct !{!252, !251, !"_ZN7testing8internal11CmpHelperEQIccEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!253 = !{!240, !238}
!254 = !{!244, !242}
!255 = !{!248, !246}
!256 = !{!252, !250}
!257 = distinct !{!257, !11, !14, !15}
!258 = distinct !{!258, !11, !14, !15}
!259 = distinct !{!259, !16}
!260 = distinct !{!260, !11, !14}
!261 = !{!"branch_weights", i32 8, i32 24}
!262 = distinct !{null, null}
!263 = distinct !{!263, !"_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEcvNS_7MatcherIT_EEIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEv"}
!264 = distinct !{!264, !263, !"_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEcvNS_7MatcherIT_EEIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEv: argument 0"}
!265 = distinct !{ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev, null, null, null, null}
!266 = !{!264}
!267 = distinct !{null}
!268 = distinct !{!268, !14, !15}
!269 = distinct !{!269, !16}
!270 = distinct !{!270, !14}
!271 = distinct !{!271, !11}
!272 = distinct !{!272, !11}
!273 = distinct !{!273, !"_ZN7testing13ContainsRegexEPKNS_8internal2REE"}
!274 = distinct !{!274, !273, !"_ZN7testing13ContainsRegexEPKNS_8internal2REE: argument 0"}
!275 = distinct !{!275, !"_ZN7testing22MakePolymorphicMatcherINS_8internal19MatchesRegexMatcherEEENS_18PolymorphicMatcherIT_EERKS4_"}
!276 = distinct !{!276, !275, !"_ZN7testing22MakePolymorphicMatcherINS_8internal19MatchesRegexMatcherEEENS_18PolymorphicMatcherIT_EERKS4_: argument 0"}
!277 = distinct !{null, null, null, null, null}
!278 = !{!274}
!279 = !{!276}
!280 = !{!276, !274}
!281 = distinct !{null}
!282 = distinct !{ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null, null, null}
!283 = !{ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!284 = distinct !{null, null, null}
!285 = distinct !{!285, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!286 = distinct !{!286, !285, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!287 = distinct !{!287, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!288 = distinct !{!288, !287, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!289 = !{!286}
!290 = !{!288}
!291 = !{!288, !286}
!292 = distinct !{!292, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!293 = distinct !{!293, !292, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!294 = distinct !{!294, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!295 = distinct !{!295, !294, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!296 = !{!293}
!297 = !{!295}
!298 = !{!295, !293}
!299 = distinct !{!299, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!300 = distinct !{!300, !299, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!301 = distinct !{!301, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!302 = distinct !{!302, !301, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!303 = !{!300}
!304 = !{!302}
!305 = !{!302, !300}
!306 = distinct !{!306, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!307 = distinct !{!307, !306, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!308 = distinct !{!308, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!309 = distinct !{!309, !308, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!310 = !{!307}
!311 = !{!309}
!312 = !{!309, !307}
!313 = distinct !{null, null, null, null}
!314 = distinct !{null, null, null, null}
!315 = distinct !{null, null, null, null}
!316 = distinct !{!316, !"_ZN7testing8internal33FormatForComparisonFailureMessageIPcDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_"}
!317 = distinct !{!317, !316, !"_ZN7testing8internal33FormatForComparisonFailureMessageIPcDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_: argument 0"}
!318 = distinct !{!318, !"_ZN7testing8internal19FormatForComparisonIPcDnE6FormatB5cxx11ES2_"}
!319 = distinct !{!319, !318, !"_ZN7testing8internal19FormatForComparisonIPcDnE6FormatB5cxx11ES2_: argument 0"}
!320 = distinct !{null, null, null, null}
!321 = distinct !{null, null, null, null}
!322 = !{!317}
!323 = !{!319, !317}
!324 = distinct !{!324, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!325 = distinct !{!325, !324, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!326 = !{!325}
!327 = distinct !{!327, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!328 = distinct !{!328, !327, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!329 = distinct !{!329, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!330 = distinct !{!330, !329, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!331 = !{!328}
!332 = !{!330}
!333 = !{!330, !328}
!334 = distinct !{!334, !11}
!335 = distinct !{!335, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!336 = distinct !{!336, !335, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!337 = distinct !{!337, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!338 = distinct !{!338, !337, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!339 = !{!336}
!340 = !{!338}
!341 = !{!338, !336}
!342 = distinct !{!342, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!343 = distinct !{!343, !342, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!344 = distinct !{!344, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!345 = distinct !{!345, !344, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!346 = !{!343}
!347 = !{!345}
!348 = !{!345, !343}
!349 = distinct !{!349, !11}
end_hunk_1
