Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9V3PreExpr9pushInputERK14V3PreExprToken:bb.a
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %bb.h
  %i.af = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ah) #45
  %.pre = load ptr, ptr %4, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.ai = phi ptr [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br i1 %.not12, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.o unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.d, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !45
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.n:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ay = load ptr, ptr %4, align 8, !tbaa !90    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.n
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.m
  %.pn10 = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.s

bb.o:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %6, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !141
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %bb.r ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %bb.p
  %i.bh = load ptr, ptr %6, align 8, !tbaa !90    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.r:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %6, align 8, !tbaa !90    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.r
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.q
  %.pn13 = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.ao, %bb.j ], [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn13.pn

bb.t:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !350 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !351
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.not.i = icmp eq ptr %i.bu, %i.bx
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !349
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !350
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !350
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE9push_backERKS0_.exit

bb.v:                                             ; preds = %bb.t
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE9push_backERKS0_.exit

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9V3PreExpr6resultEv(ptr noundef nonnull align 8 dereferenceable(352) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %class.V3PreExprToken, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270
  store ptr %i.b, ptr %1, align 8, !tbaa !334
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 2, ptr %i.c, align 8, !tbaa !335
  call void @_ZN9V3PreExpr9pushInputERK14V3PreExprToken(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  call void @_ZN9V3PreExpr5parseEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %i.d = call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1 ; 2 uses
  %spec.select.i.i = icmp ult i8 %.fca.1.extract, 2
  br i1 %spec.select.i.i, label %_ZNK14V3PreExprToken5valueEv.exit, label %bb.b, !prof !308

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.f = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.508)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit:                ; preds = %bb.a
  %2 = icmp eq i8 %.fca.1.extract, 1
  ret i1 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10VDefineRef7nextargB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !140
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !141  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.f, ptr %i.a, align 8, !tbaa !35
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !90
  %i.i = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.i, ptr %i.c, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !45
  store i8 %i.k, ptr %i.j, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !141
  %i.n = load ptr, ptr %0, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !315
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !140
  %i.f = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !141  ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !90
  %i.m = load i64, ptr %i.g, align 8, !tbaa !45
  store i64 %i.m, ptr %i.e, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !141
  store ptr %i.g, ptr %1, align 8, !tbaa !90
  store i64 0, ptr %i.n, align 8, !tbaa !141
  store i8 0, ptr %i.g, align 8, !tbaa !45
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !309
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.a, align 8, !tbaa !309
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackI10VDefineRefSt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1513 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -128
  br label %_ZNSt5dequeI10VDefineRefSaIS0_EE8pop_backEv.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef 512) #45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !353
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336  ; 3 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !322
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.j, ptr %i.k, align 8, !tbaa !323
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  br label %_ZNSt5dequeI10VDefineRefSaIS0_EE8pop_backEv.exit

_ZNSt5dequeI10VDefineRefSaIS0_EE8pop_backEv.exit: ; preds = %bb.b, %bb.c
  %.sink2.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  store ptr %.sink2.i, ptr %i.a, align 8, !tbaa !352
  tail call void @_ZN10VDefineRefD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.sink2.i) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !212
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !340
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !178
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197  ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.m, ptr %i.n, align 8, !tbaa !181
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 480 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !212
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 496 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.sink.split

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink7.in = phi ptr [ %i.g, %bb.b ], [ %i.q, %bb.c ]
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ]
  %.sink7 = load i64, ptr %.sink7.in, align 8, !tbaa !45
  %i.s = add i64 %.sink7, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.s) #45
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.sink.split, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3PreProcImp14stateIsDefnameEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316, !noalias !1516 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !317, !noalias !1516
  %i.e = icmp eq ptr %i.b, %i.d
