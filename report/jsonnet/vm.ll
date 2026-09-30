Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter13builtinExtVarERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE:._crit_edge.i.i
  %i.eh = shl i64 %i.eg, 2
  %i.ei = add i64 %i.eh, 4
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ei) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74, %bb.ab
  %.pn27 = phi { ptr, i32 } [ %i.eb, %bb.ab ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74 ], [ %i.ec, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.0 = phi ptr [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ null, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit ]
  %i.ej = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ad
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !67
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret ptr %.0

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76 ], [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  %i.eo = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ae
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !67
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn35.pn.pn.pn

bb.ag:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter22builtinPrimitiveEqualsERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.val54 = load ptr, ptr %2, align 8, !tbaa !282 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.b = ptrtoint ptr %.val55 to i64
  %i.c = ptrtoint ptr %.val54 to i64
  %i.d = sub i64 %i.b, %i.c
  %.not = icmp eq i64 %i.d, 32
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.150, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %.val52 = load ptr, ptr %2, align 8, !tbaa !282
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !281
  %i.g = ptrtoint ptr %.val53 to i64
  %i.h = ptrtoint ptr %.val52 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.j)
          to label %_ZNSolsEm.exit unwind label %bb.d ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZNSolsEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.l, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %4)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.l, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.x unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSolsEm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.040 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !67
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.040, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %.040, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4879 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #39
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.pn48.pn = phi { ptr, i32 } [ %.pn4879, %bb.f ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.v = load i32, ptr %.val54, align 8, !tbaa !261 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !261
  %.not42 = icmp eq i32 %i.v, %i.x
  br i1 %.not42, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  switch i32 %i.v, label %bb.r [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 19, label %bb.l
    i32 0, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
    i32 17, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !67, !range !251, !noundef !252
  %i.aa = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !67, !range !251, !noundef !252
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !67
  %i.ah = fcmp oeq double %i.ae, %i.ag
  br label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.m, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !72
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ 0, %bb.m ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.01216.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.01216.i.i
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !76 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %or.cond.not.i.not = icmp ne i32 %i.ay, %i.ax
  %i.az = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.an
  %or.cond.not = select i1 %or.cond.not.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.not, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !15

bb.n:                                             ; preds = %bb.i
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.151, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66 unwind label %bb.p

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66: ; preds = %bb.o
  invoke void @__cxa_throw(ptr %i.ba, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.x unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread: ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66
  %.037 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66 ], [ true, %bb.o ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.p
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !67
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.037, label %bb.q, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %.037, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn82 = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  call void @__cxa_free_exception(ptr %i.ba) #39
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %.val56 = load ptr, ptr %2, align 8, !tbaa !282
  %.val = load i32, ptr %.val56, align 8, !tbaa !261
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ENS1_5Value4TypeE(ptr dead_on_unwind noalias nonnull writable align 8 %8, i32 noundef %.val)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread

_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit: ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.152, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread

bb.s:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %7)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit70 unwind label %bb.t

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit70: ; preds = %bb.s
  invoke void @__cxa_throw(ptr %i.bj, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.x unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread: ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.t:                                             ; preds = %bb.s, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit70
  %.034 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit70 ], [ true, %bb.s ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.t
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !67
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.bs = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !67
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #40
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cc) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %.034, label %bb.u, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %.034, label %bb.u, label %bb.w

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.thread
  %.pn44.pn85.ph = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn44.pn85 = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn44.pn85.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bj) #39
  br label %bb.w

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %or.cond.not.i = icmp eq i32 %i.ay, %i.ax
  br label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit, %bb.m, %bb.l, %bb.i, %bb.k, %bb.j
  %.039.shrunk = phi i1 [ %i.ac, %bb.j ], [ %i.ah, %bb.k ], [ true, %bb.i ], [ false, %bb.l ], [ true, %bb.m ], [ %or.cond.not.i, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit ]
  %.sroa.2.8.insert.ext.i = zext i1 %.039.shrunk to i64
  %i.cd = inttoptr i64 %.sroa.2.8.insert.ext.i to ptr
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sink = phi ptr [ %i.cd, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ null, %bb.h ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.ce, align 8, !tbaa !67
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sink, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !67
  ret ptr null

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.g
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %bb.g ], [ %.pn44.pn85, %bb.u ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn82, %bb.q ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ]
  resume { ptr, i32 } %.pn48.pn.pn

bb.x:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit70, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit66, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter13builtinNativeERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string.54", align 8 ; 8 uses
  %4 = alloca %"class.std::vector.114", align 8   ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.170", align 8   ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.jsonnet::internal::LocationRange", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.153, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !67
  %i.d = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %bb.a unwind label %.thread    ; 5 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  store ptr %i.d, ptr %6, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 19, ptr %i.d, align 4, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #40
  %i.h = load ptr, ptr %5, align 8, !tbaa !66     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %.val29 = load ptr, ptr %2, align 8, !tbaa !282
  %i.l = getelementptr inbounds nuw i8, ptr %.val29, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr i8, ptr %i.m, i64 24
  %.val28 = load i64, ptr %i.o, align 8, !tbaa !73
  call fastcc void @_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr %.val, i64 %.val28)
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.72, i64 noundef 7)
          to label %.noexc38 unwind label %bb.g   ; 6 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !63, !alias.scope !757
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !66   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

