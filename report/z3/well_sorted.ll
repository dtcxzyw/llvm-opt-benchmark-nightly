Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/well_sorted?download=true
inline.NumInlined: 233
inline.NumDeleted: 134
begin_hunk_0_@_Z14is_well_sortedRK11ast_managerP4expr:bb.a

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  invoke void @_Z14verbose_unlockv()
          to label %bb.s unwind label %bb.aa

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.l, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ad

bb.m:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.n unwind label %bb.aa      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit22 unwind label %bb.p

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit22:      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit22
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit22
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.u, %bb.q ], [ %i.t, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ad

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.w = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.t unwind label %bb.aa      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.x = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  br i1 %i.x, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_Z12verbose_lockv()
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.x unwind label %bb.aa      ; 2 uses

bb.x:                                             ; preds = %bb.w
  invoke void @_Z9ast_ll_ppRSoR11ast_managerP3astbb(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZlsRSoRK8mk_ll_pp.exit unwind label %bb.aa

_ZlsRSoRK8mk_ll_pp.exit:                          ; preds = %bb.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZlsRSoRK8mk_ll_pp.exit
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_Z9ast_ll_ppRSoR11ast_managerP3astbb(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZlsRSoRK8mk_ll_pp.exit25 unwind label %bb.aa

_ZlsRSoRK8mk_ll_pp.exit25:                        ; preds = %bb.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.x, %_ZlsRSoRK8mk_ll_pp.exit, %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %bb.m, %bb.s, %bb.t, %bb.v, %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %bb.y, %bb.h, %bb.n, %_ZlsRSoRK8mk_ll_pp.exit25, %bb.z
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZlsRSoRK8mk_ll_pp.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %bb.b
  %i.ad = load i8, ptr %i.a, align 8, !tbaa !16, !range !37, !noundef !18
  %.val19 = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_116well_sorted_procD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ae = getelementptr inbounds i8, ptr %.val19, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ae)
          to label %_ZN12_GLOBAL__N_116well_sorted_procD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #17
  unreachable

_ZN12_GLOBAL__N_116well_sorted_procD2Ev.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %bb.ab
  %i.ah = trunc nuw i8 %i.ad to i1
  %i.ai = xor i1 %i.ah, true
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 %i.ai

bb.ad:                                            ; preds = %bb.aa, %bb.r, %bb.l
  %.pn17 = phi { ptr, i32 } [ %.pn, %bb.r ], [ %.pn15, %bb.l ], [ %i.ac, %bb.aa ]
  %.val = load ptr, ptr %i.b, align 8, !tbaa !17
  call fastcc void @_ZN12_GLOBAL__N_116well_sorted_procD2Ev(ptr %.val) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116well_sorted_proc5checkEP4expr(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  %5 = alloca %struct.mk_pp, align 8              ; 6 uses
  %6 = alloca %struct.mk_pp, align 8              ; 6 uses
  %7 = alloca %struct.mk_pp, align 8              ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %class.ptr_vector.23, align 8       ; 12 uses
  %10 = alloca %class.obj_mark, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %bb.a
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !21  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22 ; 2 uses
  %i.e = zext i32 %.pre2.i to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.e
  store ptr %1, ptr %i.f, align 8, !tbaa !48
  %i.g = add i32 %.pre2.i, 1
  store i32 %i.g, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit
  %i.ab = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.jp, %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit ] ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.af = add i32 %i.ad, -1                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 14 uses
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !22
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50 ; 6 uses
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !51
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, label %bb.c

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit: ; preds = %bb.b
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.an = lshr i32 %i.aj, 5
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = and i32 %i.aj, 31
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = and i32 %i.aq, %i.as
  %.not67 = icmp eq i32 %i.at, 0
  br i1 %.not67, label %.thread, label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit, !llvm.loop !38

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %i.aj, 1
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %i.au, i1 noundef zeroext false)
          to label %..thread_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !25
  %.pre114 = lshr i32 %i.aj, 5
  %.pre115 = zext nneg i32 %.pre114 to i64
  %.pre117 = and i32 %i.aj, 31
  %.pre119 = shl nuw i32 1, %.pre117
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit
  %.pre-phi120 = phi i32 [ %.pre119, %..thread_crit_edge ], [ %i.as, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ]
  %.pre-phi116 = phi i64 [ %.pre115, %..thread_crit_edge ], [ %i.ao, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ]
  %i.av = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.am, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.pre-phi116 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22
  %i.ay = or i32 %i.ax, %.pre-phi120
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %trunc = trunc i32 %i.ba to i16
  switch i16 %trunc, label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit [
    i16 0, label %bb.d
    i16 1, label %bb.aw
    i16 2, label %.noexc38
  ]

bb.d:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not89 = icmp eq i32 %i.bd, 0
  br i1 %.not89, label %._crit_edge92, label %.lr.ph

._crit_edge92.loopexit:                           ; preds = %bb.av
  %.pre112 = load i32, ptr %i.bc, align 8, !tbaa !57
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.d
  %i.bg = phi i32 [ %.pre112, %._crit_edge92.loopexit ], [ 0, %bb.d ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.bg, %i.bk
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge92
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i25, label %_ZNK9func_decl19is_left_associativeEv.exit.thread.i, label %_ZNK9func_decl14is_associativeEv.exit.i

_ZNK9func_decl14is_associativeEv.exit.i:          ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 17
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = and i16 %i.bo, 3
  %or.cond106.not.i = icmp eq i16 %i.bp, 0
  br i1 %or.cond106.not.i, label %_ZNK9func_decl19is_left_associativeEv.exit.thread.i, label %bb.f

_ZNK9func_decl19is_left_associativeEv.exit.thread.i: ; preds = %_ZNK9func_decl14is_associativeEv.exit.i, %bb.e
  invoke void (ptr, ...) @_Z11warning_msgPKcz(ptr noundef nonnull @.str.5)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %_ZNK9func_decl19is_left_associativeEv.exit.thread.i
  store i8 1, ptr %i.i, align 8, !tbaa !16
  br label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.i, %._crit_edge92
  %.not82.i = icmp eq i32 %i.bg, 0
  br i1 %.not82.i, label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %wide.trip.count.i = zext i32 %i.bg to i64
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48
  %i.bu = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bt)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc27:                                         ; preds = %bb.g
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !65 ; 2 uses
  %.not.i49.i = icmp eq ptr %i.bv, null
  br i1 %.not.i49.i, label %_ZNK9func_decl14is_associativeEv.exit50.thread.i, label %_ZNK9func_decl14is_associativeEv.exit50.i

_ZNK9func_decl14is_associativeEv.exit50.i:        ; preds = %.noexc27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 17
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = and i16 %i.bx, 3
  %i.bz = icmp eq i16 %i.by, 3
  br i1 %i.bz, label %bb.h, label %_ZNK9func_decl14is_associativeEv.exit50.thread.i

_ZNK9func_decl14is_associativeEv.exit50.thread.i: ; preds = %_ZNK9func_decl14is_associativeEv.exit50.i, %.noexc27
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit50.thread.i, %_ZNK9func_decl14is_associativeEv.exit50.i
  %.in.i = phi ptr [ %i.ca, %_ZNK9func_decl14is_associativeEv.exit50.thread.i ], [ %i.br, %_ZNK9func_decl14is_associativeEv.exit50.i ]
  %i.cb = load ptr, ptr %.in.i, align 8, !tbaa !66 ; 2 uses
  %.not38.i = icmp eq ptr %i.cb, %i.bu
  br i1 %.not38.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.6, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc28
  %i.cd = add nuw i64 %indvars.iv.i, 1
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.ce)
          to label %_ZNSolsEj.exit.i unwind label %bb.y ; 3 uses