end_hunk_0
begin_hunk_1_@_ZN9V3PreExpr6reduceEv:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !344, !noalias !1685
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !343  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 496
  %.sroa.098.0.copyload105 = load ptr, ptr %i.q, align 8, !tbaa !164
  %.sroa.10.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  %.sroa.10.0.copyload107 = load i8, ptr %.sroa.10.0..sroa_idx106, align 8, !tbaa !348
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 512) #45
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !345
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !344
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343  ; 4 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !397
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.u, ptr %i.v, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.j, %bb.d ], [ %i.t, %bb.e ]
  %.sroa.10.0.copyload111 = phi i8 [ %.sroa.10.0.copyload, %bb.d ], [ %.sroa.10.0.copyload107, %bb.e ]
  %.sroa.098.0.copyload109 = phi ptr [ %.sroa.098.0.copyload, %bb.d ], [ %.sroa.098.0.copyload105, %bb.e ] ; 6 uses
  %storemerge.i = phi ptr [ %i.l, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !350
  switch i8 %.sroa.10.0.copyload111, label %bb.as [
    i8 4, label %.preheader
    i8 5, label %bb.o
    i8 6, label %bb.s
    i8 7, label %bb.z
    i8 8, label %bb.ag
    i8 9, label %bb.an
  ]

.preheader:                                       ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  %i.z = phi ptr [ %i.x, %.preheader ], [ %.pre123, %bb.g ] ; 2 uses
  %i.aa = phi ptr [ %storemerge.i, %.preheader ], [ %.pre, %bb.g ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, %i.z                 ; 2 uses
  br i1 %i.ab, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37.thread

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37: ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !344, !noalias !1686
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !343
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 504
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !335 ; 2 uses
  %.not = icmp eq i8 %i.ag, 2
  br i1 %.not, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit38

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37.thread: ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !335 ; 2 uses
  %.not113 = icmp eq i8 %i.ai, 2
  br i1 %.not113, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit38

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit38: ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37, %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37.thread
  %i.aj = phi i8 [ %i.ai, %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37.thread ], [ %i.ag, %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37 ]
  %.not35 = icmp eq i8 %i.aj, 3
  br i1 %.not35, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit38
  tail call void @_ZN9V3PreExpr6reduceEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !346, !noalias !1686
  %.pre123 = load ptr, ptr %i.i, align 8, !tbaa !397, !noalias !1686
  br label %bb.f, !llvm.loop !1682

.critedge:                                        ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit38
  br i1 %i.ab, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39: ; preds = %.critedge
  %.phi.trans.insert125 = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.pre126 = load i8, ptr %.phi.trans.insert125, align 8, !tbaa !335
  %i.ak = icmp eq i8 %.pre126, 3
  br i1 %i.ak, label %bb.h, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread: ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37, %.critedge
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !344, !noalias !1687
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !343
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !335
  %i.aq = icmp eq i8 %i.ap, 3
  br i1 %i.aq, label %.thread114, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141

bb.h:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39
  %i.ar = getelementptr inbounds i8, ptr %i.aa, i64 -16
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit42

.thread114:                                       ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef 512) #45
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !345
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  store ptr %i.at, ptr %i.y, align 8, !tbaa !344
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !343 ; 3 uses
  store ptr %i.au, ptr %i.i, align 8, !tbaa !397
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 496
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit42

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit42: ; preds = %bb.h, %.thread114
  %storemerge.i41 = phi ptr [ %i.ar, %bb.h ], [ %i.ax, %.thread114 ]
  store ptr %storemerge.i41, ptr %i.a, align 8, !tbaa !350
  br label %bb.at

_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141: ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit37.thread, %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread, %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39
  %i.ay = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.az = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !139

bb.i:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141
  %i.bb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE4backEv.exit39.thread141, %bb.i, %bb.k
  %i.be = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.506, i64 noundef 58) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.bg, ptr %1, align 8, !tbaa !140
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !141
  store i8 0, ptr %i.bg, align 8, !tbaa !45
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.098.0.copyload109, ptr noundef nonnull align 8 dereferenceable(112) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %bb.at

bb.n:                                             ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bg
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.n
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %common.resume

bb.o:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.br = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract30 = extractvalue { ptr, i8 } %i.br, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %spec.select.i.i = icmp ult i8 %.fca.1.extract30, 2
  br i1 %spec.select.i.i, label %_ZNK14V3PreExprToken5valueEv.exit, label %bb.p, !prof !308

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bu) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit:                ; preds = %bb.o
  %7 = icmp ne i8 %.fca.1.extract30, 1
  store ptr %.sroa.098.0.copyload109, ptr %2, align 8, !tbaa !334
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = zext i1 %7 to i8
  store i8 %8, ptr %i.bv, align 8, !tbaa !335
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !350 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %.not.i.i46 = icmp eq ptr %i.bx, %i.ca
  br i1 %.not.i.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK14V3PreExprToken5valueEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !349
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !350
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !350
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit

bb.r:                                             ; preds = %_ZNK14V3PreExprToken5valueEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit

_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit:  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.at

bb.s:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.ce = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract26 = extractvalue { ptr, i8 } %i.ce, 1 ; 2 uses
  %i.cf = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract22 = extractvalue { ptr, i8 } %i.cf, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %spec.select.i.i47 = icmp ult i8 %.fca.1.extract22, 2
  br i1 %spec.select.i.i47, label %_ZNK14V3PreExprToken5valueEv.exit48, label %bb.t, !prof !308

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.ch = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ci) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit48:              ; preds = %bb.s
  %i.cj = icmp eq i8 %.fca.1.extract22, 1
  br i1 %i.cj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNK14V3PreExprToken5valueEv.exit48
  %spec.select.i.i49 = icmp ult i8 %.fca.1.extract26, 2
  br i1 %spec.select.i.i49, label %_ZNK14V3PreExprToken5valueEv.exit50, label %bb.v, !prof !308

bb.v:                                             ; preds = %bb.u
  %i.ck = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cm) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit50:              ; preds = %bb.u
  %9 = icmp eq i8 %.fca.1.extract26, 1
  %10 = zext i1 %9 to i8
  br label %bb.w

bb.w:                                             ; preds = %_ZNK14V3PreExprToken5valueEv.exit50, %_ZNK14V3PreExprToken5valueEv.exit48
  %i.cn = phi i8 [ 0, %_ZNK14V3PreExprToken5valueEv.exit48 ], [ %10, %_ZNK14V3PreExprToken5valueEv.exit50 ]
  store ptr %.sroa.098.0.copyload109, ptr %3, align 8, !tbaa !334
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !335
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !350 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !351
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %.not.i.i51 = icmp eq ptr %i.cq, %i.ct
  br i1 %.not.i.i51, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !349
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !350
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr %i.cp, align 8, !tbaa !350
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit52

bb.y:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit52

_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit52: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.at

bb.z:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.cx = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract18 = extractvalue { ptr, i8 } %i.cx, 1 ; 2 uses
  %i.cy = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract14 = extractvalue { ptr, i8 } %i.cy, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %spec.select.i.i53 = icmp ult i8 %.fca.1.extract14, 2
  br i1 %spec.select.i.i53, label %_ZNK14V3PreExprToken5valueEv.exit54, label %bb.aa, !prof !308

bb.aa:                                            ; preds = %bb.z
  %i.cz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.db) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit54:              ; preds = %bb.z
  %i.dc = icmp eq i8 %.fca.1.extract14, 1
  br i1 %i.dc, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit54
  %spec.select.i.i55 = icmp ult i8 %.fca.1.extract18, 2
  br i1 %spec.select.i.i55, label %_ZNK14V3PreExprToken5valueEv.exit56, label %bb.ac, !prof !308

bb.ac:                                            ; preds = %bb.ab
  %i.dd = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.de = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.df) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit56:              ; preds = %bb.ab
  %11 = icmp eq i8 %.fca.1.extract18, 1
  %12 = zext i1 %11 to i8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit56, %_ZNK14V3PreExprToken5valueEv.exit54
  %i.dg = phi i8 [ 1, %_ZNK14V3PreExprToken5valueEv.exit54 ], [ %12, %_ZNK14V3PreExprToken5valueEv.exit56 ]
  store ptr %.sroa.098.0.copyload109, ptr %4, align 8, !tbaa !334
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.dg, ptr %i.dh, align 8, !tbaa !335
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !350 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !351
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -16
  %.not.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i57, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !349
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !350
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.do, ptr %i.di, align 8, !tbaa !350
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit58

bb.af:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit58

_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit58: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.at

bb.ag:                                            ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.dq = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract10 = extractvalue { ptr, i8 } %i.dq, 1 ; 2 uses
  %i.dr = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract6 = extractvalue { ptr, i8 } %i.dr, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %spec.select.i.i59 = icmp ult i8 %.fca.1.extract6, 2
  br i1 %spec.select.i.i59, label %_ZNK14V3PreExprToken5valueEv.exit60, label %bb.ah, !prof !308

bb.ah:                                            ; preds = %bb.ag
  %i.ds = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.dt = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.du = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.du) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit60:              ; preds = %bb.ag
  %i.dv = icmp eq i8 %.fca.1.extract6, 1
  br i1 %i.dv, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit60
  %spec.select.i.i61 = icmp ult i8 %.fca.1.extract10, 2
  br i1 %spec.select.i.i61, label %_ZNK14V3PreExprToken5valueEv.exit62, label %bb.aj, !prof !308