bb.b:                                             ; preds = %.noexc38
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.noexc38
  store ptr %i.r, ptr %7, align 8, !tbaa !66, !alias.scope !757
  %i.y = load i64, ptr %i.s, align 8, !tbaa !67
  store i64 %i.y, ptr %i.q, align 8, !tbaa !67, !alias.scope !757
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.b
  %i.z = phi i64 [ %i.v, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !68, !alias.scope !757
  store ptr %i.s, ptr %i.p, align 8, !tbaa !66
  store i64 0, ptr %i.aa, align 8, !tbaa !68
  store i8 0, ptr %i.s, align 8, !tbaa !67
  %i.ac = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.c
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !67
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !68 ; 8 uses
  %i.al = load ptr, ptr %7, align 8               ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.ar = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #39 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.as = sub i64 %i.an, %i.ak
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.at, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !170 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i42, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !17

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i, %i.aj
  br i1 %i.au, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ak) ; 2 uses
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !66
  %i.ba = call i32 @memcmp(ptr noundef %i.al, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i) #39 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.bb = sub i64 %i.ak, %i.aw
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bb, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bc = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bc, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.h

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal16VmNativeCallbackEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal16VmNativeCallbackESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12builtinTraceERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.o
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !67
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.j
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.j ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn17.pn.pn

bb.q:                                             ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter17builtinSplitLimitERKNS0_13LocationRangeERKSt6vectorINS1_5ValueESaIS7_EE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.170", align 8   ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string.54", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string.54", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string.54", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.159, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !67
  %i.d = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #41
          to label %bb.a unwind label %.thread228 ; 7 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  store ptr %i.d, ptr %4, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !321
  store i32 19, ptr %i.d, align 4
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 19, ptr %.sroa.5131.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %.sroa.6.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !322
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter19validateBuiltinArgsERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS1_5ValueESaISF_EESE_INSF_4TypeESaISK_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit unwind label %bb.p

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit: ; preds = %bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 12) #40
  %i.h = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_15Value4TypeESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.val68 = load ptr, ptr %2, align 8, !tbaa !282 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val68, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val68, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val68, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !67
  %i.r = fptosi double %i.q to i64                ; 2 uses
  %i.s = call fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeArrayERKSt6vectorIPNS1_9HeapThunkESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr null, ptr null) ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 16, ptr %i.t, align 8, !tbaa !67
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.s, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = icmp eq i64 %i.r, -1
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %i.ai = phi i64 [ 0, %.lr.ph ], [ %i.ea, %bb.s ] ; 4 uses
  %.0167 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ] ; 3 uses
  %.032166 = phi i32 [ 0, %.lr.ph ], [ %.133, %bb.s ] ; 4 uses
  br i1 %i.y, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.u, align 8, !tbaa !238
  %.val49 = load ptr, ptr %i.z, align 8, !tbaa !236
  %i.aj = ptrtoint ptr %.val49 to i64
  %i.ak = ptrtoint ptr %.val to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.am, %i.r
  br i1 %i.an, label %.critedge2, label %.critedge.loopexit