_ZNSolsEj.exit.i:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i: ; preds = %_ZNSolsEj.exit.i
  %i.ch = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !68
  invoke void @_Z9ast_ll_ppRSoR11ast_managerP3astbb(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(952) %i.ch, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZlsRSoRK8mk_ll_pp.exit.i unwind label %bb.y

_ZlsRSoRK8mk_ll_pp.exit.i:                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.i: ; preds = %_ZlsRSoRK8mk_ll_pp.exit.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ck = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !68
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(952) %i.ck, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit.i unwind label %bb.z

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit.i:      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.j unwind label %bb.aa      ; 4 uses

bb.j:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !27
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !77
  %.not.i54.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i54.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.m unwind label %bb.aa      ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef signext 10)
          to label %bb.m unwind label %bb.aa      ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cv = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !68
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(952) %i.cv, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit59.i unwind label %bb.ac

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit59.i:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.n unwind label %bb.ad      ; 4 uses

bb.n:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit59.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !27
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !77
  %.not.i60.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i60.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.q unwind label %bb.ad      ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i8 noundef signext 10)
          to label %bb.q unwind label %bb.ad      ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.10, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.dg = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !68
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.bi, ptr noundef nonnull align 8 dereferenceable(952) %i.dg, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit68.i unwind label %bb.af

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit68.i:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.r unwind label %bb.ag      ; 4 uses

