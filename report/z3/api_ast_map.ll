Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_ast_map?download=true
inline.NumInlined: 384
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Z3_ast_map_to_string:bb.a
  %i.c = trunc i8 %i.b to i1                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24log_Z3_ast_map_to_stringP11_Z3_contextP11_Z3_ast_map(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.962 = extractvalue { ptr, i32 } %i.d, 1
  br label %bb.ac

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.e, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28, !nonnull !29, !align !30 ; 2 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr i8, ptr %i.j, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.q, %bb.e ], [ %i.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !36
  %i.p = icmp ult ptr %i.o, inttoptr (i64 2 to ptr)
  br i1 %i.p, label %bb.e, label %.loopexit67

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.n
  br i1 %.not.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i, !llvm.loop !0

.loopexit67:                                      ; preds = %.lr.ph.i.i.i.i, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.sroa.0.1.i.i = phi ptr [ %i.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %.not68 = icmp eq ptr %.sroa.0.1.i.i, %i.r
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit67
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, %.loopexit67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !202
  %i.u = load ptr, ptr %2, align 8, !tbaa !17
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !224
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %._crit_edge
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 41)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ab

bb.i:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit
  %.sroa.055.069 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph ], [ %.sroa.055.2, %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit ] ; 3 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ae = load ptr, ptr %.sroa.055.069, align 8, !tbaa !39
  invoke void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(952) %i.g, i32 noundef 3, i32 noundef 0, ptr noundef null)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.k unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.2, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.055.069, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  invoke void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(952) %i.g, i32 noundef 3, i32 noundef 0, ptr noundef null)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %bb.m
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.055.069, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %bb.n
  %.sroa.055.1 = phi ptr [ %i.ao, %bb.n ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 ] ; 3 uses
  %i.am = load ptr, ptr %.sroa.055.1, align 8, !tbaa !36
  %i.an = icmp ult ptr %i.am, inttoptr (i64 2 to ptr)
  br i1 %i.an, label %bb.n, label %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.055.1, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i, label %_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN14core_hashtableIN7obj_mapI3astPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %.sroa.055.2 = phi ptr [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 ], [ %.sroa.055.1, %.lr.ph.i.i ], [ %i.ao, %bb.n ] ; 2 uses
  %.not = icmp eq ptr %.sroa.055.2, %i.r
  br i1 %.not, label %._crit_edge, label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.d, %bb.f, %bb.g
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.u

bb.p:                                             ; preds = %bb.k, %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn31 = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ar, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.s ], [ %i.aq, %bb.p ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.t ], [ %i.ap, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !228, !noalias !229 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %bb.v
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !230, !noalias !229 ; 2 uses
  %8 = icmp ugt ptr %i.av, %7
  %.08.i9.i.i = select i1 %8, ptr %i.av, ptr %7   ; 2 uses
  %.not.i.i50 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i50, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !231, !noalias !229
  %i.az = ptrtoint ptr %.08.i9.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !203, !noalias !229
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !204, !noalias !229
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !202, !noalias !229
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bg, ptr %5, align 8, !tbaa !205, !alias.scope !229
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !204, !noalias !229 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !203, !noalias !229 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bh, ptr %5, align 8, !tbaa !204, !alias.scope !229
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !202, !noalias !229
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !202, !alias.scope !229
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !203, !noalias !229
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.w
  %i.bp = phi i64 [ %i.bl, %bb.w ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !203, !alias.scope !229
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !204, !noalias !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bq, i8 0, i64 9, i1 false), !noalias !229
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull %i.bi, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !204, !alias.scope !229 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bg
  br i1 %i.bu, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bv = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.aa      ; 2 uses

bb.y:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bw = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bg
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !202
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ca = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !17
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %i.cd
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !17
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !204 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bi
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = load i64, ptr %i.bi, align 8, !tbaa !202
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.at, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ck) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %i.c, label %bb.z, label %_ZN10z3_log_ctxD2Ev.exit, !prof !195

bb.z:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.aa:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bg
  br i1 %i.cn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.aa, %bb.x
  %.sink = phi ptr [ %i.bt, %bb.x ], [ %i.cm, %bb.aa ]
  %.pn.ph = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.cl, %bb.aa ]
  %i.co = load i64, ptr %i.bg, align 8, !tbaa !202
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cp) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.aa, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.cl, %bb.aa ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u, %.body
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.u ], [ %.pn, %.body ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.h, %.loopexit.split-lp
  %.pn31.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.ac, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.9 = extractvalue { ptr, i32 } %.pn31.pn.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.c, label %bb.ac, label %_ZN10z3_log_ctxD2Ev.exit54, !prof !196

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.966 = phi i32 [ %.962, %.thread ], [ %.9, %bb.ab ]
  %.pn31.pn.pn.pn.pn.pn.pn.pn.pn64 = phi { ptr, i32 } [ %i.d, %.thread ], [ %.pn31.pn.pn.pn.pn.pn.pn.pn, %bb.ab ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit54

_ZN10z3_log_ctxD2Ev.exit54:                       ; preds = %bb.ab, %bb.ac
  %.965 = phi i32 [ %.9, %bb.ab ], [ %.966, %bb.ac ]
  %.pn31.pn.pn.pn.pn.pn.pn.pn.pn63 = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn.pn.pn, %bb.ab ], [ %.pn31.pn.pn.pn.pn.pn.pn.pn.pn64, %bb.ac ] ; 2 uses
  %i.cq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #18
  %i.cr = icmp eq i32 %.965, %i.cq
  br i1 %i.cr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit54
  %.927 = extractvalue { ptr, i32 } %.pn31.pn.pn.pn.pn.pn.pn.pn.pn63, 0
  %i.cs = call ptr @__cxa_begin_catch(ptr %.927) #18
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.z, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ae
  %.029 = phi ptr [ null, %bb.ae ], [ %i.bv, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.bv, %bb.z ]
  ret ptr %.029

bb.ag:                                            ; preds = %bb.af, %_ZN10z3_log_ctxD2Ev.exit54
  %.merged = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn.pn.pn.pn63, %_ZN10z3_log_ctxD2Ev.exit54 ], [ %i.ct, %bb.af ]
  resume { ptr, i32 } %.merged

bb.ah:                                            ; preds = %bb.af
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #17
  unreachable
}

declare void @_Z24log_Z3_ast_map_to_stringP11_Z3_contextP11_Z3_ast_map(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN3api6objectC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(3088)) unnamed_addr #6

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17Z3_ast_vector_refD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17Z3_ast_vector_ref, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3astLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3astLb0EjE4sizeEv.exit.i:            ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
end_hunk_0