.critedge2:                                       ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !73 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !73, !noalias !768 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %.critedge2
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.160, i64 noundef %i.ai, i64 noundef %i.ap) #42, !noalias !768
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge2
  store ptr %i.ac, ptr %5, align 8, !tbaa !74, !alias.scope !768
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !72, !noalias !768
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ai ; 2 uses
  %i.at = sub nuw i64 %i.ap, %i.ai                ; 3 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %i.at) ; 12 uses
  %.idx.i.i = shl nuw nsw i64 %spec.select.i.i.i, 2 ; 5 uses
  %i.au = icmp ugt i64 %spec.select.i.i.i, 3
  br i1 %i.au, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i
  %i.av = icmp ugt i64 %spec.select.i.i.i, 1152921504606846975
  br i1 %i.av, label %.noexc10.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc10.i.i:                                     ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.aw = add nuw nsw i64 %.idx.i.i, 4
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #41 ; 2 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !72, !alias.scope !768
  store i64 %spec.select.i.i.i, ptr %i.ac, align 8, !tbaa !67, !alias.scope !768
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i
  %i.ay = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i ] ; 8 uses
  switch i64 %spec.select.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit [
    i64 1, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread
    i64 0, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread225
  ]

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.as, i64 %.idx.i.i, i1 false)
  %.pre188 = load i64, ptr %i.ab, align 8, !tbaa !73
  store i64 %spec.select.i.i.i, ptr %i.ad, align 8, !tbaa !73, !alias.scope !768
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i
  store i32 0, ptr %i.az, align 4, !tbaa !76
  %i.ba = icmp eq i64 %.pre188, %spec.select.i.i.i
  br i1 %i.ba, label %bb.f, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread225: ; preds = %._crit_edge.i.i.i
  store i64 %spec.select.i.i.i, ptr %i.ad, align 8, !tbaa !73, !alias.scope !768
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i
  store i32 0, ptr %i.bb, align 4, !tbaa !76
  %i.bc = icmp ule i64 %i.ao, %i.at
  br label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread: ; preds = %._crit_edge.i.i.i
  %i.bd = load i32, ptr %i.as, align 4, !tbaa !76
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !76
  store i64 %spec.select.i.i.i, ptr %i.ad, align 8, !tbaa !73, !alias.scope !768
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i
  store i32 0, ptr %i.be, align 4, !tbaa !76
  %.not246 = icmp ugt i64 %i.ao, %i.at
  br i1 %.not246, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %.lr.ph.i.i.preheader

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit
  %.not.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not.i.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread, %bb.f
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !72
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.01216.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.01216.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.01216.i.i
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !76 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !76 ; 2 uses
  %or.cond.not.i.not = icmp ne i32 %i.bj, %i.bi
  %i.bk = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %spec.select.i.i.i
  %or.cond.not = select i1 %or.cond.not.i.not, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.not, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !15

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %or.cond.not.i = icmp eq i32 %i.bj, %i.bi
  br label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread225, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit, %bb.f
  %i.bl = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit ], [ true, %bb.f ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread225 ], [ false, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit.thread ], [ %or.cond.not.i, %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.loopexit ]
  %i.bm = icmp eq ptr %i.ay, %i.ac
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bn = icmp ult i64 %spec.select.i.i.i, 4
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.bp = shl i64 %i.bo, 2
  %i.bq = add i64 %i.bp, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bq) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br i1 %i.bl, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %.val64 = load ptr, ptr %i.ae, align 8
  %i.br = call fastcc noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8makeHeapINS1_9HeapThunkEJRPKNS0_10IdentifierEDniDnEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val64, i32 0) ; 11 uses
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !236 ; 4 uses
  %i.bt = load ptr, ptr %i.af, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !217
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.z, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %.val16.i.i = load ptr, ptr %i.u, align 8, !tbaa !238 ; 4 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %.val16.i.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.j, label %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #41 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store ptr %i.br, ptr %i.cg, align 8, !tbaa !217
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.k, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %.val16.i.i, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i21.i.i = icmp eq ptr %.val16.i.i, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i, i64 noundef %i.bx) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i
  store ptr %i.cf, ptr %i.u, align 8, !tbaa !238
  store ptr %i.ci, ptr %i.z, align 8, !tbaa !236
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cj, ptr %i.af, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ck = zext i32 %.032166 to i64                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.cl = load i64, ptr %i.w, align 8, !tbaa !73, !noalias !769 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i76