bb.r:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 46, ptr %i.a, align 1, !tbaa !27
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !77
  %.not.i69.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i69.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.u unwind label %bb.ag      ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i8 noundef signext 46)
          to label %bb.u unwind label %bb.ag      ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.dq = load ptr, ptr %i.o, align 8, !tbaa !81, !noalias !82 ; 3 uses
  %.not.i4.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i4.not.i.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i.i: ; preds = %bb.u
  %11 = load ptr, ptr %i.q, align 8, !tbaa !83, !noalias !82 ; 2 uses
  %12 = icmp ugt ptr %i.dq, %11
  %.08.i.i.i.i = select i1 %12, ptr %i.dq, ptr %11
  %i.dr = load ptr, ptr %i.r, align 8, !tbaa !84, !noalias !82
  %i.ds = ptrtoint ptr %.08.i.i.i.i to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  store i64 %i.du, ptr %i.s, align 8, !tbaa !33, !noalias !82
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !34, !noalias !82
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 0, ptr %i.dw, align 1, !tbaa !27, !noalias !82
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i.i, %bb.u
  store ptr %i.t, ptr %8, align 8, !tbaa !35, !alias.scope !82
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !34, !noalias !82 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.u
  br i1 %i.dy, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i.i
  %i.dz = load i64, ptr %i.s, align 8, !tbaa !33, !noalias !82 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.ea)
  %i.eb = add nuw nsw i64 %i.dz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i.i
  store ptr %i.dx, ptr %8, align 8, !tbaa !34, !alias.scope !82
  %i.ec = load i64, ptr %i.u, align 8, !tbaa !27, !noalias !82
  store i64 %i.ec, ptr %i.t, align 8, !tbaa !27, !alias.scope !82
  %.pre.i.i.i = load i64, ptr %i.s, align 8, !tbaa !33, !noalias !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.v
  %i.ed = phi i64 [ %i.dz, %bb.v ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  store i64 %i.ed, ptr %i.v, align 8, !tbaa !33, !alias.scope !82
  store ptr %i.u, ptr %i.p, align 8, !tbaa !34, !noalias !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false), !noalias !82
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull %i.u, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %8, align 8, !tbaa !34, !alias.scope !82 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.t
  br i1 %i.eg, label %.body.i, label %.body.i.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.eh = load ptr, ptr %8, align 8, !tbaa !34
  invoke void (ptr, ...) @_Z11warning_msgPKcz(ptr noundef nonnull @.str.11, ptr noundef %i.eh)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ei = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.t
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.ek = load i64, ptr %i.t, align 8, !tbaa !27
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  store i8 1, ptr %i.i, align 8, !tbaa !16
  store ptr %i.w, ptr %4, align 8, !tbaa !29
  %i.em = load i64, ptr %i.y, align 8
  %i.en = getelementptr inbounds i8, ptr %4, i64 %i.em
  store ptr %i.x, ptr %i.en, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !29
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !34  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.u
  br i1 %i.ep, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.eq = load i64, ptr %i.u, align 8, !tbaa !27
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #18
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #16
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit

bb.y:                                             ; preds = %bb.q, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.i, %_ZlsRSoRK8mk_ll_pp.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i, %_ZNSolsEj.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc28
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l, %bb.k, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.eu, %bb.aa ], [ %i.et, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.aj

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.p, %bb.o, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit59.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn40.i = phi { ptr, i32 } [ %i.ew, %bb.ad ], [ %i.ev, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.aj

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.t, %bb.s, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit68.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn42.i = phi { ptr, i32 } [ %i.ey, %bb.ag ], [ %i.ex, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.t
  br i1 %i.fb, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.ai, %bb.w
  %.sink = phi ptr [ %i.ef, %bb.w ], [ %i.fa, %bb.ai ]
  %.pn44.i.ph = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %i.ez, %bb.ai ]
  %i.fc = load i64, ptr %i.t, align 8, !tbaa !27
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fd) #18
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.ai, %bb.w
  %.pn44.i = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %i.ez, %bb.ai ], [ %.pn44.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.aj

bb.aj:                                            ; preds = %.body.i, %bb.ah, %bb.ae, %bb.ab, %bb.y
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn44.i, %.body.i ], [ %.pn42.i, %bb.ah ], [ %i.es, %bb.y ], [ %.pn40.i, %bb.ae ], [ %.pn.i, %bb.ab ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_116well_sorted_proc9check_appEP3app.exit, label %bb.g, !llvm.loop !43

.lr.ph:                                           ; preds = %bb.d, %bb.av
  %.090 = phi ptr [ %i.hk, %bb.av ], [ %i.bb, %bb.d ] ; 2 uses
  %i.fe = load ptr, ptr %.090, align 8, !tbaa !48 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !50 ; 3 uses
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !51
  %i.fh = icmp ult i32 %i.ff, %i.fg
  br i1 %i.fh, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29.thread

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29: ; preds = %.lr.ph
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.fj = lshr i32 %i.ff, 5
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !22
  %i.fn = and i32 %i.ff, 31
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = and i32 %i.fm, %i.fo
  %.not68 = icmp eq i32 %i.fp, 0
  br i1 %.not68, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29.thread, label %bb.av

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29.thread: ; preds = %.lr.ph, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29
  %i.fq = load ptr, ptr %9, align 8, !tbaa !21    ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29.thread
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !22 ; 5 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 -8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !22
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.am, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit34

bb.al:                                            ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit29.thread
  %i.fx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc51:                                         ; preds = %bb.al
  store i32 2, ptr %i.fx, align 4, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 0, ptr %i.fy, align 4, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  store ptr %i.fz, ptr %9, align 8, !tbaa !21
  br label %.noexc33

bb.am:                                            ; preds = %bb.ak
  %i.ga = mul i32 %i.ft, 3
  %i.gb = add i32 %i.ga, 1
  %i.gc = lshr i32 %i.gb, 1                       ; 3 uses
  %i.gd = shl i32 %i.gc, 3
  %i.ge = add i32 %i.gd, 8                        ; 2 uses
  %.not.i46 = icmp ugt i32 %i.gc, %i.ft
  br i1 %.not.i46, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gf = shl i32 %i.ft, 3
  %i.gg = add i32 %i.gf, 8
  %.not27.i = icmp ugt i32 %i.ge, %i.gg
  br i1 %.not27.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gh = call ptr @__cxa_allocate_exception(i64 40) #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gh, align 8, !tbaa !29
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24 ; 3 uses
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !35
  %i.gk = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

bb.aq:                                            ; preds = %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !33 ; 3 uses
  %i.gp = icmp ult i64 %i.go, 16
  call void @llvm.assume(i1 %i.gp)
  %i.gq = add nuw nsw i64 %i.go, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.gl, i64 %i.gq, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.ap
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !34
  %i.gr = load i64, ptr %i.gl, align 8, !tbaa !27
  store i64 %i.gr, ptr %i.gj, align 8, !tbaa !27
  %.phi.trans.insert.i48 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i49 = load i64, ptr %.phi.trans.insert.i48, align 8, !tbaa !33
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47, %bb.aq
  %i.gs = phi i64 [ %i.go, %bb.aq ], [ %.pre.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i64 %i.gs, ptr %i.gu, align 8, !tbaa !33
  store ptr %i.gl, ptr %2, align 8, !tbaa !34
end_hunk_0