bb.aj:                                            ; preds = %bb.ai
  %i.dw = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.dx = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dy) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit62:              ; preds = %bb.ai
  %13 = icmp eq i8 %.fca.1.extract10, 1
  %14 = zext i1 %13 to i8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit62, %_ZNK14V3PreExprToken5valueEv.exit60
  %i.dz = phi i8 [ 1, %_ZNK14V3PreExprToken5valueEv.exit60 ], [ %14, %_ZNK14V3PreExprToken5valueEv.exit62 ]
  store ptr %.sroa.098.0.copyload109, ptr %5, align 8, !tbaa !334
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.dz, ptr %i.ea, align 8, !tbaa !335
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !350 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !351
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -16
  %.not.i.i63 = icmp eq ptr %i.ec, %i.ef
  br i1 %.not.i.i63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !349
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !350
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !350
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit64

bb.am:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit64

_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit64: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.at

bb.an:                                            ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.ej = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.ej, 1 ; 2 uses
  %i.ek = tail call { ptr, i8 } @_ZN9V3PreExpr8popValueEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ek, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %spec.select.i.i65 = icmp ult i8 %.fca.1.extract, 2
  br i1 %spec.select.i.i65, label %_ZNK14V3PreExprToken5valueEv.exit66, label %bb.ao, !prof !308

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.em = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.en) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit66:              ; preds = %bb.an
  %spec.select.i.i67 = icmp ult i8 %.fca.1.extract2, 2
  br i1 %spec.select.i.i67, label %_ZNK14V3PreExprToken5valueEv.exit68, label %bb.ap, !prof !308

bb.ap:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit66
  %i.eo = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 55) ; 0 uses
  %i.ep = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.508)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.eq) #42
  unreachable

_ZNK14V3PreExprToken5valueEv.exit68:              ; preds = %_ZNK14V3PreExprToken5valueEv.exit66
  %15 = icmp eq i8 %.fca.1.extract, 1
  %16 = icmp ne i8 %.fca.1.extract2, 1
  %i.er = xor i1 %16, %15
  store ptr %.sroa.098.0.copyload109, ptr %6, align 8, !tbaa !334
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = zext i1 %i.er to i8
  store i8 %i.et, ptr %i.es, align 8, !tbaa !335
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !350 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !351
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -16
  %.not.i.i69 = icmp eq ptr %i.ev, %i.ey
  br i1 %.not.i.i69, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !349
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !350
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !350
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit70

bb.ar:                                            ; preds = %_ZNK14V3PreExprToken5valueEv.exit68
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit70

_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit70: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit
  %i.fc = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.270, i32 noundef 233) ; 0 uses
  %i.fd = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.fe = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.507)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fe) #42
  unreachable

bb.at:                                            ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EE8pop_backEv.exit42, %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit, %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit52, %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit58, %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit64, %_ZN9V3PreExpr9pushValueERK14V3PreExprToken.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10VDefineRefSaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !322
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 7
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !323
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !321
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 72057594037927935
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !395
  %i.ag = load ptr, ptr %0, align 8, !tbaa !396
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI10VDefineRefSaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI10VDefineRefSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI10VDefineRefSaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI10VDefineRefSaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !336
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !352
  invoke void @_ZN10VDefineRefC2ERKS_(ptr noundef nonnull align 8 dereferenceable(128) %i.ap, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %_ZNSt16allocator_traitsISaI10VDefineRefEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaI10VDefineRefEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeI10VDefineRefSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !320
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !336 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !322
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !323
  store ptr %i.as, ptr %i.a, align 8, !tbaa !352
  ret void

bb.e:                                             ; preds = %_ZNSt5dequeI10VDefineRefSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #44 ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !336
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef 512) #45
  invoke void @__cxa_rethrow() #42
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bb

bb.h:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #51
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN10VDefineRefC2ERKS_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !140
  %i.e = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !141  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  store i64 %i.g, ptr %i.c, align 8, !tbaa !35
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !90
  %i.j = load i64, ptr %i.c, align 8, !tbaa !35
  store i64 %i.j, ptr %i.d, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !45
  store i8 %i.l, ptr %i.k, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !141
  %i.o = load ptr, ptr %0, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !140
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_1