bb.m:                                             ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.160, i64 noundef %i.ck, i64 noundef %i.cl) #42, !noalias !769
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i76: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit
  %i.cn = sub i32 %.0167, %.032166
  %i.co = zext i32 %i.cn to i64
  store ptr %i.ag, ptr %6, align 8, !tbaa !74, !alias.scope !769
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !72, !noalias !769
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ck ; 2 uses
  %i.cr = sub nuw i64 %i.cl, %i.ck
  %spec.select.i.i.i77 = call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cr) ; 5 uses
  %.idx.i.i78 = shl nuw nsw i64 %spec.select.i.i.i77, 2 ; 3 uses
  %i.cs = icmp samesign ugt i64 %spec.select.i.i.i77, 3
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i81, label %._crit_edge.i.i.i79

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i76
  %i.ct = add nuw nsw i64 %.idx.i.i78, 4
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #41 ; 2 uses
  store ptr %i.cu, ptr %6, align 8, !tbaa !72, !alias.scope !769
  store i64 %spec.select.i.i.i77, ptr %i.ag, align 8, !tbaa !67, !alias.scope !769
  br label %._crit_edge.i.i.i79

._crit_edge.i.i.i79:                              ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i81, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i76
  %.pre8.i.i.i80 = phi ptr [ %i.cu, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i81 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8_M_checkEmPKc.exit.i.i76 ] ; 3 uses
  %trunc = trunc nuw i64 %spec.select.i.i.i77 to i32
  switch i32 %trunc, label %bb.o [
    i32 1, label %bb.n
    i32 0, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i79
  %i.cv = load i32, ptr %i.cq, align 4, !tbaa !76
  store i32 %i.cv, ptr %.pre8.i.i.i80, align 4, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83

bb.o:                                             ; preds = %._crit_edge.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i80, ptr align 4 %i.cq, i64 %.idx.i.i78, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83: ; preds = %._crit_edge.i.i.i79, %bb.n, %bb.o
  store i64 %spec.select.i.i.i77, ptr %i.ah, align 8, !tbaa !73, !alias.scope !769
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i80, i64 %.idx.i.i78
  store i32 0, ptr %i.cw, align 4, !tbaa !76
  %.val60 = load ptr, ptr %6, align 8
  %.val61 = load i64, ptr %i.ah, align 8
  %i.cx = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter10makeStringERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val60, i64 %.val61)
          to label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83._crit_edge unwind label %bb.q

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 19, ptr %i.cy, align 8, !tbaa !67
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.cx, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  store i8 1, ptr %i.cz, align 2, !tbaa !183
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store ptr null, ptr %i.da, align 8, !tbaa !204
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val.i.i.i)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  store ptr null, ptr %i.db, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !166
  %i.de = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !167
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i64 0, ptr %i.df, align 8, !tbaa !168
  %i.dg = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.ag
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83._crit_edge
  %i.di = load i64, ptr %i.ag, align 8, !tbaa !67
  %i.dj = shl i64 %i.di, 2
  %i.dk = add i64 %i.dj, 4
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit86: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6substrEmm.exit83._crit_edge, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.dl = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = add i32 %.0167, %i.dm                   ; 2 uses
  br label %bb.s

.thread228:                                       ; preds = %._crit_edge.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.p:                                             ; preds = %bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 12) #40
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.dq = icmp eq ptr %.pre, %i.a
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.p
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !67
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ds) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.p, %.thread228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %.pn230 = phi { ptr, i32 } [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.do, %.thread228 ], [ %i.dp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.ad

end_hunk_1
